package §]!q§
{
   import §"V§.§]!x§;
   import §&!>§.§3!k§;
   import §'<§.§;r§;
   import §+!0§.b2PrismaticJoint;
   import §+!0§.b2RevoluteJoint;
   import §,"%§.§&!b§;
   import §,"%§.§9"+§;
   import §,"%§.§?r§;
   import §,"%§.§^X§;
   import §-!f§.§-!,§;
   import §-!f§.§7!6§;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §0I§.§!!p§;
   import §0I§.§0"1§;
   import §0I§.§2"3§;
   import §3g§.§8a§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§1"4§;
   import §5!7§.§2!E§;
   import §5!7§.§3!>§;
   import §5!7§.§3!Y§;
   import §5!7§.§3@§;
   import §5!7§.§7!R§;
   import §5!7§.§[2§;
   import §6_§.§6k§;
   import §6_§.§7W§;
   import §7"+§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!i§ implements §5z§
   {
      
      private static const §&§:Boolean = false;
      
      private static const §]_§:int = 1000000000;
      
      public static const §+<§:int = -1;
      
      public static const §-1§:int = -2;
       
      
      protected var §,!6§:Vector.<§;!4§>;
      
      protected var §3!X§:Vector.<§4C§>;
      
      protected var §+!q§:Vector.<§8a§>;
      
      private var §;H§:int = 1000000000;
      
      public var §-!r§:§!!p§;
      
      protected var §27§:Vector.<§6!m§>;
      
      protected var §[!t§:§-!f§.Sprite;
      
      protected var §'W§:§-!f§.Sprite;
      
      protected var §+!K§:§-!f§.Sprite;
      
      protected var §8!4§:§-!f§.Sprite;
      
      protected var §!B§:Vector.<Texture>;
      
      protected var §,!m§:Vector.<§9"+§>;
      
      protected var §"!N§:int = 1;
      
      protected var §5I§:Vector.<§&!b§>;
      
      protected var §7r§:int = 0;
      
      private var §7,§:int = 0;
      
      private var §=!`§:int = 0;
      
      private var §[D§:§?r§;
      
      private var §!f§:§,6§;
      
      private var §4!>§:Boolean = true;
      
      private var §+!@§:Boolean = true;
      
      public function §!i§(param1:§!!p§, param2:§;r§, param3:§-!f§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§,!6§ = new Vector.<§;!4§>();
         this.§3!X§ = new Vector.<§4C§>();
         this.§+!q§ = new Vector.<§8a§>();
         this.§27§ = new Vector.<§6!m§>();
         this.§!B§ = new Vector.<Texture>();
         this.§5I§ = new Vector.<§&!b§>();
         this.§[D§ = new §?r§();
         super();
         this.§-!r§ = param1;
         this.§[!t§ = param3;
         this.§[!t§.§`;§ = false;
         this.§+!@§ = true;
         this.§4!>§ = true;
         this.§'W§ = new §-!f§.Sprite();
         this.§+!K§ = new §-!f§.Sprite();
         this.§8!4§ = new §-!f§.Sprite();
         this.§[!t§.addChild(this.§'W§);
         this.§[!t§.addChild(this.§+!K§);
         if(param2.§`! §)
         {
            _loc5_ = (this.§-!r§.§#! §.§`!#§ + this.§-!r§.§#! §.§!G§) / 2;
            _loc6_ = 0 + §0"1§.§0C§;
            this.§!t§(param4,_loc5_,_loc6_,0,§!i§.§+<§);
         }
         this.§@X§(param2);
      }
      
      public function get §;!g§() : §-!f§.Sprite
      {
         return this.§8!4§;
      }
      
      public function get §#o§() : §-!f§.Sprite
      {
         return this.§[!t§;
      }
      
      public function get activeObject() : §,[§
      {
         return this.§!f§;
      }
      
      public function get objectCount() : int
      {
         return this.§,!6§.length;
      }
      
      public function §2!A§(param1:String) : §3!Y§
      {
         return this.§-!r§.levelItemManager.§-!K§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§!f§)
         {
            _loc3_ = this.§!f§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §@X§(param1:§;r§) : void
      {
         var _loc3_:§?r§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§3!Y§ = null;
         var _loc6_:§^X§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§-!r§.levelItemManager.§-!K§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§%!b§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§`0§();
         this.§2!&§(true);
         this.§,!m§ = new Vector.<§9"+§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§`!x§)
         {
            _loc6_ = param1.§8!5§(_loc2_);
            this.§"!S§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§,!6§.length > 0)
         {
            this.§^!&§(0,false,true);
         }
         while(this.§+!q§.length > 0)
         {
            this.§#L§(0);
         }
         this.§,!6§ = null;
         this.§3!X§ = null;
         this.§+!q§ = null;
         this.§5I§ = null;
         if(this.§[!t§)
         {
            this.§[!t§.dispose();
            this.§[!t§ = null;
         }
         this.§'W§ = null;
         this.§+!K§ = null;
         if(this.§8!4§)
         {
            this.§8!4§.dispose();
            this.§8!4§ = null;
         }
         while(this.§!B§.length > 0)
         {
            _loc1_ = this.§!B§.pop();
            this.§-!r§.§`!`§.§'!y§(_loc1_);
         }
      }
      
      private function §2!&§(param1:Boolean) : void
      {
         this.§'W§.visible = param1;
      }
      
      private function §`0§() : void
      {
         var _loc3_:§;!4§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§,[§ = null;
         var _loc6_:§[2§ = null;
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
         var _loc21_:§-!,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§,[§> = new Vector.<§,[§>();
         for each(_loc3_ in this.§,!6§)
         {
            if((_loc5_ = _loc3_ as §,[§) && _loc5_.§'!,§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§5!z§(),_loc6_.§1P§()) / §!!p§.§6L§ * Math.sqrt(2);
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
            _loc8_ = this.§-!r§.camera.§,I§ / §!!p§.§6L§;
            _loc9_ = this.§-!r§.camera.§]!G§ / §!!p§.§6L§;
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
            _loc18_ = this.§1!=§();
            this.§ U§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§'!S§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§-!r§.§`!`§.§ ![§(_loc17_);
            this.§!B§.push(_loc20_);
            (_loc21_ = new §-!,§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§'W§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §'!S§(param1:Vector.<§,[§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§,[§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§[2§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §3!>§)
            {
               this.§&!8§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§-!q§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §1"4§)
            {
               if((_loc12_ as §1"4§).§5!,§.length == 4)
               {
                  this.§&!8§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§-!q§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §1"4§).§5!,§.length == 3)
               {
                  this.§'T§(_loc12_ as §1"4§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§-!q§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §2!E§)
            {
               this.§[-§(_loc12_ as §2!E§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §&!8§(param1:§[2§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§5!z§() / §!!p§.§6L§ * param9;
         var _loc13_:Number = param1.§1P§() / §!!p§.§6L§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §'T§(param1:§1"4§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§5!,§.length)
         {
            _loc14_ = param1.§5!,§[_loc13_];
            _loc12_.push(_loc14_.x / §!!p§.§6L§ * param8,_loc14_.y / §!!p§.§6L§ * param8);
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
      
      protected function §[-§(param1:§2!E§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §!!p§.§6L§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §@+§() : String
      {
         return this.§-!r§.background.§]!z§();
      }
      
      protected function §1!=§() : Number
      {
         return 1;
      }
      
      private function § U§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§@+§();
         var _loc5_:§7W§;
         if(_loc5_ = this.§-!r§.§,T§.§^!$§(_loc4_))
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
      
      protected function addObjectBird(param1:§?r§, param2:§-!f§.Sprite, param3:§6k§, param4:§3!Y§, param5:Number = 1.0, param6:Boolean = true) : §,6§
      {
         var _loc11_:§,6§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §;!G§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §3Q§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §8p§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new § Z§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §4!e§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §;!%§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §="0§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §#!d§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §0"-§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §'!;§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
               break;
            default:
               _loc11_ = new §,6§(param2,param3,this.§-!r§.§&%§.§,'§,param4,_loc8_,_loc9_,_loc10_,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§7r§ > 0;
      }
      
      protected function §>!Y§(param1:§?r§, param2:§-!f§.Sprite, param3:§6k§, param4:§3!Y§, param5:Number = 1.0) : § "'§
      {
         return new § "'§(param2,param3,this.§-!r§.§&%§.§,'§,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function §!t§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §;!4§
      {
         this.§[D§.type = param1;
         this.§[D§.x = param2;
         this.§[D§.y = param3;
         this.§[D§.angle = param4;
         this.§[D§.§0`§ = 0;
         this.§[D§.§-!7§ = 0;
         return this.§%!b§(this.§[D§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §`!§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §;!4§
      {
         this.§[D§.type = param1;
         this.§[D§.x = param2;
         this.§[D§.y = param3;
         this.§[D§.angle = param4;
         this.§[D§.§0`§ = param6;
         this.§[D§.§-!7§ = param7;
         return this.§%!b§(this.§[D§,param5,false,false,false,param8,param9);
      }
      
      protected function §%!b§(param1:§?r§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §;!4§
      {
         var _loc8_:§-!f§.Sprite = new §-!f§.Sprite();
         var _loc9_:§;!4§;
         if((_loc9_ = this.§>^§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §,[§ && (_loc9_ as §,[§).§'!,§())
         {
            _loc8_.visible = !this.§4!>§;
         }
         if(_loc9_ is §,6§ && !(_loc9_ is §'!;§))
         {
            ++this.§7r§;
         }
         if(!param7)
         {
            this.§+!K§.§`M§(_loc8_);
         }
         else
         {
            this.§8!4§.§`M§(_loc8_);
         }
         if(param3)
         {
            this.§-!r§.§'z§(_loc9_);
         }
         if(param4 && _loc9_ is §,6§)
         {
            this.§!f§ = §,6§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §>^§(param1:§?r§, param2:int, param3:§-!f§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §;!4§
      {
         var _loc7_:§,[§ = null;
         if(param2 == §-1§)
         {
            param2 = this.§;H§;
            ++this.§;H§;
         }
         else
         {
            if(param2 >= §]_§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §]_§);
            }
            if(this.§>p§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§;!4§;
         if((_loc6_ = this.§7!'§(param1,param3,param4,param5)) is §,6§)
         {
            ++this.§=!`§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §,[§;
            if(_loc6_ is §8a§)
            {
               this.§+!q§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§0#§(param2);
               }
               this.§,!6§.push(_loc6_);
               if(_loc6_ is §4C§)
               {
                  this.§3!X§.push(_loc6_);
               }
            }
         }
         return _loc6_;
      }
      
      protected function §<!w§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §+&§(param1:§?r§, param2:§-!f§.Sprite, param3:§6k§, param4:§3!Y§, param5:int, param6:Number = 1.0) : §;!4§
      {
         return new §5!G§(param2,param3,this.§-!r§.§&%§.§,'§,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function §7!'§(param1:§?r§, param2:§-!f§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §;!4§
      {
         var _loc5_:§3!Y§;
         if(!(_loc5_ = this.§-!r§.levelItemManager.§-!K§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§<!w§();
         }
         var _loc7_:§6k§ = this.§-!r§.§8!3§.§@!P§(_loc6_);
         var _loc8_:§;!4§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §3!Y§.§?k§)
         {
            _loc8_ = this.§>!Y§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §3!Y§.§'!r§ || _loc5_.itemType == §3!Y§.§&!Z§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§+&§(param1,param2,_loc7_,_loc5_,§6!m§.override,param4);
            }
            else if(_loc5_.itemName == § Z§.§@""§)
            {
               _loc8_ = this.§+&§(param1,param2,_loc7_,_loc5_,§6!m§.§;!9§,param4);
            }
            else
            {
               _loc8_ = new §"P§(param2,_loc7_,this.§-!r§.§&%§.§,'§,_loc5_,param1.x,param1.y,param1.angle,param4);
            }
         }
         else
         {
            _loc8_ = new §,[§(param2,_loc7_,this.§-!r§.§&%§.§,'§,_loc5_,param1.x,param1.y,param1.angle,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§-!r§.addScore(param1,§2"3§.§@E§,param3,param4,param5,param6);
      }
      
      public function §`q§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§-!r§.particles.§`q§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      protected function §=!!§(param1:§,[§) : void
      {
         var _loc4_:§9"+§ = null;
         var _loc5_:§9"+§ = null;
         var _loc6_:§;!4§ = null;
         var _loc7_:§;!4§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§,!m§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§,!m§[_loc3_];
            if(this.§,!m§[_loc3_].id1 == _loc2_ || this.§,!m§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§1j§)
               {
                  _loc6_ = _loc4_.§1j§.§#"-§().GetUserData() as §;!4§;
                  _loc7_ = _loc4_.§1j§.§!",§().GetUserData() as §;!4§;
                  if(_loc6_)
                  {
                     _loc6_.§1!E§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§1!E§(_loc6_);
                  }
               }
               _loc5_ = this.§,!m§.pop();
               if(_loc3_ < this.§,!m§.length)
               {
                  this.§,!m§[_loc3_] = _loc5_;
               }
               this.§=!?§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §"!S§(param1:§^X§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§9"+§ = §9"+§.§"!S§(param1);
         this.§,!m§.push(_loc4_);
         var _loc5_:§;!4§ = this.§>p§(_loc2_);
         var _loc6_:§;!4§ = this.§>p§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §^X§.§6!e§)
            {
               _loc4_.§1j§ = this.§-!r§.§&%§.§,'§.§0!B§(_loc4_.§3A§(_loc5_,_loc6_));
            }
            else
            {
               this.§5I§.push(new §&!b§(_loc2_,_loc3_,_loc4_.§0r§));
            }
            _loc5_.§9!@§(_loc6_);
            _loc6_.§9!@§(_loc5_);
         }
      }
      
      protected function §=!?§(param1:§9"+§) : void
      {
         if(param1.§1j§)
         {
            this.§-!r§.§&%§.§,'§.§[!^§(param1.§1j§);
         }
         if(param1.§]E§)
         {
            if(this.§+!K§.contains(param1.§]E§))
            {
               this.§+!K§.removeChild(param1.§]E§,true);
            }
         }
      }
      
      public function §9!§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§27§.push(§6!m§.final(param1,param2,param3));
         this.§[I§(param1);
      }
      
      protected function §[I§(param1:int) : void
      {
         §3!k§.§]"4§("TntExplosions","ChannelExplosions");
      }
      
      public function §]H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§27§.push(§6!m§.§;!6§(param1,param2,param3,param4,param5,param6));
         §3!k§.§]"4§("TntExplosions","ChannelExplosions");
      }
      
      public function §9^§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§-!r§.§&%§.§,'§.§22§());
         return param4;
      }
      
      public function get §">§() : Number
      {
         return this.§-!r§.§">§;
      }
      
      public function §^#§(param1:Number, param2:Number) : int
      {
         var _loc4_:§,[§ = null;
         var _loc3_:int = this.§,!6§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,!6§[_loc3_] as §,[§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §,[§
      {
         var _loc4_:§,[§ = null;
         var _loc3_:int = this.§,!6§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,!6§[_loc3_] as §,[§)
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
      
      public function getObject(param1:int) : §;!4§
      {
         return this.§,!6§[param1];
      }
      
      public function §>p§(param1:int) : §,[§
      {
         var _loc2_:§;!4§ = null;
         var _loc3_:§,[§ = null;
         for each(_loc2_ in this.§,!6§)
         {
            _loc3_ = _loc2_ as §,[§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §=+§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§,!6§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§,!6§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§^,§(param1);
         _loc4_ = this.§+!q§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§+!q§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §+!E§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §!!P§(param1:Number, param2:Number, param3:§,[§) : §]!x§
      {
         var _loc4_:Number = param3.§4!7§().GetPosition().x - param1;
         var _loc5_:Number = param3.§4!7§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§]!x§;
         (_loc7_ = new §]!x§()).§2@§ = _loc6_;
         _loc7_.§4%§ = new Point(param3.§4!7§().GetPosition().x,param3.§4!7§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §9!3§(param1:§,[§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §`!@§() : void
      {
         var _loc1_:§6!m§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;!4§ = null;
         var _loc7_:§,[§ = null;
         var _loc8_:§]!x§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§+!@§)
         {
            return;
         }
         while(this.§27§.length > 0)
         {
            _loc1_ = this.§27§.shift();
            _loc2_ = _loc1_.§&I§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§?!-§(_loc1_.push);
            for each(_loc6_ in this.§,!6§)
            {
               if(_loc6_ is §,[§)
               {
                  if(_loc7_ = §,[§(_loc6_))
                  {
                     if((_loc8_ = this.§!!P§(_loc3_,_loc4_,_loc7_)).§2@§ <= _loc1_.§&I§)
                     {
                        _loc9_ = _loc1_.push * this.§+!E§(_loc8_.§2@§,_loc1_.§&I§);
                        if(_loc8_.§2@§ > 0)
                        {
                           (_loc10_ = new Point(_loc8_.§4%§.x - _loc3_,_loc8_.§4%§.y - _loc4_)).normalize(1);
                           _loc11_ = _loc9_ * _loc10_.x;
                           _loc12_ = _loc9_ * _loc10_.y;
                           _loc7_.§4!7§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§4%§.x,_loc8_.§4%§.y));
                        }
                     }
                     if(_loc8_.§2@§ <= _loc1_.§8t§)
                     {
                        _loc13_ = _loc5_ * this.§+!E§(_loc8_.§2@§,_loc1_.§8t§);
                        this.§9!3§(_loc7_,_loc13_);
                     }
                  }
               }
            }
            this.§+!e§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §+!e§(param1:§6!m§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§-!r§.particles.§`q§(this.§+F§(param1.type),§`O§.§#!`§,§?!d§.§+O§,param2,param3,600,"",§?!d§.§@!4§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§-!r§.particles.§`q§(§?!d§.§,!1§,§`O§.§#!`§,§?!d§.§!!I§,param2,param3,_loc7_,"",§?!d§.§@!4§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §+F§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §?!d§.§=g§;
      }
      
      public function §"!%§(param1:Number) : void
      {
         var _loc4_:§,[§ = null;
         var _loc2_:§;!4§ = null;
         var _loc3_:int = this.§,!6§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,!6§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§^!&§(_loc3_,true);
            }
            else
            {
               _loc2_.update(param1,this);
               _loc4_ = _loc2_ as §,[§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§?[§(§7!R§.§[e§);
                  }
                  this.§^!&§(_loc3_,false);
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§?[§(§7!R§.§[e§);
                  this.§^!&§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§%S§(param1);
         this.§`!@§();
      }
      
      protected function §^,§(param1:Number) : void
      {
         var _loc2_:§8a§ = null;
         var _loc3_:int = this.§+!q§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§+!q§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§#L§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §%S§(param1:Number) : void
      {
         this.§?"3§(param1);
         this.§8!"§();
      }
      
      protected function §?"3§(param1:Number) : void
      {
         var _loc3_:§&!b§ = null;
         var _loc4_:§;!4§ = null;
         var _loc2_:int = this.§5I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5I§[_loc2_];
            if(_loc3_.§function§)
            {
               if(!_loc3_.update(param1))
               {
                  _loc4_ = this.§>p§(_loc3_.objectId1);
                  this.removeObject(_loc4_,true);
                  _loc4_ = this.§>p§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§5I§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §%,§(param1:§9"+§) : void
      {
         var _loc2_:§,[§ = param1.debug_object_1;
         var _loc3_:§,[§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§>p§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§>p§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§]E§ == null)
         {
            param1.§]E§ = new §7!6§(4,4,4294901760);
            this.§+!K§.addChild(param1.§]E§);
         }
         param1.§]E§.x = _loc4_;
         param1.§]E§.y = _loc5_;
         param1.§]E§.width = _loc8_;
         param1.§]E§.rotation = _loc9_;
      }
      
      protected function §@!s§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §8!"§() : void
      {
         var _loc1_:§9"+§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§,!m§)
         {
            if(§&§)
            {
               this.§%,§(_loc1_);
            }
            if(_loc1_.§7!8§ && _loc1_.§8X§ && _loc1_.§@!u§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §^X§.§2I§)
               {
                  _loc4_ = (_loc1_.§1j§ as b2PrismaticJoint).§7m§();
                  _loc5_ = (_loc1_.§1j§ as b2PrismaticJoint).§7"'§();
                  _loc6_ = this.§@!s§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§1j§ as b2PrismaticJoint).§^!Q§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §^X§.§""!§)
               {
                  _loc7_ = (_loc1_.§1j§ as b2RevoluteJoint).§`m§();
                  if((_loc5_ = (_loc1_.§1j§ as b2RevoluteJoint).§7"'§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§1j§ as b2RevoluteJoint).§^!Q§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §+"+§() : void
      {
         var _loc1_:§9"+§ = null;
         while(this.§,!m§.length > 0)
         {
            _loc1_ = this.§,!m§.pop();
            this.§=!?§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§;!4§) : Boolean
      {
         this.§3V§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §3@§.§1!5§) && param1.§4!7§() && this.§+I§(param1.§4!7§().GetPosition().x,param1.§4!7§().GetPosition().y))
         {
            if(param1 is §,[§)
            {
               §,[§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §3V§(param1:§;!4§) : void
      {
      }
      
      public function §[!v§(param1:Number, param2:Number) : Boolean
      {
         return this.§-!r§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §+I§(param1:Number, param2:Number) : Boolean
      {
         return this.§-!r§.§#! §.§ for§(param1,param2);
      }
      
      public function §#L§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§8a§ = this.§+!q§[param1];
         this.§+4§(_loc2_.sprite);
         this.§+!q§[param1] = null;
         this.§+!q§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §>!q§(param1:§,[§) : Boolean
      {
         return true;
      }
      
      protected function §&![§(param1:§,[§) : Point
      {
         var _loc2_:Number = param1.§4!7§().GetPosition().x;
         var _loc3_:Number = param1.§4!7§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §^!&§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§,[§ = null;
         var _loc6_:§&!b§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§;!4§;
         if((_loc4_ = this.§,!6§[param1]) is § "'§)
         {
            ++this.§7,§;
         }
         else if(_loc4_ is §,6§)
         {
            --this.§7r§;
         }
         if(_loc4_ == this.§!f§)
         {
            this.§!f§ = null;
         }
         if(_loc4_ is §,[§)
         {
            _loc5_ = _loc4_ as §,[§;
            if(param2 && _loc4_.levelItem.score > 0)
            {
               _loc7_ = this.§&![§(_loc5_);
               _loc8_ = §?!d§.§7%§(_loc5_.itemName);
               _loc9_ = this.§>!q§(_loc5_);
               this.§-!r§.addScore(_loc5_.levelItem.score,§2"3§.§-!+§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§=!!§(_loc5_);
            for each(_loc6_ in this.§5I§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§function§ = true;
               }
            }
         }
         this.§+4§(_loc4_.sprite);
         this.§,!6§[param1] = null;
         this.§,!6§.splice(param1,1);
         if(_loc4_ is §4C§)
         {
            if((_loc10_ = this.§3!X§.indexOf(_loc4_)) >= 0)
            {
               this.§3!X§.splice(_loc10_,1);
            }
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      private function §+4§(param1:§-!f§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§;!4§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§^!&§(this.§,!6§.indexOf(param1),param2);
         }
      }
      
      public function §[!]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-!r§.§"D§();
         }
      }
      
      public function §5!D§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§-!r§.§5!D§(param1,param2,param3,param4);
      }
      
      public function § ",§(param1:Number, param2:Number) : void
      {
         this.§[!t§.x = -param1;
         this.§[!t§.y = -param2;
         this.§8!4§.x = -param1;
         this.§8!4§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§;!4§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!6§.length)
         {
            _loc2_ = this.§,!6§[_loc1_];
            if(_loc2_ && _loc2_ is § "'§ && (_loc2_ as § "'§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §`v§(param1:Boolean = false) : int
      {
         var _loc4_:§ "'§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,!6§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,!6§[_loc3_] as § "'§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§1!I§ && !_loc4_.§4!-§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §'m§() : int
      {
         var _loc2_:§,[§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!6§)
         {
            if(_loc2_ is §"P§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §66§() : int
      {
         var _loc2_:§,[§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!6§)
         {
            if(_loc2_ && _loc2_.§'!,§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§ "'§ = null;
         var _loc2_:int = this.§,!6§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,!6§[_loc2_] as § "'§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §'_§() : Boolean
      {
         var _loc2_:§,6§ = null;
         var _loc1_:int = this.§,!6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!6§[_loc1_] as §,6§;
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
         var _loc2_:§,[§ = null;
         var _loc1_:int = this.§,!6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!6§[_loc1_] as §,[§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§-t§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§;0§())
               {
                  return false;
               }
               if(_loc2_ is §,6§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §+!d§(param1:Boolean = false) : § "'§
      {
         var _loc7_:§ "'§ = null;
         var _loc2_:int = this.§,!6§.length;
         var _loc3_:int = this.§`v§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§,!6§[_loc6_] as § "'§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§1!I§ && !_loc7_.§4!-§)
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
      
      public function § B§() : int
      {
         var _loc3_:§,[§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§,!6§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,!6§[_loc2_] as §,[§;
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
         return int(_loc1_ + this.§-!r§.slingshot.§ B§());
      }
      
      protected function §=!1§(param1:§;!4§, param2:§;!4§) : Boolean
      {
         if(param1 is §,[§ && param2 is §,[§ && !(param1 as §,[§).§-"+§() && !(param2 as §,[§).§-"+§())
         {
            return false;
         }
         return true;
      }
      
      public function §]!8§() : void
      {
         this.§7r§ = 0;
      }
      
      protected function §+y§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §?!-§(param1:Number) : void
      {
      }
      
      protected function §?l§(param1:§,[§, param2:§,[§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §,6§)
         {
            return 1;
         }
         if(param1 is §,6§)
         {
            return Number(param1.§7!x§(param2.§4"#§()));
         }
         return 1;
      }
      
      protected function §;!^§(param1:§,[§, param2:§,[§) : Number
      {
         if(param2 is §,6§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §<c§(param1:§,[§, param2:§,[§) : Number
      {
         var _loc4_:Number = this.§;!^§(param1,param2);
         var _loc5_:Number = this.§;!^§(param2,param1);
         var _loc6_:Number = param1.§4!7§().GetMass();
         var _loc7_:Number = param2.§4!7§().GetMass();
         var _loc8_:b2Vec2 = param1.§=`§();
         var _loc9_:b2Vec2 = param2.§=`§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §#p§(param1:§;!4§, param2:§;!4§) : Boolean
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§+!@§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc3_:§,[§ = param1 as §,[§;
         var _loc4_:§,[§ = param2 as §,[§;
         if(!_loc3_ || !_loc4_)
         {
            return true;
         }
         if(_loc3_.destroysCollidingObjects || _loc4_.§8j§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc3_,true);
            _loc3_.causedDamageToObjects();
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc3_.§8j§)
         {
            _loc3_.applyDamage(_loc3_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(!this.§=!1§(_loc3_,_loc4_))
         {
            return false;
         }
         if(_loc3_ is §,6§ && _loc4_ is §,6§)
         {
            return true;
         }
         var _loc5_:Number = this.§<c§(_loc3_,_loc4_);
         var _loc6_:Number = Math.max(0,_loc3_.health);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         this.§+y§(_loc5_,_loc6_,_loc7_);
         var _loc8_:Number = this.§?l§(_loc3_,_loc4_);
         var _loc9_:Number = this.§?l§(_loc4_,_loc3_);
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
         if(_loc3_ is §,6§)
         {
            if(_loc11_ <= 0)
            {
               _loc12_ = _loc3_.§%I§(_loc4_.§4"#§());
               this.§>!K§(_loc3_ as §,6§,_loc5_ * _loc8_,_loc7_,_loc12_);
               return false;
            }
         }
         if(_loc4_ is §,6§)
         {
            if(_loc10_ <= 0)
            {
               _loc13_ = _loc4_.§%I§(_loc3_.§4"#§());
               this.§>!K§(_loc4_ as §,6§,_loc5_ * _loc9_,_loc6_,_loc13_);
               return false;
            }
         }
         return _loc10_ <= 0 && _loc11_ <= 0;
      }
      
      public function §^!#§(param1:§;!4§, param2:§;!4§) : void
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
      
      protected function §>!K§(param1:§,6§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§=`§();
         param1.§&"'§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §;!8§() : void
      {
         var _loc2_:§,[§ = null;
         var _loc1_:int = this.§,!6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!6§[_loc1_] as §,[§;
            if(_loc2_ != null && _loc2_ is § "'§)
            {
               this.§^!&§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §&!6§() : void
      {
         var _loc2_:§,[§ = null;
         var _loc1_:int = this.§,!6§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!6§[_loc1_] as §,[§;
            if(_loc2_ != null && _loc2_.§+#§())
            {
               this.§^!&§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §36§() : int
      {
         return this.§,!6§.length;
      }
      
      public function §'Z§(param1:§;r§) : void
      {
         var _loc4_:§,[§ = null;
         var _loc5_:§?r§ = null;
         var _loc6_:§^X§ = null;
         var _loc7_:§9"+§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!6§.length)
         {
            if(_loc4_ = this.§,!6§[_loc2_] as §,[§)
            {
               if(_loc4_.§1!i§)
               {
                  if(!_loc4_.§-t§())
                  {
                     (_loc5_ = new §?r§()).angle = _loc4_.§-!q§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§4!7§().GetPosition().x;
                     _loc5_.y = _loc4_.§4!7§().GetPosition().y;
                     param1.§!t§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,!m§.length)
         {
            _loc7_ = this.§,!m§[_loc3_];
            (_loc6_ = new §^X§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§0!J§,_loc7_.§8X§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§@!u§,_loc7_.motorSpeed,_loc7_.§7!8§,_loc7_.maxTorque)).§0r§ = _loc7_.§0r§;
            param1.§@!e§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §4!8§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,!6§.length)
         {
            if(this.§,!6§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,!6§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§,[§ = null;
         this.§4!>§ = param1;
         this.§2!&§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!6§.length)
         {
            _loc3_ = this.§,!6§[_loc2_] as §,[§;
            if(_loc3_ && _loc3_.§'!,§())
            {
               _loc3_.sprite.visible = !this.§4!>§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§+!@§ = param1;
      }
      
      public function §6H§() : int
      {
         return this.§=!`§;
      }
      
      public function § >§() : int
      {
         return this.§7,§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§-!r§.damageScoreMultiplier;
      }
   }
}
