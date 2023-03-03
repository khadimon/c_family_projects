/*
 * 
 *  Program Author: Khadichabonu Valieva
 *  Assignment: Program 2. The Hare and the Tortoise BONUS
 *  
 *  Description: Race between two more animals except the hare and the tortoise. 
 *  
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


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

    //  TWO MORE ANIMALS FOR BONUS PART ----------------------------------------------------------------

    class Monkey : RaceAnimal
    {
        public Monkey() : base('M', "Monkey") { }

        public override void Move()
        {
            int move = new Random().Next(1, 11);

            if (move >= 1 && move <= 4)
            {
                ChangePos(+3); //jump at a normal pace
            }
            else if (move >= 6 && move <= 7)
            {
                ChangePos(-2); //rest between jumps
            }
            else
            {
                ChangePos(+5); // big jump to the top of a tree to catch a banana!
            }
        }
    }

    class Pikachu : RaceAnimal
    {
        public Pikachu() : base('P', "Pikachu")
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
                ChangePos(5); //big jump
            }
            else if (move == 5)
            {
                ChangePos(-4); //slow walk 
            }
            else
            {
                ChangePos(1); // roll forward
            }

        }
    }
    //----------------------------------------------------------------------------------------------------------


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
            animal3 = new Monkey();
            animal4 = new Pikachu();
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
            else if (animal3.IsAtEnd())
            {
                over = true;
                winner = animal3;
            }
            else if (animal4.IsAtEnd())
            {
                over = true;
                winner = animal4;
            }
        }

        public void Simulate()
        {
            while (!over)
            {
                SetupRace();
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

        public void SetupRace()
        {
            Console.WriteLine("Choose two animals to race: ");
            Console.WriteLine("1. Tortoise");
            Console.WriteLine("2. Hare");
            Console.WriteLine("3. Monkey");
            Console.WriteLine("4. Pikachu");

            int choice1 = int.Parse(Console.ReadLine());
            int choice2 = int.Parse(Console.ReadLine());

            if (choice1 == choice2)
            {
                Console.WriteLine("Please, select two different animals");
            }
            else
            {
                switch (choice1)
                {
                    case 1:
                        {
                            animal1 = new Tortoise();
                            break;
                        }
                    case 2:
                        {
                            animal1 = new Hare();
                            break;
                        }
                    case 3:
                        {
                            animal1 = new Monkey();
                            break;
                        }
                    case 4:
                        {
                            animal1 = new Pikachu();
                            break;
                        }
                    default:
                        {
                            Console.WriteLine("Invalid choice. Please choose from the given options.");
                            break;
                        }
                }


                switch (choice2)
                {
                    case 1:
                        {
                            animal2 = new Tortoise();
                            break;
                        }
                    case 2:
                        {
                            animal2 = new Hare();
                            break;
                        }
                    case 3:
                        {
                            animal2 = new Monkey();
                            break;
                        }
                    case 4:
                        {
                            animal2 = new Pikachu();
                            break;
                        }
                    default:
                        {
                            Console.WriteLine("Invalid choice. Please choose from the given options.");
                            break;
                        }
                }
            }

        }
    }

}