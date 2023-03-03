/*
 * 
 *  Program Author: Khadichabonu Valieva
 *  Assignment: Program 2. The Hare and the Tortoise
 *  
 *  Description: Race between the hare and the tortoise using inheritance and polymorphism.
 * 
 */
 
using System;
using System.Threading;

namespace RaceAnimal
{
    class Program
    {
        static void Main(string[] args)
        {
            Race race = new Race();
            race.Simulate();
            Console.ReadKey();
        }
    }

    public abstract class RaceAnimal
    {
        private char[] track;
        private char symbol;
        private int position;
        public string name;

        public RaceAnimal(char symbol, string name)
        {
            this.symbol = symbol;
            this.name = name;
            this.position = 0;
            this.track = new char[70];
            track[0] = symbol;
            for (int i = 1; i < track.Length; i++)
            {
                track[i] = '-';
            }
        }

        public bool IsAtEnd()
        {
            return position >= track.Length - 1;
        }

        protected void ChangePos(int steps)
        {
            int newPos = position + steps;

            if (newPos < 0)
            {
                newPos = 0;
            }
            else if (newPos >= track.Length)
            {
                newPos = track.Length - 1;
            }

            track[position] = '-';
            position = newPos;
            track[position] = symbol;
        }


        public abstract void Move();

        public override string ToString()
        {
            return string.Join("", track);
        }
    }

    class Hare : RaceAnimal
    {
        public Hare() : base('H', "Hare")
        {
        }

        public override void Move()
        {
            int move = new Random().Next(1, 11);
            if (move >= 1 && move <= 2)
            {
                ChangePos(0); //sleep
            }
            else if (move >= 3 && move <= 4)
            {
                ChangePos(9); //big hop
            }
            else if (move == 5)
            {
                ChangePos(-12); //large slip
            }
            else if (move >= 6 && move <= 8)
            {
                ChangePos(1); // small hop
            }
            else
            {
                ChangePos(-2); //small slip
            }
        }
    }

    class Tortoise : RaceAnimal
    {
        public Tortoise() : base('T', "Tortoise")
        {
        }


        public override void Move()
        {
            int move = new Random().Next(1, 11);

            if (move >= 1 && move <= 5)
            {
                ChangePos(+3); //move at a normal pace
            }
            else if (move >= 6 && move <= 7)
            {
                ChangePos(-6); //slip
            }
            else
            {
                ChangePos(1); // move at a slow pace
            }
        }
    }

    public class Race
    {
        private RaceAnimal animal1;
        private RaceAnimal animal2;
        private RaceAnimal winner;
        private bool over;

        public Race()
        {
            animal1 = new Hare();
            animal2 = new Tortoise();
            winner = null;
            over = false;
        }

        public void UpdateStatus()
        {
            if (animal1.IsAtEnd() && animal2.IsAtEnd())
            {
                over = true;
                winner = null;
            }
            else if (animal1.IsAtEnd())
            {
                over = true;
                winner = animal1;
            }
            else if (animal2.IsAtEnd())
            {
                over = true;
                winner = animal2;
            }
        }

        public void Simulate()
        {
            while (!over)
            {
                Console.WriteLine(animal1);
                Console.WriteLine(animal2);
                Thread.Sleep(1000);
                animal1.Move();
                animal2.Move();
                UpdateStatus();
                Console.Clear();
            }


            Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
            Console.WriteLine("Race is over.");
            if (winner == null)
            {
                Console.WriteLine("The Race was a Tie.");
               
            }
            else
            {
                Console.WriteLine("The " + winner.name + " won the Race!");
                Console.WriteLine("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            }

        }
    }
}