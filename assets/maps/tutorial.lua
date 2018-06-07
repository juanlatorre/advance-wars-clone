return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.5",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 10,
  tilewidth = 42,
  tileheight = 42,
  nextobjectid = 10,
  properties = {},
  tilesets = {
    {
      name = "Tileset",
      firstgid = 1,
      tilewidth = 42,
      tileheight = 42,
      spacing = 0,
      margin = 0,
      image = "../images/tileset0.png",
      imagewidth = 168,
      imageheight = 42,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 42,
        height = 42
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Pasto",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["def"] = 1
      },
      encoding = "lua",
      data = {
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
        3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
      }
    },
    {
      type = "tilelayer",
      name = "Sombras",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 4, 4, 4, 4,
        0, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4,
        0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4,
        0, 4, 4, 4, 0, 0, 0, 0, 4, 0, 0, 0, 0, 4, 4,
        0, 4, 4, 4, 4, 0, 0, 4, 4, 4, 0, 4, 4, 4, 4
      }
    },
    {
      type = "tilelayer",
      name = "Arboles",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["def"] = 3
      },
      encoding = "lua",
      data = {
        0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "Montanas",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["def"] = 10
      },
      encoding = "lua",
      data = {
        2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2,
        2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2,
        2, 2, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 2, 2,
        2, 2, 2, 2, 0, 0, 2, 2, 2, 0, 2, 2, 2, 2, 2
      }
    },
    {
      type = "objectgroup",
      name = "Controlables",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "Infanteria_Roja",
          type = "",
          shape = "rectangle",
          x = 210,
          y = 126,
          width = 42,
          height = 42,
          rotation = 0,
          visible = true,
          properties = {
            ["ammo"] = 0,
            ["fuel"] = 99,
            ["hp"] = 10
          }
        },
        {
          id = 5,
          name = "Infanteria_Roja",
          type = "",
          shape = "rectangle",
          x = 126,
          y = 210,
          width = 42,
          height = 42,
          rotation = 0,
          visible = true,
          properties = {
            ["ammo"] = 0,
            ["fuel"] = 99,
            ["hp"] = 10
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Enemigos",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 6,
          name = "Infanteria_Azul",
          type = "",
          shape = "rectangle",
          x = 588,
          y = 252,
          width = 42,
          height = 42,
          rotation = 0,
          visible = true,
          properties = {
            ["ammo"] = 0,
            ["fuel"] = 99,
            ["hp"] = 10
          }
        },
        {
          id = 9,
          name = "Infanteria_Azul",
          type = "",
          shape = "rectangle",
          x = 588,
          y = 378,
          width = 42,
          height = 42,
          rotation = 0,
          visible = true,
          properties = {
            ["ammo"] = 0,
            ["fuel"] = 99,
            ["hp"] = 10
          }
        }
      }
    }
  }
}
