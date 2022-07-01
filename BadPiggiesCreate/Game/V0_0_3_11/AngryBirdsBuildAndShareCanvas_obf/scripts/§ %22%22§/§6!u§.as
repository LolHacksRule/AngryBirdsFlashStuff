package § ""§
{
   import § q§.b2PrismaticJoint;
   import § q§.b2WeldJoint;
   import §+%§.§5!F§;
   import §+L§.b2Vec2;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §1!v§.§0!9§;
   import §1!v§.§1V§;
   import §1!v§.§7!=§;
   import §1!v§.§@%§;
   import §6d§.§&`§;
   import §8q§.§!g§;
   import §8q§.§+P§;
   import §8q§.§6n§;
   import §8q§.§=Y§;
   import §8q§.§@§;
   import §?!k§.§0!t§;
   import §[_§.§'!N§;
   import §]!!§.§!!r§;
   import §]!!§.§"X§;
   import §]!!§.§"d§;
   import §]!!§.§^s§;
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!u§
   {
       
      
      protected var §>i§:Vector.<§%,§>;
      
      protected var §>!p§:int;
      
      public var §]Z§:§@%§;
      
      public var §3!`§:Vector.<§]x§>;
      
      protected var §78§:Sprite;
      
      protected var §5!N§:Sprite;
      
      private var §>!A§:Sprite;
      
      private var §5L§:Sprite;
      
      private var §1!`§:Sprite;
      
      protected var §6e§:Vector.<Texture>;
      
      protected var §"!S§:Vector.<§"X§>;
      
      protected var §<"+§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §6!<§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9B§:Boolean = false;
      
      protected var §="7§:Number;
      
      protected var §7!'§:int;
      
      protected var §'>§:Vector.<§!!r§>;
      
      protected var §"!p§:int = 0;
      
      private var §[!D§:int = 0;
      
      private var §=e§:int = 0;
      
      private var §"!"§:int;
      
      private var § "7§:Boolean = true;
      
      private var §<[§:Boolean = true;
      
      public function §6!u§(param1:§@%§, param2:§5!F§, param3:Sprite)
      {
         var _loc5_:§"X§ = null;
         var _loc6_:§"d§ = null;
         var _loc7_:§%,§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§%,§ = null;
         var _loc11_:§%,§ = null;
         this.§>i§ = new Vector.<§%,§>();
         this.§3!`§ = new Vector.<§]x§>();
         this.§6e§ = new Vector.<Texture>();
         this.§="7§ = this.§0!9§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§'>§ = new Vector.<§!!r§>();
         super();
         this.§]Z§ = param1;
         this.§>!p§ = 0;
         this.§5!N§ = param3;
         this.§5!N§.§,!J§ = false;
         this.§<[§ = true;
         this.§ "7§ = true;
         this.§78§ = new Sprite();
         this.§>!A§ = new Sprite();
         this.§5L§ = new Sprite();
         this.§1!`§ = new Sprite();
         this.§5!N§.addChild(this.§78§);
         this.§5!N§.addChild(this.§>!A§);
         this.§5!N§.addChild(this.§5L§);
         this.§5!N§.addChild(this.§1!`§);
         this.addObject(§&`§.§2I§(param2.theme).§?J§,(this.§]Z§.borders.§#!f§ + this.§]Z§.borders.§&?§) / 2,this.§]Z§.borders.mBorderGround_B2 + §1V§.§=m§);
         this.§"!"§ = this.§>i§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§!!T§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§@!m§();
         this.§,!p§(true);
         this.§"!S§ = new Vector.<§"X§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§]!k§)
         {
            this.§"!S§.push(§"X§.§`!^§(param2.§"§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§"!S§)
         {
            _loc8_ = _loc5_.index1 + this.§"!"§;
            _loc9_ = _loc5_.index2 + this.§"!"§;
            if(_loc8_ < this.§>i§.length && _loc9_ < this.§>i§.length)
            {
               _loc10_ = this.§>i§[_loc8_];
               _loc11_ = this.§>i§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §^s§.§6Y§)
               {
                  _loc5_.§@a§ = this.§]Z§.§'A§.§<"7§.§!!d§(_loc5_.§8!;§(_loc10_,_loc11_));
               }
               else
               {
                  this.§'>§.push(new §!!r§(_loc8_,_loc9_,_loc5_.§8!R§));
               }
            }
         }
      }
      
      protected function get §0!9§() : Class
      {
         return §0!9§;
      }
      
      public function get §0&§() : Sprite
      {
         return this.§1!`§;
      }
      
      public function get §3z§() : Sprite
      {
         return this.§5!N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§>i§.length > 0)
         {
            this.§`S§(0);
         }
         this.§>i§ = null;
         this.§'>§ = null;
         if(this.§5!N§)
         {
            this.§5!N§.dispose();
            this.§5!N§ = null;
            this.§78§ = null;
            this.§1!`§ = null;
            this.§>!A§ = null;
            this.§5L§ = null;
         }
         while(this.§6e§.length > 0)
         {
            _loc1_ = this.§6e§.pop();
            this.§]Z§.§while§.§#!7§(_loc1_);
         }
      }
      
      private function §,!p§(param1:Boolean) : void
      {
         this.§78§.visible = param1;
      }
      
      private function §@!m§() : void
      {
         var _loc3_:§%,§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§8C§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§%,§> = new Vector.<§%,§>();
         for each(_loc3_ in this.§>i§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§5!N§);
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
            _loc5_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 2;
               _loc1_.top /= 2;
               _loc1_.right /= 2;
               _loc1_.bottom /= 2;
               _loc5_ /= 2;
            }
            _loc6_ = _loc1_.width;
            _loc7_ = _loc1_.height;
            _loc8_ = _loc1_.left;
            _loc9_ = _loc1_.top;
            _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
            this.§3$§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§7j§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]Z§.§while§.§[!$§(_loc10_);
            this.§6e§.push(_loc12_);
            (_loc13_ = new §8C§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§78§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §7j§(param1:Vector.<§%,§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§%,§ = null;
         var _loc11_:§!g§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§switch§.shape).§[!V§();
            _loc13_ = new Rectangle(_loc12_[0].x / §@%§.§?k§ * param6,_loc12_[0].y / §@%§.§?k§ * param6,(_loc12_[1].x - _loc12_[0].x) / §@%§.§?k§ * param6,(_loc12_[1].y - _loc12_[0].y) / §@%§.§?k§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§;!k§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3$§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]Z§.background.§'!A§();
         var _loc5_:§'!N§;
         if(_loc5_ = this.§]Z§.§4,§.§+!p§(_loc4_))
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
      
      public function §3"§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%,§
      {
         var _loc10_:§%,§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §2!u§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §=!r§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §>!s§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §3!5§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new § x§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §&!^§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §%!L§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §0"2§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§"!p§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §%,§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§%,§;
         if((_loc11_ = this.§<4§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§ "7§;
            this.§>i§[this.§>i§.length] = _loc11_;
         }
         else
         {
            this.§>i§[this.§>i§.length] = _loc11_;
         }
         if(_loc11_ is §0"2§ && !_loc11_.§"[§())
         {
            this.§>!A§.addChild(_loc10_);
            ++this.§"!p§;
         }
         else if(_loc11_.front || param9)
         {
            this.§1!`§.addChild(_loc10_);
         }
         else
         {
            this.§5L§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]Z§.§[0§(_loc11_);
         }
         if(param6)
         {
            this.§]Z§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §`!^§(param1:int, param2:§%,§, param3:§%,§) : §"X§
      {
         var _loc6_:§"X§ = null;
         var _loc4_:int = this.§>i§.indexOf(param2) - this.§"!"§;
         var _loc5_:int = this.§>i§.indexOf(param3) - this.§"!"§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §"X§(§^s§.§'k§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§@a§ = this.§]Z§.§'A§.§<"7§.§!!d§(_loc6_.§8!;§(param2,param3));
            this.§"!S§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §set §(param1:§"X§) : void
      {
         if(!(param1.§@a§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§%,§ = this.getObject(param1.index1 + this.§"!"§);
         var _loc3_:§%,§ = this.getObject(param1.index2 + this.§"!"§);
         this.§]Z§.§'A§.§<"7§.§]v§(param1.§@a§);
         param1.§@a§ = this.§]Z§.§'A§.§<"7§.§!!d§(param1.§8!;§(_loc2_,_loc3_));
      }
      
      public function §6!S§(param1:§%,§) : Vector.<§"X§>
      {
         var _loc4_:§"X§ = null;
         var _loc2_:Vector.<§"X§> = new Vector.<§"X§>();
         var _loc3_:int = this.§>i§.indexOf(param1) - this.§"!"§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§"!S§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§"X§>
      {
         return this.§"!S§;
      }
      
      public function §4!S§(param1:§%,§) : void
      {
         var _loc2_:int = this.§>i§.indexOf(param1) - this.§"!"§;
         var _loc3_:int = this.§"!S§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§"!S§[_loc3_].index1 == _loc2_ || this.§"!S§[_loc3_].index2 == _loc2_)
            {
               this.§"!S§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §&s§(param1:§%,§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§'>§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§'>§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§'>§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function set(param1:§%,§, param2:§%,§) : Boolean
      {
         var _loc3_:int = this.§>i§.indexOf(param1) - this.§"!"§;
         var _loc4_:int = this.§>i§.indexOf(param2) - this.§"!"§;
         var _loc5_:int = this.§"!S§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§"!S§[_loc5_].index1 == _loc3_ && this.§"!S§[_loc5_].index2 == _loc4_ || this.§"!S§[_loc5_].index1 == _loc4_ && this.§"!S§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §<4§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%,§
      {
         var _loc10_:§%,§ = null;
         var _loc11_:§6n§ = null;
         var _loc12_:§6n§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§3"§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§=e§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §@§.§4"#§(param2);
            _loc10_ = new §>M§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §@§.§4"#§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §@§.§4"#§(param2);
            }
            if(_loc12_.§"W§ == §6n§.§3x§ || _loc12_.§"W§ == §6n§.§9]§)
            {
               _loc10_ = new §?!w§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §%,§(this,param1,this.§]Z§.§'A§.§<"7§,this.§]Z§,this.§>!p§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§4![§();
         return _loc10_;
      }
      
      protected function §4![§() : String
      {
         var _loc3_:§%,§ = null;
         var _loc1_:int = this.§>i§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§>i§)
            {
               if(_loc3_.uniqueID == _loc1_.toString())
               {
                  _loc1_++;
                  _loc2_ = false;
                  break;
               }
            }
         }
         return _loc1_.toString();
      }
      
      public function § "#§(param1:Number) : void
      {
         var _loc3_:§%,§ = null;
         var _loc2_:int = this.§>i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>i§[_loc2_] as §%,§;
            if(_loc3_)
            {
               if(_loc3_.§=!,§ <= 0)
               {
                  this.§`S§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§&""§();
                  _loc3_.§]y§();
               }
            }
            _loc2_--;
         }
         this.§#!Z§(param1);
      }
      
      protected function §#!Z§(param1:Number) : void
      {
         this.§=!s§(param1);
         this.§3W§();
      }
      
      private function §=!s§(param1:Number) : void
      {
         var _loc4_:§!!r§ = null;
         var _loc5_:int = 0;
         var _loc6_:§%,§ = null;
         if(this.§'>§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§!!r§> = this.§'>§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§^"+§ && this.§'>§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.getObjectWithID("" + _loc5_))
                  {
                     this.removeObject(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §3W§() : void
      {
         var _loc1_:§"X§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§"!S§)
         {
            if(_loc1_.type == §^s§.§7!b§ && _loc1_.§#!W§)
            {
               _loc2_ = (_loc1_.§@a§ as b2PrismaticJoint).§ !-§();
               _loc3_ = (_loc1_.§@a§ as b2PrismaticJoint).§3!4§();
               if(_loc1_.§6!3§ && _loc1_.§6!c§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§@a§ as b2PrismaticJoint).§#C§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§3!`§.push(§]x§.§'U§(param1,param2,param3));
         §0!t§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §6",§(param1:Number, param2:Number) : int
      {
         var _loc4_:§%,§ = null;
         var _loc3_:int = this.§>i§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§>i§[_loc3_])
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc3_;
               }
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §%,§
      {
         var _loc4_:§%,§ = null;
         var _loc3_:int = this.§>i§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§>i§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§%,§>
      {
         var _loc5_:§%,§ = null;
         var _loc3_:Vector.<§%,§> = new Vector.<§%,§>();
         var _loc4_:int = this.§>i§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§>i§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §%,§
      {
         return this.§>i§[param1];
      }
      
      public function §9Q§(param1:Number, param2:Number) : void
      {
         var _loc4_:§%,§ = null;
         var _loc3_:int = this.§>i§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§>i§[_loc3_] as §%,§).§9Q§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §88§(param1:§%,§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§%,§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§=!,§ == param1.§,!f§)
         {
            if(this.§="7§ < this.§0!9§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§="7§ += param2 * this.§0!9§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§0!3§(param2 * this.§="7§);
            this.§7!'§ = 0;
         }
         else if(this.§7!'§ == 0)
         {
            this.§7!'§ = this.§]Z§.§8"§;
         }
         if(param1.§!!Q§() || this.§return§(param1) || this.§7!'§ > 0 && this.§]Z§.§8"§ > this.§7!'§ + this.§0!9§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§0!9§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§0!9§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§0!9§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §0!t§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §0!t§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§0!9§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§0!9§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§0!9§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§0!9§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§return§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§0!9§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§7!'§ = 0;
                  _loc7_.§>!M§.§;!Z§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §=!f§(param1:§%,§, param2:Number) : Boolean
      {
         var _loc5_:§%,§ = null;
         if(this.§0!9§.MIGHTY_EAGLE_USE_SHADE && !this.§9B§ && this.mMightyEagleTimer > this.§0!9§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§9B§ = true;
            this.§]Z§.§%G§();
         }
         this.mMightyEagleTimer += param2;
         this.§]Z§.particles.§,D§(§>!]§.§]!&§,§5!G§.§5N§,§>!]§.§@!q§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§>!]§.§`!9§(param1.§"g§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§&!f§(this.§0!9§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§6!<§)
            {
               this.§6!<§ = false;
               this.§]Z§.§7C§();
               param1.§4!u§(§+P§.§?H§);
               this.mSardineCanAdded = false;
               param1.§>!M§.§!z§ = true;
               param1.§>!M§.§7!2§();
               for each(_loc5_ in this.§>i§)
               {
                  if(_loc5_ && _loc5_.§@!e§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§&!O§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§>i§)
               {
                  if(_loc5_ && _loc5_.§@!e§())
                  {
                     _loc5_.applyDamage(_loc5_.§,!f§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§6!<§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§8!P§(param2,new Point(this.§0!9§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§0!9§.MIGHTY_EAGLE_Y_CHANGE),this.§0!9§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §7!8§() : void
      {
         var _loc1_:§]x§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§%,§ = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         while(this.§3!`§.length > 0)
         {
            _loc1_ = this.§3!`§.shift();
            _loc2_ = _loc1_.§5!5§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§>i§)
            {
               _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§5!5§)
               {
                  _loc11_ = _loc1_.push;
                  if(_loc10_ > 1)
                  {
                     _loc11_ /= _loc10_;
                  }
                  if(_loc10_ > 0)
                  {
                     _loc12_ = _loc11_ * (_loc8_ / _loc10_);
                     _loc13_ = _loc11_ * (_loc9_ / _loc10_);
                     _loc6_.getBody().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§if§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§4!A§(_loc6_,_loc14_);
               }
            }
            this.§]Z§.particles.§,D§(this.§@W§(_loc1_.type),§5!G§.§5N§,§>!]§.§97§,_loc3_,_loc4_,600,"",§>!]§.§+!l§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]Z§.particles.§,D§(§>!]§.§>]§,§5!G§.§5N§,§>!]§.§@!q§,_loc3_,_loc4_,_loc16_,"",§>!]§.§+!l§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §4!A§(param1:§%,§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §@W§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §>!]§.§7" §;
      }
      
      public function §48§(param1:Number) : void
      {
         var _loc2_:§%,§ = null;
         var _loc3_:int = this.§>i§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§>i§[_loc3_];
            if(_loc2_.§?",§())
            {
               if(this.§88§(_loc2_,param1))
               {
                  this.§`S§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§"[§())
            {
               this.§=!f§(_loc2_,param1);
            }
            else if(this.§return§(_loc2_))
            {
               _loc2_.§4!u§(§+P§.§2"4§);
               this.§`S§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§4!u§(§+P§.§2"4§);
               this.§`S§(_loc3_,false,true,true);
            }
            else if(_loc2_.§^!!§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§7!8§();
      }
      
      private function §&!O§() : void
      {
         var _loc1_:§"X§ = null;
         for each(_loc1_ in this.§"!S§)
         {
            if(_loc1_.type != §^s§.§6Y§)
            {
               this.§]Z§.§'A§.§<"7§.§]v§(_loc1_.§@a§);
            }
         }
      }
      
      public function §=-§() : Boolean
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>i§.length)
         {
            _loc2_ = this.§>i§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §return§(param1:§%,§) : Boolean
      {
         if(param1 && param1.§switch§.§!!6§() != §=Y§.§8X§ && this.§]Z§.borders.§0o§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §`S§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§"X§ = null;
         var _loc7_:§!!r§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§%,§;
         if((_loc5_ = this.§>i§[param1]).§@!e§())
         {
            ++this.§[!D§;
         }
         else if(_loc5_.§^!!§())
         {
            --this.§"!p§;
         }
         if(_loc5_ == this.§]Z§.activeObject)
         {
            this.§]Z§.activeObject = null;
         }
         if(param2)
         {
            this.§]Z§.addScore(_loc5_.§switch§.score,§7!=§.§ !2§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§>!]§.§9!`§(_loc5_.§"g§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§]Z§.particles);
         }
         if(param4)
         {
            this.§7!B§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§=!]§(_loc5_.sprite);
         this.§4!S§(_loc5_);
         this.§&s§(_loc5_);
         for each(_loc6_ in this.§"!S§)
         {
            if(_loc6_.index1 >= param1)
            {
               --_loc6_.index1;
            }
            if(_loc6_.index2 >= param1)
            {
               --_loc6_.index2;
            }
         }
         for each(_loc7_ in this.§'>§)
         {
            if(_loc7_.§?!r§ == param1)
            {
               _loc7_.§^"+§ = true;
            }
            if(_loc7_.§?!r§ >= param1)
            {
               --_loc7_.§?!r§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§>i§[param1] = null;
         this.§>i§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§%,§, param2:§5!G§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §=!]§(param1:Sprite) : void
      {
         if(this.§5L§.contains(param1))
         {
            this.§5L§.removeChild(param1);
            return;
         }
         if(this.§>!A§.contains(param1))
         {
            this.§>!A§.removeChild(param1);
            return;
         }
         if(this.§78§.contains(param1))
         {
            this.§78§.removeChild(param1);
            return;
         }
         if(this.§1!`§.contains(param1))
         {
            this.§1!`§.removeChild(param1);
            return;
         }
      }
      
      protected function §7!B§(param1:§%,§) : void
      {
         if(param1.§9G§().toUpperCase() == "WHITE_EGG" || param1.§,U§())
         {
            if(param1.§"g§.toUpperCase() == §3!5§.§@!u§)
            {
               this.addExplosions(§]x§.§?!q§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]x§.§3p§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§`S§(this.§>i§.indexOf(param1),param2,param3,param4);
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
         this.§5!N§.x = -param1;
         this.§5!N§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§%,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>i§.length)
         {
            _loc3_ = this.§>i§[_loc2_] as §%,§;
            if(_loc3_ && _loc3_.§@!e§() && _loc3_.§=!,§ > 0)
            {
               if(!param1 || _loc3_.§>!M§.mTryToBlink <= 0 && _loc3_.§>!M§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§%,§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§>i§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§>i§[_loc3_] as §%,§) && _loc4_.§@!e§() && _loc4_.§=!,§ > 0)
            {
               if(!param1 || _loc4_.§>!M§.mTryToBlink <= 0 && _loc4_.§>!M§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function getBlockCount() : int
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>i§)
         {
            if(_loc2_ && (_loc2_.§^6§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>i§)
         {
            if(_loc2_ && _loc2_.isTexture())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§%,§ = null;
         var _loc2_:int = this.§>i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>i§[_loc2_];
            if(_loc3_ && _loc3_.§@!e§() && _loc3_.§=!,§ > 0)
            {
               _loc3_.§>!M§.mTryToScream = §<"6§.§3I§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §0I§() : Boolean
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = this.§>i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>i§[_loc1_] as §%,§;
            if(_loc2_ && _loc2_.§^!!§() && _loc2_.§=!,§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = this.§>i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>i§[_loc1_] as §%,§;
            if(_loc2_ && _loc2_.§=!,§ > 0 && _loc2_.§"W§ != §6n§.§5!1§)
            {
               if(_loc2_.§ 2§() && !_loc2_.§!!Q§())
               {
                  return false;
               }
               if(_loc2_.§^!!§() && _loc2_.§=!,§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!K§(param1:Boolean = false) : §%,§
      {
         var _loc5_:int = 0;
         var _loc6_:§%,§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§>i§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§>i§[_loc5_]) && _loc6_.§@!e§() && _loc6_.§=!,§ > 0)
               {
                  if(!param1 || _loc6_.§>!M§.mTryToBlink <= 0 && _loc6_.§>!M§.mTryToScream <= 0)
                  {
                     _loc4_++;
                     if(_loc4_ >= _loc3_)
                     {
                        return _loc6_;
                     }
                  }
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §6-§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§>i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§>i§[_loc2_] as §%,§).§switch§.score;
            if((this.§>i§[_loc2_] as §%,§).§ 2§())
            {
               _loc1_ += §@%§.§+-§.getValue() * int((this.§>i§[_loc2_] as §%,§).§,!f§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]Z§.slingshot.§6-§());
      }
      
      public function §^""§(param1:§%,§, param2:§%,§) : Boolean
      {
         if(param1.§^!!§() && param2.§^!!§())
         {
            return true;
         }
         if(!param1.§#!C§() && !param2.§#!C§())
         {
            return true;
         }
         return false;
      }
      
      public function §&!3§() : void
      {
         this.mSardineCanAdded = true;
         this.§"!p§ = 0;
      }
      
      public function § !,§(param1:§%,§, param2:§%,§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§"[§() || param2.§@!e§())
            {
               param2.applyDamage(param2.§,!f§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§"[§() || param1.§@!e§())
            {
               param1.applyDamage(param1.§,!f§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§0!9§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§?",§() || param2.§?",§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§^""§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§#o§(param2.§9G§());
         var _loc5_:Number = param1.§,!u§(param2.§9G§());
         var _loc6_:Number = param2.§#o§(param1.§9G§());
         var _loc7_:Number = param2.§,!u§(param1.§9G§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§=!,§);
         var _loc14_:Number = Math.max(0,param2.§=!,§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§^!!§(),_loc14_ == param2.§,!f§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§^!!§(),_loc13_ == param1.§,!f§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§,"6§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§,"6§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §[!N§() : void
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = this.§>i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>i§[_loc1_] as §%,§;
            if(_loc2_ != null && _loc2_.§@!e§())
            {
               this.§`S§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §>8§() : void
      {
         var _loc2_:§%,§ = null;
         var _loc1_:int = this.§>i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>i§[_loc1_] as §%,§;
            if(_loc2_ != null && _loc2_.§,U§())
            {
               this.§`S§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§>i§.length;
      }
      
      public function writeObjectInformation(param1:§5!F§) : void
      {
         var _loc4_:§%,§ = null;
         var _loc5_:§"d§ = null;
         var _loc6_:§^s§ = null;
         var _loc7_:§"X§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>i§.length)
         {
            if(!(_loc4_ = this.§>i§[_loc2_]).isGround())
            {
               (_loc5_ = new §"d§()).angle = _loc4_.§;!k§();
               _loc5_.id = _loc4_.§"g§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§"!S§.length)
         {
            _loc7_ = this.§"!S§[_loc3_];
            _loc6_ = new §^s§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§'J§,_loc7_.§6!3§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§6!c§,_loc7_.motorSpeed,_loc7_.§#!W§,_loc7_.maxTorque);
            param1.§ @§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §`3§() : void
      {
         var _loc1_:int = 0;
         while(this.§>i§.length > _loc1_)
         {
            if(this.§>i§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§>i§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§>i§.length)
         {
            if(this.§>i§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§>i§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§ "7§ = param1;
         this.§,!p§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>i§.length)
         {
            if(this.§>i§[_loc2_].isTexture())
            {
               this.§>i§[_loc2_].sprite.visible = !this.§ "7§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§<[§ = param1;
      }
      
      public function §#!e§() : Boolean
      {
         return this.§<[§;
      }
      
      public function §8!F§() : int
      {
         return this.§=e§;
      }
      
      public function §^!'§() : int
      {
         return this.§[!D§;
      }
      
      public function getObjectWithID(param1:String) : §%,§
      {
         var _loc3_:§%,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>i§.length)
         {
            _loc3_ = this.§>i§[_loc2_] as §%,§;
            if(_loc3_.uniqueID == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
   }
}
