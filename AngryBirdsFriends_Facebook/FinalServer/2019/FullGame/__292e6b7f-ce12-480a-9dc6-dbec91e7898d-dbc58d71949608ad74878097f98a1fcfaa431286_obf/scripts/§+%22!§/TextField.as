package §+"!§
{
   import §"#k§.§79§;
   import §"#k§.Starling;
   import §,#e§.§;!`§;
   import §,#e§.DisplayObject;
   import §,#e§.DisplayObjectContainer;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §,#e§.§^n§;
   import §,$&§.Event;
   import §-#]§.Texture;
   import §8#p§.§!"'§;
   import §8#p§.§>§;
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
      
      private static const §>v§:String = "starling.display.TextField.BitmapFonts";
      
      private static var §#$§:flash.text.TextField = new flash.text.TextField();
       
      
      private var §@e§:Number;
      
      private var §?$D§:uint;
      
      private var §7#A§:String;
      
      private var §1,§:String;
      
      private var §2!?§:String;
      
      private var §"!J§:String;
      
      private var §<!d§:Boolean;
      
      private var §=!8§:Boolean;
      
      private var §`!k§:Boolean;
      
      private var §?#v§:Boolean;
      
      private var §;V§:Boolean;
      
      private var §]"6§:Array;
      
      private var §;#6§:Boolean;
      
      private var §<!4§:Boolean;
      
      private var §6H§:Rectangle;
      
      private var §""C§:DisplayObject;
      
      private var §1i§:DisplayObjectContainer;
      
      private var §3#F§:Image;
      
      private var §+!]§:§^n§;
      
      public function TextField(param1:int, param2:int, param3:String, param4:String = "Verdana", param5:Number = 12, param6:uint = 0, param7:Boolean = false)
      {
         super();
         this.§7#A§ = !!param3 ? param3 : "";
         this.§@e§ = param5;
         this.§?$D§ = param6;
         this.§2!?§ = §!"'§.CENTER;
         this.§"!J§ = §>#3§.CENTER;
         this.§1i§ = null;
         this.§;V§ = true;
         this.§<!d§ = param7;
         this.§6$2§ = param4;
         this.§""C§ = new §;!`§(param1,param2);
         this.§""C§.alpha = 0;
         addChild(this.§""C§);
         addEventListener(Event.§+#,§,this.§2!-§);
      }
      
      public static function §5#j§(param1:BitmapFont, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = param1.name;
         }
         §##q§[param2] = param1;
         return param2;
      }
      
      public static function §?3§(param1:String, param2:Boolean = true) : void
      {
         if(param2 && §##q§[param1] != undefined)
         {
            §##q§[param1].dispose();
         }
         delete §##q§[param1];
      }
      
      public static function § 2§(param1:String) : BitmapFont
      {
         return §##q§[param1];
      }
      
      private static function get §##q§() : Dictionary
      {
         var _loc1_:Dictionary = Starling.§4$#§.§8`§[§>v§] as Dictionary;
         if(_loc1_ == null)
         {
            _loc1_ = new Dictionary();
            Starling.§4$#§.§8`§[§>v§] = _loc1_;
         }
         return _loc1_;
      }
      
      override public function dispose() : void
      {
         removeEventListener(Event.§+#,§,this.§2!-§);
         if(this.§3#F§)
         {
            this.§3#F§.texture.dispose();
         }
         if(this.§+!]§)
         {
            this.§+!]§.dispose();
         }
         super.dispose();
      }
      
      private function §2!-§() : void
      {
      }
      
      override public function render(param1:§79§, param2:Number) : void
      {
         if(this.§;#6§)
         {
            this.§9"[§(param1.context);
         }
         super.render(param1,param2);
      }
      
      private function §9"[§(param1:Context3D) : void
      {
         if(this.§<!4§)
         {
            this.§5#'§(param1);
         }
         else
         {
            this.§3$B§();
         }
         this.§;#6§ = false;
      }
      
      private function §5#'§(param1:Context3D) : void
      {
         if(this.§+!]§)
         {
            this.§+!]§.removeFromParent(true);
            this.§+!]§ = null;
         }
         var _loc2_:Number = Starling.§3!F§;
         var _loc3_:Number = this.§""C§.width * _loc2_;
         var _loc4_:Number = this.§""C§.height * _loc2_;
         var _loc5_:TextFormat;
         (_loc5_ = new TextFormat(this.§1,§,this.§@e§ * _loc2_,this.§?$D§,this.§<!d§,this.§=!8§,this.§`!k§,null,null,this.§2!?§)).kerning = this.§;V§;
         §#$§.defaultTextFormat = _loc5_;
         §#$§.width = _loc3_;
         §#$§.height = _loc4_;
         §#$§.antiAliasType = AntiAliasType.ADVANCED;
         §#$§.selectable = false;
         §#$§.multiline = true;
         §#$§.wordWrap = true;
         §#$§.text = this.§7#A§;
         §#$§.embedFonts = true;
         §#$§.filters = this.§]"6§;
         if(§#$§.textWidth == 0 || §#$§.textHeight == 0)
         {
            §#$§.embedFonts = false;
         }
         if(this.§?#v§)
         {
            this.§&!j§(§#$§);
         }
         var _loc6_:Number = §#$§.textWidth;
         var _loc7_:Number = §#$§.textHeight;
         var _loc8_:Number = 0;
         if(this.§2!?§ == §!"'§.LEFT)
         {
            _loc8_ = 2;
         }
         else if(this.§2!?§ == §!"'§.CENTER)
         {
            _loc8_ = (_loc3_ - _loc6_) / 2;
         }
         else if(this.§2!?§ == §!"'§.RIGHT)
         {
            _loc8_ = _loc3_ - _loc6_ - 2;
         }
         var _loc9_:Number = 0;
         if(this.§"!J§ == §>#3§.TOP)
         {
            _loc9_ = 2;
         }
         else if(this.§"!J§ == §>#3§.CENTER)
         {
            _loc9_ = (_loc4_ - _loc7_) / 2;
         }
         else if(this.§"!J§ == §>#3§.BOTTOM)
         {
            _loc9_ = _loc4_ - _loc7_ - 2;
         }
         var _loc10_:BitmapData;
         (_loc10_ = new BitmapData(_loc3_,_loc4_,true,0)).draw(§#$§,new Matrix(1,0,0,1,0,int(_loc9_) - 2));
         §#$§.text = "";
         if(this.§6H§ == null)
         {
            this.§6H§ = new Rectangle();
         }
         this.§6H§.setTo(_loc8_ / _loc2_,_loc9_ / _loc2_,_loc6_ / _loc2_,_loc7_ / _loc2_);
         var _loc11_:Texture = Texture.§4"§(param1,_loc10_,false,false,_loc2_);
         if(this.§3#F§ == null)
         {
            this.§3#F§ = new Image(_loc11_);
            this.§3#F§.§4"e§ = false;
            addChild(this.§3#F§);
         }
         else
         {
            this.§3#F§.texture.dispose();
            this.§3#F§.texture = _loc11_;
            this.§3#F§.§?!#§();
         }
      }
      
      private function §&!j§(param1:flash.text.TextField) : void
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
      
      private function §3$B§() : void
      {
         if(this.§3#F§)
         {
            this.§3#F§.removeFromParent(true);
            this.§3#F§ = null;
         }
         if(this.§+!]§ == null)
         {
            this.§+!]§ = new §^n§();
            this.§+!]§.§4"e§ = false;
            addChild(this.§+!]§);
         }
         else
         {
            this.§+!]§.reset();
         }
         var _loc1_:BitmapFont = §##q§[this.§1,§];
         if(_loc1_ == null)
         {
            throw new Error("Bitmap font not registered: " + this.§1,§);
         }
         _loc1_.§##2§(this.§+!]§,this.§""C§.width,this.§""C§.height,this.§7#A§,this.§@e§,this.§?$D§,this.§2!?§,this.§"!J§,this.§?#v§,this.§;V§);
         this.§6H§ = null;
      }
      
      private function §!!`§() : void
      {
         if(this.§1i§ == null)
         {
            return;
         }
         var _loc1_:Number = this.§""C§.width;
         var _loc2_:Number = this.§""C§.height;
         var _loc3_:§;!`§ = this.§1i§.getChildAt(0) as §;!`§;
         var _loc4_:§;!`§ = this.§1i§.getChildAt(1) as §;!`§;
         var _loc5_:§;!`§ = this.§1i§.getChildAt(2) as §;!`§;
         var _loc6_:§;!`§ = this.§1i§.getChildAt(3) as §;!`§;
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
         _loc3_.color = _loc4_.color = _loc5_.color = _loc6_.color = this.§?$D§;
      }
      
      public function get §?"N§() : Rectangle
      {
         if(this.§6H§ == null)
         {
            this.§6H§ = this.§+!]§.getBounds(this.§+!]§);
         }
         return this.§6H§.clone();
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         return this.§""C§.getBounds(param1,param2);
      }
      
      override public function set width(param1:Number) : void
      {
         this.§""C§.width = param1;
         this.§;#6§ = true;
         this.§!!`§();
      }
      
      override public function set height(param1:Number) : void
      {
         this.§""C§.height = param1;
         this.§;#6§ = true;
         this.§!!`§();
      }
      
      public function get text() : String
      {
         return this.§7#A§;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         if(this.§7#A§ != param1)
         {
            this.§7#A§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get §6$2§() : String
      {
         return this.§1,§;
      }
      
      public function set §6$2§(param1:String) : void
      {
         if(this.§1,§ != param1)
         {
            if(param1 == BitmapFont.§=#t§ && §##q§[param1] == undefined)
            {
               §5#j§(new BitmapFont());
            }
            this.§1,§ = param1;
            this.§;#6§ = true;
            this.§<!4§ = §##q§[param1] == undefined;
         }
      }
      
      public function get fontSize() : Number
      {
         return this.§@e§;
      }
      
      public function set fontSize(param1:Number) : void
      {
         if(this.§@e§ != param1)
         {
            this.§@e§ = param1;
            this.§;#6§ = true;
         }
      }
      
      override public function get color() : uint
      {
         return this.§?$D§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§?$D§ != param1)
         {
            this.§?$D§ = param1;
            this.§!!`§();
            this.§;#6§ = true;
         }
      }
      
      public function get hAlign() : String
      {
         return this.§2!?§;
      }
      
      public function set hAlign(param1:String) : void
      {
         if(!§!"'§.§4<§(param1))
         {
            throw new ArgumentError("Invalid horizontal align: " + param1);
         }
         if(this.§2!?§ != param1)
         {
            this.§2!?§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get vAlign() : String
      {
         return this.§"!J§;
      }
      
      public function set vAlign(param1:String) : void
      {
         if(!§>#3§.§4<§(param1))
         {
            throw new ArgumentError("Invalid vertical align: " + param1);
         }
         if(this.§"!J§ != param1)
         {
            this.§"!J§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get border() : Boolean
      {
         return this.§1i§ != null;
      }
      
      public function set border(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(param1 && this.§1i§ == null)
         {
            this.§1i§ = new Sprite();
            addChild(this.§1i§);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this.§1i§.addChild(new §;!`§(1,1));
               _loc2_++;
            }
            this.§!!`§();
         }
         else if(!param1 && this.§1i§ != null)
         {
            this.§1i§.removeFromParent(true);
            this.§1i§ = null;
         }
      }
      
      public function get bold() : Boolean
      {
         return this.§<!d§;
      }
      
      public function set bold(param1:Boolean) : void
      {
         if(this.§<!d§ != param1)
         {
            this.§<!d§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get §<"h§() : Boolean
      {
         return this.§=!8§;
      }
      
      public function set §<"h§(param1:Boolean) : void
      {
         if(this.§=!8§ != param1)
         {
            this.§=!8§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get §'!j§() : Boolean
      {
         return this.§`!k§;
      }
      
      public function set §'!j§(param1:Boolean) : void
      {
         if(this.§`!k§ != param1)
         {
            this.§`!k§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get kerning() : Boolean
      {
         return this.§;V§;
      }
      
      public function set kerning(param1:Boolean) : void
      {
         if(this.§;V§ != param1)
         {
            this.§;V§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get §9$'§() : Boolean
      {
         return this.§?#v§;
      }
      
      public function set §9$'§(param1:Boolean) : void
      {
         if(this.§?#v§ != param1)
         {
            this.§?#v§ = param1;
            this.§;#6§ = true;
         }
      }
      
      public function get §?#B§() : Array
      {
         return this.§]"6§;
      }
      
      public function set §?#B§(param1:Array) : void
      {
         if(!this.§<!4§)
         {
            throw new Error("The TextField.nativeFilters property cannot be used on Bitmap fonts.");
         }
         this.§]"6§ = param1.concat();
         this.§;#6§ = true;
      }
   }
}
