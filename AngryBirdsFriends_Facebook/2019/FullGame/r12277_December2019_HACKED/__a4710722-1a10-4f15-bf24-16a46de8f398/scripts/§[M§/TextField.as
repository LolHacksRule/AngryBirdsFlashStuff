package §[M§
{
   import §""4§.Texture;
   import §#Z§.§6!`§;
   import §#Z§.§6J§;
   import §#Z§.DisplayObject;
   import §#Z§.DisplayObjectContainer;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §&§.§""F§;
   import §&§.Starling;
   import §0"D§.§=#?§;
   import §0"D§.§["Z§;
   import §<!S§.Event;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class TextField extends DisplayObjectContainer
   {
      
      private static const §3§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §,L§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §,#R§:Number;
      
      private var §5#n§:uint;
      
      private var §!"l§:String;
      
      private var §%"e§:String;
      
      private var §&!G§:String;
      
      private var §"!I§:String;
      
      private var §[!X§:Boolean;
      
      private var §3!r§:Boolean;
      
      private var §4!Y§:Boolean;
      
      private var §,!!§:Boolean;
      
      private var §]#!§:Boolean;
      
      private var §2!8§:Array;
      
      private var §"#r§:Boolean;
      
      private var § #N§:Boolean;
      
      private var §%6§:Rectangle;
      
      private var §`!@§:DisplayObject;
      
      private var §5t§:DisplayObjectContainer;
      
      private var §6" §:Image;
      
      private var §1v§:§6!`§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§!"l§ = !!param3 ? param3 : "";
         this.§,#R§ = param5;
         this.§5#n§ = param6;
         this.§&!G§ = §["Z§.CENTER;
         this.§"!I§ = §=#?§.CENTER;
         this.§5t§ = null;
         this.§]#!§ = true;
         this.§[!X§ = param7;
         this.§`"D§ = param4;
         this.§`!@§ = new §6J§(param1,param2);
         this.§`!@§.alpha = 0;
         addChild(this.§`!@§);
         addEventListener(Event.§?%§,this.§ !J§);
      }
      
      public static function §6!o§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         §]4§[param2] = param1;
         return param2;
      }
      
      public static function §3$-§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && §]4§[param1] != undefined)
         {
            §]4§[param1].dispose();
         }
         delete §]4§[param1];
      }
      
      public static function §5"Q§(param1:String) : BitmapFont
      {
         return §]4§[param1];
      }
      
      private static function get §]4§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§%!q§.§8#U§[§3§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§%!q§.§8#U§[§3§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§?%§,this.§ !J§);
         if(this.§6" §)
         {
            this.§6" §.texture.dispose();
         }
         if(this.§1v§)
         {
            this.§1v§.dispose();
         }
         super.dispose();
      }
      
      private function § !J§() : void
      {
      }
      
      override public function render(param1:§""F§, param2:Number) : void
      {
         if(this.§"#r§)
         {
            this.§4!A§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §4!A§(param1:Context3D) : void
      {
         if(this.§ #N§)
         {
            this.§'!c§(param1);
         }
         else
         {
            this.§0#u§();
         }
         this.§"#r§ = false;
      }
      
      private function §'!c§(param1:Context3D) : void
      {
         if(this.§1v§)
         {
            this.§1v§.removeFromParent(true);
            this.§1v§ = null;
         }
         var _loc2_:Number = Starling.§!"&§;
         var _loc3_:Number = this.§`!@§.width * _loc2_;
         var _loc4_:Number = this.§`!@§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§%"e§,this.§,#R§ * _loc2_,this.§5#n§,this.§[!X§,this.§3!r§,this.§4!Y§,null,null,this.§&!G§)).kerning = this.§]#!§;
         §,L§.defaultTextFormat = _loc5_;
         §,L§.width = _loc3_;
         §,L§.height = _loc4_;
         §,L§.antiAliasType = AntiAliasType.ADVANCED;
         §,L§.selectable = false;
         §,L§.multiline = true;
         §,L§.wordWrap = true;
         §,L§.text = this.§!"l§;
         §,L§.embedFonts = true;
         §,L§.filters = this.§2!8§;
         if(§,L§.textWidth == 0 || §,L§.textHeight == 0)
         {
            §,L§.embedFonts = false;
         }
         if(this.§,!!§)
         {
            this.§7$#§(§,L§);
         }
         var _loc6_:Number = §,L§.textWidth;
         var _loc7_:Number = §,L§.textHeight;
         var _loc8_:Number = 0;
         if(this.§&!G§ == §["Z§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§&!G§ == §["Z§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§&!G§ == §["Z§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§"!I§ == §=#?§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§"!I§ == §=#?§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§"!I§ == §=#?§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§,L§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §,L§.text = "";
         if(this.§%6§ == null)
         {
            this.§%6§ = new Rectangle();
         }
         this.§%6§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§&#<§(param1,_loc10_,false,false,_loc2_);
         if(this.§6" § == null)
         {
            this.§6" § = new Image(_loc11_);
            this.§6" §.§^"$§ = false;
            addChild(this.§6" §);
         }
         else
         {
            this.§6" §.texture.dispose();
            this.§6" §.texture = _loc11_;
            this.§6" §.§"$"§();
         }
      }
      
      private function §7$#§(param1:flash.text.TextField) : void
      {
         var _loc5_:TextFormat = null;
         var _loc2_:Number = Number(param1.defaultTextFormat.size);
         var _loc3_:int = param1.height - 4;
         var _loc4_:int = param1.width - 4;
         while(param1.textWidth > _loc4_ || param1.textHeight > _loc3_)
         {
            if(_loc2_ <= 4)
            {
               break;
            }
            (_loc5_ = param1.defaultTextFormat).size = _loc2_--;
            param1.setTextFormat(_loc5_);
         }
      }
      
      private function §0#u§() : void
      {
         if(this.§6" §)
         {
            this.§6" §.removeFromParent(true);
            this.§6" § = null;
         }
         if(this.§1v§ == null)
         {
            this.§1v§ = new §6!`§();
            this.§1v§.§^"$§ = false;
            addChild(this.§1v§);
         }
         else
         {
            this.§1v§.reset();
         }
         var _loc1_:BitmapFont = §]4§[this.§%"e§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§%"e§);
         }
         _loc1_.§`#K§(this.§1v§,this.§`!@§.width,this.§`!@§.height,this.§!"l§,this.§,#R§,this.§5#n§,this.§&!G§,this.§"!I§,this.§,!!§,this.§]#!§);
         this.§%6§ = null;
      }
      
      private function §8!p§() : void
      {
         if(this.§5t§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§`!@§.width;
         var _loc2_:Number = this.§`!@§.height;
         var _loc3_:§6J§ = this.§5t§.getChildAt(0) as §6J§;
         var _loc4_:§6J§ = this.§5t§.getChildAt(1) as §6J§;
         var _loc5_:§6J§ = this.§5t§.getChildAt(2) as §6J§;
         var _loc6_:§6J§ = this.§5t§.getChildAt(3) as §6J§;
         _loc3_.width = _loc1_;
         _loc3_.height = 1;
         _loc5_.width = _loc1_;
         _loc5_.height = 1;
         _loc6_.width = 1;
         _loc6_.height = _loc2_;
         _loc4_.width = 1;
         _loc4_.height = _loc2_;
         _loc4_.x = _loc1_ - 1;
         _loc5_.y = _loc2_ - 1;
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§5#n§;
      }
      
      public function get §?!S§() : Rectangle
      {
         if(this.§%6§ == null)
         {
            this.§%6§ = this.§1v§.getBounds(this.§1v§);
         }
         return this.§%6§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§`!@§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§`!@§.width = param1;
         this.§"#r§ = true;
         this.§8!p§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§`!@§.height = param1;
         this.§"#r§ = true;
         this.§8!p§();
      }
      
      public function get text() : String
      {
         return this.§!"l§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§!"l§ != param1)
         {
            this.§!"l§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get §`"D§() : String
      {
         return this.§%"e§;
      }
      
      public function set §`"D§(param1:String) : void
      {
         if(this.§%"e§ != param1)
         {
            if(param1 == BitmapFont.§#!R§ && §]4§[param1] == undefined)
            {
               §6!o§(new BitmapFont());
            }
            this.§%"e§ = param1;
            this.§"#r§ = true;
            this.§ #N§ = §]4§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§,#R§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§,#R§ != param1)
         {
            this.§,#R§ = param1;
            this.§"#r§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§5#n§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§5#n§ != param1)
         {
            this.§5#n§ = param1;
            this.§8!p§();
            this.§"#r§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§&!G§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§["Z§.§,"O§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§&!G§ != param1)
         {
            this.§&!G§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§"!I§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§=#?§.§,"O§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§"!I§ != param1)
         {
            this.§"!I§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§5t§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§5t§ == null)
         {
            this.§5t§ = new Sprite();
            addChild(this.§5t§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§5t§.addChild(new §6J§(1,1));
               _loc2_++;
            }
            this.§8!p§();
         }
         else if(!param1 && this.§5t§ != null)
         {
            this.§5t§.removeFromParent(true);
            this.§5t§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§[!X§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§[!X§ != param1)
         {
            this.§[!X§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get §6"!§() : Boolean
      {
         return this.§3!r§;
      }
      
      public function set §6"!§(param1:Boolean) : void
      {
         if(this.§3!r§ != param1)
         {
            this.§3!r§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get §##F§() : Boolean
      {
         return this.§4!Y§;
      }
      
      public function set §##F§(param1:Boolean) : void
      {
         if(this.§4!Y§ != param1)
         {
            this.§4!Y§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§]#!§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§]#!§ != param1)
         {
            this.§]#!§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get §>#[§() : Boolean
      {
         return this.§,!!§;
      }
      
      public function set §>#[§(param1:Boolean) : void
      {
         if(this.§,!!§ != param1)
         {
            this.§,!!§ = param1;
            this.§"#r§ = true;
         }
      }
      
      public function get §7#T§() : Array
      {
         return this.§2!8§;
      }
      
      public function set §7#T§(param1:Array) : void
      {
         if(!this.§ #N§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§2!8§ = param1.concat();
         this.§"#r§ = true;
      }
   }
}
