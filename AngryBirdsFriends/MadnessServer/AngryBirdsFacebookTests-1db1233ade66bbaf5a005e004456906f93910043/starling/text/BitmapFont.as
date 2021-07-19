package starling.text
{
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import starling.display.Image;
   import starling.display.QuadBatch;
   import starling.display.Sprite;
   import starling.textures.Texture;
   import starling.utils.HAlign;
   import starling.utils.VAlign;
   
   public class BitmapFont
   {
      
      public static const NATIVE_SIZE:int = -1;
      
      public static const MINI:String = "mini";
      
      private static const CHAR_SPACE:int = 32;
      
      private static const CHAR_TAB:int = 9;
      
      private static const CHAR_NEWLINE:int = 10;
      
      private static const CHAR_CARRIAGE_RETURN:int = 13;
       
      
      private var mTexture:Texture;
      
      private var mChars:Dictionary;
      
      private var mName:String;
      
      private var mSize:Number;
      
      private var mLineHeight:Number;
      
      private var mBaseline:Number;
      
      private var mHelperImage:Image;
      
      private var mCharLocationPool:Vector.<CharLocation>;
      
      public function BitmapFont(texture:Texture = null, fontXml:XML = null)
      {
         super();
         if(texture == null && fontXml == null)
         {
            texture = MiniBitmapFont.texture;
            fontXml = MiniBitmapFont.xml;
         }
         this.mName = "unknown";
         this.mLineHeight = this.mSize = this.mBaseline = 14;
         this.mTexture = texture;
         this.mChars = new Dictionary();
         this.mHelperImage = new Image(texture);
         this.mCharLocationPool = new Vector.<CharLocation>(0);
         if(fontXml)
         {
            this.parseFontXml(fontXml);
         }
      }
      
      public function dispose() : void
      {
         if(this.mTexture)
         {
            this.mTexture.dispose();
         }
      }
      
      private function parseFontXml(fontXml:XML) : void
      {
         var charElement:XML = null;
         var kerningElement:XML = null;
         var id:int = 0;
         var xOffset:Number = NaN;
         var yOffset:Number = NaN;
         var xAdvance:Number = NaN;
         var region:Rectangle = null;
         var texture:Texture = null;
         var bitmapChar:BitmapChar = null;
         var first:int = 0;
         var second:int = 0;
         var amount:Number = NaN;
         var scale:Number = this.mTexture.scale;
         var frame:Rectangle = this.mTexture.frame;
         this.mName = fontXml.info.attribute("face");
         this.mSize = parseFloat(fontXml.info.attribute("size")) / scale;
         this.mLineHeight = parseFloat(fontXml.common.attribute("lineHeight")) / scale;
         this.mBaseline = parseFloat(fontXml.common.attribute("base")) / scale;
         if(fontXml.info.attribute("smooth").toString() == "0")
         {
            this.smoothing = Image.TEXTURE_SMOOTHING_NONE;
         }
         if(this.mSize <= 0)
         {
            this.mSize = this.mSize == 0 ? Number(16) : Number(this.mSize * -1);
         }
         for each(charElement in fontXml.chars.char)
         {
            id = parseInt(charElement.attribute("id"));
            xOffset = parseFloat(charElement.attribute("xoffset")) / scale;
            yOffset = parseFloat(charElement.attribute("yoffset")) / scale;
            xAdvance = parseFloat(charElement.attribute("xadvance")) / scale;
            region = new Rectangle();
            region.x = parseFloat(charElement.attribute("x")) / scale + frame.x;
            region.y = parseFloat(charElement.attribute("y")) / scale + frame.y;
            region.width = parseFloat(charElement.attribute("width")) / scale;
            region.height = parseFloat(charElement.attribute("height")) / scale;
            texture = Texture.fromTexture(this.mTexture,region);
            bitmapChar = new BitmapChar(id,texture,xOffset,yOffset,xAdvance);
            this.addChar(id,bitmapChar);
         }
         for each(kerningElement in fontXml.kernings.kerning)
         {
            first = parseInt(kerningElement.attribute("first"));
            second = parseInt(kerningElement.attribute("second"));
            amount = parseFloat(kerningElement.attribute("amount")) / scale;
            if(second in this.mChars)
            {
               this.getChar(second).addKerning(first,amount);
            }
         }
      }
      
      public function getChar(charID:int) : BitmapChar
      {
         return this.mChars[charID];
      }
      
      public function addChar(charID:int, bitmapChar:BitmapChar) : void
      {
         this.mChars[charID] = bitmapChar;
      }
      
      public function createSprite(width:Number, height:Number, text:String, fontSize:Number = -1, color:uint = 16777215, hAlign:String = "center", vAlign:String = "center", autoScale:Boolean = true, kerning:Boolean = true) : Sprite
      {
         var charLocation:CharLocation = null;
         var char:Image = null;
         var charLocations:Vector.<CharLocation> = this.arrangeChars(width,height,text,fontSize,hAlign,vAlign,autoScale,kerning);
         var numChars:int = charLocations.length;
         var sprite:Sprite = new Sprite();
         for(var i:int = 0; i < numChars; i++)
         {
            charLocation = charLocations[i];
            char = charLocation.char.createImage();
            char.x = charLocation.x;
            char.y = charLocation.y;
            char.scaleX = char.scaleY = charLocation.scale;
            char.color = color;
            sprite.addChild(char);
         }
         return sprite;
      }
      
      public function fillQuadBatch(quadBatch:QuadBatch, width:Number, height:Number, text:String, fontSize:Number = -1, color:uint = 16777215, hAlign:String = "center", vAlign:String = "center", autoScale:Boolean = true, kerning:Boolean = true) : void
      {
         var charLocation:CharLocation = null;
         var charLocations:Vector.<CharLocation> = this.arrangeChars(width,height,text,fontSize,hAlign,vAlign,autoScale,kerning);
         var numChars:int = charLocations.length;
         this.mHelperImage.color = color;
         if(numChars > 8192)
         {
            throw new ArgumentError("Bitmap Font text is limited to 8192 characters.");
         }
         for(var i:int = 0; i < numChars; i++)
         {
            charLocation = charLocations[i];
            this.mHelperImage.texture = charLocation.char.texture;
            this.mHelperImage.readjustSize();
            this.mHelperImage.x = charLocation.x;
            this.mHelperImage.y = charLocation.y;
            this.mHelperImage.scaleX = this.mHelperImage.scaleY = charLocation.scale;
            quadBatch.addImage(this.mHelperImage);
         }
      }
      
      private function arrangeChars(width:Number, height:Number, text:String, fontSize:Number = -1, hAlign:String = "center", vAlign:String = "center", autoScale:Boolean = true, kerning:Boolean = true) : Vector.<CharLocation>
      {
         var lines:Vector.<Vector.<CharLocation>> = null;
         var charLocation:CharLocation = null;
         var numChars:int = 0;
         var containerWidth:Number = NaN;
         var containerHeight:Number = NaN;
         var scale:Number = NaN;
         var lastWhiteSpace:int = 0;
         var lastCharID:int = 0;
         var currentX:Number = NaN;
         var currentY:Number = NaN;
         var currentLine:Vector.<CharLocation> = null;
         var i:int = 0;
         var lineFull:Boolean = false;
         var charID:int = 0;
         var char:BitmapChar = null;
         var numCharsToRemove:int = 0;
         var removeIndex:int = 0;
         var line:Vector.<CharLocation> = null;
         var lastLocation:CharLocation = null;
         var right:Number = NaN;
         var xOffset:int = 0;
         var c:int = 0;
         if(text == null || text.length == 0)
         {
            return new Vector.<CharLocation>(0);
         }
         if(fontSize < 0)
         {
            fontSize *= -this.mSize;
         }
         var finished:Boolean = false;
         while(!finished)
         {
            scale = fontSize / this.mSize;
            containerWidth = width / scale;
            containerHeight = height / scale;
            lines = new Vector.<Vector.<CharLocation>>();
            if(this.mLineHeight <= containerHeight)
            {
               lastWhiteSpace = -1;
               lastCharID = -1;
               currentX = 0;
               currentY = 0;
               currentLine = new Vector.<CharLocation>(0);
               numChars = text.length;
               for(i = 0; i < numChars; i++)
               {
                  lineFull = false;
                  charID = text.charCodeAt(i);
                  char = this.getChar(charID);
                  if(charID == CHAR_NEWLINE || charID == CHAR_CARRIAGE_RETURN)
                  {
                     lineFull = true;
                  }
                  else if(char != null)
                  {
                     if(charID == CHAR_SPACE || charID == CHAR_TAB)
                     {
                        lastWhiteSpace = i;
                     }
                     if(kerning)
                     {
                        currentX += char.getKerning(lastCharID);
                     }
                     charLocation = !!this.mCharLocationPool.length ? this.mCharLocationPool.pop() : new CharLocation(char);
                     charLocation.char = char;
                     charLocation.x = currentX + char.xOffset;
                     charLocation.y = currentY + char.yOffset;
                     currentLine.push(charLocation);
                     currentX += char.xAdvance;
                     lastCharID = charID;
                     if(currentLine.length == 1)
                     {
                        currentX -= char.xOffset;
                        charLocation.x -= char.xOffset;
                     }
                     if(charLocation.x + char.width > containerWidth)
                     {
                        numCharsToRemove = lastWhiteSpace == -1 ? 1 : int(i - lastWhiteSpace);
                        removeIndex = currentLine.length - numCharsToRemove;
                        currentLine.splice(removeIndex,numCharsToRemove);
                        if(currentLine.length == 0)
                        {
                           break;
                        }
                        i -= numCharsToRemove;
                        lineFull = true;
                     }
                  }
                  if(i == numChars - 1)
                  {
                     lines.push(currentLine);
                     finished = true;
                  }
                  else if(lineFull)
                  {
                     lines.push(currentLine);
                     if(lastWhiteSpace == i)
                     {
                        currentLine.pop();
                     }
                     if(currentY + 2 * this.mLineHeight > containerHeight)
                     {
                        break;
                     }
                     currentLine = new Vector.<CharLocation>(0);
                     currentX = 0;
                     currentY += this.mLineHeight;
                     lastWhiteSpace = -1;
                     lastCharID = -1;
                  }
               }
            }
            if(autoScale && !finished)
            {
               fontSize--;
               lines.length = 0;
            }
            else
            {
               finished = true;
            }
         }
         var finalLocations:Vector.<CharLocation> = new Vector.<CharLocation>(0);
         var numLines:int = lines.length;
         var bottom:Number = currentY + this.mLineHeight;
         var yOffset:int = 0;
         if(vAlign == VAlign.BOTTOM)
         {
            yOffset = containerHeight - bottom;
         }
         else if(vAlign == VAlign.CENTER)
         {
            yOffset = (containerHeight - bottom) / 2;
         }
         for(var lineID:int = 0; lineID < numLines; lineID++)
         {
            line = lines[lineID];
            numChars = line.length;
            if(numChars != 0)
            {
               lastLocation = line[line.length - 1];
               right = lastLocation.x + lastLocation.char.width;
               xOffset = 0;
               if(hAlign == HAlign.RIGHT)
               {
                  xOffset = containerWidth - right;
               }
               else if(hAlign == HAlign.CENTER)
               {
                  xOffset = (containerWidth - right) / 2;
               }
               for(c = 0; c < numChars; c++)
               {
                  charLocation = line[c];
                  charLocation.x = scale * (charLocation.x + xOffset);
                  charLocation.y = scale * (charLocation.y + yOffset);
                  charLocation.scale = scale;
                  if(charLocation.char.width > 0 && charLocation.char.height > 0)
                  {
                     finalLocations.push(charLocation);
                  }
                  this.mCharLocationPool.push(charLocation);
               }
            }
         }
         return finalLocations;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get size() : Number
      {
         return this.mSize;
      }
      
      public function get lineHeight() : Number
      {
         return this.mLineHeight;
      }
      
      public function set lineHeight(value:Number) : void
      {
         this.mLineHeight = value;
      }
      
      public function get smoothing() : int
      {
         return this.mHelperImage.smoothing;
      }
      
      public function set smoothing(value:int) : void
      {
         this.mHelperImage.smoothing = value;
      }
      
      public function get baseline() : Number
      {
         return this.mBaseline;
      }
   }
}

import starling.text.BitmapChar;

class CharLocation
{
    
   
   public var char:BitmapChar;
   
   public var scale:Number;
   
   public var x:Number;
   
   public var y:Number;
   
   function CharLocation(char:BitmapChar)
   {
      super();
      this.char = char;
   }
}
