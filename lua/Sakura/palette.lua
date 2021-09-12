local palette = {}

function palette.get(variant)
    if variant == 'dawn' then
        return {
            base = '#faf4ed',
            surface = '#fffaf3',
            overlay = '#f2e9de',
            inactive = '#9893a5',
            subtle = '#6e6a86',
            text = '#575279',
            love = '#b4637a',
            gold = '#ea9d34',
            rose = '#d7827e',
            pine = '#286983',
            foam = '#56949f',
            iris = '#907aa9',
            highlight = '#eee9e6',
            highlight_inactive = '#f2ede9',
            highlight_overlay = '#e4dfde',
            none = 'NONE',
        }
    end

    if variant == 'moon' then
        return {
            base = '#232136',
            surface = '#2a273f',
            overlay = '#393552',
            inactive = '#59546d',
            subtle = '#817c9c',
            text = '#e0def4',
            love = '#FF789E',
            gold = '#f6c177',
            rose = '#ea9a97',
            pine = '#3e8fb0',
            foam = '#9ccfd8',
            iris = '#c4a7e7',
            highlight = '#312f44',
            highlight_inactive = '#2a283d',
            highlight_overlay = '#3f3c53',
            none = 'NONE',
        }
    end

    return {
        base = '#141421',
        surface = '#1f1d2e',
        overlay = '#26233a',
        inactive = '#555169',
        subtle = '#6e6a86',
        text = '#e0def4',
        love = '#FF789E',
        gold = '#f6c177',
        rose = '#ebbcba',
        pine = '#31748f',
        foam = '#9ccfd8',
        iris = '#c4a7e7',
        highlight = '#2a2837',
        highlight_inactive = '#211f2d',
        highlight_overlay = '#3a384a',
        none = 'NONE',
    }
end

return palette
