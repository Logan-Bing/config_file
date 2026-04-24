return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },

    keys = {
        {
            "<leader>c",
            function()
                require("harpoon"):list():add()
            end,
            desc = "Harpoon add file",
        },

		{
			"<leader>b",
			function()
				local harpoon = require("harpoon")
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Harpoon menu",
		},

        {
            "<leader>1",
            function()
                require("harpoon"):list():select(1)
            end,
            desc = "Harpoon file 1",
        },
        {
            "<leader>2",
            function()
                require("harpoon"):list():select(2)
            end,
            desc = "Harpoon file 2",
        },
        {
            "<leader>3",
            function()
                require("harpoon"):list():select(3)
            end,
            desc = "Harpoon file 3",
        },
        {
            "<leader>4",
            function()
                require("harpoon"):list():select(4)
            end,
            desc = "Harpoon file 4",
        },
        {
            "<leader>5",
            function()
                require("harpoon"):list():select(5)
            end,
            desc = "Harpoon file 5",
        },
        {
            "<leader>n",
            function()
                require("harpoon"):list():next()
            end,
            desc = "Harpoon next",
        },
		{ "<leader>t1",
			function()
				require("harpoon"):list():select(1, { vsplit = true })
			end,
			desc = "Harpoon 1 vertical split"
		},
		{ "<leader>t2",
			function()
				require("harpoon"):list():select(2, { vsplit = true })
			end,
			desc = "Harpoon 2 vertical split"
		},
		{ "<leader>t3",
			function()
				require("harpoon"):list():select(3, { vsplit = true })
			end,
			desc = "Harpoon 3 vertical split"
		},
		{ "<leader>t4",
			function()
				require("harpoon"):list():select(4, { vsplit = true })
			end,
			desc = "Harpoon 4 vertical split"
		},
		{ "<leader>t5",
			function()
				require("harpoon"):list():select(5, { vsplit = true })
			end,
			desc = "Harpoon 5 vertical split"
		},
		{
		  "<leader>d1",
		  function()
			require("harpoon"):list():remove_at(1)
		  end,
		  desc = "Harpoon remove file 1",
		},
		{
		  "<leader>d2",
		  function()
			require("harpoon"):list():remove_at(2)
		  end,
		  desc = "Harpoon remove file 2",
		},
		{
		  "<leader>d3",
		  function()
			require("harpoon"):list():remove_at(3)
		  end,
		  desc = "Harpoon remove file 3",
		},
		{
		  "<leader>d4",
		  function()
			require("harpoon"):list():remove_at(4)
		  end,
		  desc = "Harpoon remove file 4",
		},
		{
		  "<leader>d5",
		  function()
			require("harpoon"):list():remove_at(5)
		  end,
		  desc = "Harpoon remove file 5",
		},
	},
    config = function()
        require("harpoon"):setup({})
    end,
}
