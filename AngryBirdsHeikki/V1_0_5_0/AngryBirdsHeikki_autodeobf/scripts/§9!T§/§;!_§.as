package §9!T§
{
   import § !9§.Texture;
   import §+D§.§5!P§;
   import §+D§.§6+§;
   import §+D§.§8T§;
   import §+D§.§9!4§;
   import §,!3§.b2Vec2;
   import §2!Q§.§'[§;
   import §8!I§.§,6§;
   import §8!I§.§0!^§;
   import §8!I§.§1!_§;
   import §8!I§.§4A§;
   import §8!I§.§=]§;
   import §=X§.§"!6§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §@!%§.§2!]§;
   import §@!]§.b2PrismaticJoint;
   import §@!]§.b2WeldJoint;
   import §[=§.§@!#§;
   import §[=§.Sprite;
   import §[d§.§57§;
   import §[d§.§]<§;
   import §[d§.§^;§;
   import §[d§.§^@§;
   import §`!H§.§5f§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!_§
   {
       
      
      protected var §]-§:Vector.<§;!"§>;
      
      protected var §9!N§:int;
      
      public var §^!4§:§5!P§;
      
      public var §4s§:Vector.<§7!a§>;
      
      protected var §@p§:Sprite;
      
      protected var §;L§:Sprite;
      
      private var §-!5§:Sprite;
      
      private var §4u§:Sprite;
      
      private var §&d§:Sprite;
      
      protected var §>!M§:Vector.<Texture>;
      
      protected var §,!_§:Vector.<§^@§>;
      
      protected var §#!c§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §1l§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>0§:Boolean = false;
      
      protected var §-!'§:Number;
      
      protected var §>!@§:int;
      
      protected var §=!=§:Vector.<§^;§>;
      
      protected var §=!a§:int = 0;
      
      private var §7!_§:int = 0;
      
      private var §&!5§:int = 0;
      
      private var §5Z§:int;
      
      private var §`U§:Boolean = true;
      
      private var §!!+§:Boolean = true;
      
      public function §;!_§(param1:§5!P§, param2:§"!6§, param3:Sprite)
      {
         var _loc5_:§^@§ = null;
         var _loc6_:§]<§ = null;
         var _loc7_:§;!"§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§;!"§ = null;
         var _loc11_:§;!"§ = null;
         this.§]-§ = new Vector.<§;!"§>();
         this.§4s§ = new Vector.<§7!a§>();
         this.§>!M§ = new Vector.<Texture>();
         this.§-!'§ = this.§9!4§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§=!=§ = new Vector.<§^;§>();
         super();
         this.§^!4§ = param1;
         this.§9!N§ = 0;
         this.§;L§ = param3;
         this.§;L§.§^!]§ = false;
         this.§!!+§ = true;
         this.§`U§ = true;
         this.§@p§ = new Sprite();
         this.§-!5§ = new Sprite();
         this.§4u§ = new Sprite();
         this.§&d§ = new Sprite();
         this.§;L§.addChild(this.§@p§);
         this.§;L§.addChild(this.§-!5§);
         this.§;L§.addChild(this.§4u§);
         this.§;L§.addChild(this.§&d§);
         this.§+!3§(§2!]§.§+!4§(param2.theme).§`!&§,(this.§^!4§.§0r§.§4!;§ + this.§^!4§.§0r§.§&s§) / 2,this.§^!4§.§0r§.§6E§ + §8T§.§^$§);
         this.§5Z§ = this.§]-§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§;!a§)
         {
            _loc6_ = param2.§,!+§(_loc4_);
            if(_loc7_ = this.§+!3§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§ V§();
         this.§9!W§(true);
         this.§,!_§ = new Vector.<§^@§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§'@§)
         {
            this.§,!_§.push(§^@§.§^s§(param2.§ !R§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§,!_§)
         {
            _loc8_ = _loc5_.index1 + this.§5Z§;
            _loc9_ = _loc5_.index2 + this.§5Z§;
            if(_loc8_ < this.§]-§.length && _loc9_ < this.§]-§.length)
            {
               _loc10_ = this.§]-§[_loc8_];
               _loc11_ = this.§]-§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §57§.§#!$§)
               {
                  _loc5_.§&"§ = this.§^!4§.mLevelEngine.mWorld.§!t§(_loc5_.§`t§(_loc10_,_loc11_));
               }
               else
               {
                  this.§=!=§.push(new §^;§(_loc8_,_loc9_,_loc5_.§"!Q§));
               }
            }
         }
      }
      
      protected function get §9!4§() : Class
      {
         return §9!4§;
      }
      
      public function get §3!L§() : Sprite
      {
         return this.§&d§;
      }
      
      public function get §6t§() : Sprite
      {
         return this.§;L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§]-§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§]-§ = null;
         this.§=!=§ = null;
         if(this.§;L§)
         {
            this.§;L§.dispose();
            this.§;L§ = null;
            this.§@p§ = null;
            this.§&d§ = null;
            this.§-!5§ = null;
            this.§4u§ = null;
         }
         while(this.§>!M§.length > 0)
         {
            _loc1_ = this.§>!M§.pop();
            this.§^!4§.textureManager.§1G§(_loc1_);
         }
      }
      
      private function §9!W§(param1:Boolean) : void
      {
         this.§@p§.visible = param1;
      }
      
      private function § V§() : void
      {
         var _loc3_:§;!"§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§@!#§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;!"§> = new Vector.<§;!"§>();
         for each(_loc3_ in this.§]-§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§;L§);
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
            this.§[5§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§?G§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§^!4§.textureManager.§1!1§(_loc10_);
            this.§>!M§.push(_loc12_);
            (_loc13_ = new §@!#§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§@p§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §?G§(param1:Vector.<§;!"§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;!"§ = null;
         var _loc11_:§0!^§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§+R§.shape).§>!N§();
            _loc13_ = new Rectangle(_loc12_[0].x / §5!P§.§>M§ * param6,_loc12_[0].y / §5!P§.§>M§ * param6,(_loc12_[1].x - _loc12_[0].x) / §5!P§.§>M§ * param6,(_loc12_[1].y - _loc12_[0].y) / §5!P§.§>M§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§0b§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §[5§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§^!4§.background.§6B§();
         var _loc5_:§5f§;
         if(_loc5_ = this.§^!4§.backgroundTextureManager.§;X§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!"§
      {
         var _loc10_:§;!"§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §^y§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §!!L§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §0?§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §^!9§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §<h§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §0!&§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §;W§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §5g§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§=!a§ > 0;
      }
      
      public function §+!3§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!"§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§;!"§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§`U§;
            this.§]-§[this.§]-§.length] = _loc11_;
         }
         else
         {
            this.§]-§[this.§]-§.length] = _loc11_;
         }
         if(_loc11_ is §5g§ && !_loc11_.§9!C§())
         {
            this.§-!5§.addChild(_loc10_);
            ++this.§=!a§;
         }
         else if(_loc11_.front || param9)
         {
            this.§&d§.addChild(_loc10_);
         }
         else
         {
            this.§4u§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§^!4§.§[Q§(_loc11_);
         }
         if(param6)
         {
            this.§^!4§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §^s§(param1:int, param2:§;!"§, param3:§;!"§) : §^@§
      {
         var _loc6_:§^@§ = null;
         var _loc4_:int = this.§]-§.indexOf(param2) - this.§5Z§;
         var _loc5_:int = this.§]-§.indexOf(param3) - this.§5Z§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §^@§(§57§.§]!c§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§&"§ = this.§^!4§.mLevelEngine.mWorld.§!t§(_loc6_.§`t§(param2,param3));
            this.§,!_§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §]!W§(param1:§^@§) : void
      {
         if(!(param1.§&"§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§;!"§ = this.§,!+§(param1.index1 + this.§5Z§);
         var _loc3_:§;!"§ = this.§,!+§(param1.index2 + this.§5Z§);
         this.§^!4§.mLevelEngine.mWorld.§3!Q§(param1.§&"§);
         param1.§&"§ = this.§^!4§.mLevelEngine.mWorld.§!t§(param1.§`t§(_loc2_,_loc3_));
      }
      
      public function § J§(param1:§;!"§) : Vector.<§^@§>
      {
         var _loc4_:§^@§ = null;
         var _loc2_:Vector.<§^@§> = new Vector.<§^@§>();
         var _loc3_:int = this.§]-§.indexOf(param1) - this.§5Z§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§,!_§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §3!-§() : Vector.<§^@§>
      {
         return this.§,!_§;
      }
      
      public function §;A§(param1:§;!"§) : void
      {
         var _loc2_:int = this.§]-§.indexOf(param1) - this.§5Z§;
         var _loc3_:int = this.§,!_§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§,!_§[_loc3_].index1 == _loc2_ || this.§,!_§[_loc3_].index2 == _loc2_)
            {
               this.§,!_§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §@+§(param1:§;!"§, param2:§;!"§) : Boolean
      {
         var _loc3_:int = this.§]-§.indexOf(param1) - this.§5Z§;
         var _loc4_:int = this.§]-§.indexOf(param2) - this.§5Z§;
         var _loc5_:int = this.§,!_§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§,!_§[_loc5_].index1 == _loc3_ && this.§,!_§[_loc5_].index2 == _loc4_ || this.§,!_§[_loc5_].index1 == _loc4_ && this.§,!_§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!"§
      {
         var _loc10_:§;!"§ = null;
         var _loc11_:§,6§ = null;
         var _loc12_:§,6§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§&!5§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §=]§.§^]§(param2);
            _loc10_ = new §'#§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §=]§.§^]§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §=]§.§^]§(param2);
            }
            if(_loc12_.§9?§ == §,6§.§%G§ || _loc12_.§9?§ == §,6§.§'V§)
            {
               _loc10_ = new §,P§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §;!"§(this,param1,this.§^!4§.mLevelEngine.mWorld,this.§^!4§,this.§9!N§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §6!R§(param1:Number) : void
      {
         var _loc3_:§;!"§ = null;
         var _loc2_:int = this.§]-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]-§[_loc2_] as §;!"§;
            if(_loc3_)
            {
               if(_loc3_.§1K§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§9!X§();
                  _loc3_.§8!%§();
               }
            }
            _loc2_--;
         }
         this.§5B§(param1);
      }
      
      protected function §5B§(param1:Number) : void
      {
         var _loc3_:§^@§ = null;
         var _loc4_:§^;§ = null;
         var _loc5_:int = 0;
         var _loc6_:§;!"§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§=!=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§=!=§[_loc2_]).§#!>§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§^_§("block_" + _loc5_))
                  {
                     this.§7!8§(_loc6_,true,true,true);
                  }
                  this.§=!=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§,!_§)
         {
            if(_loc3_.type == §57§.§;!<§ && _loc3_.§3^§)
            {
               _loc7_ = (_loc3_.§&"§ as b2PrismaticJoint).§-c§();
               _loc8_ = (_loc3_.§&"§ as b2PrismaticJoint).§3R§();
               if(_loc3_.§`!`§ && _loc3_.§2N§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§&"§ as b2PrismaticJoint).§0U§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§4s§.push(§7!a§.createExplosion(param1,param2,param3));
         §'[§.§"]§("TntExplosions","ChannelExplosions");
      }
      
      public function §,@§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;!"§ = null;
         var _loc3_:int = this.§]-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§]-§[_loc3_])
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
      
      public function §>]§(param1:Number, param2:Number) : §;!"§
      {
         var _loc4_:§;!"§ = null;
         var _loc3_:int = this.§]-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§]-§[_loc3_])
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
      
      public function §,!+§(param1:int) : §;!"§
      {
         return this.§]-§[param1];
      }
      
      public function §#<§(param1:Number, param2:Number) : void
      {
         var _loc4_:§;!"§ = null;
         var _loc3_:int = this.§]-§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§]-§[_loc3_] as §;!"§).§#<§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §6q§(param1:§;!"§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§;!"§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§1K§ == param1.§0!a§)
         {
            if(this.§-!'§ < this.§9!4§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§-!'§ += param2 * this.§9!4§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§<k§().§;w§(param2 * this.§-!'§);
            this.§>!@§ = 0;
         }
         else if(this.§>!@§ == 0)
         {
            this.§>!@§ = this.§^!4§.§3!5§;
         }
         if(param1.§?!Q§() || this.§-+§(param1) || this.§>!@§ > 0 && this.§^!4§.§3!5§ > this.§>!@§ + this.§9!4§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§9!4§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§9!4§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§9!4§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §'[§.§"]§("Mighty_Eagle_Selected_1","ChannelBird");
                  §'[§.§"]§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§9!4§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§<k§().GetPosition().x - this.§9!4§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§<k§().GetPosition().y - this.§9!4§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§9!4§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§-+§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§+!3§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§9!4§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§>!@§ = 0;
                  _loc7_.§1I§.§9!^§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §?>§(param1:§;!"§, param2:Number) : Boolean
      {
         var _loc5_:§;!"§ = null;
         if(this.§9!4§.MIGHTY_EAGLE_USE_SHADE && !this.§>0§ && this.mMightyEagleTimer > this.§9!4§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>0§ = true;
            this.§^!4§.§+I§();
         }
         this.mMightyEagleTimer += param2;
         this.§^!4§.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,param1.§<k§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§<k§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§^!U§.§1!2§(param1.§%!1§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§0R§(this.§9!4§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§1l§)
            {
               this.§1l§ = false;
               this.§^!4§.§ !E§();
               param1.§1!#§(§4A§.§<N§);
               this.mSardineCanAdded = false;
               param1.§1I§.§<W§ = true;
               param1.§1I§.§3H§();
               for each(_loc5_ in this.§]-§)
               {
                  if(_loc5_ && _loc5_.§8! §())
                  {
                     _loc5_.§<k§().SetAwake(true);
                     _loc5_.§<k§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§]!,§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§]-§)
               {
                  if(_loc5_ && _loc5_.§8! §())
                  {
                     _loc5_.applyDamage(_loc5_.§0!a§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§<k§().GetPosition().y >= -5.5;
            this.§1l§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!!Y§(param2,new Point(this.§9!4§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§9!4§.MIGHTY_EAGLE_Y_CHANGE),this.§9!4§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §,!-§() : void
      {
         var _loc1_:§7!a§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;!"§ = null;
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
         while(this.§4s§.length > 0)
         {
            _loc1_ = this.§4s§.shift();
            _loc2_ = _loc1_.§4!b§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§]-§)
            {
               _loc8_ = _loc6_.§<k§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§<k§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§4!b§)
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
                     _loc6_.§<k§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§0!0§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§^!4§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§[,§.§'k§,§^!U§.§>!Y§,_loc3_,_loc4_,600,"",§^!U§.§=_§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§^!4§.particles.addParticle(§^!U§.§6!J§,§[,§.§'k§,§^!U§.§&6§,_loc3_,_loc4_,_loc16_,"",§^!U§.§=_§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §^!U§.§!W§;
      }
      
      public function §2e§(param1:Number) : void
      {
         var _loc2_:§;!"§ = null;
         var _loc3_:int = this.§]-§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§]-§[_loc3_];
            if(_loc2_.§ !S§())
            {
               if(this.§6q§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§9!C§())
            {
               this.§?>§(_loc2_,param1);
            }
            else if(this.§-+§(_loc2_))
            {
               _loc2_.§1!#§(§4A§.§^v§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§1!#§(§4A§.§^v§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§7D§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§,!-§();
      }
      
      private function §]!,§() : void
      {
         var _loc1_:§^@§ = null;
         for each(_loc1_ in this.§,!_§)
         {
            this.§^!4§.mLevelEngine.mWorld.§3!Q§(_loc1_.§&"§);
         }
      }
      
      public function §3!V§() : Boolean
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]-§.length)
         {
            _loc2_ = this.§]-§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-+§(param1:§;!"§) : Boolean
      {
         if(param1 && param1.§+R§.§%!D§() != §1!_§.§%!?§ && this.§^!4§.§0r§.§]@§(param1.§<k§().GetPosition().x,param1.§<k§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§^@§ = null;
         var _loc7_:§^;§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§;!"§;
         if((_loc5_ = this.§]-§[param1]).§8! §())
         {
            ++this.§7!_§;
         }
         else if(_loc5_.§7D§())
         {
            --this.§=!a§;
         }
         if(_loc5_ == this.§^!4§.activeObject)
         {
            this.§^!4§.activeObject = null;
         }
         if(param2)
         {
            this.§^!4§.addScore(_loc5_.§+R§.score,§6+§.§;f§,true,_loc5_.§<k§().GetPosition().x,_loc5_.§<k§().GetPosition().y - 3,§^!U§.§^!W§(_loc5_.§%!1§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§^!4§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§-!T§(_loc5_.sprite);
         this.§;A§(_loc5_);
         for each(_loc6_ in this.§,!_§)
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
         for each(_loc7_ in this.§=!=§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§#!>§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§]-§[param1] = null;
         this.§]-§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§;!"§, param2:§[,§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §-!T§(param1:Sprite) : void
      {
         if(this.§4u§.contains(param1))
         {
            this.§4u§.removeChild(param1);
            return;
         }
         if(this.§-!5§.contains(param1))
         {
            this.§-!5§.removeChild(param1);
            return;
         }
         if(this.§@p§.contains(param1))
         {
            this.§@p§.removeChild(param1);
            return;
         }
         if(this.§&d§.contains(param1))
         {
            this.§&d§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§;!"§) : void
      {
         if(param1.§`Q§().toUpperCase() == "WHITE_EGG" || param1.§+$§())
         {
            if(param1.§%!1§.toUpperCase() == §^!9§.§!B§)
            {
               this.addExplosions(§7!a§.§%?§,param1.§<k§().GetPosition().x,param1.§<k§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§7!a§.§>W§,param1.§<k§().GetPosition().x,param1.§<k§().GetPosition().y);
            }
         }
      }
      
      public function §7!8§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§]-§.indexOf(param1),param2,param3,param4);
      }
      
      public function §@P§(param1:Number, param2:Number) : void
      {
         this.§;L§.x = -param1;
         this.§;L§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§;!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]-§.length)
         {
            _loc3_ = this.§]-§[_loc2_] as §;!"§;
            if(_loc3_ && _loc3_.§8! §() && _loc3_.§1K§ > 0)
            {
               if(!param1 || _loc3_.§1I§.mTryToBlink <= 0 && _loc3_.§1I§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&!<§(param1:Boolean = false) : int
      {
         var _loc4_:§;!"§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§]-§.length - 1;
         for(; _loc3_ >= 0; _loc3_--)
         {
            if(!((_loc4_ = this.§]-§[_loc3_] as §;!"§) && _loc4_.§8! §() && _loc4_.§1K§ > 0))
            {
               continue;
            }
            §§push(!param1);
            if(!!param1)
            {
               §§pop();
               if(_loc4_.§1I§.mTryToBlink <= 0 && _loc4_.§1I§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
               continue;
            }
            §§goto(addr58);
         }
         return _loc2_;
      }
      
      public function §;Y§() : int
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]-§)
         {
            if(_loc2_ && (_loc2_.§2!L§() || _loc2_.§1-§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §'!R§() : int
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]-§)
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
         var _loc3_:§;!"§ = null;
         var _loc2_:int = this.§]-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]-§[_loc2_];
            if(_loc3_ && _loc3_.§8! §() && _loc3_.§1K§ > 0)
            {
               _loc3_.§1I§.mTryToScream = §@1§.§2!W§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §-!a§() : Boolean
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = this.§]-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]-§[_loc1_] as §;!"§;
            if(_loc2_ && _loc2_.§7D§() && _loc2_.§1K§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = this.§]-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]-§[_loc1_] as §;!"§;
            if(_loc2_ && _loc2_.§1K§ > 0 && _loc2_.§9?§ != §,6§.§+!$§)
            {
               if(_loc2_.§;+§() && !_loc2_.§?!Q§())
               {
                  return false;
               }
               if(_loc2_.§7D§() && _loc2_.§1K§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §^A§(param1:Boolean = false) : §;!"§
      {
         var _loc5_:int = 0;
         var _loc6_:§;!"§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§]-§.length;
         var _loc3_:int = 1 + Math.random() * this.§&!<§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§]-§[_loc5_]) && _loc6_.§8! §() && _loc6_.§1K§ > 0)
               {
                  if(!param1 || _loc6_.§1I§.mTryToBlink <= 0 && _loc6_.§1I§.mTryToScream <= 0)
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
      
      public function §#4§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§]-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§]-§[_loc2_] as §;!"§).§+R§.score;
            if((this.§]-§[_loc2_] as §;!"§).§;+§())
            {
               _loc1_ += §5!P§.§&!2§.getValue() * int((this.§]-§[_loc2_] as §;!"§).§0!a§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§^!4§.slingshot.§#4§());
      }
      
      public function §-=§(param1:§;!"§, param2:§;!"§) : Boolean
      {
         if(param1.§7D§() && param2.§7D§())
         {
            return true;
         }
         if(!param1.§]%§() && !param2.§]%§())
         {
            return true;
         }
         return false;
      }
      
      public function §%!@§() : void
      {
         this.mSardineCanAdded = true;
         this.§=!a§ = 0;
      }
      
      public function §5!A§(param1:§;!"§, param2:§;!"§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§9!C§() || param2.§8! §())
            {
               param2.applyDamage(param2.§0!a§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§9!C§() || param1.§8! §())
            {
               param1.applyDamage(param1.§0!a§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§9!4§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§ !S§() || param2.§ !S§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§-=§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§-2§(param2.§`Q§());
         var _loc5_:Number = param1.§`!X§(param2.§`Q§());
         var _loc6_:Number = param2.§-2§(param1.§`Q§());
         var _loc7_:Number = param2.§`!X§(param1.§`Q§());
         var _loc8_:Number = param1.§<k§().GetMass() * param1.§<k§().GetLinearVelocity().x - param2.§<k§().GetMass() * param2.§<k§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§<k§().GetMass() * param1.§<k§().GetLinearVelocity().y - param2.§<k§().GetMass() * param2.§<k§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§1K§);
         var _loc14_:Number = Math.max(0,param2.§1K§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§7D§(),_loc14_ == param2.§0!a§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§7D§(),_loc13_ == param1.§0!a§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§!!C§(new b2Vec2(param2.§<k§().GetLinearVelocity().x * _loc18_,param2.§<k§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§!!C§(new b2Vec2(param1.§<k§().GetLinearVelocity().x * _loc19_,param1.§<k§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §?!c§() : void
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = this.§]-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]-§[_loc1_] as §;!"§;
            if(_loc2_ != null && _loc2_.§8! §())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#r§() : void
      {
         var _loc2_:§;!"§ = null;
         var _loc1_:int = this.§]-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]-§[_loc1_] as §;!"§;
            if(_loc2_ != null && _loc2_.§+$§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §^!D§() : int
      {
         return this.§]-§.length;
      }
      
      public function §8!F§(param1:§"!6§) : void
      {
         var _loc4_:§;!"§ = null;
         var _loc5_:§]<§ = null;
         var _loc6_:§57§ = null;
         var _loc7_:§^@§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]-§.length)
         {
            if((_loc4_ = this.§]-§[_loc2_]).§3t§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §]<§()).angle = _loc4_.§0b§();
                  _loc5_.id = _loc4_.§%!1§;
                  _loc5_.x = _loc4_.§<k§().GetPosition().x;
                  _loc5_.y = _loc4_.§<k§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§+!3§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,!_§.length)
         {
            _loc7_ = this.§,!_§[_loc3_];
            _loc6_ = new §57§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§37§,_loc7_.§`!`§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§2N§,_loc7_.motorSpeed,_loc7_.§3^§,_loc7_.maxTorque);
            param1.§3N§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §'_§() : void
      {
         var _loc1_:int = 0;
         while(this.§]-§.length > _loc1_)
         {
            if(this.§]-§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§7!8§(this.§]-§[_loc1_]);
            }
         }
      }
      
      public function §[n§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§]-§.length)
         {
            if(this.§]-§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§]-§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§`U§ = param1;
         this.§9!W§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]-§.length)
         {
            if(this.§]-§[_loc2_].isTexture())
            {
               this.§]-§[_loc2_].sprite.visible = !this.§`U§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§!!+§ = param1;
      }
      
      public function §7!9§() : Boolean
      {
         return this.§!!+§;
      }
      
      public function §'x§() : int
      {
         return this.§&!5§;
      }
      
      public function §&j§() : int
      {
         return this.§7!_§;
      }
      
      public function §^_§(param1:String) : §;!"§
      {
         var _loc3_:§;!"§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]-§.length)
         {
            _loc3_ = this.§]-§[_loc2_] as §;!"§;
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
