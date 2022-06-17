package §6!+§
{
   import §!#`§.Event;
   import §!6§.§4";§;
   import §!6§.§9$'§;
   import §!6§.DisplayObject;
   import §!6§.DisplayObjectContainer;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §#"l§.§6!j§;
   import §#"l§.§^#r§;
   import §]"P§.§4!9§;
   import §]"P§.Starling;
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
      
      private static const §^#b§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §2"v§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §^"i§:Number;
      
      private var §[l§:uint;
      
      private var §]=§:String;
      
      private var § "0§:String;
      
      private var §,#"§:String;
      
      private var §`!U§:String;
      
      private var §0!G§:Boolean;
      
      private var §]!x§:Boolean;
      
      private var § !#§:Boolean;
      
      private var § "@§:Boolean;
      
      private var §,"t§:Boolean;
      
      private var §^#B§:Array;
      
      private var §^#f§:Boolean;
      
      private var §'#,§:Boolean;
      
      private var §;"2§:Rectangle;
      
      private var §!$$§:DisplayObject;
      
      private var §-#8§:DisplayObjectContainer;
      
      private var §?"%§:Image;
      
      private var §]!z§:§9$'§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§]=§ = !!param3 ? param3 : "";
         this.§^"i§ = param5;
         this.§[l§ = param6;
         this.§,#"§ = §^#r§.CENTER;
         this.§`!U§ = §6!j§.CENTER;
         this.§-#8§ = null;
         this.§,"t§ = true;
         this.§0!G§ = param7;
         this.§null § = param4;
         this.§!$$§ = new §4";§(param1,param2);
         this.§!$$§.alpha = 0;
         addChild(this.§!$$§);
         addEventListener(Event.§%!L§,this.§%$ §);
      }
      
      public static function §7#K§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         § #p§[param2] = param1;
         return param2;
      }
      
      public static function §["g§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && § #p§[param1] != undefined)
         {
            § #p§[param1].dispose();
         }
         delete § #p§[param1];
      }
      
      public static function §>&§(param1:String) : BitmapFont
      {
         return § #p§[param1];
      }
      
      private static function get § #p§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§3!I§.§@#d§[§^#b§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§3!I§.§@#d§[§^#b§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§%!L§,this.§%$ §);
         if(this.§?"%§)
         {
            this.§?"%§.texture.dispose();
         }
         if(this.§]!z§)
         {
            this.§]!z§.dispose();
         }
         super.dispose();
      }
      
      private function §%$ §() : void
      {
      }
      
      override public function render(param1:§4!9§, param2:Number) : void
      {
         if(this.§^#f§)
         {
            this.§%!t§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §%!t§(param1:Context3D) : void
      {
         if(this.§'#,§)
         {
            this.§`#2§(param1);
         }
         else
         {
            this.§^=§();
         }
         this.§^#f§ = false;
      }
      
      private function §`#2§(param1:Context3D) : void
      {
         if(this.§]!z§)
         {
            this.§]!z§.removeFromParent(true);
            this.§]!z§ = null;
         }
         var _loc2_:Number = Starling.§<y§;
         var _loc3_:Number = this.§!$$§.width * _loc2_;
         var _loc4_:Number = this.§!$$§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§ "0§,this.§^"i§ * _loc2_,this.§[l§,this.§0!G§,this.§]!x§,this.§ !#§,null,null,this.§,#"§)).kerning = this.§,"t§;
         §2"v§.defaultTextFormat = _loc5_;
         §2"v§.width = _loc3_;
         §2"v§.height = _loc4_;
         §2"v§.antiAliasType = AntiAliasType.ADVANCED;
         §2"v§.selectable = false;
         §2"v§.multiline = true;
         §2"v§.wordWrap = true;
         §2"v§.text = this.§]=§;
         §2"v§.embedFonts = true;
         §2"v§.filters = this.§^#B§;
         if(§2"v§.textWidth == 0 || §2"v§.textHeight == 0)
         {
            §2"v§.embedFonts = false;
         }
         if(this.§ "@§)
         {
            this.§3e§(§2"v§);
         }
         var _loc6_:Number = §2"v§.textWidth;
         var _loc7_:Number = §2"v§.textHeight;
         var _loc8_:Number = 0;
         if(this.§,#"§ == §^#r§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§,#"§ == §^#r§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§,#"§ == §^#r§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§`!U§ == §6!j§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§`!U§ == §6!j§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§`!U§ == §6!j§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§2"v§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §2"v§.text = "";
         if(this.§;"2§ == null)
         {
            this.§;"2§ = new Rectangle();
         }
         this.§;"2§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§;$3§(param1,_loc10_,false,false,_loc2_);
         if(this.§?"%§ == null)
         {
            this.§?"%§ = new Image(_loc11_);
            this.§?"%§.§7!w§ = false;
            addChild(this.§?"%§);
         }
         else
         {
            this.§?"%§.texture.dispose();
            this.§?"%§.texture = _loc11_;
            this.§?"%§.§2#q§();
         }
      }
      
      private function §3e§(param1:flash.text.TextField) : void
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
      
      private function §^=§() : void
      {
         if(this.§?"%§)
         {
            this.§?"%§.removeFromParent(true);
            this.§?"%§ = null;
         }
         if(this.§]!z§ == null)
         {
            this.§]!z§ = new §9$'§();
            this.§]!z§.§7!w§ = false;
            addChild(this.§]!z§);
         }
         else
         {
            this.§]!z§.reset();
         }
         var _loc1_:BitmapFont = § #p§[this.§ "0§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§ "0§);
         }
         _loc1_.§ "V§(this.§]!z§,this.§!$$§.width,this.§!$$§.height,this.§]=§,this.§^"i§,this.§[l§,this.§,#"§,this.§`!U§,this.§ "@§,this.§,"t§);
         this.§;"2§ = null;
      }
      
      private function §^#?§() : void
      {
         if(this.§-#8§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§!$$§.width;
         var _loc2_:Number = this.§!$$§.height;
         var _loc3_:§4";§ = this.§-#8§.getChildAt(0) as §4";§;
         var _loc4_:§4";§ = this.§-#8§.getChildAt(1) as §4";§;
         var _loc5_:§4";§ = this.§-#8§.getChildAt(2) as §4";§;
         var _loc6_:§4";§ = this.§-#8§.getChildAt(3) as §4";§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§[l§;
      }
      
      public function get §#8§() : Rectangle
      {
         if(this.§;"2§ == null)
         {
            this.§;"2§ = this.§]!z§.getBounds(this.§]!z§);
         }
         return this.§;"2§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§!$$§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§!$$§.width = param1;
         this.§^#f§ = true;
         this.§^#?§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§!$$§.height = param1;
         this.§^#f§ = true;
         this.§^#?§();
      }
      
      public function get text() : String
      {
         return this.§]=§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§]=§ != param1)
         {
            this.§]=§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get §null §() : String
      {
         return this.§ "0§;
      }
      
      public function set §null §(param1:String) : void
      {
         if(this.§ "0§ != param1)
         {
            if(param1 == BitmapFont.§@!Y§ && § #p§[param1] == undefined)
            {
               §7#K§(new BitmapFont());
            }
            this.§ "0§ = param1;
            this.§^#f§ = true;
            this.§'#,§ = § #p§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§^"i§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§^"i§ != param1)
         {
            this.§^"i§ = param1;
            this.§^#f§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§[l§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§[l§ != param1)
         {
            this.§[l§ = param1;
            this.§^#?§();
            this.§^#f§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§,#"§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§^#r§.§7A§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§,#"§ != param1)
         {
            this.§,#"§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§`!U§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§6!j§.§7A§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§`!U§ != param1)
         {
            this.§`!U§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§-#8§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§-#8§ == null)
         {
            this.§-#8§ = new Sprite();
            addChild(this.§-#8§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§-#8§.addChild(new §4";§(1,1));
               _loc2_++;
            }
            this.§^#?§();
         }
         else if(!param1 && this.§-#8§ != null)
         {
            this.§-#8§.removeFromParent(true);
            this.§-#8§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§0!G§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§0!G§ != param1)
         {
            this.§0!G§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get §'!4§() : Boolean
      {
         return this.§]!x§;
      }
      
      public function set §'!4§(param1:Boolean) : void
      {
         if(this.§]!x§ != param1)
         {
            this.§]!x§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get §#!D§() : Boolean
      {
         return this.§ !#§;
      }
      
      public function set §#!D§(param1:Boolean) : void
      {
         if(this.§ !#§ != param1)
         {
            this.§ !#§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§,"t§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§,"t§ != param1)
         {
            this.§,"t§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get §@a§() : Boolean
      {
         return this.§ "@§;
      }
      
      public function set §@a§(param1:Boolean) : void
      {
         if(this.§ "@§ != param1)
         {
            this.§ "@§ = param1;
            this.§^#f§ = true;
         }
      }
      
      public function get §?#F§() : Array
      {
         return this.§^#B§;
      }
      
      public function set §?#F§(param1:Array) : void
      {
         if(!this.§'#,§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§^#B§ = param1.concat();
         this.§^#f§ = true;
      }
   }
}
