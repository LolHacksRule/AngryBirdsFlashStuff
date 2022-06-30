package §`!X§
{
   import §"!<§.Texture;
   import §%O§.§=I§;
   import §,J§.§74§;
   import §0"§.§0m§;
   import §6>§.b2PrismaticJoint;
   import §6>§.b2WeldJoint;
   import §7h§.§7!"§;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §=i§.b2Vec2;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §>u§.§"!P§;
   import §>u§.§<q§;
   import §>u§.§?$§;
   import §>u§.§`!8§;
   import §^!7§.§+!S§;
   import §^!7§.§+B§;
   import §^!7§.§[!9§;
   import §^!7§.§^A§;
   import §`Y§.§#!#§;
   import §`Y§.§3!M§;
   import §`Y§.§[!'§;
   import §`Y§.§]!%§;
   import §`Y§.§^@§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!^§
   {
       
      
      protected var §1!'§:Vector.<§5&§>;
      
      protected var §2e§:int;
      
      public var §<&§:§^A§;
      
      public var §8]§:Vector.<§0+§>;
      
      protected var §5!>§:Sprite;
      
      protected var §#!0§:Sprite;
      
      private var §^j§:Sprite;
      
      private var §9!S§:Sprite;
      
      private var §3!I§:Sprite;
      
      protected var §&z§:Vector.<Texture>;
      
      protected var §#4§:Vector.<§?$§>;
      
      protected var §"![§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`!&§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §^=§:Boolean = false;
      
      protected var §7v§:Number;
      
      protected var §+m§:int;
      
      protected var §!N§:Vector.<§`!8§>;
      
      protected var §&!V§:int = 0;
      
      private var §'!Q§:int = 0;
      
      private var §"K§:int = 0;
      
      private var §5D§:int;
      
      private var §"!F§:Boolean = true;
      
      private var §'!§:Boolean = true;
      
      public function §@!^§(param1:§^A§, param2:§74§, param3:Sprite)
      {
         var _loc5_:§?$§ = null;
         var _loc6_:§<q§ = null;
         var _loc7_:§5&§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§5&§ = null;
         var _loc11_:§5&§ = null;
         this.§1!'§ = new Vector.<§5&§>();
         this.§8]§ = new Vector.<§0+§>();
         this.§&z§ = new Vector.<Texture>();
         this.§7v§ = this.§+B§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§!N§ = new Vector.<§`!8§>();
         super();
         this.§<&§ = param1;
         this.§2e§ = 0;
         this.§#!0§ = param3;
         this.§#!0§.§3S§ = false;
         this.§'!§ = true;
         this.§"!F§ = true;
         this.§5!>§ = new Sprite();
         this.§^j§ = new Sprite();
         this.§9!S§ = new Sprite();
         this.§3!I§ = new Sprite();
         this.§#!0§.addChild(this.§5!>§);
         this.§#!0§.addChild(this.§^j§);
         this.§#!0§.addChild(this.§9!S§);
         this.§#!0§.addChild(this.§3!I§);
         this.§8!+§(§0m§.§-#§(param2.theme).§^c§,(this.§<&§.§9§.§var § + this.§<&§.§9§.§ r§) / 2,this.§<&§.§9§.§72§ + §[!9§.§!v§);
         this.§5D§ = this.§1!'§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§5]§)
         {
            _loc6_ = param2.§[o§(_loc4_);
            if(_loc7_ = this.§8!+§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§'!Y§();
         this.§'j§(true);
         this.§#4§ = new Vector.<§?$§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§,!9§)
         {
            this.§#4§.push(§?$§.§9!Q§(param2.§1!&§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§#4§)
         {
            _loc8_ = _loc5_.index1 + this.§5D§;
            _loc9_ = _loc5_.index2 + this.§5D§;
            if(_loc8_ < this.§1!'§.length && _loc9_ < this.§1!'§.length)
            {
               _loc10_ = this.§1!'§[_loc8_];
               _loc11_ = this.§1!'§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §"!P§.§8n§)
               {
                  _loc5_.§0Z§ = this.§<&§.mLevelEngine.mWorld.§%y§(_loc5_.§@f§(_loc10_,_loc11_));
               }
               else
               {
                  this.§!N§.push(new §`!8§(_loc8_,_loc9_,_loc5_.§6!Z§));
               }
            }
         }
      }
      
      protected function get §+B§() : Class
      {
         return §+B§;
      }
      
      public function get §6!X§() : Sprite
      {
         return this.§3!I§;
      }
      
      public function get §@p§() : Sprite
      {
         return this.§#!0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§1!'§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§1!'§ = null;
         this.§!N§ = null;
         if(this.§#!0§)
         {
            this.§#!0§.dispose();
            this.§#!0§ = null;
            this.§5!>§ = null;
            this.§3!I§ = null;
            this.§^j§ = null;
            this.§9!S§ = null;
         }
         while(this.§&z§.length > 0)
         {
            _loc1_ = this.§&z§.pop();
            this.§<&§.textureManager.§'!a§(_loc1_);
         }
      }
      
      private function §'j§(param1:Boolean) : void
      {
         this.§5!>§.visible = param1;
      }
      
      private function §'!Y§() : void
      {
         var _loc3_:§5&§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§^B§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§5&§> = new Vector.<§5&§>();
         for each(_loc3_ in this.§1!'§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§#!0§);
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
            this.§1!;§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§-l§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§<&§.textureManager.§=A§(_loc10_);
            this.§&z§.push(_loc12_);
            (_loc13_ = new §^B§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§5!>§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §-l§(param1:Vector.<§5&§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§5&§ = null;
         var _loc11_:§[!'§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§#![§.shape).§@t§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^A§.§<U§ * param6,_loc12_[0].y / §^A§.§<U§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^A§.§<U§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^A§.§<U§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§4!2§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §1!;§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§<&§.background.§=5§();
         var _loc5_:§=I§;
         if(_loc5_ = this.§<&§.backgroundTextureManager.§^!3§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5&§
      {
         var _loc10_:§5&§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §]!<§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §9O§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §0!N§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §+!;§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §&r§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §^F§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §1M§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §>K§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&!V§ > 0;
      }
      
      public function §8!+§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §5&§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§5&§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§"!F§;
            this.§1!'§[this.§1!'§.length] = _loc11_;
         }
         else
         {
            this.§1!'§[this.§1!'§.length] = _loc11_;
         }
         if(_loc11_ is §>K§ && !_loc11_.§8P§())
         {
            this.§^j§.addChild(_loc10_);
            ++this.§&!V§;
         }
         else if(_loc11_.front || param9)
         {
            this.§3!I§.addChild(_loc10_);
         }
         else
         {
            this.§9!S§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§<&§.§=&§(_loc11_);
         }
         if(param6)
         {
            this.§<&§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §9!Q§(param1:int, param2:§5&§, param3:§5&§) : §?$§
      {
         var _loc6_:§?$§ = null;
         var _loc4_:int = this.§1!'§.indexOf(param2) - this.§5D§;
         var _loc5_:int = this.§1!'§.indexOf(param3) - this.§5D§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §?$§(§"!P§.§6A§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0Z§ = this.§<&§.mLevelEngine.mWorld.§%y§(_loc6_.§@f§(param2,param3));
            this.§#4§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §[J§(param1:§?$§) : void
      {
         if(!(param1.§0Z§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§5&§ = this.§[o§(param1.index1 + this.§5D§);
         var _loc3_:§5&§ = this.§[o§(param1.index2 + this.§5D§);
         this.§<&§.mLevelEngine.mWorld.§ !Z§(param1.§0Z§);
         param1.§0Z§ = this.§<&§.mLevelEngine.mWorld.§%y§(param1.§@f§(_loc2_,_loc3_));
      }
      
      public function §2!#§(param1:§5&§) : Vector.<§?$§>
      {
         var _loc4_:§?$§ = null;
         var _loc2_:Vector.<§?$§> = new Vector.<§?$§>();
         var _loc3_:int = this.§1!'§.indexOf(param1) - this.§5D§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§#4§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §"!I§() : Vector.<§?$§>
      {
         return this.§#4§;
      }
      
      public function §?!F§(param1:§5&§) : void
      {
         var _loc2_:int = this.§1!'§.indexOf(param1) - this.§5D§;
         var _loc3_:int = this.§#4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§#4§[_loc3_].index1 == _loc2_ || this.§#4§[_loc3_].index2 == _loc2_)
            {
               this.§#4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §^!%§(param1:§5&§, param2:§5&§) : Boolean
      {
         var _loc3_:int = this.§1!'§.indexOf(param1) - this.§5D§;
         var _loc4_:int = this.§1!'§.indexOf(param2) - this.§5D§;
         var _loc5_:int = this.§#4§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§#4§[_loc5_].index1 == _loc3_ && this.§#4§[_loc5_].index2 == _loc4_ || this.§#4§[_loc5_].index1 == _loc4_ && this.§#4§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5&§
      {
         var _loc10_:§5&§ = null;
         var _loc11_:§#!#§ = null;
         var _loc12_:§#!#§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§"K§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §]!%§.§=!>§(param2);
            _loc10_ = new §=L§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §]!%§.§=!>§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §]!%§.§=!>§(param2);
            }
            if(_loc12_.§3!P§ == §#!#§.§ >§ || _loc12_.§3!P§ == §#!#§.§0!+§)
            {
               _loc10_ = new §5!"§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §5&§(this,param1,this.§<&§.mLevelEngine.mWorld,this.§<&§,this.§2e§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §7!@§(param1:Number) : void
      {
         var _loc3_:§5&§ = null;
         var _loc2_:int = this.§1!'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!'§[_loc2_] as §5&§;
            if(_loc3_)
            {
               if(_loc3_.§^o§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§`F§();
                  _loc3_.§'"§();
               }
            }
            _loc2_--;
         }
         this.§73§(param1);
      }
      
      protected function §73§(param1:Number) : void
      {
         var _loc3_:§?$§ = null;
         var _loc4_:§`!8§ = null;
         var _loc5_:int = 0;
         var _loc6_:§5&§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§!N§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§!N§[_loc2_]).§#!9§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§^!U§("block_" + _loc5_))
                  {
                     this.§1!§(_loc6_,true,true,true);
                  }
                  this.§!N§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§#4§)
         {
            if(_loc3_.type == §"!P§.§7K§ && _loc3_.§9T§)
            {
               _loc7_ = (_loc3_.§0Z§ as b2PrismaticJoint).§!L§();
               _loc8_ = (_loc3_.§0Z§ as b2PrismaticJoint).§;!S§();
               if(_loc3_.§"D§ && _loc3_.§8!@§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§0Z§ as b2PrismaticJoint).§@!N§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§8]§.push(§0+§.createExplosion(param1,param2,param3));
         §7!"§.§#W§("TntExplosions","ChannelExplosions");
      }
      
      public function §"y§(param1:Number, param2:Number) : int
      {
         var _loc4_:§5&§ = null;
         var _loc3_:int = this.§1!'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!'§[_loc3_])
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
      
      public function §&_§(param1:Number, param2:Number) : §5&§
      {
         var _loc4_:§5&§ = null;
         var _loc3_:int = this.§1!'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!'§[_loc3_])
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
      
      public function §[o§(param1:int) : §5&§
      {
         return this.§1!'§[param1];
      }
      
      public function §,!]§(param1:Number, param2:Number) : void
      {
         var _loc4_:§5&§ = null;
         var _loc3_:int = this.§1!'§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§1!'§[_loc3_] as §5&§).§,!]§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §6Z§(param1:§5&§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§5&§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§^o§ == param1.§'!M§)
         {
            if(this.§7v§ < this.§+B§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§7v§ += param2 * this.§+B§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§1!E§().§?!7§(param2 * this.§7v§);
            this.§+m§ = 0;
         }
         else if(this.§+m§ == 0)
         {
            this.§+m§ = this.§<&§.§-L§;
         }
         if(param1.§9!E§() || this.§"!c§(param1) || this.§+m§ > 0 && this.§<&§.§-L§ > this.§+m§ + this.§+B§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§+B§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§+B§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§+B§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §7!"§.§#W§("Mighty_Eagle_Selected_1","ChannelBird");
                  §7!"§.§#W§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§+B§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§1!E§().GetPosition().x - this.§+B§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§1!E§().GetPosition().y - this.§+B§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§+B§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§"!c§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§8!+§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§+B§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§+m§ = 0;
                  _loc7_.§?W§.§?!c§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §?u§(param1:§5&§, param2:Number) : Boolean
      {
         var _loc5_:§5&§ = null;
         if(this.§+B§.MIGHTY_EAGLE_USE_SHADE && !this.§^=§ && this.mMightyEagleTimer > this.§+B§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§^=§ = true;
            this.§<&§.§?,§();
         }
         this.mMightyEagleTimer += param2;
         this.§<&§.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,param1.§1!E§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§1!E§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§+!Z§.§function§(param1.§7=§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§#S§(this.§+B§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§`!&§)
            {
               this.§`!&§ = false;
               this.§<&§.§#!K§();
               param1.§`u§(§3!M§.§?9§);
               this.mSardineCanAdded = false;
               param1.§?W§.§'h§ = true;
               param1.§?W§.§]O§();
               for each(_loc5_ in this.§1!'§)
               {
                  if(_loc5_ && _loc5_.§0!C§())
                  {
                     _loc5_.§1!E§().SetAwake(true);
                     _loc5_.§1!E§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§%Z§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§1!'§)
               {
                  if(_loc5_ && _loc5_.§0!C§())
                  {
                     _loc5_.applyDamage(_loc5_.§'!M§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§1!E§().GetPosition().y >= -5.5;
            this.§`!&§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§&!'§(param2,new Point(this.§+B§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§+B§.MIGHTY_EAGLE_Y_CHANGE),this.§+B§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §@+§() : void
      {
         var _loc1_:§0+§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§5&§ = null;
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
         while(this.§8]§.length > 0)
         {
            _loc1_ = this.§8]§.shift();
            _loc2_ = _loc1_.§9x§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§1!'§)
            {
               _loc8_ = _loc6_.§1!E§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§1!E§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§9x§)
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
                     _loc6_.§1!E§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§]p§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§<&§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§`!S§.§3!_§,§+!Z§.§^!F§,_loc3_,_loc4_,600,"",§+!Z§.§[L§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§<&§.particles.addParticle(§+!Z§.§0$§,§`!S§.§3!_§,§+!Z§.§76§,_loc3_,_loc4_,_loc16_,"",§+!Z§.§[L§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §+!Z§.§ !a§;
      }
      
      public function §,!2§(param1:Number) : void
      {
         var _loc2_:§5&§ = null;
         var _loc3_:int = this.§1!'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1!'§[_loc3_];
            if(_loc2_.§2!U§())
            {
               if(this.§6Z§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§8P§())
            {
               this.§?u§(_loc2_,param1);
            }
            else if(this.§"!c§(_loc2_))
            {
               _loc2_.§`u§(§3!M§.§0v§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§`u§(§3!M§.§0v§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§4V§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@+§();
      }
      
      private function §%Z§() : void
      {
         var _loc1_:§?$§ = null;
         for each(_loc1_ in this.§#4§)
         {
            this.§<&§.mLevelEngine.mWorld.§ !Z§(_loc1_.§0Z§);
         }
      }
      
      public function §5e§() : Boolean
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!'§.length)
         {
            _loc2_ = this.§1!'§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §"!c§(param1:§5&§) : Boolean
      {
         if(param1 && param1.§#![§.§^!0§() != §^@§.§!!3§ && this.§<&§.§9§.§ W§(param1.§1!E§().GetPosition().x,param1.§1!E§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§?$§ = null;
         var _loc7_:§`!8§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§5&§;
         if((_loc5_ = this.§1!'§[param1]).§0!C§())
         {
            ++this.§'!Q§;
         }
         else if(_loc5_.§4V§())
         {
            --this.§&!V§;
         }
         if(_loc5_ == this.§<&§.activeObject)
         {
            this.§<&§.activeObject = null;
         }
         if(param2)
         {
            this.§<&§.addScore(_loc5_.§#![§.score,§+!S§.§4l§,true,_loc5_.§1!E§().GetPosition().x,_loc5_.§1!E§().GetPosition().y - 3,§+!Z§.§"6§(_loc5_.§7=§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§<&§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§-=§(_loc5_.sprite);
         this.§?!F§(_loc5_);
         for each(_loc6_ in this.§#4§)
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
         for each(_loc7_ in this.§!N§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§#!9§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§1!'§[param1] = null;
         this.§1!'§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§5&§, param2:§`!S§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §-=§(param1:Sprite) : void
      {
         if(this.§9!S§.contains(param1))
         {
            this.§9!S§.removeChild(param1);
            return;
         }
         if(this.§^j§.contains(param1))
         {
            this.§^j§.removeChild(param1);
            return;
         }
         if(this.§5!>§.contains(param1))
         {
            this.§5!>§.removeChild(param1);
            return;
         }
         if(this.§3!I§.contains(param1))
         {
            this.§3!I§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§5&§) : void
      {
         if(param1.§+!6§().toUpperCase() == "WHITE_EGG" || param1.§2v§())
         {
            if(param1.§7=§.toUpperCase() == §+!;§.§@K§)
            {
               this.addExplosions(§0+§.§=t§,param1.§1!E§().GetPosition().x,param1.§1!E§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§0+§.§7!G§,param1.§1!E§().GetPosition().x,param1.§1!E§().GetPosition().y);
            }
         }
      }
      
      public function §1!§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§1!'§.indexOf(param1),param2,param3,param4);
      }
      
      public function §6!<§(param1:Number, param2:Number) : void
      {
         this.§#!0§.x = -param1;
         this.§#!0§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§5&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!'§.length)
         {
            _loc3_ = this.§1!'§[_loc2_] as §5&§;
            if(_loc3_ && _loc3_.§0!C§() && _loc3_.§^o§ > 0)
            {
               if(!param1 || _loc3_.§?W§.mTryToBlink <= 0 && _loc3_.§?W§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@6§(param1:Boolean = false) : int
      {
         var _loc4_:§5&§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§1!'§.length - 1;
         for(; _loc3_ >= 0; _loc3_--)
         {
            if(!((_loc4_ = this.§1!'§[_loc3_] as §5&§) && _loc4_.§0!C§() && _loc4_.§^o§ > 0))
            {
               continue;
            }
            §§push(!param1);
            if(!!param1)
            {
               §§pop();
               if(_loc4_.§?W§.mTryToBlink <= 0 && _loc4_.§?W§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
               continue;
            }
            §§goto(addr58);
         }
         return _loc2_;
      }
      
      public function §>!K§() : int
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!'§)
         {
            if(_loc2_ && (_loc2_.§%!U§() || _loc2_.§`!Q§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §7I§() : int
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!'§)
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
         var _loc3_:§5&§ = null;
         var _loc2_:int = this.§1!'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!'§[_loc2_];
            if(_loc3_ && _loc3_.§0!C§() && _loc3_.§^o§ > 0)
            {
               _loc3_.§?W§.mTryToScream = §>r§.§&!E§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §8!J§() : Boolean
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = this.§1!'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!'§[_loc1_] as §5&§;
            if(_loc2_ && _loc2_.§4V§() && _loc2_.§^o§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = this.§1!'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!'§[_loc1_] as §5&§;
            if(_loc2_ && _loc2_.§^o§ > 0 && _loc2_.§3!P§ != §#!#§.§5!_§)
            {
               if(_loc2_.§case§() && !_loc2_.§9!E§())
               {
                  return false;
               }
               if(_loc2_.§4V§() && _loc2_.§^o§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>3§(param1:Boolean = false) : §5&§
      {
         var _loc5_:int = 0;
         var _loc6_:§5&§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§1!'§.length;
         var _loc3_:int = 1 + Math.random() * this.§@6§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§1!'§[_loc5_]) && _loc6_.§0!C§() && _loc6_.§^o§ > 0)
               {
                  if(!param1 || _loc6_.§?W§.mTryToBlink <= 0 && _loc6_.§?W§.mTryToScream <= 0)
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
      
      public function §7w§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§1!'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§1!'§[_loc2_] as §5&§).§#![§.score;
            if((this.§1!'§[_loc2_] as §5&§).§case§())
            {
               _loc1_ += §^A§.§%H§.getValue() * int((this.§1!'§[_loc2_] as §5&§).§'!M§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§<&§.slingshot.§7w§());
      }
      
      public function §#i§(param1:§5&§, param2:§5&§) : Boolean
      {
         if(param1.§4V§() && param2.§4V§())
         {
            return true;
         }
         if(!param1.§;X§() && !param2.§;X§())
         {
            return true;
         }
         return false;
      }
      
      public function §!G§() : void
      {
         this.mSardineCanAdded = true;
         this.§&!V§ = 0;
      }
      
      public function §3k§(param1:§5&§, param2:§5&§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§8P§() || param2.§0!C§())
            {
               param2.applyDamage(param2.§'!M§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§8P§() || param1.§0!C§())
            {
               param1.applyDamage(param1.§'!M§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§+B§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§2!U§() || param2.§2!U§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§#i§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§-3§(param2.§+!6§());
         var _loc5_:Number = param1.§2!C§(param2.§+!6§());
         var _loc6_:Number = param2.§-3§(param1.§+!6§());
         var _loc7_:Number = param2.§2!C§(param1.§+!6§());
         var _loc8_:Number = param1.§1!E§().GetMass() * param1.§1!E§().GetLinearVelocity().x - param2.§1!E§().GetMass() * param2.§1!E§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§1!E§().GetMass() * param1.§1!E§().GetLinearVelocity().y - param2.§1!E§().GetMass() * param2.§1!E§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§^o§);
         var _loc14_:Number = Math.max(0,param2.§^o§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§4V§(),_loc14_ == param2.§'!M§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§4V§(),_loc13_ == param1.§'!M§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§%!'§(new b2Vec2(param2.§1!E§().GetLinearVelocity().x * _loc18_,param2.§1!E§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§%!'§(new b2Vec2(param1.§1!E§().GetLinearVelocity().x * _loc19_,param1.§1!E§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §^l§() : void
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = this.§1!'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!'§[_loc1_] as §5&§;
            if(_loc2_ != null && _loc2_.§0!C§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §%!@§() : void
      {
         var _loc2_:§5&§ = null;
         var _loc1_:int = this.§1!'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!'§[_loc1_] as §5&§;
            if(_loc2_ != null && _loc2_.§2v§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2!§() : int
      {
         return this.§1!'§.length;
      }
      
      public function §3!?§(param1:§74§) : void
      {
         var _loc4_:§5&§ = null;
         var _loc5_:§<q§ = null;
         var _loc6_:§"!P§ = null;
         var _loc7_:§?$§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!'§.length)
         {
            if((_loc4_ = this.§1!'§[_loc2_]).§=!-§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §<q§()).angle = _loc4_.§4!2§();
                  _loc5_.id = _loc4_.§7=§;
                  _loc5_.x = _loc4_.§1!E§().GetPosition().x;
                  _loc5_.y = _loc4_.§1!E§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§8!+§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#4§.length)
         {
            _loc7_ = this.§#4§[_loc3_];
            _loc6_ = new §"!P§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§6!N§,_loc7_.§"D§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§8!@§,_loc7_.motorSpeed,_loc7_.§9T§,_loc7_.maxTorque);
            param1.§;S§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §?!4§() : void
      {
         var _loc1_:int = 0;
         while(this.§1!'§.length > _loc1_)
         {
            if(this.§1!'§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§1!§(this.§1!'§[_loc1_]);
            }
         }
      }
      
      public function §15§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1!'§.length)
         {
            if(this.§1!'§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1!'§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§"!F§ = param1;
         this.§'j§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!'§.length)
         {
            if(this.§1!'§[_loc2_].isTexture())
            {
               this.§1!'§[_loc2_].sprite.visible = !this.§"!F§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§'!§ = param1;
      }
      
      public function §>!N§() : Boolean
      {
         return this.§'!§;
      }
      
      public function §0^§() : int
      {
         return this.§"K§;
      }
      
      public function §'!,§() : int
      {
         return this.§'!Q§;
      }
      
      public function §^!U§(param1:String) : §5&§
      {
         var _loc3_:§5&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!'§.length)
         {
            _loc3_ = this.§1!'§[_loc2_] as §5&§;
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
