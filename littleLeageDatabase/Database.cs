/*

Program Author: Khadichabonu Valieva

Assignment: Little League Database

Description: Database of the app

*/

using SQLite;

namespace littleLeageDatabase
{
    public class Database
    {
        public const string connFilename = "InvoiceDB.db3";

        public const SQLite.SQLiteOpenFlags Flags =
            SQLite.SQLiteOpenFlags.ReadWrite |
            SQLite.SQLiteOpenFlags.Create |
            SQLite.SQLiteOpenFlags.SharedCache;

        public static SQLite.SQLiteAsyncConnection conn;

        public static async Task Init()
        {
            if (conn is not null)
                return;

            string connpath = Path.Combine(FileSystem.AppDataDirectory, connFilename);

            conn = new SQLite.SQLiteAsyncConnection(connpath, Flags);
            _ = await conn.CreateTableAsync<Team>();
            _ = await conn.CreateTableAsync<Player>();
        }


        public static async Task<List<Team>> GetTeamsAsync()
        {
            await Init();
            return await conn.Table<Team>().ToListAsync();
        }


        public static async Task<List<Player>> GetPlayersAsync()
        {
            await Init();
            return await conn.Table<Player>().ToListAsync();
        }

        public static async Task<int> SaveTeamAsync(Team player)
        {
            await Init();
            if (player.ID != 0)
                return await conn.UpdateAsync(player);
            else
                return await conn.InsertAsync(player);
        }


        public static async Task<int> SavePlayerAsync(Player player)
        {
            await Init();
            if (player.ID != 0)
                return await conn.UpdateAsync(player);
            else
                return await conn.InsertAsync(player);
        }


        public static async Task<List<Player>> GetPlayersByTeam(int teamID)
        {
            await Init();
            return await conn.Table<Player>().Where(p => p.teamID == teamID).ToListAsync();
        }

    }







        [Table("Team")]
    public class Team
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string name { get; set; }
        public string mascot { get; set; }
    }

        [Table("Player")]
    public class Player
    {
        [PrimaryKey, AutoIncrement]
        public int ID { get; set; }
        public string name { get; set; }
        public string portrait { get; set; }
        public string role { get; set; }
        public int teamID { get; set; }
    }
}
