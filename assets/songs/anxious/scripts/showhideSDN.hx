// Function to hide the opponent (Dad)
function hideOpponent()
    dad.alpha = 0  // Makes Dad fully transparent (hidden)
end

// Function to show the opponent (Dad) & zoom out
function showOpponent()
    dad.alpha = 1  -- Make opponent visible

    // Now start zooming out back to normal
    FlxTween.tween(FlxG.camera, {zoom: 0.8}, 2, {ease: FlxEase.cubeInOut, onComplete: function()
        defaultCamZoom = 0.8
        camZooming = true  // Allow normal camera zooming again
    }})
end