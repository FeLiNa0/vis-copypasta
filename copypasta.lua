-- Paste from system clipboard with vis-clipboard
vis:map(vis.modes.NORMAL, '<C-v>', '"+p')
-- Put register content after cursor from system clipboard with vis-clipoard
-- Change the 'a' to an 'i' if you want it before the cursor
vis:map(vis.modes.INSERT, '<C-v>', '<Escape>"+pa')

-- Put selection content into system clipboard
vis:map(vis.modes.VISUAL_LINE, '<C-c>', function() vis:feedkeys(':>vis-clipboard --copy<Enter>') end)
-- TODO this doesn't work with multiple cursors, just gets last selection
vis:map(vis.modes.VISUAL, '<C-c>', function() vis:feedkeys(':>vis-clipboard --copy<Enter>') end)

