package §<$;§
{
   import §&!v§.§0"s§;
   import §&!v§.DisplayObject;
   import §&!v§.DisplayObjectContainer;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §&!v§.§^"L§;
   import §-"+§.Texture;
   import §1P§.Event;
   import §9+§.Starling;
   import §9+§.§]"+§;
   import §>l§.§7!<§;
   import §>l§.§9#§;
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
      
      private static const §!!M§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §+"h§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §<"R§:Number;
      
      private var §'"V§:uint;
      
      private var §0"]§:String;
      
      private var §>!T§:String;
      
      private var §&!5§:String;
      
      private var §<B§:String;
      
      private var §!#+§:Boolean;
      
      private var §09§:Boolean;
      
      private var §9P§:Boolean;
      
      private var §1#V§:Boolean;
      
      private var §[Z§:Boolean;
      
      private var §,"e§:Array;
      
      private var §8c§:Boolean;
      
      private var §!#6§:Boolean;
      
      private var §^4§:Rectangle;
      
      private var §9#"§:DisplayObject;
      
      private var §7!3§:DisplayObjectContainer;
      
      private var §9"s§:Image;
      
      private var §+!$§:§^"L§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§0"]§ = !!param3 ? param3 : "";
         this.§<"R§ = param5;
         this.§'"V§ = param6;
         this.§&!5§ = §9#§.CENTER;
         this.§<B§ = §7!<§.CENTER;
         this.§7!3§ = null;
         this.§[Z§ = true;
         this.§!#+§ = param7;
         this.§4F§ = param4;
         this.§9#"§ = new §0"s§(param1,param2);
         this.§9#"§.alpha = 0;
         addChild(this.§9#"§);
         addEventListener(Event.§#!G§,this.§3#+§);
      }
      
      public static function §&!&§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         §'v§[param2] = param1;
         return param2;
      }
      
      public static function §=!&§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && §'v§[param1] != undefined)
         {
            §'v§[param1].dispose();
         }
         delete §'v§[param1];
      }
      
      public static function §4$3§(param1:String) : BitmapFont
      {
         return §'v§[param1];
      }
      
      private static function get §'v§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§?$#§.§`"=§[§!!M§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§?$#§.§`"=§[§!!M§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§#!G§,this.§3#+§);
         if(this.§9"s§)
         {
            this.§9"s§.texture.dispose();
         }
         if(this.§+!$§)
         {
            this.§+!$§.dispose();
         }
         super.dispose();
      }
      
      private function §3#+§() : void
      {
      }
      
      override public function render(param1:§]"+§, param2:Number) : void
      {
         if(this.§8c§)
         {
            this.§5! §(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §5! §(param1:Context3D) : void
      {
         if(this.§!#6§)
         {
            this.§+R§(param1);
         }
         else
         {
            this.§8"7§();
         }
         this.§8c§ = false;
      }
      
      private function §+R§(param1:Context3D) : void
      {
         if(this.§+!$§)
         {
            this.§+!$§.removeFromParent(true);
            this.§+!$§ = null;
         }
         var _loc2_:Number = Starling.§7O§;
         var _loc3_:Number = this.§9#"§.width * _loc2_;
         var _loc4_:Number = this.§9#"§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§>!T§,this.§<"R§ * _loc2_,this.§'"V§,this.§!#+§,this.§09§,this.§9P§,null,null,this.§&!5§)).kerning = this.§[Z§;
         §+"h§.defaultTextFormat = _loc5_;
         §+"h§.width = _loc3_;
         §+"h§.height = _loc4_;
         §+"h§.antiAliasType = AntiAliasType.ADVANCED;
         §+"h§.selectable = false;
         §+"h§.multiline = true;
         §+"h§.wordWrap = true;
         §+"h§.text = this.§0"]§;
         §+"h§.embedFonts = true;
         §+"h§.filters = this.§,"e§;
         if(§+"h§.textWidth == 0 || §+"h§.textHeight == 0)
         {
            §+"h§.embedFonts = false;
         }
         if(this.§1#V§)
         {
            this.§+"K§(§+"h§);
         }
         var _loc6_:Number = §+"h§.textWidth;
         var _loc7_:Number = §+"h§.textHeight;
         var _loc8_:Number = 0;
         if(this.§&!5§ == §9#§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§&!5§ == §9#§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§&!5§ == §9#§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§<B§ == §7!<§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§<B§ == §7!<§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§<B§ == §7!<§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§+"h§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §+"h§.text = "";
         if(this.§^4§ == null)
         {
            this.§^4§ = new Rectangle();
         }
         this.§^4§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§!"I§(param1,_loc10_,false,false,_loc2_);
         if(this.§9"s§ == null)
         {
            this.§9"s§ = new Image(_loc11_);
            this.§9"s§.§ !$§ = false;
            addChild(this.§9"s§);
         }
         else
         {
            this.§9"s§.texture.dispose();
            this.§9"s§.texture = _loc11_;
            this.§9"s§.§%!=§();
         }
      }
      
      private function §+"K§(param1:flash.text.TextField) : void
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
      
      private function §8"7§() : void
      {
         if(this.§9"s§)
         {
            this.§9"s§.removeFromParent(true);
            this.§9"s§ = null;
         }
         if(this.§+!$§ == null)
         {
            this.§+!$§ = new §^"L§();
            this.§+!$§.§ !$§ = false;
            addChild(this.§+!$§);
         }
         else
         {
            this.§+!$§.reset();
         }
         var _loc1_:BitmapFont = §'v§[this.§>!T§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§>!T§);
         }
         _loc1_.§&#+§(this.§+!$§,this.§9#"§.width,this.§9#"§.height,this.§0"]§,this.§<"R§,this.§'"V§,this.§&!5§,this.§<B§,this.§1#V§,this.§[Z§);
         this.§^4§ = null;
      }
      
      private function § !1§() : void
      {
         if(this.§7!3§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§9#"§.width;
         var _loc2_:Number = this.§9#"§.height;
         var _loc3_:§0"s§ = this.§7!3§.getChildAt(0) as §0"s§;
         var _loc4_:§0"s§ = this.§7!3§.getChildAt(1) as §0"s§;
         var _loc5_:§0"s§ = this.§7!3§.getChildAt(2) as §0"s§;
         var _loc6_:§0"s§ = this.§7!3§.getChildAt(3) as §0"s§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§'"V§;
      }
      
      public function get § #7§() : Rectangle
      {
         if(this.§^4§ == null)
         {
            this.§^4§ = this.§+!$§.getBounds(this.§+!$§);
         }
         return this.§^4§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§9#"§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§9#"§.width = param1;
         this.§8c§ = true;
         this.§ !1§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§9#"§.height = param1;
         this.§8c§ = true;
         this.§ !1§();
      }
      
      public function get text() : String
      {
         return this.§0"]§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§0"]§ != param1)
         {
            this.§0"]§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get §4F§() : String
      {
         return this.§>!T§;
      }
      
      public function set §4F§(param1:String) : void
      {
         if(this.§>!T§ != param1)
         {
            if(param1 == BitmapFont.§4+§ && §'v§[param1] == undefined)
            {
               §&!&§(new BitmapFont());
            }
            this.§>!T§ = param1;
            this.§8c§ = true;
            this.§!#6§ = §'v§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§<"R§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§<"R§ != param1)
         {
            this.§<"R§ = param1;
            this.§8c§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§'"V§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§'"V§ != param1)
         {
            this.§'"V§ = param1;
            this.§ !1§();
            this.§8c§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§&!5§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§9#§.§'$1§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§&!5§ != param1)
         {
            this.§&!5§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§<B§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§7!<§.§'$1§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§<B§ != param1)
         {
            this.§<B§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§7!3§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§7!3§ == null)
         {
            this.§7!3§ = new Sprite();
            addChild(this.§7!3§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§7!3§.addChild(new §0"s§(1,1));
               _loc2_++;
            }
            this.§ !1§();
         }
         else if(!param1 && this.§7!3§ != null)
         {
            this.§7!3§.removeFromParent(true);
            this.§7!3§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§!#+§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§!#+§ != param1)
         {
            this.§!#+§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get §!"=§() : Boolean
      {
         return this.§09§;
      }
      
      public function set §!"=§(param1:Boolean) : void
      {
         if(this.§09§ != param1)
         {
            this.§09§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get §4#I§() : Boolean
      {
         return this.§9P§;
      }
      
      public function set §4#I§(param1:Boolean) : void
      {
         if(this.§9P§ != param1)
         {
            this.§9P§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§[Z§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§[Z§ != param1)
         {
            this.§[Z§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get §6"R§() : Boolean
      {
         return this.§1#V§;
      }
      
      public function set §6"R§(param1:Boolean) : void
      {
         if(this.§1#V§ != param1)
         {
            this.§1#V§ = param1;
            this.§8c§ = true;
         }
      }
      
      public function get §@"s§() : Array
      {
         return this.§,"e§;
      }
      
      public function set §@"s§(param1:Array) : void
      {
         if(!this.§!#6§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§,"e§ = param1.concat();
         this.§8c§ = true;
      }
   }
}
