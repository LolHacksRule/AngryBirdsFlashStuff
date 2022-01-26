package §]!+§
{
   import §!!V§.§&I§;
   import §!!V§.§@!§;
   import §!!V§.§[K§;
   import §!!V§.§[Q§;
   import §&!5§.§'!$§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §,!8§.b2PrismaticJoint;
   import §,!8§.b2WeldJoint;
   import §1E§.§2^§;
   import §5!$§.§!!H§;
   import §5!$§.§!`§;
   import §5!$§.§"!I§;
   import §5!$§.§1!8§;
   import §5!$§.§@$§;
   import §6%§.§!u§;
   import §6%§.§0F§;
   import §6%§.§70§;
   import §6%§.§;w§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §9!2§.§<j§;
   import §>8§.§#%§;
   import §@-§.§-N§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.Texture;
   
   public class §'§
   {
       
      
      protected var §!!I§:Vector.<§";§>;
      
      protected var § 7§:int;
      
      public var §%v§:§&I§;
      
      public var §?e§:Vector.<§<i§>;
      
      protected var §>E§:Sprite;
      
      protected var §<=§:Sprite;
      
      private var §4u§:Sprite;
      
      private var §",§:Sprite;
      
      private var §0s§:Sprite;
      
      protected var §;b§:Vector.<Texture>;
      
      protected var §!!&§:Vector.<§!u§>;
      
      protected var §4!§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`!^§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>7§:Boolean = false;
      
      protected var §8!H§:Number;
      
      protected var §5]§:int;
      
      protected var §]j§:Vector.<§0F§>;
      
      protected var §-]§:int = 0;
      
      private var §&R§:int = 0;
      
      private var §=!T§:int = 0;
      
      private var §@e§:int;
      
      private var §0!;§:Boolean = true;
      
      private var §4e§:Boolean = true;
      
      public function §'§(param1:§&I§, param2:§#%§, param3:Sprite)
      {
         var _loc5_:§!u§ = null;
         var _loc6_:§;w§ = null;
         var _loc7_:§";§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§";§ = null;
         var _loc11_:§";§ = null;
         this.§!!I§ = new Vector.<§";§>();
         this.§?e§ = new Vector.<§<i§>();
         this.§;b§ = new Vector.<Texture>();
         this.§8!H§ = this.§[K§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§]j§ = new Vector.<§0F§>();
         super();
         this.§%v§ = param1;
         this.§ 7§ = 0;
         this.§<=§ = param3;
         this.§<=§.§7!9§ = false;
         this.§4e§ = true;
         this.§0!;§ = true;
         this.§>E§ = new Sprite();
         this.§4u§ = new Sprite();
         this.§",§ = new Sprite();
         this.§0s§ = new Sprite();
         this.§<=§.addChild(this.§>E§);
         this.§<=§.addChild(this.§4u§);
         this.§<=§.addChild(this.§",§);
         this.§<=§.addChild(this.§0s§);
         this.addObject(§-N§.§'E§(param2.theme).§@!&§,(this.§%v§.§,Q§.§^]§ + this.§%v§.§,Q§.§@!K§) / 2,this.§%v§.§,Q§.§]!Z§ + §@!§.§<k§);
         this.§@e§ = this.§!!I§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§@M§)
         {
            _loc6_ = param2.§8v§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§+X§();
         this.§1!$§(true);
         this.§!!&§ = new Vector.<§!u§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§7!F§)
         {
            this.§!!&§.push(§!u§.§<d§(param2.§=,§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§!!&§)
         {
            _loc8_ = _loc5_.index1 + this.§@e§;
            _loc9_ = _loc5_.index2 + this.§@e§;
            if(_loc8_ < this.§!!I§.length && _loc9_ < this.§!!I§.length)
            {
               _loc10_ = this.§!!I§[_loc8_];
               _loc11_ = this.§!!I§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §70§.§@K§)
               {
                  _loc5_.§;a§ = this.§%v§.mLevelEngine.mWorld.§<!L§(_loc5_.§[S§(_loc10_,_loc11_));
               }
               else
               {
                  this.§]j§.push(new §0F§(_loc8_,_loc9_,_loc5_.§2[§));
               }
            }
         }
      }
      
      protected function get §[K§() : Class
      {
         return §[K§;
      }
      
      public function get §&!E§() : Sprite
      {
         return this.§0s§;
      }
      
      public function get §&!Y§() : Sprite
      {
         return this.§<=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§!!I§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§!!I§ = null;
         this.§]j§ = null;
         if(this.§<=§)
         {
            this.§<=§.dispose();
            this.§<=§ = null;
            this.§>E§ = null;
            this.§0s§ = null;
            this.§4u§ = null;
            this.§",§ = null;
         }
         while(this.§;b§.length > 0)
         {
            _loc1_ = this.§;b§.pop();
            this.§%v§.§2!#§.§%!P§(_loc1_);
         }
      }
      
      private function §1!$§(param1:Boolean) : void
      {
         this.§>E§.visible = param1;
      }
      
      private function §+X§() : void
      {
         var _loc3_:§";§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§'!$§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§";§> = new Vector.<§";§>();
         for each(_loc3_ in this.§!!I§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§<=§);
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
            this.§8!_§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§-!D§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§%v§.§2!#§.§@!=§(_loc10_);
            this.§;b§.push(_loc12_);
            (_loc13_ = new §'!$§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§>E§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §-!D§(param1:Vector.<§";§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§";§ = null;
         var _loc11_:§!`§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5a§.shape).§9F§();
            _loc13_ = new Rectangle(_loc12_[0].x / §&I§.§]!H§ * param6,_loc12_[0].y / §&I§.§]!H§ * param6,(_loc12_[1].x - _loc12_[0].x) / §&I§.§]!H§ * param6,(_loc12_[1].y - _loc12_[0].y) / §&I§.§]!H§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§?! §()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §8!_§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§%v§.background.§6!?§();
         var _loc5_:§<j§;
         if(_loc5_ = this.§%v§.§`!`§.§&'§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §";§
      {
         var _loc10_:§";§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § q§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §6^§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §;!9§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §-!6§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §,g§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §+!6§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §'!S§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §`H§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-]§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §";§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§";§;
         if((_loc11_ = this.§,6§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§0!;§;
            this.§!!I§[this.§!!I§.length] = _loc11_;
         }
         else
         {
            this.§!!I§[this.§!!I§.length] = _loc11_;
         }
         if(_loc11_ is §`H§ && !_loc11_.§'+§())
         {
            this.§4u§.addChild(_loc10_);
            ++this.§-]§;
         }
         else if(_loc11_.front || param9)
         {
            this.§0s§.addChild(_loc10_);
         }
         else
         {
            this.§",§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§%v§.§7,§(_loc11_);
         }
         if(param6)
         {
            this.§%v§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §<d§(param1:int, param2:§";§, param3:§";§) : §!u§
      {
         var _loc6_:§!u§ = null;
         var _loc4_:int = this.§!!I§.indexOf(param2) - this.§@e§;
         var _loc5_:int = this.§!!I§.indexOf(param3) - this.§@e§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §!u§(§70§.§#B§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§;a§ = this.§%v§.mLevelEngine.mWorld.§<!L§(_loc6_.§[S§(param2,param3));
            this.§!!&§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §72§(param1:§!u§) : void
      {
         if(!(param1.§;a§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§";§ = this.§8v§(param1.index1 + this.§@e§);
         var _loc3_:§";§ = this.§8v§(param1.index2 + this.§@e§);
         this.§%v§.mLevelEngine.mWorld.§;!#§(param1.§;a§);
         param1.§;a§ = this.§%v§.mLevelEngine.mWorld.§<!L§(param1.§[S§(_loc2_,_loc3_));
      }
      
      public function §6x§(param1:§";§) : Vector.<§!u§>
      {
         var _loc4_:§!u§ = null;
         var _loc2_:Vector.<§!u§> = new Vector.<§!u§>();
         var _loc3_:int = this.§!!I§.indexOf(param1) - this.§@e§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§!!&§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §-6§() : Vector.<§!u§>
      {
         return this.§!!&§;
      }
      
      public function §package§(param1:§";§) : void
      {
         var _loc2_:int = this.§!!I§.indexOf(param1) - this.§@e§;
         var _loc3_:int = this.§!!&§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§!!&§[_loc3_].index1 == _loc2_ || this.§!!&§[_loc3_].index2 == _loc2_)
            {
               this.§!!&§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §6!N§(param1:§";§, param2:§";§) : Boolean
      {
         var _loc3_:int = this.§!!I§.indexOf(param1) - this.§@e§;
         var _loc4_:int = this.§!!I§.indexOf(param2) - this.§@e§;
         var _loc5_:int = this.§!!&§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§!!&§[_loc5_].index1 == _loc3_ && this.§!!&§[_loc5_].index2 == _loc4_ || this.§!!&§[_loc5_].index1 == _loc4_ && this.§!!&§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §,6§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §";§
      {
         var _loc10_:§";§ = null;
         var _loc11_:§!!H§ = null;
         var _loc12_:§!!H§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§=!T§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §"!I§.§&E§(param2);
            _loc10_ = new §7r§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §"!I§.§&E§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §"!I§.§&E§(param2);
            }
            if(_loc12_.§@!$§ == §!!H§.§6!B§ || _loc12_.§@!$§ == §!!H§.§-I§)
            {
               _loc10_ = new §?!2§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §";§(this,param1,this.§%v§.mLevelEngine.mWorld,this.§%v§,this.§ 7§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §5e§(param1:Number) : void
      {
         var _loc3_:§";§ = null;
         var _loc2_:int = this.§!!I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!!I§[_loc2_] as §";§;
            if(_loc3_)
            {
               if(_loc3_.§0!C§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§ 6§();
                  _loc3_.§%C§();
               }
            }
            _loc2_--;
         }
         this.§^!§(param1);
      }
      
      protected function §^!§(param1:Number) : void
      {
         var _loc3_:§!u§ = null;
         var _loc4_:§0F§ = null;
         var _loc5_:int = 0;
         var _loc6_:§";§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§]j§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§]j§[_loc2_]).§if §)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§&!L§("block_" + _loc5_))
                  {
                     this.§-R§(_loc6_,true,true,true);
                  }
                  this.§]j§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§!!&§)
         {
            if(_loc3_.type == §70§.§?c§ && _loc3_.§75§)
            {
               _loc7_ = (_loc3_.§;a§ as b2PrismaticJoint).§6L§();
               _loc8_ = (_loc3_.§;a§ as b2PrismaticJoint).§+L§();
               if(_loc3_.§+!,§ && _loc3_.§5=§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§;a§ as b2PrismaticJoint).§'!E§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§?e§.push(§<i§.§42§(param1,param2,param3));
         §2^§.§ !C§("TntExplosions","ChannelExplosions");
      }
      
      public function §[P§(param1:Number, param2:Number) : int
      {
         var _loc4_:§";§ = null;
         var _loc3_:int = this.§!!I§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!!I§[_loc3_])
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
      
      public function §?m§(param1:Number, param2:Number) : §";§
      {
         var _loc4_:§";§ = null;
         var _loc3_:int = this.§!!I§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!!I§[_loc3_])
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
      
      public function §8v§(param1:int) : §";§
      {
         return this.§!!I§[param1];
      }
      
      public function §;<§(param1:Number, param2:Number) : void
      {
         var _loc4_:§";§ = null;
         var _loc3_:int = this.§!!I§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§!!I§[_loc3_] as §";§).§;<§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §2!6§(param1:§";§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§";§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§0!C§ == param1.§6!;§)
         {
            if(this.§8!H§ < this.§[K§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§8!H§ += param2 * this.§[K§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§?A§().§0!]§(param2 * this.§8!H§);
            this.§5]§ = 0;
         }
         else if(this.§5]§ == 0)
         {
            this.§5]§ = this.§%v§.§9!G§;
         }
         if(param1.§%e§() || this.§-x§(param1) || this.§5]§ > 0 && this.§%v§.§9!G§ > this.§5]§ + this.§[K§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§[K§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§[K§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§[K§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §2^§.§ !C§("Mighty_Eagle_Selected_1","ChannelBird");
                  §2^§.§ !C§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§[K§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§?A§().GetPosition().x - this.§[K§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§?A§().GetPosition().y - this.§[K§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§[K§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§-x§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§[K§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§5]§ = 0;
                  _loc7_.§^!3§.§`!R§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §7!`§(param1:§";§, param2:Number) : Boolean
      {
         var _loc5_:§";§ = null;
         if(this.§[K§.MIGHTY_EAGLE_USE_SHADE && !this.§>7§ && this.mMightyEagleTimer > this.§[K§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>7§ = true;
            this.§%v§.§else §();
         }
         this.mMightyEagleTimer += param2;
         this.§%v§.particles.addParticle(§"!U§.§@!Z§,§7!H§.§]0§,§"!U§.§+6§,param1.§?A§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§?A§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§"!U§.§5U§(param1.§+!J§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§=e§(this.§[K§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§`!^§)
            {
               this.§`!^§ = false;
               this.§%v§.§7!]§();
               param1.§3![§(§1!8§.§=Y§);
               this.mSardineCanAdded = false;
               param1.§^!3§.§33§ = true;
               param1.§^!3§.§#!<§();
               for each(_loc5_ in this.§!!I§)
               {
                  if(_loc5_ && _loc5_.§1M§())
                  {
                     _loc5_.§?A§().SetAwake(true);
                     _loc5_.§?A§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§7!O§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§!!I§)
               {
                  if(_loc5_ && _loc5_.§1M§())
                  {
                     _loc5_.applyDamage(_loc5_.§6!;§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§?A§().GetPosition().y >= -5.5;
            this.§`!^§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§'!,§(param2,new Point(this.§[K§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§[K§.MIGHTY_EAGLE_Y_CHANGE),this.§[K§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §5J§() : void
      {
         var _loc1_:§<i§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§";§ = null;
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
         while(this.§?e§.length > 0)
         {
            _loc1_ = this.§?e§.shift();
            _loc2_ = _loc1_.§7O§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§!!I§)
            {
               _loc8_ = _loc6_.§?A§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§?A§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§7O§)
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
                     _loc6_.§?A§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§5!R§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§4!X§(_loc6_,_loc14_);
               }
            }
            this.§%v§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§7!H§.§]0§,§"!U§.§8-§,_loc3_,_loc4_,600,"",§"!U§.§&!?§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§%v§.particles.addParticle(§"!U§.§8J§,§7!H§.§]0§,§"!U§.§+6§,_loc3_,_loc4_,_loc16_,"",§"!U§.§&!?§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §4!X§(param1:§";§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §"!U§.§5!=§;
      }
      
      public function §[! §(param1:Number) : void
      {
         var _loc2_:§";§ = null;
         var _loc3_:int = this.§!!I§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!!I§[_loc3_];
            if(_loc2_.§=!&§())
            {
               if(this.§2!6§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§'+§())
            {
               this.§7!`§(_loc2_,param1);
            }
            else if(this.§-x§(_loc2_))
            {
               _loc2_.§3![§(§1!8§.§!t§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§3![§(§1!8§.§!t§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§,p§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§5J§();
      }
      
      private function §7!O§() : void
      {
         var _loc1_:§!u§ = null;
         for each(_loc1_ in this.§!!&§)
         {
            if(_loc1_.type != §70§.§@K§)
            {
               this.§%v§.mLevelEngine.mWorld.§;!#§(_loc1_.§;a§);
            }
         }
      }
      
      public function §4!C§() : Boolean
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!!I§.length)
         {
            _loc2_ = this.§!!I§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-x§(param1:§";§) : Boolean
      {
         if(param1 && param1.§5a§.§"!D§() != §@$§.§"!&§ && this.§%v§.§,Q§.§9?§(param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§!u§ = null;
         var _loc7_:§0F§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§";§;
         if((_loc5_ = this.§!!I§[param1]).§1M§())
         {
            ++this.§&R§;
         }
         else if(_loc5_.§,p§())
         {
            --this.§-]§;
         }
         if(_loc5_ == this.§%v§.activeObject)
         {
            this.§%v§.activeObject = null;
         }
         if(param2)
         {
            this.§%v§.addScore(_loc5_.§5a§.score,§[Q§.§catch§,true,_loc5_.§?A§().GetPosition().x,_loc5_.§?A§().GetPosition().y - 3,§"!U§.§`§(_loc5_.§+!J§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§%v§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§8q§(_loc5_.sprite);
         this.§package§(_loc5_);
         for each(_loc6_ in this.§!!&§)
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
         for each(_loc7_ in this.§]j§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§if § = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§!!I§[param1] = null;
         this.§!!I§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§";§, param2:§7!H§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §8q§(param1:Sprite) : void
      {
         if(this.§",§.contains(param1))
         {
            this.§",§.removeChild(param1);
            return;
         }
         if(this.§4u§.contains(param1))
         {
            this.§4u§.removeChild(param1);
            return;
         }
         if(this.§>E§.contains(param1))
         {
            this.§>E§.removeChild(param1);
            return;
         }
         if(this.§0s§.contains(param1))
         {
            this.§0s§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§";§) : void
      {
         if(param1.§#!-§().toUpperCase() == "WHITE_EGG" || param1.§+!P§())
         {
            if(param1.§+!J§.toUpperCase() == §-!6§.§#!2§)
            {
               this.addExplosions(§<i§.§"Y§,param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§<i§.§`N§,param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y);
            }
         }
      }
      
      public function §-R§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§!!I§.indexOf(param1),param2,param3,param4);
      }
      
      public function §?'§(param1:Number, param2:Number) : void
      {
         this.§<=§.x = -param1;
         this.§<=§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§";§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!I§.length)
         {
            _loc3_ = this.§!!I§[_loc2_] as §";§;
            if(_loc3_ && _loc3_.§1M§() && _loc3_.§0!C§ > 0)
            {
               if(!param1 || _loc3_.§^!3§.mTryToBlink <= 0 && _loc3_.§^!3§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §6!P§(param1:Boolean = false) : int
      {
         var _loc4_:§";§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§!!I§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!!I§[_loc3_] as §";§) && _loc4_.§1M§() && _loc4_.§0!C§ > 0)
            {
               if(!param1 || _loc4_.§^!3§.mTryToBlink <= 0 && _loc4_.§^!3§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §-!!§() : int
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!!I§)
         {
            §§push(Boolean(_loc2_));
            if(Boolean(_loc2_))
            {
               §§pop();
               if(_loc2_.§'?§() || _loc2_.§81§())
               {
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr34);
         }
         return _loc1_;
      }
      
      public function §`t§() : int
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!!I§)
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
         var _loc3_:§";§ = null;
         var _loc2_:int = this.§!!I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!!I§[_loc2_];
            if(_loc3_ && _loc3_.§1M§() && _loc3_.§0!C§ > 0)
            {
               _loc3_.§^!3§.mTryToScream = §%j§.§8f§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@%§() : Boolean
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = this.§!!I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!!I§[_loc1_] as §";§;
            if(_loc2_ && _loc2_.§,p§() && _loc2_.§0!C§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = this.§!!I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!!I§[_loc1_] as §";§;
            if(_loc2_ && _loc2_.§0!C§ > 0 && _loc2_.§@!$§ != §!!H§.§5k§)
            {
               if(_loc2_.§`d§() && !_loc2_.§%e§())
               {
                  return false;
               }
               if(_loc2_.§,p§() && _loc2_.§0!C§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §3!a§(param1:Boolean = false) : §";§
      {
         var _loc5_:int = 0;
         var _loc6_:§";§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§!!I§.length;
         var _loc3_:int = 1 + Math.random() * this.§6!P§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§!!I§[_loc5_]) && _loc6_.§1M§() && _loc6_.§0!C§ > 0)
               {
                  if(!param1 || _loc6_.§^!3§.mTryToBlink <= 0 && _loc6_.§^!3§.mTryToScream <= 0)
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
      
      public function § !;§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§!!I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§!!I§[_loc2_] as §";§).§5a§.score;
            if((this.§!!I§[_loc2_] as §";§).§`d§())
            {
               _loc1_ += §&I§.§#!`§.getValue() * int((this.§!!I§[_loc2_] as §";§).§6!;§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§%v§.slingshot.§ !;§());
      }
      
      public function §^!W§(param1:§";§, param2:§";§) : Boolean
      {
         if(param1.§,p§() && param2.§,p§())
         {
            return true;
         }
         if(!param1.§^!>§() && !param2.§^!>§())
         {
            return true;
         }
         return false;
      }
      
      public function §;!%§() : void
      {
         this.mSardineCanAdded = true;
         this.§-]§ = 0;
      }
      
      public function objectCollision(param1:§";§, param2:§";§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§'+§() || param2.§1M§())
            {
               param2.applyDamage(param2.§6!;§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§'+§() || param1.§1M§())
            {
               param1.applyDamage(param1.§6!;§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§[K§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§=!&§() || param2.§=!&§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§^!W§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§6!M§(param2.§#!-§());
         var _loc5_:Number = param1.§>l§(param2.§#!-§());
         var _loc6_:Number = param2.§6!M§(param1.§#!-§());
         var _loc7_:Number = param2.§>l§(param1.§#!-§());
         var _loc8_:Number = param1.§?A§().GetMass() * param1.§?A§().GetLinearVelocity().x - param2.§?A§().GetMass() * param2.§?A§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§?A§().GetMass() * param1.§?A§().GetLinearVelocity().y - param2.§?A§().GetMass() * param2.§?A§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§0!C§);
         var _loc14_:Number = Math.max(0,param2.§0!C§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§,p§(),_loc14_ == param2.§6!;§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§,p§(),_loc13_ == param1.§6!;§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§^G§(new b2Vec2(param2.§?A§().GetLinearVelocity().x * _loc18_,param2.§?A§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§^G§(new b2Vec2(param1.§?A§().GetLinearVelocity().x * _loc19_,param1.§?A§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §!!W§() : void
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = this.§!!I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!!I§[_loc1_] as §";§;
            if(_loc2_ != null && _loc2_.§1M§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §0%§() : void
      {
         var _loc2_:§";§ = null;
         var _loc1_:int = this.§!!I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!!I§[_loc1_] as §";§;
            if(_loc2_ != null && _loc2_.§+!P§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §@!H§() : int
      {
         return this.§!!I§.length;
      }
      
      public function §6!,§(param1:§#%§) : void
      {
         var _loc4_:§";§ = null;
         var _loc5_:§;w§ = null;
         var _loc6_:§70§ = null;
         var _loc7_:§!u§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!!I§.length)
         {
            if((_loc4_ = this.§!!I§[_loc2_]).§8!W§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §;w§()).angle = _loc4_.§?! §();
                  _loc5_.id = _loc4_.§+!J§;
                  _loc5_.x = _loc4_.§?A§().GetPosition().x;
                  _loc5_.y = _loc4_.§?A§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!!&§.length)
         {
            _loc7_ = this.§!!&§[_loc3_];
            _loc6_ = new §70§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§4=§,_loc7_.§+!,§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§5=§,_loc7_.motorSpeed,_loc7_.§75§,_loc7_.maxTorque);
            param1.§@!8§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §+!_§() : void
      {
         var _loc1_:int = 0;
         while(this.§!!I§.length > _loc1_)
         {
            if(this.§!!I§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§-R§(this.§!!I§[_loc1_]);
            }
         }
      }
      
      public function §,!_§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!!I§.length)
         {
            if(this.§!!I§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!!I§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§0!;§ = param1;
         this.§1!$§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!!I§.length)
         {
            if(this.§!!I§[_loc2_].isTexture())
            {
               this.§!!I§[_loc2_].sprite.visible = !this.§0!;§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§4e§ = param1;
      }
      
      public function §'N§() : Boolean
      {
         return this.§4e§;
      }
      
      public function §>f§() : int
      {
         return this.§=!T§;
      }
      
      public function §&!A§() : int
      {
         return this.§&R§;
      }
      
      public function §&!L§(param1:String) : §";§
      {
         var _loc3_:§";§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!I§.length)
         {
            _loc3_ = this.§!!I§[_loc2_] as §";§;
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
