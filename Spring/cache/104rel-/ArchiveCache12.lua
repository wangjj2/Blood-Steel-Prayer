local archiveCache = {

	internalver = 12,

	archives = {  -- count = 6
		{
			name = "bitmaps.sdz",
			path = [[D:\GameDev\Spring\base\spring\]],
			modified = "1506270599",
			checksum = "0",
			archivedata = {
				description = "Various bitmaps used by spring",
				modtype = 4,
				name = "Spring Bitmaps",
				name_pure = "Spring Bitmaps",
			},
		},
		{
			name = "cursors.sdz",
			path = [[D:\GameDev\Spring\base\]],
			modified = "1506270599",
			checksum = "0",
			archivedata = {
				description = "Cursor pack by Erom",
				modtype = 4,
				name = "Spring Cursors",
				name_pure = "Spring Cursors",
			},
		},
		{
			name = "living_lands_3.2.sd7",
			path = [[D:\GameDev\Spring\maps\]],
			modified = "1515729979",
			checksum = "0",
			archivedata = {
				author = "Original by mestizo and Saktoth, remastered by aeonios and TheMooseIsLoose",
				autoshowmetal = true,
				description = "1v1 map based on DeadLands, designed for Zero-K.",
				extractorradius = 70.000000,
				gravity = 130.000000,
				mapfile = "maps/Living Lands.smf",
				maphardness = 200.000000,
				maxmetal = 0.900000,
				modtype = 3,
				name = "Living Lands 3.2",
				name_pure = "Living Lands",
				notdeformable = false,
				shortname = "Living Lands",
				tidalstrength = 0.000000,
				version = "3.2",
				voidwater = false,
			},
		},
		{
			name = "mainmod.sdz",
			path = [[D:\GameDev\Spring\games\]],
			modified = "1515729835",
			checksum = "0",
			archivedata = {
				description = "Basic mod with some example units",
				game = "Example Mod",
				modtype = 1,
				name = "Example Mod",
				name_pure = "Example Mod",
				shortgame = "Example",
				shortname = "Example",
				url = "http://www.somewebsite.com/",
				depend = {
					"cursors.sdz",
					"springcontent.sdz",
				},
			},
		},
		{
			name = "maphelper.sdz",
			path = [[D:\GameDev\Spring\base\]],
			modified = "1506270598",
			checksum = "0",
			archivedata = {
				description = "Maps can use this archive for its lua tdf parser",
				modtype = 4,
				name = "Map Helper v1",
				name_pure = "Map Helper v1",
			},
		},
		{
			name = "springcontent.sdz",
			path = [[D:\GameDev\Spring\base\]],
			modified = "1506270599",
			checksum = "0",
			archivedata = {
				description = "Mods can depend on this archive to get all the spring content",
				modtype = 4,
				name = "Spring content v1",
				name_pure = "Spring content v1",
				depend = {
					"Spring Bitmaps",
				},
			},
		},
	},

	brokenArchives = {  -- count = 0
	},
}

return archiveCache
