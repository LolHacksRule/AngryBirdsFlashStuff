package §"!-§
{
   import §!!<§.§"!O§;
   import §!!<§.§+!9§;
   import §!!<§.§29§;
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §!!<§.§`!J§;
   import §!!<§.§`-§;
   import §+!n§.§7X§;
   import §,!k§.b2Vec2;
   import §0!Y§.§#"5§;
   import §0!Y§.§-f§;
   import §0!Y§.Sprite;
   import §6!?§.§6B§;
   import §6!?§.§7!t§;
   import §82§.§%v§;
   import §82§.§5P§;
   import §82§.§8W§;
   import §9![§.§1!i§;
   import §<!A§.§=!s§;
   import §<!A§.§@!h§;
   import §<!A§.§@O§;
   import §<!A§.§false§;
   import §>!a§.§-?§;
   import §>H§.b2PrismaticJoint;
   import §>H§.b2RevoluteJoint;
   import §@"1§.§"1§;
   import §@"1§.§"h§;
   import §@"1§.§6n§;
   import §^z§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1i§ implements §!l§
   {
      
      private static const §%U§:Boolean = false;
      
      private static const §1Z§:int = 1000000000;
      
      public static const §&!d§:int = -1;
      
      public static const §^!;§:int = -2;
       
      
      protected var §&!B§:Vector.<§@!4§>;
      
      protected var §&S§:Vector.<§0!X§>;
      
      protected var § each§:Vector.<§5P§>;
      
      private var §[!'§:int = 1000000000;
      
      public var §`W§:§"h§;
      
      protected var §%!j§:Vector.<§,m§>;
      
      protected var §7!M§:§0!Y§.Sprite;
      
      protected var §+! §:§0!Y§.Sprite;
      
      protected var §`!8§:§0!Y§.Sprite;
      
      protected var §^Y§:§0!Y§.Sprite;
      
      protected var §=u§:Vector.<Texture>;
      
      protected var §&!R§:Vector.<§@!h§>;
      
      protected var § =§:int = 1;
      
      protected var §[!§:Vector.<§@O§>;
      
      protected var §do§:int = 0;
      
      private var §>j§:int = 0;
      
      private var §@!T§:int = 0;
      
      private var §;!5§:§false§;
      
      private var §,!g§:§ !§;
      
      private var §-!q§:Boolean = true;
      
      private var §^B§:Boolean = true;
      
      public function §1i§(param1:§"h§, param2:§-?§, param3:§0!Y§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§&!B§ = new Vector.<§@!4§>();
         this.§&S§ = new Vector.<§0!X§>();
         this.§ each§ = new Vector.<§5P§>();
         this.§%!j§ = new Vector.<§,m§>();
         this.§=u§ = new Vector.<Texture>();
         this.§[!§ = new Vector.<§@O§>();
         this.§;!5§ = new §false§();
         super();
         this.§`W§ = param1;
         this.§7!M§ = param3;
         this.§7!M§.§9"$§ = false;
         this.§^B§ = true;
         this.§-!q§ = true;
         this.§+! § = new §0!Y§.Sprite();
         this.§`!8§ = new §0!Y§.Sprite();
         this.§^Y§ = new §0!Y§.Sprite();
         this.§7!M§.addChild(this.§+! §);
         this.§7!M§.addChild(this.§`!8§);
         if(param2.§-X§)
         {
            _loc5_ = (this.§`W§.§7!p§.§>t§ + this.§`W§.§7!p§.§-!"§) / 2;
            _loc6_ = 0 + §6n§.§0!"§;
            this.§&0§(param4,_loc5_,_loc6_,0,§1i§.§&!d§);
         }
         this.§'!N§(param2);
      }
      
      public function get §1j§() : §0!Y§.Sprite
      {
         return this.§^Y§;
      }
      
      public function get §61§() : §0!Y§.Sprite
      {
         return this.§7!M§;
      }
      
      public function get activeObject() : §[-§
      {
         return this.§,!g§;
      }
      
      public function get objectCount() : int
      {
         return this.§&!B§.length;
      }
      
      public function §89§(param1:String) : §>"4§
      {
         return this.§`W§.levelItemManager.§7`§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§,!g§)
         {
            _loc3_ = this.§,!g§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §'!N§(param1:§-?§) : void
      {
         var _loc3_:§false§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§>"4§ = null;
         var _loc6_:§=!s§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§`W§.levelItemManager.§7`§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§3!s§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§!!'§();
         this.§="3§(true);
         this.§&!R§ = new Vector.<§@!h§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§2y§)
         {
            _loc6_ = param1.§8" §(_loc2_);
            this.§4"4§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§&!B§.length > 0)
         {
            this.§9%§(0,false,true);
         }
         while(this.§ each§.length > 0)
         {
            this.§`!0§(0);
         }
         this.§&!B§ = null;
         this.§&S§ = null;
         this.§ each§ = null;
         this.§[!§ = null;
         if(this.§7!M§)
         {
            this.§7!M§.dispose();
            this.§7!M§ = null;
         }
         this.§+! § = null;
         this.§`!8§ = null;
         if(this.§^Y§)
         {
            this.§^Y§.dispose();
            this.§^Y§ = null;
         }
         while(this.§=u§.length > 0)
         {
            _loc1_ = this.§=u§.pop();
            this.§`W§.§&p§.§=N§(_loc1_);
         }
      }
      
      private function §="3§(param1:Boolean) : void
      {
         this.§+! §.visible = param1;
      }
      
      private function §!!'§() : void
      {
         var _loc3_:§@!4§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§[-§ = null;
         var _loc6_:§`!J§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§#"5§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[-§> = new Vector.<§[-§>();
         for each(_loc3_ in this.§&!B§)
         {
            if((_loc5_ = _loc3_ as §[-§) && _loc5_.§&q§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§`!A§(),_loc6_.§#!l§()) / §"h§.§4<§ * Math.sqrt(2);
               _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
               if(_loc1_ == null)
               {
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               else
               {
                  _loc1_ = _loc1_.union(_loc4_);
               }
            }
         }
         if(_loc1_)
         {
            _loc8_ = this.§`W§.camera.§"G§ / §"h§.§4<§;
            _loc9_ = this.§`W§.camera.§^m§ / §"h§.§4<§;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
            _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
            if(_loc1_.left >= _loc1_.right - 1)
            {
               return;
            }
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 1.05;
               _loc1_.top /= 1.05;
               _loc1_.right /= 1.05;
               _loc1_.bottom /= 1.05;
               _loc12_ /= 1.05;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.§27§();
            this.§6D§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§>8§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§`W§.§&p§.§6!&§(_loc17_);
            this.§=u§.push(_loc20_);
            (_loc21_ = new §#"5§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§+! §.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §>8§(param1:Vector.<§[-§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§[-§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§`!J§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §`-§)
            {
               this.§'D§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§?!>§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §"!O§)
            {
               if((_loc12_ as §"!O§).§+",§.length == 4)
               {
                  this.§'D§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§?!>§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §"!O§).§+",§.length == 3)
               {
                  this.§7S§(_loc12_ as §"!O§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§?!>§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §29§)
            {
               this.§7!v§(_loc12_ as §29§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §'D§(param1:§`!J§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§`!A§() / §"h§.§4<§ * param9;
         var _loc13_:Number = param1.§#!l§() / §"h§.§4<§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §7S§(param1:§"!O§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§+",§.length)
         {
            _loc14_ = param1.§+",§[_loc13_];
            _loc12_.push(_loc14_.x / §"h§.§4<§ * param8,_loc14_.y / §"h§.§4<§ * param8);
            _loc13_++;
         }
         _loc11_.graphics.drawTriangles(_loc12_);
         _loc11_.graphics.endFill();
         param3.rotate(param6);
         param3.translate(param4 * param7 - param9,param5 * param7 - param10);
         param2.draw(_loc11_,param3);
         _loc11_.graphics.clear();
         _loc11_ = null;
      }
      
      protected function §7!v§(param1:§29§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §"h§.§4<§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §-t§() : String
      {
         return this.§`W§.background.§2I§();
      }
      
      protected function §27§() : Number
      {
         return 1;
      }
      
      private function §6D§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.§-t§();
         var _loc5_:§6B§;
         if(_loc5_ = this.§`W§.§1"&§.§=!'§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = (_loc11_ = int(param1.bottom / _loc9_)) + 1;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = (_loc13_ = int(param1.right / _loc8_)) + 1;
            _loc14_ = _loc12_;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc10_;
               while(_loc15_ < _loc11_)
               {
                  param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                  _loc15_++;
               }
               _loc14_++;
            }
            _loc6_.dispose();
         }
      }
      
      protected function addObjectBird(param1:§false§, param2:§0!Y§.Sprite, param3:§7!t§, param4:§>"4§, param5:Number = 1.0, param6:Boolean = true) : § !§
      {
         var _loc11_:§ !§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §&,§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §]!b§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §<!Z§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §;$§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §!=§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §?!=§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §]!c§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §1§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §93§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §2P§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new § !§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§do§ > 0;
      }
      
      protected function §0P§(param1:§false§, param2:§0!Y§.Sprite, param3:§7!t§, param4:§>"4§, param5:Number = 1.0) : §"x§
      {
         return new §"x§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function §&0§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §@!4§
      {
         this.§;!5§.type = param1;
         this.§;!5§.x = param2;
         this.§;!5§.y = param3;
         this.§;!5§.angle = param4;
         this.§;!5§.§6!^§ = 0;
         this.§;!5§.§^!h§ = 0;
         return this.§3!s§(this.§;!5§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §5;§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §@!4§
      {
         this.§;!5§.type = param1;
         this.§;!5§.x = param2;
         this.§;!5§.y = param3;
         this.§;!5§.angle = param4;
         this.§;!5§.§6!^§ = param6;
         this.§;!5§.§^!h§ = param7;
         return this.§3!s§(this.§;!5§,param5,false,false,false,param8,param9);
      }
      
      protected function §3!s§(param1:§false§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §@!4§
      {
         var _loc8_:§0!Y§.Sprite = new §0!Y§.Sprite();
         var _loc9_:§@!4§;
         if((_loc9_ = this.§!!g§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §[-§ && (_loc9_ as §[-§).§&q§())
         {
            _loc8_.visible = !this.§-!q§;
         }
         if(_loc9_ is § !§ && !(_loc9_ is §2P§))
         {
            ++this.§do§;
         }
         if(!param7)
         {
            this.§`!8§.§=!0§(_loc8_);
         }
         else
         {
            this.§^Y§.§=!0§(_loc8_);
         }
         if(param3)
         {
            this.§`W§.§=!u§(_loc9_);
         }
         if(param4 && _loc9_ is § !§)
         {
            this.§,!g§ = § !§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §!!g§(param1:§false§, param2:int, param3:§0!Y§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §@!4§
      {
         var _loc7_:§[-§ = null;
         if(param2 == §^!;§)
         {
            param2 = this.§[!'§;
            ++this.§[!'§;
         }
         else
         {
            if(param2 >= §1Z§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §1Z§);
            }
            if(this.§<!c§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§@!4§;
         if((_loc6_ = this.§#-§(param1,param3,param4,param5)) is § !§)
         {
            ++this.§@!T§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §[-§;
            if(_loc6_ is §5P§)
            {
               this.§ each§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§5!U§(param2);
               }
               this.§&!B§.push(_loc6_);
               if(_loc6_ is §0!X§)
               {
                  this.§&S§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function §5q§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §[4§(param1:§false§, param2:§0!Y§.Sprite, param3:§7!t§, param4:§>"4§, param5:int, param6:Number = 1.0) : §@!4§
      {
         return new §<"'§(param2,param3,this.§`W§.§-!R§.§'!#§,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function §#-§(param1:§false§, param2:§0!Y§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §@!4§
      {
         var _loc5_:§>"4§;
         if(!(_loc5_ = this.§`W§.levelItemManager.§7`§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§5q§();
         }
         var _loc7_:§7!t§ = this.§`W§.§[!c§.§[!q§(_loc6_);
         var _loc8_:§@!4§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §>"4§.§1^§)
         {
            _loc8_ = this.§0P§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §>"4§.§]`§ || _loc5_.itemType == §>"4§.§`A§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§[4§(param1,param2,_loc7_,_loc5_,§,m§.§?!7§,param4);
            }
            else if(_loc5_.itemName == §;$§.§0!D§)
            {
               _loc8_ = this.§[4§(param1,param2,_loc7_,_loc5_,§,m§.§@+§,param4);
            }
            else
            {
               _loc8_ = new §44§(param2,_loc7_,this.§`W§.§-!R§.§'!#§,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §[-§(param2,_loc7_,this.§`W§.§-!R§.§'!#§,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§`W§.addScore(param1,§"1§.§=c§,param3,param4,param5,param6);
      }
      
      public function §;!9§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§`W§.particles.§;!9§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function § ! §(param1:§[-§) : void
      {
         var _loc4_:§@!h§ = null;
         var _loc5_:§@!h§ = null;
         var _loc6_:§@!4§ = null;
         var _loc7_:§@!4§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§&!R§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§&!R§[_loc3_];
            if(this.§&!R§[_loc3_].id1 == _loc2_ || this.§&!R§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§=!<§)
               {
                  _loc6_ = _loc4_.§=!<§.§0!0§().GetUserData() as §@!4§;
                  _loc7_ = _loc4_.§=!<§.§"!z§().GetUserData() as §@!4§;
                  if(_loc6_)
                  {
                     _loc6_.§[s§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§[s§(_loc6_);
                  }
               }
               _loc5_ = this.§&!R§.pop();
               if(_loc3_ < this.§&!R§.length)
               {
                  this.§&!R§[_loc3_] = _loc5_;
               }
               this.§;"+§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §4"4§(param1:§=!s§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§@!h§ = §@!h§.§4"4§(param1);
         this.§&!R§.push(_loc4_);
         var _loc5_:§@!4§ = this.§<!c§(_loc2_);
         var _loc6_:§@!4§ = this.§<!c§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §=!s§.§]"0§)
            {
               _loc4_.§=!<§ = this.§`W§.§-!R§.§'!#§.§#!t§(_loc4_.§[!H§(_loc5_,_loc6_));
            }
            else
            {
               this.§[!§.push(new §@O§(_loc2_,_loc3_,_loc4_.§%g§));
            }
            _loc5_.§>"#§(_loc6_);
            _loc6_.§>"#§(_loc5_);
         }
      }
      
      protected function §;"+§(param1:§@!h§) : void
      {
         if(param1.§=!<§)
         {
            this.§`W§.§-!R§.§'!#§.§07§(param1.§=!<§);
         }
         if(param1.§#!$§)
         {
            if(this.§`!8§.contains(param1.§#!$§))
            {
               this.§`!8§.removeChild(param1.§#!$§,true);
            }
         }
      }
      
      public function §4!K§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§%!j§.push(§,m§.§92§(param1,param2,param3));
         this.§'"5§(param1);
      }
      
      protected function §'"5§(param1:int) : void
      {
         §1!i§.§+!Y§("TntExplosions","ChannelExplosions");
      }
      
      public function §+!E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§%!j§.push(§,m§.§ !R§(param1,param2,param3,param4,param5,param6));
         §1!i§.§+!Y§("TntExplosions","ChannelExplosions");
      }
      
      public function § ,§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§`W§.§-!R§.§'!#§.§8!g§());
         return param4;
      }
      
      public function get §,U§() : Number
      {
         return this.§`W§.§,U§;
      }
      
      public function §?"4§(param1:Number, param2:Number) : int
      {
         var _loc4_:§[-§ = null;
         var _loc3_:int = this.§&!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!B§[_loc3_] as §[-§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §[-§
      {
         var _loc4_:§[-§ = null;
         var _loc3_:int = this.§&!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§&!B§[_loc3_] as §[-§)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function getObject(param1:int) : §@!4§
      {
         return this.§&!B§[param1];
      }
      
      public function §<!c§(param1:int) : §[-§
      {
         var _loc2_:§@!4§ = null;
         var _loc3_:§[-§ = null;
         for each(_loc2_ in this.§&!B§)
         {
            _loc3_ = _loc2_ as §[-§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §0R§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§&!B§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§&!B§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§`8§(param1);
         _loc4_ = this.§ each§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§ each§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §6!#§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §[P§(param1:Number, param2:Number, param3:§[-§) : §7X§
      {
         var _loc4_:Number = param3.§9l§().GetPosition().x - param1;
         var _loc5_:Number = param3.§9l§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§7X§;
         (_loc7_ = new §7X§()).§#!a§ = _loc6_;
         _loc7_.§5T§ = new Point(param3.§9l§().GetPosition().x,param3.§9l§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §,!^§(param1:§[-§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §]!B§() : void
      {
         var _loc1_:§,m§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§@!4§ = null;
         var _loc7_:§[-§ = null;
         var _loc8_:§7X§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§^B§)
         {
            return;
         }
         while(this.§%!j§.length > 0)
         {
            _loc1_ = this.§%!j§.shift();
            _loc2_ = _loc1_.§"N§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§]g§(_loc1_.push);
            for each(_loc6_ in this.§&!B§)
            {
               if(_loc6_ is §[-§)
               {
                  if(_loc7_ = §[-§(_loc6_))
                  {
                     if((_loc8_ = this.§[P§(_loc3_,_loc4_,_loc7_)).§#!a§ <= _loc1_.§"N§)
                     {
                        _loc9_ = _loc1_.push * this.§6!#§(_loc8_.§#!a§,_loc1_.§"N§);
                        if(_loc8_.§#!a§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§5T§.x - _loc3_,_loc8_.§5T§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§9l§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§5T§.x,_loc8_.§5T§.y));
                        }
                     }
                     if(_loc8_.§#!a§ <= _loc1_.§&!b§)
                     {
                        _loc13_ = _loc5_ * this.§6!#§(_loc8_.§#!a§,_loc1_.§&!b§);
                        this.§,!^§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.§2q§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §2q§(param1:§,m§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§`W§.particles.§;!9§(this.§>A§(param1.type),§8W§.§8!C§,§%v§.§," §,param2,param3,600,"",§%v§.§+!<§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§`W§.particles.§;!9§(§%v§.§%%§,§8W§.§8!C§,§%v§.§!-§,param2,param3,_loc7_,"",§%v§.§+!<§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §>A§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §%v§.§9" §;
      }
      
      public function §<!W§(param1:Number) : void
      {
         var _loc4_:§[-§ = null;
         var _loc2_:§@!4§ = null;
         var _loc3_:int = this.§&!B§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§&!B§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§9%§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §[-§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§0z§(§[!L§.§<!S§);
                  }
                  this.§9%§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§0z§(§[!L§.§<!S§);
                  this.§9%§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§-"!§(param1);
         this.§]!B§();
      }
      
      protected function §`8§(param1:Number) : void
      {
         var _loc2_:§5P§ = null;
         var _loc3_:int = this.§ each§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ each§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§`!0§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §-"!§(param1:Number) : void
      {
         this.§%!=§(param1);
         this.§>!9§();
      }
      
      protected function §%!=§(param1:Number) : void
      {
         var _loc3_:§@O§ = null;
         var _loc4_:§@!4§ = null;
         var _loc2_:int = this.§[!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[!§[_loc2_];
            if(_loc3_.§9!k§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§<!c§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§<!c§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§[!§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §!!9§(param1:§@!h§) : void
      {
         var _loc2_:§[-§ = param1.debug_object_1;
         var _loc3_:§[-§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§<!c§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§<!c§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§#!$§ == null)
         {
            param1.§#!$§ = new §-f§(4,4,4294901760);
            this.§`!8§.addChild(param1.§#!$§);
         }
         param1.§#!$§.x = _loc4_;
         param1.§#!$§.y = _loc5_;
         param1.§#!$§.width = _loc8_;
         param1.§#!$§.rotation = _loc9_;
      }
      
      protected function §`!§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §>!9§() : void
      {
         var _loc1_:§@!h§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§&!R§)
         {
            if(§%U§)
            {
               this.§!!9§(_loc1_);
            }
            if(_loc1_.§?"'§ && _loc1_.§#"4§ && _loc1_.§,![§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §=!s§.§#!T§)
               {
                  _loc4_ = (_loc1_.§=!<§ as b2PrismaticJoint).§%R§();
                  _loc5_ = (_loc1_.§=!<§ as b2PrismaticJoint).§9=§();
                  _loc6_ = this.§`!§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§=!<§ as b2PrismaticJoint).§9"2§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §=!s§.§set §)
               {
                  _loc7_ = (_loc1_.§=!<§ as b2RevoluteJoint).§8!u§();
                  if((_loc5_ = (_loc1_.§=!<§ as b2RevoluteJoint).§9=§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§=!<§ as b2RevoluteJoint).§9"2§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §&!P§() : void
      {
         var _loc1_:§@!h§ = null;
         while(this.§&!R§.length > 0)
         {
            _loc1_ = this.§&!R§.pop();
            this.§;"+§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§@!4§) : Boolean
      {
         this.§2!q§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §+!9§.§,8§) && param1.§9l§() && this.§"<§(param1.§9l§().GetPosition().x,param1.§9l§().GetPosition().y))
         {
            if(param1 is §[-§)
            {
               §[-§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §2!q§(param1:§@!4§) : void
      {
      }
      
      public function §%!d§(param1:Number, param2:Number) : Boolean
      {
         return this.§`W§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §"<§(param1:Number, param2:Number) : Boolean
      {
         return this.§`W§.§7!p§.§<!`§(param1,param2);
      }
      
      public function §`!0§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§5P§ = this.§ each§[param1];
         this.§5G§(_loc2_.sprite);
         this.§ each§[param1] = null;
         this.§ each§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §#!U§(param1:§[-§) : Boolean
      {
         return true;
      }
      
      protected function §9!C§(param1:§[-§) : Point
      {
         var _loc2_:Number = param1.§9l§().GetPosition().x;
         var _loc3_:Number = param1.§9l§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §9%§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§[-§ = null;
         var _loc6_:§@O§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§@!4§;
         if((_loc4_ = this.§&!B§[param1]) is §"x§)
         {
            ++this.§>j§;
         }
         else if(_loc4_ is § !§)
         {
            --this.§do§;
         }
         if(_loc4_ == this.§,!g§)
         {
            this.§,!g§ = null;
         }
         if(_loc4_ is §[-§)
         {
            _loc5_ = _loc4_ as §[-§;
            if(param2 && _loc4_.levelItem.score > 0)
            {
               _loc7_ = this.§9!C§(_loc5_);
               _loc8_ = §%v§.§?!O§(_loc5_.itemName);
               _loc9_ = this.§#!U§(_loc5_);
               this.§`W§.addScore(_loc5_.levelItem.score,§"1§.§5!a§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§ ! §(_loc5_);
            for each(_loc6_ in this.§[!§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§9!k§ = true;
               }
            }
         }
         this.§5G§(_loc4_.sprite);
         this.§&!B§[param1] = null;
         this.§&!B§.splice(param1,1);
         if(_loc4_ is §0!X§)
         {
            if((_loc10_ = this.§&S§.indexOf(_loc4_)) >= 0)
            {
               this.§&S§.splice(_loc10_,1);
            }
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      private function §5G§(param1:§0!Y§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§@!4§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§9%§(this.§&!B§.indexOf(param1),param2);
         }
      }
      
      public function §'+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`W§.§ !4§();
         }
      }
      
      public function §3!a§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§`W§.§3!a§(param1,param2,param3,param4);
      }
      
      public function §;"0§(param1:Number, param2:Number) : void
      {
         this.§7!M§.x = -param1;
         this.§7!M§.y = -param2;
         this.§^Y§.x = -param1;
         this.§^Y§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!B§.length)
         {
            _loc2_ = this.§&!B§[_loc1_];
            if(_loc2_ && _loc2_ is §"x§ && (_loc2_ as §"x§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §,"#§(param1:Boolean = false) : int
      {
         var _loc4_:§"x§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§&!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!B§[_loc3_] as §"x§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§6X§ && !_loc4_.§<p§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §9H§() : int
      {
         var _loc2_:§[-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!B§)
         {
            if(_loc2_ is §44§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §?!x§() : int
      {
         var _loc2_:§[-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!B§)
         {
            if(_loc2_ && _loc2_.§&q§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§"x§ = null;
         var _loc2_:int = this.§&!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!B§[_loc2_] as §"x§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §>!E§() : Boolean
      {
         var _loc2_:§ !§ = null;
         var _loc1_:int = this.§&!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!B§[_loc1_] as § !§;
            if(_loc2_ && _loc2_.health > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§[-§ = null;
         var _loc1_:int = this.§&!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!B§[_loc1_] as §[-§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§<C§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§]!<§())
               {
                  return false;
               }
               if(_loc2_ is § !§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §3O§(param1:Boolean = false) : §"x§
      {
         var _loc7_:§"x§ = null;
         var _loc2_:int = this.§&!B§.length;
         var _loc3_:int = this.§,"#§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§&!B§[_loc6_] as §"x§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§6X§ && !_loc7_.§<p§)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function §%7§() : int
      {
         var _loc3_:§[-§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§&!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!B§[_loc2_] as §[-§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.score;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += this.damageScoreMultiplier * int(_loc3_.healthMax);
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§`W§.slingshot.§%7§());
      }
      
      protected function §]"+§(param1:§@!4§, param2:§@!4§) : Boolean
      {
         if(param1 is §[-§ && param2 is §[-§ && !(param1 as §[-§).§;§() && !(param2 as §[-§).§;§())
         {
            return false;
         }
         return true;
      }
      
      public function §#!e§() : void
      {
         this.§do§ = 0;
      }
      
      protected function §1?§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §]g§(param1:Number) : void
      {
      }
      
      protected function §@!d§(param1:§[-§, param2:§[-§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is § !§)
         {
            return 1;
         }
         if(param1 is § !§)
         {
            return Number(param1.§'!'§(param2.§%P§()));
         }
         return 1;
      }
      
      protected function §!!I§(param1:§[-§, param2:§[-§) : Number
      {
         if(param2 is § !§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §=!C§(param1:§[-§, param2:§[-§) : Number
      {
         var _loc4_:Number = this.§!!I§(param1,param2);
         var _loc5_:Number = this.§!!I§(param2,param1);
         var _loc6_:Number = param1.§9l§().GetMass();
         var _loc7_:Number = param2.§9l§().GetMass();
         var _loc8_:b2Vec2 = param1.§'"3§();
         var _loc9_:b2Vec2 = param2.§'"3§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §,2§(param1:§@!4§, param2:§@!4§) : Boolean
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§^B§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc3_:§[-§ = param1 as §[-§;
         var _loc4_:§[-§ = param2 as §[-§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§5!@§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§5!@§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.§]"+§(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is § !§ && _loc4_ is § !§)
         {
            return true;
         }
         var _loc5_:Number = this.§=!C§(_loc3_,_loc4_);
         var _loc6_:Number = Math.max(0,_loc3_.health);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         this.§1?§(_loc5_,_loc6_,_loc7_);
         var _loc8_:Number = this.§@!d§(_loc3_,_loc4_);
         var _loc9_:Number = this.§@!d§(_loc4_,_loc3_);
         var _loc10_:Number = _loc3_.applyDamage(_loc5_ * _loc9_,this,_loc4_,true);
         var _loc11_:Number = _loc4_.applyDamage(_loc5_ * _loc8_,this,_loc3_,true);
         if(_loc10_ < _loc6_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc11_ < _loc7_)
         {
            _loc3_.causedDamageToObjects();
         }
         if(_loc3_ is § !§)
         {
            if(_loc11_ <= 0)
            {
               _loc12_ = _loc3_.§-p§(_loc4_.§%P§());
               this.§?r§(_loc3_ as § !§,_loc5_ * _loc8_,_loc7_,_loc12_);
               return false;
            }
         }
         if(_loc4_ is § !§)
         {
            if(_loc10_ <= 0)
            {
               _loc13_ = _loc4_.§-p§(_loc3_.§%P§());
               this.§?r§(_loc4_ as § !§,_loc5_ * _loc9_,_loc6_,_loc13_);
               return false;
            }
         }
         return _loc10_ <= 0 && _loc11_ <= 0;
      }
      
      public function § !P§(param1:§@!4§, param2:§@!4§) : void
      {
         if(param1)
         {
            param1.collisionEnded(param2);
         }
         if(param2)
         {
            param2.collisionEnded(param1);
         }
      }
      
      protected function §?r§(param1:§ !§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§'"3§();
         param1.§0m§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §<"§() : void
      {
         var _loc2_:§[-§ = null;
         var _loc1_:int = this.§&!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!B§[_loc1_] as §[-§;
            if(_loc2_ != null && _loc2_ is §"x§)
            {
               this.§9%§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §[a§() : void
      {
         var _loc2_:§[-§ = null;
         var _loc1_:int = this.§&!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!B§[_loc1_] as §[-§;
            if(_loc2_ != null && _loc2_.§`!9§())
            {
               this.§9%§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §,!%§() : int
      {
         return this.§&!B§.length;
      }
      
      public function §7!u§(param1:§-?§) : void
      {
         var _loc4_:§[-§ = null;
         var _loc5_:§false§ = null;
         var _loc6_:§=!s§ = null;
         var _loc7_:§@!h§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!B§.length)
         {
            if(_loc4_ = this.§&!B§[_loc2_] as §[-§)
            {
               if(_loc4_.§39§)
               {
                  if(!_loc4_.§<C§())
                  {
                     (_loc5_ = new §false§()).angle = _loc4_.§?!>§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§9l§().GetPosition().x;
                     _loc5_.y = _loc4_.§9l§().GetPosition().y;
                     param1.§&0§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&!R§.length)
         {
            _loc7_ = this.§&!R§[_loc3_];
            (_loc6_ = new §=!s§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§#!;§,_loc7_.§#"4§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§,![§,_loc7_.motorSpeed,_loc7_.§?"'§,_loc7_.maxTorque)).§%g§ = _loc7_.§%g§;
            param1.§3Q§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §2G§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&!B§.length)
         {
            if(this.§&!B§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&!B§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§[-§ = null;
         this.§-!q§ = param1;
         this.§="3§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!B§.length)
         {
            _loc3_ = this.§&!B§[_loc2_] as §[-§;
            if(_loc3_ && _loc3_.§&q§())
            {
               _loc3_.sprite.visible = !this.§-!q§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§^B§ = param1;
      }
      
      public function §4!P§() : int
      {
         return this.§@!T§;
      }
      
      public function §@u§() : int
      {
         return this.§>j§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§`W§.damageScoreMultiplier;
      }
   }
}
