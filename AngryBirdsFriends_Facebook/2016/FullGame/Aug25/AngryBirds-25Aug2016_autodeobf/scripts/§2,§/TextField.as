package §2,§
{
   import §1&§.Texture;
   import §4"D§.§2!O§;
   import §4"D§.§;#C§;
   import §9$§.§3f§;
   import §9$§.DisplayObject;
   import §9$§.DisplayObjectContainer;
   import §9$§.Image;
   import §9$§.Sprite;
   import §9$§.§],§;
   import §?a§.Event;
   import §^a§.§'"1§;
   import §^a§.Starling;
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
      
      private static const §9g§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §9v§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §>!%§:Number;
      
      private var §@#!§:uint;
      
      private var §'3§:String;
      
      private var §["z§:String;
      
      private var §%"%§:String;
      
      private var §]#<§:String;
      
      private var §]h§:Boolean;
      
      private var §9!k§:Boolean;
      
      private var §7"G§:Boolean;
      
      private var §>o§:Boolean;
      
      private var §%#Z§:Boolean;
      
      private var §+#"§:Array;
      
      private var §&!L§:Boolean;
      
      private var §<#x§:Boolean;
      
      private var §%"1§:Rectangle;
      
      private var § 5§:DisplayObject;
      
      private var §7"f§:DisplayObjectContainer;
      
      private var §2d§:Image;
      
      private var §!"q§:§3f§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§'3§ = !!param3 ? param3 : "";
         this.§>!%§ = param5;
         this.§@#!§ = param6;
         this.§%"%§ = §2!O§.CENTER;
         this.§]#<§ = §;#C§.CENTER;
         this.§7"f§ = null;
         this.§%#Z§ = true;
         this.§]h§ = param7;
         this.§3#,§ = param4;
         this.§ 5§ = new §],§(param1,param2);
         this.§ 5§.alpha = 0;
         addChild(this.§ 5§);
         addEventListener(Event.§8#i§,this.§9A§);
      }
      
      public static function §1!^§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         § v§[param2] = param1;
         return param2;
      }
      
      public static function §7#R§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && § v§[param1] != undefined)
         {
            § v§[param1].dispose();
         }
         delete § v§[param1];
      }
      
      public static function §[!@§(param1:String) : BitmapFont
      {
         return § v§[param1];
      }
      
      private static function get § v§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§<#`§.§1#d§[§9g§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§<#`§.§1#d§[§9g§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§8#i§,this.§9A§);
         if(this.§2d§)
         {
            this.§2d§.texture.dispose();
         }
         if(this.§!"q§)
         {
            this.§!"q§.dispose();
         }
         super.dispose();
      }
      
      private function §9A§() : void
      {
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         if(this.§&!L§)
         {
            this.§,!R§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §,!R§(param1:Context3D) : void
      {
         if(this.§<#x§)
         {
            this.§%o§(param1);
         }
         else
         {
            this.§4"K§();
         }
         this.§&!L§ = false;
      }
      
      private function §%o§(param1:Context3D) : void
      {
         if(this.§!"q§)
         {
            this.§!"q§.removeFromParent(true);
            this.§!"q§ = null;
         }
         var _loc2_:Number = Starling.§0h§;
         var _loc3_:Number = this.§ 5§.width * _loc2_;
         var _loc4_:Number = this.§ 5§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§["z§,this.§>!%§ * _loc2_,this.§@#!§,this.§]h§,this.§9!k§,this.§7"G§,null,null,this.§%"%§)).kerning = this.§%#Z§;
         §9v§.defaultTextFormat = _loc5_;
         §9v§.width = _loc3_;
         §9v§.height = _loc4_;
         §9v§.antiAliasType = AntiAliasType.ADVANCED;
         §9v§.selectable = false;
         §9v§.multiline = true;
         §9v§.wordWrap = true;
         §9v§.text = this.§'3§;
         §9v§.embedFonts = true;
         §9v§.filters = this.§+#"§;
         if(§9v§.textWidth == 0 || §9v§.textHeight == 0)
         {
            §9v§.embedFonts = false;
         }
         if(this.§>o§)
         {
            this.§##%§(§9v§);
         }
         var _loc6_:Number = §9v§.textWidth;
         var _loc7_:Number = §9v§.textHeight;
         var _loc8_:Number = 0;
         if(this.§%"%§ == §2!O§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§%"%§ == §2!O§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§%"%§ == §2!O§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§]#<§ == §;#C§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§]#<§ == §;#C§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§]#<§ == §;#C§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§9v§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §9v§.text = "";
         if(this.§%"1§ == null)
         {
            this.§%"1§ = new Rectangle();
         }
         this.§%"1§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§@"c§(param1,_loc10_,false,false,_loc2_);
         if(this.§2d§ == null)
         {
            this.§2d§ = new Image(_loc11_);
            this.§2d§.§0$6§ = false;
            addChild(this.§2d§);
         }
         else
         {
            this.§2d§.texture.dispose();
            this.§2d§.texture = _loc11_;
            this.§2d§.§1!%§();
         }
      }
      
      private function §##%§(param1:flash.text.TextField) : void
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
      
      private function §4"K§() : void
      {
         if(this.§2d§)
         {
            this.§2d§.removeFromParent(true);
            this.§2d§ = null;
         }
         if(this.§!"q§ == null)
         {
            this.§!"q§ = new §3f§();
            this.§!"q§.§0$6§ = false;
            addChild(this.§!"q§);
         }
         else
         {
            this.§!"q§.reset();
         }
         var _loc1_:BitmapFont = § v§[this.§["z§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§["z§);
         }
         _loc1_.§@!d§(this.§!"q§,this.§ 5§.width,this.§ 5§.height,this.§'3§,this.§>!%§,this.§@#!§,this.§%"%§,this.§]#<§,this.§>o§,this.§%#Z§);
         this.§%"1§ = null;
      }
      
      private function §'"r§() : void
      {
         if(this.§7"f§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§ 5§.width;
         var _loc2_:Number = this.§ 5§.height;
         var _loc3_:§],§ = this.§7"f§.getChildAt(0) as §],§;
         var _loc4_:§],§ = this.§7"f§.getChildAt(1) as §],§;
         var _loc5_:§],§ = this.§7"f§.getChildAt(2) as §],§;
         var _loc6_:§],§ = this.§7"f§.getChildAt(3) as §],§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§@#!§;
      }
      
      public function get §&O§() : Rectangle
      {
         if(this.§%"1§ == null)
         {
            this.§%"1§ = this.§!"q§.getBounds(this.§!"q§);
         }
         return this.§%"1§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§ 5§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§ 5§.width = param1;
         this.§&!L§ = true;
         this.§'"r§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§ 5§.height = param1;
         this.§&!L§ = true;
         this.§'"r§();
      }
      
      public function get text() : String
      {
         return this.§'3§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§'3§ != param1)
         {
            this.§'3§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get §3#,§() : String
      {
         return this.§["z§;
      }
      
      public function set §3#,§(param1:String) : void
      {
         if(this.§["z§ != param1)
         {
            if(param1 == BitmapFont.§,"1§ && § v§[param1] == undefined)
            {
               §1!^§(new BitmapFont());
            }
            this.§["z§ = param1;
            this.§&!L§ = true;
            this.§<#x§ = § v§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§>!%§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§>!%§ != param1)
         {
            this.§>!%§ = param1;
            this.§&!L§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§@#!§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§@#!§ != param1)
         {
            this.§@#!§ = param1;
            this.§'"r§();
            this.§&!L§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§%"%§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§2!O§.§%"a§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§%"%§ != param1)
         {
            this.§%"%§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§]#<§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§;#C§.§%"a§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§]#<§ != param1)
         {
            this.§]#<§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§7"f§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§7"f§ == null)
         {
            this.§7"f§ = new Sprite();
            addChild(this.§7"f§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§7"f§.addChild(new §],§(1,1));
               _loc2_++;
            }
            this.§'"r§();
         }
         else if(!param1 && this.§7"f§ != null)
         {
            this.§7"f§.removeFromParent(true);
            this.§7"f§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§]h§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§]h§ != param1)
         {
            this.§]h§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get §6#'§() : Boolean
      {
         return this.§9!k§;
      }
      
      public function set §6#'§(param1:Boolean) : void
      {
         if(this.§9!k§ != param1)
         {
            this.§9!k§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get §7#&§() : Boolean
      {
         return this.§7"G§;
      }
      
      public function set §7#&§(param1:Boolean) : void
      {
         if(this.§7"G§ != param1)
         {
            this.§7"G§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§%#Z§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§%#Z§ != param1)
         {
            this.§%#Z§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get §'#^§() : Boolean
      {
         return this.§>o§;
      }
      
      public function set §'#^§(param1:Boolean) : void
      {
         if(this.§>o§ != param1)
         {
            this.§>o§ = param1;
            this.§&!L§ = true;
         }
      }
      
      public function get §!"2§() : Array
      {
         return this.§+#"§;
      }
      
      public function set §!"2§(param1:Array) : void
      {
         if(!this.§<#x§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§+#"§ = param1.concat();
         this.§&!L§ = true;
      }
   }
}
