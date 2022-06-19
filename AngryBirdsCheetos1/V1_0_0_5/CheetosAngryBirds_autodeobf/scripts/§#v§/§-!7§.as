package §#v§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.§#q§;
   import §!!R§.Sprite;
   import §#K§.§?I§;
   import §&!W§.§&!$§;
   import §,B§.§1F§;
   import §,B§.§9x§;
   import §,B§.§;V§;
   import §,B§.§<!2§;
   import §,B§.§?7§;
   import §2!6§.§%!$§;
   import §2k§.Texture;
   import §3]§.§8[§;
   import §9h§.§,u§;
   import §9h§.§8O§;
   import §=E§.b2Vec2;
   import §?'§.§1V§;
   import §?'§.§74§;
   import §?'§.§9N§;
   import §?'§.§`!7§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!7§
   {
       
      
      protected var §=!,§:Vector.<§#3§>;
      
      protected var §&$§:int;
      
      public var §;c§:§9N§;
      
      public var §7!2§:Vector.<§!v§>;
      
      protected var §6D§:Sprite;
      
      protected var §4R§:Sprite;
      
      private var §1j§:Sprite;
      
      private var §-X§:Sprite;
      
      private var §=!9§:Sprite;
      
      protected var §`W§:Vector.<Texture>;
      
      protected var §@k§:Vector.<§8O§>;
      
      protected var §?j§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §#!A§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`P§:Boolean = false;
      
      protected var §#!4§:Number = 0.07;
      
      protected var §[,§:int;
      
      protected var §#!0§:int = 0;
      
      private var §50§:int = 0;
      
      private var §4L§:int = 0;
      
      private var §1!+§:Boolean = true;
      
      private var §-]§:Boolean = true;
      
      public function §-!7§(param1:§9N§, param2:§?I§, param3:Sprite)
      {
         var _loc5_:§,u§ = null;
         var _loc6_:§8O§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§#3§ = null;
         var _loc10_:§#3§ = null;
         this.§=!,§ = new Vector.<§#3§>();
         this.§7!2§ = new Vector.<§!v§>();
         this.§`W§ = new Vector.<Texture>();
         super();
         this.§;c§ = param1;
         this.§&$§ = 0;
         this.§4R§ = param3;
         this.§4R§.§],§ = false;
         this.§-]§ = true;
         this.§1!+§ = true;
         this.§6D§ = new Sprite();
         this.§1j§ = new Sprite();
         this.§-X§ = new Sprite();
         this.§=!9§ = new Sprite();
         this.§4R§.addChild(this.§6D§);
         this.§4R§.addChild(this.§1j§);
         this.§4R§.addChild(this.§-X§);
         this.§4R§.addChild(this.§=!9§);
         this.addObject(§8[§.§8V§(param2.theme).§#!Q§,(this.§;c§.§#G§.§'!Q§ + this.§;c§.§#G§.§?H§) / 2,this.§;c§.§#G§.§@y§ + §`!7§.§-8§);
         var _loc4_:int = this.§=!,§.length;
         for each(_loc5_ in param2.§%!&§)
         {
            this.addObject(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§7B§();
         this.§[!J§(true);
         this.§@k§ = param2.§@k§;
         for each(_loc6_ in param2.§@k§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            if(_loc7_ < this.§=!,§.length && _loc8_ < this.§=!,§.length)
            {
               _loc9_ = this.§=!,§[_loc7_];
               _loc10_ = this.§=!,§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc6_.§]!M§ = this.§;c§.mLevelEngine.mWorld.§#!P§(_loc6_.set(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §#l§() : Sprite
      {
         return this.§=!9§;
      }
      
      public function get §[!M§() : Sprite
      {
         return this.§4R§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§=!,§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§=!,§ = null;
         if(this.§4R§)
         {
            this.§4R§.dispose();
            this.§4R§ = null;
            this.§6D§ = null;
            this.§=!9§ = null;
            this.§1j§ = null;
            this.§-X§ = null;
         }
         while(this.§`W§.length > 0)
         {
            _loc1_ = this.§`W§.pop();
            this.§;c§.§"B§.§83§(_loc1_);
         }
      }
      
      private function §[!J§(param1:Boolean) : void
      {
         this.§6D§.visible = param1;
      }
      
      private function §7B§() : void
      {
         var _loc3_:§#3§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§#q§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§#3§> = new Vector.<§#3§>();
         for each(_loc3_ in this.§=!,§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§4R§);
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
            this.§?k§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§[K§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§;c§.§"B§.§]]§(_loc10_);
            this.§`W§.push(_loc12_);
            (_loc13_ = new §#q§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§6D§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §[K§(param1:Vector.<§#3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§#3§ = null;
         var _loc11_:§;V§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9!V§.shape).§`6§();
            _loc13_ = new Rectangle(_loc12_[0].x / §9N§.§8!5§ * param6,_loc12_[0].y / §9N§.§8!5§ * param6,(_loc12_[1].x - _loc12_[0].x) / §9N§.§8!5§ * param6,(_loc12_[1].y - _loc12_[0].y) / §9N§.§8!5§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§@L§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §?k§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§;c§.background.§`B§();
         var _loc5_:§&!$§;
         if(_loc5_ = this.§;c§.§?G§.§"7§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §#3§
      {
         var _loc10_:§#3§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §'`§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §;7§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §;!+§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new § !2§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §<!V§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §>f§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §<v§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §!!!§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#!0§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §#3§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§#3§;
         if((_loc11_ = this.§>,§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)) is §!!!§)
         {
            ++this.§#!0§;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§1!+§;
            this.§=!,§[this.§=!,§.length] = _loc11_;
         }
         else
         {
            this.§=!,§[this.§=!,§.length] = _loc11_;
         }
         if(_loc11_ is §!!!§ && !_loc11_.§7!?§())
         {
            this.§1j§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§=!9§.addChild(_loc10_);
         }
         else
         {
            this.§-X§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§;c§.§!G§(_loc11_);
         }
         if(param6)
         {
            this.§;c§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      protected function §>,§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §#3§
      {
         var _loc10_:§#3§ = null;
         var _loc11_:§<!2§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §=!>§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §?7§.§`1§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §?7§.§`1§(param2);
            }
            if(_loc11_.§ h§ == §<!2§.§"A§ || _loc11_.§ h§ == §<!2§.§@!%§)
            {
               _loc10_ = new §&'§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §#3§(this,param1,this.§;c§.mLevelEngine.mWorld,this.§;c§,this.§&$§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §>Z§() : void
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = this.§=!,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc1_] as §#3§;
            if(_loc2_)
            {
               if(_loc2_.§;!A§ <= 0)
               {
                  this.removeObjectWithIndex(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§,!%§();
                  _loc2_.§"!;§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§7!2§.push(§!v§.§=!C§(param1,param2,param3));
         §%!$§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §#P§(param1:Number, param2:Number) : int
      {
         var _loc4_:§#3§ = null;
         var _loc3_:int = this.§=!,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=!,§[_loc3_])
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
      
      public function §;M§(param1:Number, param2:Number) : §#3§
      {
         var _loc4_:§#3§ = null;
         var _loc3_:int = this.§=!,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=!,§[_loc3_])
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
      
      public function §+m§(param1:int) : §#3§
      {
         return this.§=!,§[param1];
      }
      
      public function §'!P§(param1:Number, param2:Number) : void
      {
         var _loc4_:§#3§ = null;
         var _loc3_:int = this.§=!,§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=!,§[_loc3_] as §#3§).§'!P§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §>!=§(param1:§#3§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§#3§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§;!A§ == param1.§]p§)
         {
            if(this.§#!4§ < §1V§.§@6§)
            {
               this.§#!4§ += param2 * §1V§.§&!F§;
            }
            param1.§#a§().§if§(param2 * this.§#!4§);
            this.§[,§ = 0;
         }
         else if(this.§[,§ == 0)
         {
            this.§[,§ = this.§;c§.§1!7§;
         }
         if(param1.§`9§() || this.§9u§(param1) || this.§[,§ > 0 && this.§;c§.§1!7§ > this.§[,§ + §1V§.§?!4§)
         {
            if(this.mMightyEagleTimer < §1V§.§[>§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §1V§.§+!I§ && _loc4_ > §1V§.§+!I§)
               {
                  §%!$§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §%!$§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §1V§.§[>§)
               {
                  _loc5_ = param1.§#a§().GetPosition().x - §1V§.§[7§;
                  _loc6_ = param1.§#a§().GetPosition().y - §1V§.§[7§ * §1V§.§'2§ * 1.07;
                  if(this.§9u§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§1V§.§&!V§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§[,§ = 0;
                  _loc7_.§5-§.§]!&§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §&d§(param1:§#3§, param2:Number) : Boolean
      {
         var _loc5_:§#3§ = null;
         if(!this.§`P§ && this.mMightyEagleTimer > §1V§.§@%§)
         {
            this.§`P§ = true;
            this.§;c§.§?e§();
         }
         this.mMightyEagleTimer += param2;
         this.§;c§.particles.addParticle(§?f§.§[!Y§,§7!W§.§'>§,§?f§.§"z§,param1.§#a§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§#a§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§?f§.§+!Z§(param1.§,!§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§!K§(§1V§.§+!3§ * param2);
            _loc4_ = -1;
            if(this.§#!A§)
            {
               this.§#!A§ = false;
               this.§;c§.§80§();
               param1.§0K§(§1F§.§3!P§);
               this.mSardineCanAdded = false;
               param1.§5-§.§6!S§ = true;
               param1.§5-§.§;!Q§();
               for each(_loc5_ in this.§=!,§)
               {
                  if(_loc5_ && _loc5_.§ !?§())
                  {
                     _loc5_.§#a§().SetAwake(true);
                     _loc5_.§#a§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§`!"§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§=!,§)
               {
                  if(_loc5_ && _loc5_.§ !?§())
                  {
                     _loc5_.applyDamage(_loc5_.§]p§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§#a§().GetPosition().y >= -5.5;
            this.§#!A§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§1!0§(param2,new Point(1,_loc4_ * §1V§.§'2§),§1V§.§88§);
         return false;
      }
      
      private function §"n§() : void
      {
         var _loc1_:§!v§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§#3§ = null;
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
         while(this.§7!2§.length > 0)
         {
            _loc1_ = this.§7!2§.shift();
            _loc2_ = _loc1_.§&!L§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§=!,§)
            {
               _loc8_ = _loc6_.§#a§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§#a§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§&!L§)
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
                     _loc6_.§#a§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§0b§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§;c§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§7!W§.§'>§,§?f§.§ ,§,_loc3_,_loc4_,600,"",§?f§.§#!9§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§;c§.particles.addParticle(§?f§.§ %§,§7!W§.§'>§,§?f§.§"z§,_loc3_,_loc4_,_loc16_,"",§?f§.§#!9§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §?f§.§,G§;
      }
      
      public function §?!H§(param1:Number) : void
      {
         var _loc2_:§#3§ = null;
         var _loc3_:int = this.§=!,§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc3_];
            if(_loc2_.§;!B§())
            {
               if(this.§>!=§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§7!?§())
            {
               this.§&d§(_loc2_,param1);
            }
            else if(this.§9u§(_loc2_))
            {
               _loc2_.§0K§(§1F§.§,! §);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§0K§(§1F§.§,! §);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§[P§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§"n§();
      }
      
      private function §`!"§() : void
      {
         var _loc1_:§8O§ = null;
         for each(_loc1_ in this.§@k§)
         {
            this.§;c§.mLevelEngine.mWorld.§,!R§(_loc1_.§]!M§);
         }
      }
      
      public function §switch§() : Boolean
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!,§.length)
         {
            _loc2_ = this.§=!,§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §9u§(param1:§#3§) : Boolean
      {
         if(param1 && param1.§9!V§.§>E§() != §9x§.§"!Q§ && this.§;c§.§#G§.§`!N§(param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§#3§;
         if((_loc5_ = this.§=!,§[param1]).§ !?§())
         {
            ++this.§50§;
         }
         else if(_loc5_.§[P§())
         {
            ++this.§4L§;
            --this.§#!0§;
         }
         if(_loc5_ == this.§;c§.activeObject)
         {
            this.§;c§.activeObject = null;
         }
         if(param2)
         {
            this.§;c§.addScore(_loc5_.§9!V§.score,§74§.§][§,true,_loc5_.§#a§().GetPosition().x,_loc5_.§#a§().GetPosition().y - 3,§?f§.§%6§(_loc5_.§,!§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§;c§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§2!T§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§=!,§[param1] = null;
         this.§=!,§.splice(param1,1);
      }
      
      private function §2!T§(param1:Sprite) : void
      {
         if(this.§-X§.contains(param1))
         {
            this.§-X§.removeChild(param1);
            return;
         }
         if(this.§1j§.contains(param1))
         {
            this.§1j§.removeChild(param1);
            return;
         }
         if(this.§6D§.contains(param1))
         {
            this.§6D§.removeChild(param1);
            return;
         }
         if(this.§=!9§.contains(param1))
         {
            this.§=!9§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§#3§) : void
      {
         if(param1.§<=§().toUpperCase() == "WHITE_EGG" || param1.§<!<§())
         {
            if(param1.§,!§.toUpperCase() == § !2§.§]!W§)
            {
               this.addExplosions(§!v§.§#-§,param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§!v§.§'H§,param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y);
            }
         }
      }
      
      public function §5F§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§=!,§.indexOf(param1),param2,param3,param4);
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         this.§4R§.x = -param1;
         this.§4R§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§#3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!,§.length)
         {
            _loc3_ = this.§=!,§[_loc2_] as §#3§;
            if(_loc3_ && _loc3_.§ !?§() && _loc3_.§;!A§ > 0)
            {
               if(!param1 || _loc3_.§5-§.mTryToBlink <= 0 && _loc3_.§5-§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^H§(param1:Boolean = false) : int
      {
         var _loc4_:§#3§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=!,§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=!,§[_loc3_] as §#3§) && _loc4_.§ !?§() && _loc4_.§;!A§ > 0)
            {
               if(!param1 || _loc4_.§5-§.mTryToBlink <= 0 && _loc4_.§5-§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §7e§() : int
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!,§)
         {
            if(_loc2_ && _loc2_.§?u§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §2§() : int
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!,§)
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
         var _loc3_:§#3§ = null;
         var _loc2_:int = this.§=!,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=!,§[_loc2_];
            if(_loc3_ && _loc3_.§ !?§() && _loc3_.§;!A§ > 0)
            {
               _loc3_.§5-§.mTryToScream = §"d§.§1!&§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §5a§() : Boolean
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = this.§=!,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc1_] as §#3§;
            if(_loc2_ && _loc2_.§[P§() && _loc2_.§;!A§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = this.§=!,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc1_] as §#3§;
            if(_loc2_ && _loc2_.§;!A§ > 0 && _loc2_.§ h§ != §<!2§.§2#§)
            {
               if(_loc2_.§;Q§() && !_loc2_.§`9§())
               {
                  return false;
               }
               if(_loc2_.§[P§() && _loc2_.§;!A§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>1§(param1:Boolean = false) : §#3§
      {
         var _loc5_:int = 0;
         var _loc6_:§#3§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§=!,§.length;
         var _loc3_:int = 1 + Math.random() * this.§^H§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§=!,§[_loc5_]) && _loc6_.§ !?§() && _loc6_.§;!A§ > 0)
               {
                  if(!param1 || _loc6_.§5-§.mTryToBlink <= 0 && _loc6_.§5-§.mTryToScream <= 0)
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
      
      public function §,6§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§=!,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§=!,§[_loc2_] as §#3§).§9!V§.score;
            if((this.§=!,§[_loc2_] as §#3§).§;Q§())
            {
               _loc1_ += §9N§.§01§.getValue() * int((this.§=!,§[_loc2_] as §#3§).§]p§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§;c§.slingshot.§,6§());
      }
      
      public function §[!I§(param1:§#3§, param2:§#3§) : Boolean
      {
         if(param1.§[P§() && param2.§[P§())
         {
            return true;
         }
         if(!param1.§#X§() && !param2.§#X§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§#3§, param2:§#3§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§7!?§() || param2.§ !?§())
            {
               param2.applyDamage(param2.§]p§ * 2,true,true,true,false);
               return;
            }
            if(param2.§7!?§() || param1.§ !?§())
            {
               param1.applyDamage(param1.§]p§ * 2,true,true,true,false);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §1V§.§[>§)
         {
            if(param1.§;!B§() || param2.§;!B§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§[!I§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§,!L§(param2.§<=§());
         var _loc5_:Number = param1.§=d§(param2.§<=§());
         var _loc6_:Number = param2.§,!L§(param1.§<=§());
         var _loc7_:Number = param2.§=d§(param1.§<=§());
         var _loc8_:Number = param1.§#a§().GetMass() * param1.§#a§().GetLinearVelocity().x - param2.§#a§().GetMass() * param2.§#a§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§#a§().GetMass() * param1.§#a§().GetLinearVelocity().y - param2.§#a§().GetMass() * param2.§#a§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§;!A§);
         var _loc14_:Number = Math.max(0,param2.§;!A§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§[P§(),_loc14_ == param2.§]p§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§[P§(),_loc13_ == param1.§]p§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§%!K§(new b2Vec2(param2.§#a§().GetLinearVelocity().x * _loc18_,param2.§#a§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§%!K§(new b2Vec2(param1.§#a§().GetLinearVelocity().x * _loc19_,param1.§#a§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §while§() : void
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = this.§=!,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc1_] as §#3§;
            if(_loc2_ != null && _loc2_.§ !?§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §5;§() : void
      {
         var _loc2_:§#3§ = null;
         var _loc1_:int = this.§=!,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!,§[_loc1_] as §#3§;
            if(_loc2_ != null && _loc2_.§<!<§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2n§() : int
      {
         return this.§=!,§.length;
      }
      
      public function §"!2§(param1:§?I§) : void
      {
         var _loc4_:§#3§ = null;
         var _loc5_:§,u§ = null;
         var _loc6_:§8O§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=!,§.length)
         {
            if((_loc4_ = this.§=!,§[_loc2_]).§2!X§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §,u§()).angle = _loc4_.§@L§();
                  _loc5_.id = _loc4_.§,!§;
                  _loc5_.x = _loc4_.§#a§().GetPosition().x;
                  _loc5_.y = _loc4_.§#a§().GetPosition().y;
                  param1.§%!&§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@k§.length)
         {
            (_loc6_ = new §8O§(this.§@k§[_loc3_].type,this.§@k§[_loc3_].index1,this.§@k§[_loc3_].index2)).backAndForth = this.§@k§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§@k§[_loc3_].collideConnected;
            _loc6_.limit = this.§@k§[_loc3_].limit;
            _loc6_.lowerLimit = this.§@k§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§@k§[_loc3_].maxTorque;
            _loc6_.motor = this.§@k§[_loc3_].motor;
            _loc6_.motorSpeed = this.§@k§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§@k§[_loc3_].upperLimit;
            _loc6_.p1 = this.§@k§[_loc3_].p1;
            _loc6_.p2 = this.§@k§[_loc3_].p2;
            param1.§@k§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function § "§() : void
      {
         var _loc1_:int = 0;
         while(this.§=!,§.length > _loc1_)
         {
            if(this.§=!,§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§5F§(this.§=!,§[_loc1_]);
            }
         }
      }
      
      public function §4!=§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=!,§.length)
         {
            if(this.§=!,§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=!,§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§1!+§ = param1;
         this.§[!J§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=!,§.length)
         {
            if(this.§=!,§[_loc2_].isTexture())
            {
               this.§=!,§[_loc2_].sprite.visible = !this.§1!+§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§-]§ = param1;
      }
      
      public function §=s§() : Boolean
      {
         return this.§-]§;
      }
      
      public function §1c§() : int
      {
         return this.§4L§;
      }
      
      public function §46§() : int
      {
         return this.§50§;
      }
   }
}
