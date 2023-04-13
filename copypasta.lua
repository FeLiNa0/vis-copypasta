-- Paste from system clipboard with vis-clipboard
vis:map(vis.modes.NORMAL, '<C-v>', '"+p')
vis:map(vis.modes.INSERT, '<C-v>', function()
    -- Put register content after cursor from system clipboard with vis-clipoard
    vis.mode = vis.modes.NORMAL
    vis:feedkeys('<C-v>')
end)

-- Put selection content into system clipboard
vis:map(vis.modes.VISUAL_LINE, '<C-c>', function() vis:feedkeys(':>vis-clipboard --copy') end)

-- TODO this doesn't work with multiple cursors, just gets last selection
vis:map(vis.modes.VISUAL, '<C-c>', function() vis:feedkeys(':>vis-clipboard --copy') end)
