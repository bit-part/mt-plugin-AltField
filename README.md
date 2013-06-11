AltField Movable Type Plugin
=====================

This is a Movable Type Plugin that replace HTML of Title Field, Excerpt Field, Keywords Field and Tags Field.

## Usage

Save an alternate HTML in AltField Plugin Settings. You should not forget to set the each field's ID.

    <div id="hoge-field" class="field">
        <div class="field-header">
            <label id="hoge-label" for="hoge">HOGE</label>
        </div>
        <div class="field-content ">
            Include the setting value here.
        </div>
    </div>
    
    NOTE: "hoge" is title or excerpt or keywords or tags.

---
MT::Lover::[bit part](http://bit-part.net/)