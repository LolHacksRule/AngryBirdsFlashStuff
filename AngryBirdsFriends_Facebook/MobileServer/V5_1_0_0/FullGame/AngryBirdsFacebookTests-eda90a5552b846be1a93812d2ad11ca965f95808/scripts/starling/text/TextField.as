package starling.text
{
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.display.DisplayObjectContainer;
   import starling.display.Image;
   import starling.display.Quad;
   import starling.display.QuadBatch;
   import starling.display.Sprite;
   import starling.events.Event;
   import starling.textures.Texture;
   import starling.utils.HAlign;
   import starling.utils.VAlign;
   
   public class TextField extends DisplayObjectContainer
   {
      
      private static const BITMAP_FONT_DATA_NAME:String = "starling.display.TextField.BitmapFonts";
      
      private static var sNativeTextField:flash.text.TextField = new flash.text.TextField();
       
      
      private var mFontSize:Number;
      
      private var mColor:uint;
      
      private var mText:String;
      
      private var mFontName:String;
      
      private var mHAlign:String;
      
      private var mVAlign:String;
      
      private var mBold:Boolean;
      
      private var mItalic:Boolean;
      
      private var mUnderline:Boolean;
      
      private var mAutoScale:Boolean;
      
      private var mKerning:Boolean;
      
      private var mNativeFilters:Array;
      
      private var mRequiresRedraw:Boolean;
      
      private var mIsRenderedText:Boolean;
      
      private var mTextBounds:Rectangle;
      
      private var mHitArea:DisplayObject;
      
      private var mBorder:DisplayObjectContainer;
      
      private var mImage:Image;
      
      private var mQuadBatch:QuadBatch;
      
      public function TextField(width:int, height:int, text:String, fontName:String = "Verdana", fontSize:Number = 12, color:uint = 0, bold:Boolean = false)
      {
         super();
         this.mText = !!text ? text : "";
         this.mFontSize = fontSize;
         this.mColor = color;
         this.mHAlign = HAlign.CENTER;
         this.mVAlign = VAlign.CENTER;
         this.mBorder = null;
         this.mKerning = true;
         this.mBold = bold;
         this.fontName = fontName;
         this.mHitArea = new Quad(width,height);
         this.mHitArea.alpha = 0;
         addChild(this.mHitArea);
         addEventListener(Event.FLATTEN,this.onFlatten);
      }
      
      public static function registerBitmapFont(bitmapFont:BitmapFont, name:String = null) : String
      {
         if(name == null)
         {
            name = bitmapFont.name;
         }
         bitmapFonts[name] = bitmapFont;
         return name;
      }
      
      public static function unregisterBitmapFont(name:String, dispose:Boolean = true) : void
      {
         if(dispose && bitmapFonts[name] != undefined)
         {
            bitmapFonts[name].dispose();
         }
         delete bitmapFonts[name];
      }
      
      public static function getBitmapFont(name:String) : BitmapFont
      {
         return bitmapFonts[name];
      }
      
      private static function get bitmapFonts() : Dictionary
      {
         var fonts:Dictionary = Starling.current.contextData[BITMAP_FONT_DATA_NAME] as Dictionary;
         if(fonts == null)
         {
            fonts = new Dictionary();
            Starling.current.contextData[BITMAP_FONT_DATA_NAME] = fonts;
         }
         return fonts;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.FLATTEN,this.onFlatten);
         if(this.mImage)
         {
            this.mImage.texture.dispose();
         }
         if(this.mQuadBatch)
         {
            this.mQuadBatch.dispose();
         }
         super.dispose();
      }
      
      private function onFlatten() : void
      {
      }
      
      override public function render(support:RenderSupport, parentAlpha:Number) : void
      {
         if(this.mRequiresRedraw)
         {
            this.redrawContents(support.context);
         }
         super.render(support,parentAlpha);
      }
      
      private function redrawContents(context:Context3D) : void
      {
         if(this.mIsRenderedText)
         {
            this.createRenderedContents(context);
         }
         else
         {
            this.createComposedContents();
         }
         this.mRequiresRedraw = false;
      }
      
      private function createRenderedContents(context:Context3D) : void
      {
         if(this.mQuadBatch)
         {
            this.mQuadBatch.removeFromParent(true);
            this.mQuadBatch = null;
         }
         var scale:Number = Starling.contentScaleFactor;
         var width:Number = this.mHitArea.width * scale;
         var height:Number = this.mHitArea.height * scale;
         var textFormat:TextFormat = new TextFormat(this.mFontName,this.mFontSize * scale,this.mColor,this.mBold,this.mItalic,this.mUnderline,null,null,this.mHAlign);
         textFormat.kerning = this.mKerning;
         sNativeTextField.defaultTextFormat = textFormat;
         sNativeTextField.width = width;
         sNativeTextField.height = height;
         sNativeTextField.antiAliasType = AntiAliasType.ADVANCED;
         sNativeTextField.selectable = false;
         sNativeTextField.multiline = true;
         sNativeTextField.wordWrap = true;
         sNativeTextField.text = this.mText;
         sNativeTextField.embedFonts = true;
         sNativeTextField.filters = this.mNativeFilters;
         if(sNativeTextField.textWidth == 0 || sNativeTextField.textHeight == 0)
         {
            sNativeTextField.embedFonts = false;
         }
         if(this.mAutoScale)
         {
            this.autoScaleNativeTextField(sNativeTextField);
         }
         var textWidth:Number = sNativeTextField.textWidth;
         var textHeight:Number = sNativeTextField.textHeight;
         var xOffset:Number = 0;
         if(this.mHAlign == HAlign.LEFT)
         {
            xOffset = 2;
         }
         else if(this.mHAlign == HAlign.CENTER)
         {
            xOffset = (width - textWidth) / 2;
         }
         else if(this.mHAlign == HAlign.RIGHT)
         {
            xOffset = width - textWidth - 2;
         }
         var yOffset:Number = 0;
         if(this.mVAlign == VAlign.TOP)
         {
            yOffset = 2;
         }
         else if(this.mVAlign == VAlign.CENTER)
         {
            yOffset = (height - textHeight) / 2;
         }
         else if(this.mVAlign == VAlign.BOTTOM)
         {
            yOffset = height - textHeight - 2;
         }
         var bitmapData:BitmapData = new BitmapData(width,height,true,0);
         bitmapData.draw(sNativeTextField,new Matrix(1,0,0,1,0,int(yOffset) - 2));
         sNativeTextField.text = "";
         if(this.mTextBounds == null)
         {
            this.mTextBounds = new Rectangle();
         }
         this.mTextBounds.setTo(xOffset / scale,yOffset / scale,textWidth / scale,textHeight / scale);
         var texture:Texture = Texture.fromBitmapData(context,bitmapData,false,false,scale);
         if(this.mImage == null)
         {
            this.mImage = new Image(texture);
            this.mImage.touchable = false;
            addChild(this.mImage);
         }
         else
         {
            this.mImage.texture.dispose();
            this.mImage.texture = texture;
            this.mImage.readjustSize();
         }
      }
      
      private function autoScaleNativeTextField(textField:flash.text.TextField) : void
      {
         var format:TextFormat = null;
         var size:Number = Number(textField.defaultTextFormat.size);
         var maxHeight:int = textField.height - 4;
         var maxWidth:int = textField.width - 4;
         while(textField.textWidth > maxWidth || textField.textHeight > maxHeight)
         {
            if(size <= 4)
            {
               break;
            }
            format = textField.defaultTextFormat;
            format.size = size--;
            textField.setTextFormat(format);
         }
      }
      
      private function createComposedContents() : void
      {
         if(this.mImage)
         {
            this.mImage.removeFromParent(true);
            this.mImage = null;
         }
         if(this.mQuadBatch == null)
         {
            this.mQuadBatch = new QuadBatch();
            this.mQuadBatch.touchable = false;
            addChild(this.mQuadBatch);
         }
         else
         {
            this.mQuadBatch.reset();
         }
         var bitmapFont:BitmapFont = bitmapFonts[this.mFontName];
         if(bitmapFont == null)
         {
            throw new Error("Bitmap font not registered: " + this.mFontName);
         }
         bitmapFont.fillQuadBatch(this.mQuadBatch,this.mHitArea.width,this.mHitArea.height,this.mText,this.mFontSize,this.mColor,this.mHAlign,this.mVAlign,this.mAutoScale,this.mKerning);
         this.mTextBounds = null;
      }
      
      private function updateBorder() : void
      {
         if(this.mBorder == null)
         {
            return;
         }
         var width:Number = this.mHitArea.width;
         var height:Number = this.mHitArea.height;
         var topLine:Quad = this.mBorder.getChildAt(0) as Quad;
         var rightLine:Quad = this.mBorder.getChildAt(1) as Quad;
         var bottomLine:Quad = this.mBorder.getChildAt(2) as Quad;
         var leftLine:Quad = this.mBorder.getChildAt(3) as Quad;
         topLine.width = width;
         topLine.height = 1;
         bottomLine.width = width;
         bottomLine.height = 1;
         leftLine.width = 1;
         leftLine.height = height;
         rightLine.width = 1;
         rightLine.height = height;
         rightLine.x = width - 1;
         bottomLine.y = height - 1;
         topLine.color = rightLine.color = bottomLine.color = leftLine.color = this.mColor;
      }
      
      public function get textBounds() : Rectangle
      {
         if(this.mTextBounds == null)
         {
            this.mTextBounds = this.mQuadBatch.getBounds(this.mQuadBatch);
         }
         return this.mTextBounds.clone();
      }
      
      override public function getBounds(targetSpace:DisplayObject, resultRect:Rectangle = null) : Rectangle
      {
         return this.mHitArea.getBounds(targetSpace,resultRect);
      }
      
      override public function set width(value:Number) : void
      {
         this.mHitArea.width = value;
         this.mRequiresRedraw = true;
         this.updateBorder();
      }
      
      override public function set height(value:Number) : void
      {
         this.mHitArea.height = value;
         this.mRequiresRedraw = true;
         this.updateBorder();
      }
      
      public function get text() : String
      {
         return this.mText;
      }
      
      public function set text(value:String) : void
      {
         if(value == null)
         {
            value = "";
         }
         if(this.mText != value)
         {
            this.mText = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get fontName() : String
      {
         return this.mFontName;
      }
      
      public function set fontName(value:String) : void
      {
         if(this.mFontName != value)
         {
            if(value == BitmapFont.MINI && bitmapFonts[value] == undefined)
            {
               registerBitmapFont(new BitmapFont());
            }
            this.mFontName = value;
            this.mRequiresRedraw = true;
            this.mIsRenderedText = bitmapFonts[value] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.mFontSize;
      }
      
      public function set fontSize(value:Number) : void
      {
         if(this.mFontSize != value)
         {
            this.mFontSize = value;
            this.mRequiresRedraw = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.mColor;
      }
      
      override public function set color(value:uint) : void
      {
         if(this.mColor != value)
         {
            this.mColor = value;
            this.updateBorder();
            this.mRequiresRedraw = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.mHAlign;
      }
      
      public function set hAlign(value:String) : void
      {
         if(!HAlign.isValid(value))
         {
            throw new ArgumentError("Invalid horizontal align: " + value);
         }
         if(this.mHAlign != value)
         {
            this.mHAlign = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.mVAlign;
      }
      
      public function set vAlign(value:String) : void
      {
         if(!VAlign.isValid(value))
         {
            throw new ArgumentError("Invalid vertical align: " + value);
         }
         if(this.mVAlign != value)
         {
            this.mVAlign = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.mBorder != null;
      }
      
      public function set border(value:Boolean) : void
      {
         var i:int = 0;
         if(value && this.mBorder == null)
         {
            this.mBorder = new Sprite();
            addChild(this.mBorder);
            for(i = 0; i < 4; i++)
            {
               this.mBorder.addChild(new Quad(1,1));
            }
            this.updateBorder();
         }
         else if(!value && this.mBorder != null)
         {
            this.mBorder.removeFromParent(true);
            this.mBorder = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.mBold;
      }
      
      public function set bold(value:Boolean) : void
      {
         if(this.mBold != value)
         {
            this.mBold = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get italic() : Boolean
      {
         return this.mItalic;
      }
      
      public function set italic(value:Boolean) : void
      {
         if(this.mItalic != value)
         {
            this.mItalic = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get underline() : Boolean
      {
         return this.mUnderline;
      }
      
      public function set underline(value:Boolean) : void
      {
         if(this.mUnderline != value)
         {
            this.mUnderline = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.mKerning;
      }
      
      public function set kerning(value:Boolean) : void
      {
         if(this.mKerning != value)
         {
            this.mKerning = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get autoScale() : Boolean
      {
         return this.mAutoScale;
      }
      
      public function set autoScale(value:Boolean) : void
      {
         if(this.mAutoScale != value)
         {
            this.mAutoScale = value;
            this.mRequiresRedraw = true;
         }
      }
      
      public function get nativeFilters() : Array
      {
         return this.mNativeFilters;
      }
      
      public function set nativeFilters(value:Array) : void
      {
         if(!this.mIsRenderedText)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.mNativeFilters = value.concat();
         this.mRequiresRedraw = true;
      }
   }
}
