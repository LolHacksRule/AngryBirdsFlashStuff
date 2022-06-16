package § "x§
{
   import §5!D§.§&!$§;
   import §5!D§.§=!G§;
   import §5#m§.Event;
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §?"e§.§[!Z§;
   import §^"S§.§'#E§;
   import §^"S§.§9$=§;
   import §^"S§.DisplayObject;
   import §^"S§.DisplayObjectContainer;
   import §^"S§.Image;
   import §^"S§.Sprite;
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
      
      private static const §]!#§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §;#Z§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §0"$§:Number;
      
      private var § !J§:uint;
      
      private var §'7§:String;
      
      private var §=#Z§:String;
      
      private var §#M§:String;
      
      private var §&!V§:String;
      
      private var §^!4§:Boolean;
      
      private var §4#<§:Boolean;
      
      private var §3i§:Boolean;
      
      private var §8#<§:Boolean;
      
      private var §8"1§:Boolean;
      
      private var §'">§:Array;
      
      private var §?M§:Boolean;
      
      private var §?x§:Boolean;
      
      private var §^![§:Rectangle;
      
      private var §0]§:DisplayObject;
      
      private var §["U§:DisplayObjectContainer;
      
      private var §[$%§:Image;
      
      private var §]5§:§9$=§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§'7§ = !!param3 ? param3 : "";
         this.§0"$§ = param5;
         this.§ !J§ = param6;
         this.§#M§ = §=!G§.CENTER;
         this.§&!V§ = §&!$§.CENTER;
         this.§["U§ = null;
         this.§8"1§ = true;
         this.§^!4§ = param7;
         this.§4"m§ = param4;
         this.§0]§ = new §'#E§(param1,param2);
         this.§0]§.alpha = 0;
         addChild(this.§0]§);
         addEventListener(Event.§,#j§,this.§&!a§);
      }
      
      public static function §`!f§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         §@!<§[param2] = param1;
         return param2;
      }
      
      public static function §`"?§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && §@!<§[param1] != undefined)
         {
            §@!<§[param1].dispose();
         }
         delete §@!<§[param1];
      }
      
      public static function §96§(param1:String) : BitmapFont
      {
         return §@!<§[param1];
      }
      
      private static function get §@!<§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§@#K§.§&!#§[§]!#§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§@#K§.§&!#§[§]!#§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§,#j§,this.§&!a§);
         if(this.§[$%§)
         {
            this.§[$%§.texture.dispose();
         }
         if(this.§]5§)
         {
            this.§]5§.dispose();
         }
         super.dispose();
      }
      
      private function §&!a§() : void
      {
      }
      
      override public function render(param1:§[!Z§, param2:Number) : void
      {
         if(this.§?M§)
         {
            this.§ "$§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function § "$§(param1:Context3D) : void
      {
         if(this.§?x§)
         {
            this.§%!V§(param1);
         }
         else
         {
            this.§'$#§();
         }
         this.§?M§ = false;
      }
      
      private function §%!V§(param1:Context3D) : void
      {
         if(this.§]5§)
         {
            this.§]5§.removeFromParent(true);
            this.§]5§ = null;
         }
         var _loc2_:Number = Starling.§8#i§;
         var _loc3_:Number = this.§0]§.width * _loc2_;
         var _loc4_:Number = this.§0]§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§=#Z§,this.§0"$§ * _loc2_,this.§ !J§,this.§^!4§,this.§4#<§,this.§3i§,null,null,this.§#M§)).kerning = this.§8"1§;
         §;#Z§.defaultTextFormat = _loc5_;
         §;#Z§.width = _loc3_;
         §;#Z§.height = _loc4_;
         §;#Z§.antiAliasType = AntiAliasType.ADVANCED;
         §;#Z§.selectable = false;
         §;#Z§.multiline = true;
         §;#Z§.wordWrap = true;
         §;#Z§.text = this.§'7§;
         §;#Z§.embedFonts = true;
         §;#Z§.filters = this.§'">§;
         if(§;#Z§.textWidth == 0 || §;#Z§.textHeight == 0)
         {
            §;#Z§.embedFonts = false;
         }
         if(this.§8#<§)
         {
            this.§>"!§(§;#Z§);
         }
         var _loc6_:Number = §;#Z§.textWidth;
         var _loc7_:Number = §;#Z§.textHeight;
         var _loc8_:Number = 0;
         if(this.§#M§ == §=!G§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§#M§ == §=!G§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§#M§ == §=!G§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§&!V§ == §&!$§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§&!V§ == §&!$§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§&!V§ == §&!$§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§;#Z§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §;#Z§.text = "";
         if(this.§^![§ == null)
         {
            this.§^![§ = new Rectangle();
         }
         this.§^![§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§1!b§(param1,_loc10_,false,false,_loc2_);
         if(this.§[$%§ == null)
         {
            this.§[$%§ = new Image(_loc11_);
            this.§[$%§.§?C§ = false;
            addChild(this.§[$%§);
         }
         else
         {
            this.§[$%§.texture.dispose();
            this.§[$%§.texture = _loc11_;
            this.§[$%§.§>"C§();
         }
      }
      
      private function §>"!§(param1:flash.text.TextField) : void
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
      
      private function §'$#§() : void
      {
         if(this.§[$%§)
         {
            this.§[$%§.removeFromParent(true);
            this.§[$%§ = null;
         }
         if(this.§]5§ == null)
         {
            this.§]5§ = new §9$=§();
            this.§]5§.§?C§ = false;
            addChild(this.§]5§);
         }
         else
         {
            this.§]5§.reset();
         }
         var _loc1_:BitmapFont = §@!<§[this.§=#Z§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§=#Z§);
         }
         _loc1_.§%!r§(this.§]5§,this.§0]§.width,this.§0]§.height,this.§'7§,this.§0"$§,this.§ !J§,this.§#M§,this.§&!V§,this.§8#<§,this.§8"1§);
         this.§^![§ = null;
      }
      
      private function §2"B§() : void
      {
         if(this.§["U§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§0]§.width;
         var _loc2_:Number = this.§0]§.height;
         var _loc3_:§'#E§ = this.§["U§.getChildAt(0) as §'#E§;
         var _loc4_:§'#E§ = this.§["U§.getChildAt(1) as §'#E§;
         var _loc5_:§'#E§ = this.§["U§.getChildAt(2) as §'#E§;
         var _loc6_:§'#E§ = this.§["U§.getChildAt(3) as §'#E§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§ !J§;
      }
      
      public function get §+"S§() : Rectangle
      {
         if(this.§^![§ == null)
         {
            this.§^![§ = this.§]5§.getBounds(this.§]5§);
         }
         return this.§^![§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§0]§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§0]§.width = param1;
         this.§?M§ = true;
         this.§2"B§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§0]§.height = param1;
         this.§?M§ = true;
         this.§2"B§();
      }
      
      public function get text() : String
      {
         return this.§'7§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§'7§ != param1)
         {
            this.§'7§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get §4"m§() : String
      {
         return this.§=#Z§;
      }
      
      public function set §4"m§(param1:String) : void
      {
         if(this.§=#Z§ != param1)
         {
            if(param1 == BitmapFont.§=!a§ && §@!<§[param1] == undefined)
            {
               §`!f§(new BitmapFont());
            }
            this.§=#Z§ = param1;
            this.§?M§ = true;
            this.§?x§ = §@!<§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§0"$§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§0"$§ != param1)
         {
            this.§0"$§ = param1;
            this.§?M§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§ !J§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§ !J§ != param1)
         {
            this.§ !J§ = param1;
            this.§2"B§();
            this.§?M§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§#M§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§=!G§.§5"2§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§#M§ != param1)
         {
            this.§#M§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§&!V§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§&!$§.§5"2§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§&!V§ != param1)
         {
            this.§&!V§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§["U§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§["U§ == null)
         {
            this.§["U§ = new Sprite();
            addChild(this.§["U§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§["U§.addChild(new §'#E§(1,1));
               _loc2_++;
            }
            this.§2"B§();
         }
         else if(!param1 && this.§["U§ != null)
         {
            this.§["U§.removeFromParent(true);
            this.§["U§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§^!4§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§^!4§ != param1)
         {
            this.§^!4§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get §9g§() : Boolean
      {
         return this.§4#<§;
      }
      
      public function set §9g§(param1:Boolean) : void
      {
         if(this.§4#<§ != param1)
         {
            this.§4#<§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get §-$2§() : Boolean
      {
         return this.§3i§;
      }
      
      public function set §-$2§(param1:Boolean) : void
      {
         if(this.§3i§ != param1)
         {
            this.§3i§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§8"1§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§8"1§ != param1)
         {
            this.§8"1§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get §@"n§() : Boolean
      {
         return this.§8#<§;
      }
      
      public function set §@"n§(param1:Boolean) : void
      {
         if(this.§8#<§ != param1)
         {
            this.§8#<§ = param1;
            this.§?M§ = true;
         }
      }
      
      public function get §"#K§() : Array
      {
         return this.§'">§;
      }
      
      public function set §"#K§(param1:Array) : void
      {
         if(!this.§?x§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§'">§ = param1.concat();
         this.§?M§ = true;
      }
   }
}
