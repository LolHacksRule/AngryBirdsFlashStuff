package §&!D§
{
   import §!$;§.Event;
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'!j§.§^$$§;
   import §,#=§.§4A§;
   import §,#=§.§6G§;
   import §6#H§.§,"$§;
   import §6#H§.§<O§;
   import §6#H§.DisplayObject;
   import §6#H§.DisplayObjectContainer;
   import §6#H§.Image;
   import §6#H§.Sprite;
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
      
      private static const §+D§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §>!l§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §+!u§:Number;
      
      private var §0!j§:uint;
      
      private var § &§:String;
      
      private var §0#r§:String;
      
      private var §3!k§:String;
      
      private var §8s§:String;
      
      private var §&J§:Boolean;
      
      private var §0#Z§:Boolean;
      
      private var §"#+§:Boolean;
      
      private var §%0§:Boolean;
      
      private var §5g§:Boolean;
      
      private var §,#D§:Array;
      
      private var §,"^§:Boolean;
      
      private var §[#b§:Boolean;
      
      private var §>#'§:Rectangle;
      
      private var §4#G§:DisplayObject;
      
      private var §<"r§:DisplayObjectContainer;
      
      private var §,#_§:Image;
      
      private var §[#X§:§<O§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§ &§ = !!param3 ? param3 : "";
         this.§+!u§ = param5;
         this.§0!j§ = param6;
         this.§3!k§ = §6G§.CENTER;
         this.§8s§ = §4A§.CENTER;
         this.§<"r§ = null;
         this.§5g§ = true;
         this.§&J§ = param7;
         this.§3!e§ = param4;
         this.§4#G§ = new §,"$§(param1,param2);
         this.§4#G§.alpha = 0;
         addChild(this.§4#G§);
         addEventListener(Event.§4"g§,this.§4!U§);
      }
      
      public static function §<$1§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         §;h§[param2] = param1;
         return param2;
      }
      
      public static function §2"m§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && §;h§[param1] != undefined)
         {
            §;h§[param1].dispose();
         }
         delete §;h§[param1];
      }
      
      public static function §6# §(param1:String) : BitmapFont
      {
         return §;h§[param1];
      }
      
      private static function get §;h§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§>x§.§&N§[§+D§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§>x§.§&N§[§+D§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§4"g§,this.§4!U§);
         if(this.§,#_§)
         {
            this.§,#_§.texture.dispose();
         }
         if(this.§[#X§)
         {
            this.§[#X§.dispose();
         }
         super.dispose();
      }
      
      private function §4!U§() : void
      {
      }
      
      override public function render(param1:§^$$§, param2:Number) : void
      {
         if(this.§,"^§)
         {
            this.§,^§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §,^§(param1:Context3D) : void
      {
         if(this.§[#b§)
         {
            this.§"!G§(param1);
         }
         else
         {
            this.§2"p§();
         }
         this.§,"^§ = false;
      }
      
      private function §"!G§(param1:Context3D) : void
      {
         if(this.§[#X§)
         {
            this.§[#X§.removeFromParent(true);
            this.§[#X§ = null;
         }
         var _loc2_:Number = Starling.§&C§;
         var _loc3_:Number = this.§4#G§.width * _loc2_;
         var _loc4_:Number = this.§4#G§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§0#r§,this.§+!u§ * _loc2_,this.§0!j§,this.§&J§,this.§0#Z§,this.§"#+§,null,null,this.§3!k§)).kerning = this.§5g§;
         §>!l§.defaultTextFormat = _loc5_;
         §>!l§.width = _loc3_;
         §>!l§.height = _loc4_;
         §>!l§.antiAliasType = AntiAliasType.ADVANCED;
         §>!l§.selectable = false;
         §>!l§.multiline = true;
         §>!l§.wordWrap = true;
         §>!l§.text = this.§ &§;
         §>!l§.embedFonts = true;
         §>!l§.filters = this.§,#D§;
         if(§>!l§.textWidth == 0 || §>!l§.textHeight == 0)
         {
            §>!l§.embedFonts = false;
         }
         if(this.§%0§)
         {
            this.§&#1§(§>!l§);
         }
         var _loc6_:Number = §>!l§.textWidth;
         var _loc7_:Number = §>!l§.textHeight;
         var _loc8_:Number = 0;
         if(this.§3!k§ == §6G§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§3!k§ == §6G§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§3!k§ == §6G§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§8s§ == §4A§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§8s§ == §4A§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§8s§ == §4A§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§>!l§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §>!l§.text = "";
         if(this.§>#'§ == null)
         {
            this.§>#'§ = new Rectangle();
         }
         this.§>#'§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§0#B§(param1,_loc10_,false,false,_loc2_);
         if(this.§,#_§ == null)
         {
            this.§,#_§ = new Image(_loc11_);
            this.§,#_§.§?#N§ = false;
            addChild(this.§,#_§);
         }
         else
         {
            this.§,#_§.texture.dispose();
            this.§,#_§.texture = _loc11_;
            this.§,#_§.§;"o§();
         }
      }
      
      private function §&#1§(param1:flash.text.TextField) : void
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
      
      private function §2"p§() : void
      {
         if(this.§,#_§)
         {
            this.§,#_§.removeFromParent(true);
            this.§,#_§ = null;
         }
         if(this.§[#X§ == null)
         {
            this.§[#X§ = new §<O§();
            this.§[#X§.§?#N§ = false;
            addChild(this.§[#X§);
         }
         else
         {
            this.§[#X§.reset();
         }
         var _loc1_:BitmapFont = §;h§[this.§0#r§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§0#r§);
         }
         _loc1_.§[v§(this.§[#X§,this.§4#G§.width,this.§4#G§.height,this.§ &§,this.§+!u§,this.§0!j§,this.§3!k§,this.§8s§,this.§%0§,this.§5g§);
         this.§>#'§ = null;
      }
      
      private function §2K§() : void
      {
         if(this.§<"r§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§4#G§.width;
         var _loc2_:Number = this.§4#G§.height;
         var _loc3_:§,"$§ = this.§<"r§.getChildAt(0) as §,"$§;
         var _loc4_:§,"$§ = this.§<"r§.getChildAt(1) as §,"$§;
         var _loc5_:§,"$§ = this.§<"r§.getChildAt(2) as §,"$§;
         var _loc6_:§,"$§ = this.§<"r§.getChildAt(3) as §,"$§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§0!j§;
      }
      
      public function get §#v§() : Rectangle
      {
         if(this.§>#'§ == null)
         {
            this.§>#'§ = this.§[#X§.getBounds(this.§[#X§);
         }
         return this.§>#'§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§4#G§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§4#G§.width = param1;
         this.§,"^§ = true;
         this.§2K§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§4#G§.height = param1;
         this.§,"^§ = true;
         this.§2K§();
      }
      
      public function get text() : String
      {
         return this.§ &§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§ &§ != param1)
         {
            this.§ &§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get §3!e§() : String
      {
         return this.§0#r§;
      }
      
      public function set §3!e§(param1:String) : void
      {
         if(this.§0#r§ != param1)
         {
            if(param1 == BitmapFont.§!!-§ && §;h§[param1] == undefined)
            {
               §<$1§(new BitmapFont());
            }
            this.§0#r§ = param1;
            this.§,"^§ = true;
            this.§[#b§ = §;h§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§+!u§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§+!u§ != param1)
         {
            this.§+!u§ = param1;
            this.§,"^§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§0!j§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§0!j§ != param1)
         {
            this.§0!j§ = param1;
            this.§2K§();
            this.§,"^§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§3!k§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§6G§.§3!v§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§3!k§ != param1)
         {
            this.§3!k§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§8s§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§4A§.§3!v§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§8s§ != param1)
         {
            this.§8s§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§<"r§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§<"r§ == null)
         {
            this.§<"r§ = new Sprite();
            addChild(this.§<"r§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§<"r§.addChild(new §,"$§(1,1));
               _loc2_++;
            }
            this.§2K§();
         }
         else if(!param1 && this.§<"r§ != null)
         {
            this.§<"r§.removeFromParent(true);
            this.§<"r§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§&J§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§&J§ != param1)
         {
            this.§&J§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get §>!P§() : Boolean
      {
         return this.§0#Z§;
      }
      
      public function set §>!P§(param1:Boolean) : void
      {
         if(this.§0#Z§ != param1)
         {
            this.§0#Z§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get §0!G§() : Boolean
      {
         return this.§"#+§;
      }
      
      public function set §0!G§(param1:Boolean) : void
      {
         if(this.§"#+§ != param1)
         {
            this.§"#+§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§5g§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§5g§ != param1)
         {
            this.§5g§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get §"[§() : Boolean
      {
         return this.§%0§;
      }
      
      public function set §"[§(param1:Boolean) : void
      {
         if(this.§%0§ != param1)
         {
            this.§%0§ = param1;
            this.§,"^§ = true;
         }
      }
      
      public function get §<#;§() : Array
      {
         return this.§,#D§;
      }
      
      public function set §<#;§(param1:Array) : void
      {
         if(!this.§[#b§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§,#D§ = param1.concat();
         this.§,"^§ = true;
      }
   }
}
