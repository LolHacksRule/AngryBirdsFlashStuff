package §=b§
{
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §&a§.b2PrismaticJoint;
   import §&a§.b2WeldJoint;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §-d§.§3!F§;
   import §-d§.§7]§;
   import §-d§.§>r§;
   import §2_§.§'r§;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §2_§.§@!6§;
   import §3!G§.§ y§;
   import §4!O§.;
   import §4!O§.§0!Q§;
   import §4!O§.§5b§;
   import §4!O§.§]B§;
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §@^§.§"i§;
   import §^!Y§.§1C§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!e§
   {
       
      
      protected var §#;§:Vector.<§`!_§>;
      
      protected var §9!g§:int;
      
      public var §#!3§:§'u§;
      
      public var §8!8§:Vector.<§9#§>;
      
      protected var §`!l§:Sprite;
      
      protected var §1!,§:Sprite;
      
      private var §=!D§:Sprite;
      
      private var §8!@§:Sprite;
      
      private var §'!v§:Sprite;
      
      protected var §4,§:Vector.<Texture>;
      
      protected var §!@§:Vector.<§5b§>;
      
      protected var §!I§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §0!F§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>!k§:Boolean = false;
      
      protected var §]L§:Number;
      
      protected var §0!Z§:int;
      
      protected var §+t§:Vector.<§]B§>;
      
      protected var §3!I§:int = 0;
      
      private var §[!w§:int = 0;
      
      private var §#!z§:int = 0;
      
      private var §[s§:int;
      
      private var §9! §:Boolean = true;
      
      private var §!!M§:Boolean = true;
      
      public function §>!e§(param1:§'u§, param2:§ y§, param3:Sprite)
      {
         var _loc5_:§5b§ = null;
         var _loc6_:§#4§ = null;
         var _loc7_:§`!_§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§`!_§ = null;
         var _loc11_:§`!_§ = null;
         this.§#;§ = new Vector.<§`!_§>();
         this.§8!8§ = new Vector.<§9#§>();
         this.§4,§ = new Vector.<Texture>();
         this.§]L§ = this.§,L§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§+t§ = new Vector.<§]B§>();
         super();
         this.§#!3§ = param1;
         this.§9!g§ = 0;
         this.§1!,§ = param3;
         this.§1!,§.§]!F§ = false;
         this.§!!M§ = true;
         this.§9! § = true;
         this.§`!l§ = new Sprite();
         this.§=!D§ = new Sprite();
         this.§8!@§ = new Sprite();
         this.§'!v§ = new Sprite();
         this.§1!,§.addChild(this.§`!l§);
         this.§1!,§.addChild(this.§=!D§);
         this.§1!,§.addChild(this.§8!@§);
         this.§1!,§.addChild(this.§'!v§);
         this.addObject(§"i§.§<!F§(param2.theme).§]?§,(this.§#!3§.§!!"§.§#!l§ + this.§#!3§.§!!"§.§-!U§) / 2,this.§#!3§.§!!"§.§%!^§ + §'r§.§6F§);
         this.§[s§ = this.§#;§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§=!B§)
         {
            _loc6_ = param2.§>J§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§"^§();
         this.§@i§(true);
         this.§!@§ = new Vector.<§5b§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§7!z§)
         {
            this.§!@§.push(§5b§.§4!Q§(param2.§82§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§!@§)
         {
            _loc8_ = _loc5_.index1 + this.§[s§;
            _loc9_ = _loc5_.index2 + this.§[s§;
            if(_loc8_ < this.§#;§.length && _loc9_ < this.§#;§.length)
            {
               _loc10_ = this.§#;§[_loc8_];
               _loc11_ = this.§#;§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §0!Q§.§,?§)
               {
                  _loc5_.§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(_loc5_.§]!R§(_loc10_,_loc11_));
               }
               else
               {
                  this.§+t§.push(new §]B§(_loc8_,_loc9_,_loc5_.§-N§));
               }
            }
         }
      }
      
      protected function get §,L§() : Class
      {
         return §,L§;
      }
      
      public function get §#!-§() : Sprite
      {
         return this.§'!v§;
      }
      
      public function get §[![§() : Sprite
      {
         return this.§1!,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§#;§.length > 0)
         {
            this.§,@§(0);
         }
         this.§#;§ = null;
         this.§+t§ = null;
         if(this.§1!,§)
         {
            this.§1!,§.dispose();
            this.§1!,§ = null;
            this.§`!l§ = null;
            this.§'!v§ = null;
            this.§=!D§ = null;
            this.§8!@§ = null;
         }
         while(this.§4,§.length > 0)
         {
            _loc1_ = this.§4,§.pop();
            this.§#!3§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §@i§(param1:Boolean) : void
      {
         this.§`!l§.visible = param1;
      }
      
      private function §"^§() : void
      {
         var _loc3_:§`!_§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`!_§> = new Vector.<§`!_§>();
         for each(_loc3_ in this.§#;§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§1!,§);
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
            this.§@!q§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§9!K§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§#!3§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§4,§.push(_loc12_);
            (_loc13_ = new §-§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§`!l§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §9!K§(param1:Vector.<§`!_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§`!_§ = null;
         var _loc11_:§7]§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§'!-§.shape).§5l§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'u§.§18§ * param6,_loc12_[0].y / §'u§.§18§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'u§.§18§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'u§.§18§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§8c§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §@!q§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§#!3§.background.§ 1§();
         var _loc5_:§1C§;
         if(_loc5_ = this.§#!3§.backgroundTextureManager.§2+§(_loc4_))
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
      
      public function §98§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!_§
      {
         var _loc10_:§`!_§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §,!6§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §?5§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §6!x§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §;!c§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §@#§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §#!S§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §=<§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §0d§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§3!I§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!_§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§`!_§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§9! §;
            this.§#;§[this.§#;§.length] = _loc11_;
         }
         else
         {
            this.§#;§[this.§#;§.length] = _loc11_;
         }
         if(_loc11_ is §0d§ && !_loc11_.§?!%§())
         {
            this.§=!D§.addChild(_loc10_);
            ++this.§3!I§;
         }
         else if(_loc11_.front || param9)
         {
            this.§'!v§.addChild(_loc10_);
         }
         else
         {
            this.§8!@§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§#!3§.§?!C§(_loc11_);
         }
         if(param6)
         {
            this.§#!3§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §4!Q§(param1:int, param2:§`!_§, param3:§`!_§) : §5b§
      {
         var _loc6_:§5b§ = null;
         var _loc4_:int = this.§#;§.indexOf(param2) - this.§[s§;
         var _loc5_:int = this.§#;§.indexOf(param3) - this.§[s§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §5b§(§0!Q§.§@,§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(_loc6_.§]!R§(param2,param3));
            this.§!@§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §9!P§(param1:§5b§) : void
      {
         if(!(param1.§^^§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§`!_§ = this.§>J§(param1.index1 + this.§[s§);
         var _loc3_:§`!_§ = this.§>J§(param1.index2 + this.§[s§);
         this.§#!3§.mLevelEngine.mWorld.§12§(param1.§^^§);
         param1.§^^§ = this.§#!3§.mLevelEngine.mWorld.§%!w§(param1.§]!R§(_loc2_,_loc3_));
      }
      
      public function §]!!§(param1:§`!_§) : Vector.<§5b§>
      {
         var _loc4_:§5b§ = null;
         var _loc2_:Vector.<§5b§> = new Vector.<§5b§>();
         var _loc3_:int = this.§#;§.indexOf(param1) - this.§[s§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§!@§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §>!P§() : Vector.<§5b§>
      {
         return this.§!@§;
      }
      
      public function §6!F§(param1:§`!_§) : void
      {
         var _loc2_:int = this.§#;§.indexOf(param1) - this.§[s§;
         var _loc3_:int = this.§!@§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§!@§[_loc3_].index1 == _loc2_ || this.§!@§[_loc3_].index2 == _loc2_)
            {
               this.§!@§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §`!M§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         var _loc3_:int = this.§#;§.indexOf(param1) - this.§[s§;
         var _loc4_:int = this.§#;§.indexOf(param2) - this.§[s§;
         var _loc5_:int = this.§!@§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§!@§[_loc5_].index1 == _loc3_ && this.§!@§[_loc5_].index2 == _loc4_ || this.§!@§[_loc5_].index1 == _loc4_ && this.§!@§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!_§
      {
         var _loc10_:§`!_§ = null;
         var _loc11_:§>r§ = null;
         var _loc12_:§>r§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§98§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§#!z§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §%d§.§4!^§(param2);
            _loc10_ = new §=B§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §%d§.§4!^§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §%d§.§4!^§(param2);
            }
            if(_loc12_.§]!g§ == §>r§.§7b§ || _loc12_.§]!g§ == §>r§.§@!g§)
            {
               _loc10_ = new §,Y§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §`!_§(this,param1,this.§#!3§.mLevelEngine.mWorld,this.§#!3§,this.§9!g§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §#!#§(param1:Number) : void
      {
         var _loc3_:§`!_§ = null;
         var _loc2_:int = this.§#;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
            if(_loc3_)
            {
               if(_loc3_.§&!>§ <= 0)
               {
                  this.§,@§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§;b§();
                  _loc3_.§5!I§();
               }
            }
            _loc2_--;
         }
         this.§0"§(param1);
      }
      
      protected function §0"§(param1:Number) : void
      {
         var _loc3_:§5b§ = null;
         var _loc4_:§]B§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`!_§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§+t§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§+t§[_loc2_]).§;Z§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§=!u§("block_" + _loc5_))
                  {
                     this.§^Q§(_loc6_,true,true,true);
                  }
                  this.§+t§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§!@§)
         {
            if(_loc3_.type == §0!Q§.§7Z§ && _loc3_.§9c§)
            {
               _loc7_ = (_loc3_.§^^§ as b2PrismaticJoint).§null §();
               _loc8_ = (_loc3_.§^^§ as b2PrismaticJoint).§@!+§();
               if(_loc3_.§;!0§ && _loc3_.§`!I§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§^^§ as b2PrismaticJoint).§4!K§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§8!8§.push(§9#§.createExplosion(param1,param2,param3));
         §9'§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §;!5§(param1:Number, param2:Number) : int
      {
         var _loc4_:§`!_§ = null;
         var _loc3_:int = this.§#;§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§#;§[_loc3_])
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
      
      public function §1!K§(param1:Number, param2:Number) : §`!_§
      {
         var _loc4_:§`!_§ = null;
         var _loc3_:int = this.§#;§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§#;§[_loc3_])
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
      
      public function §>J§(param1:int) : §`!_§
      {
         return this.§#;§[param1];
      }
      
      public function §'!A§(param1:Number, param2:Number) : void
      {
         var _loc4_:§`!_§ = null;
         var _loc3_:int = this.§#;§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§#;§[_loc3_] as §`!_§).§'!A§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §4!x§(param1:§`!_§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§`!_§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§&!>§ == param1.§]l§)
         {
            if(this.§]L§ < this.§,L§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§]L§ += param2 * this.§,L§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§3J§().§^j§(param2 * this.§]L§);
            this.§0!Z§ = 0;
         }
         else if(this.§0!Z§ == 0)
         {
            this.§0!Z§ = this.§#!3§.§[!t§;
         }
         if(param1.§^!R§() || this.§`h§(param1) || this.§0!Z§ > 0 && this.§#!3§.§[!t§ > this.§0!Z§ + this.§,L§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§,L§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§,L§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§,L§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §9'§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §9'§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§,L§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§3J§().GetPosition().x - this.§,L§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§3J§().GetPosition().y - this.§,L§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§,L§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§`h§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§,L§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§0!Z§ = 0;
                  _loc7_.§7![§.§+!s§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §1y§(param1:§`!_§, param2:Number) : Boolean
      {
         var _loc5_:§`!_§ = null;
         if(this.§,L§.MIGHTY_EAGLE_USE_SHADE && !this.§>!k§ && this.mMightyEagleTimer > this.§,L§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>!k§ = true;
            this.§#!3§.§7!u§();
         }
         this.mMightyEagleTimer += param2;
         this.§#!3§.particles.§#Z§(§9!B§.§8v§,§^z§.§!!B§,§9!B§.§5!G§,param1.§3J§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§3J§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§9!B§.§'!4§(param1.§^r§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§^! §(this.§,L§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§0!F§)
            {
               this.§0!F§ = false;
               this.§#!3§.§6#§();
               param1.§+!G§(§-C§.§,&§);
               this.mSardineCanAdded = false;
               param1.§7![§.§&X§ = true;
               param1.§7![§.§2!m§();
               for each(_loc5_ in this.§#;§)
               {
                  if(_loc5_ && _loc5_.§#!t§())
                  {
                     _loc5_.§3J§().SetAwake(true);
                     _loc5_.§3J§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§`!]§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§#;§)
               {
                  if(_loc5_ && _loc5_.§#!t§())
                  {
                     _loc5_.applyDamage(_loc5_.§]l§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§3J§().GetPosition().y >= -5.5;
            this.§0!F§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§"q§(param2,new Point(this.§,L§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§,L§.MIGHTY_EAGLE_Y_CHANGE),this.§,L§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §]!A§() : void
      {
         var _loc1_:§9#§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`!_§ = null;
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
         while(this.§8!8§.length > 0)
         {
            _loc1_ = this.§8!8§.shift();
            _loc2_ = _loc1_.§1!H§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§#;§)
            {
               _loc8_ = _loc6_.§3J§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§3J§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§1!H§)
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
                     _loc6_.§3J§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§,7§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§#!3§.particles.§#Z§(this.§^T§(_loc1_.type),§^z§.§!!B§,§9!B§.§6I§,_loc3_,_loc4_,600,"",§9!B§.§!!S§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§#!3§.particles.§#Z§(§9!B§.§53§,§^z§.§!!B§,§9!B§.§5!G§,_loc3_,_loc4_,_loc16_,"",§9!B§.§!!S§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §^T§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §9!B§.§5+§;
      }
      
      public function §3G§(param1:Number) : void
      {
         var _loc2_:§`!_§ = null;
         var _loc3_:int = this.§#;§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§#;§[_loc3_];
            if(_loc2_.§=!5§())
            {
               if(this.§4!x§(_loc2_,param1))
               {
                  this.§,@§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§?!%§())
            {
               this.§1y§(_loc2_,param1);
            }
            else if(this.§`h§(_loc2_))
            {
               _loc2_.§+!G§(§-C§.§&!=§);
               this.§,@§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§+!G§(§-C§.§&!=§);
               this.§,@§(_loc3_,false,true,true);
            }
            else if(_loc2_.§#!1§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§]!A§();
      }
      
      private function §`!]§() : void
      {
         var _loc1_:§5b§ = null;
         for each(_loc1_ in this.§!@§)
         {
            this.§#!3§.mLevelEngine.mWorld.§12§(_loc1_.§^^§);
         }
      }
      
      public function §%!K§() : Boolean
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#;§.length)
         {
            _loc2_ = this.§#;§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §`h§(param1:§`!_§) : Boolean
      {
         if(param1 && param1.§'!-§.§7i§() != §3!F§.§!!k§ && this.§#!3§.§!!"§.§4!]§(param1.§3J§().GetPosition().x,param1.§3J§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §,@§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§5b§ = null;
         var _loc7_:§]B§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§`!_§;
         if((_loc5_ = this.§#;§[param1]).§#!t§())
         {
            ++this.§[!w§;
         }
         else if(_loc5_.§#!1§())
         {
            --this.§3!I§;
         }
         if(_loc5_ == this.§#!3§.activeObject)
         {
            this.§#!3§.activeObject = null;
         }
         if(param2)
         {
            this.§#!3§.addScore(_loc5_.§'!-§.score,§@!6§.§-1§,true,_loc5_.§3J§().GetPosition().x,_loc5_.§3J§().GetPosition().y - 3,§9!B§.§%!d§(_loc5_.§^r§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§#!3§.particles);
         }
         if(param4)
         {
            this.§#q§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§`z§(_loc5_.sprite);
         this.§6!F§(_loc5_);
         for each(_loc6_ in this.§!@§)
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
         for each(_loc7_ in this.§+t§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§;Z§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§#;§[param1] = null;
         this.§#;§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§`!_§, param2:§^z§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §`z§(param1:Sprite) : void
      {
         if(this.§8!@§.contains(param1))
         {
            this.§8!@§.removeChild(param1);
            return;
         }
         if(this.§=!D§.contains(param1))
         {
            this.§=!D§.removeChild(param1);
            return;
         }
         if(this.§`!l§.contains(param1))
         {
            this.§`!l§.removeChild(param1);
            return;
         }
         if(this.§'!v§.contains(param1))
         {
            this.§'!v§.removeChild(param1);
            return;
         }
      }
      
      protected function §#q§(param1:§`!_§) : void
      {
         if(param1.§1!+§().toUpperCase() == "WHITE_EGG" || param1.§65§())
         {
            if(param1.§^r§.toUpperCase() == §;!c§.§-!^§)
            {
               this.addExplosions(§9#§.§@!2§,param1.§3J§().GetPosition().x,param1.§3J§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§9#§.§?!d§,param1.§3J§().GetPosition().x,param1.§3J§().GetPosition().y);
            }
         }
      }
      
      public function §^Q§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§,@§(this.§#;§.indexOf(param1),param2,param3,param4);
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         this.§1!,§.x = -param1;
         this.§1!,§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§`!_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#;§.length)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
            if(_loc3_ && _loc3_.§#!t§() && _loc3_.§&!>§ > 0)
            {
               if(!param1 || _loc3_.§7![§.mTryToBlink <= 0 && _loc3_.§7![§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@Q§(param1:Boolean = false) : int
      {
         var _loc4_:§`!_§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§#;§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§#;§[_loc3_] as §`!_§) && _loc4_.§#!t§() && _loc4_.§&!>§ > 0)
            {
               if(!param1 || _loc4_.§7![§.mTryToBlink <= 0 && _loc4_.§7![§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function § !u§() : int
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#;§)
         {
            if(_loc2_ && (_loc2_.§-!F§() || _loc2_.§^!U§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §;!e§() : int
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#;§)
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
         var _loc3_:§`!_§ = null;
         var _loc2_:int = this.§#;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#;§[_loc2_];
            if(_loc3_ && _loc3_.§#!t§() && _loc3_.§&!>§ > 0)
            {
               _loc3_.§7![§.mTryToScream = § 6§.§8!3§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §6j§() : Boolean
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = this.§#;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(_loc2_ && _loc2_.§#!1§() && _loc2_.§&!>§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = this.§#;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(_loc2_ && _loc2_.§&!>§ > 0 && _loc2_.§]!g§ != §>r§.§&"§)
            {
               if(_loc2_.§4!g§() && !_loc2_.§^!R§())
               {
                  return false;
               }
               if(_loc2_.§#!1§() && _loc2_.§&!>§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §4O§(param1:Boolean = false) : §`!_§
      {
         var _loc5_:int = 0;
         var _loc6_:§`!_§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§#;§.length;
         var _loc3_:int = 1 + Math.random() * this.§@Q§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§#;§[_loc5_]) && _loc6_.§#!t§() && _loc6_.§&!>§ > 0)
               {
                  if(!param1 || _loc6_.§7![§.mTryToBlink <= 0 && _loc6_.§7![§.mTryToScream <= 0)
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
      
      public function §;!X§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§#;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§#;§[_loc2_] as §`!_§).§'!-§.score;
            if((this.§#;§[_loc2_] as §`!_§).§4!g§())
            {
               _loc1_ += §'u§.§@`§.getValue() * int((this.§#;§[_loc2_] as §`!_§).§]l§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§#!3§.slingshot.§;!X§());
      }
      
      public function §]U§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         if(param1.§#!1§() && param2.§#!1§())
         {
            return true;
         }
         if(!param1.§"o§() && !param2.§"o§())
         {
            return true;
         }
         return false;
      }
      
      public function §8!7§() : void
      {
         this.mSardineCanAdded = true;
         this.§3!I§ = 0;
      }
      
      public function §%j§(param1:§`!_§, param2:§`!_§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§?!%§() || param2.§#!t§())
            {
               param2.applyDamage(param2.§]l§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§?!%§() || param1.§#!t§())
            {
               param1.applyDamage(param1.§]l§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§,L§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§=!5§() || param2.§=!5§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§]U§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§[0§(param2.§1!+§());
         var _loc5_:Number = param1.§;!4§(param2.§1!+§());
         var _loc6_:Number = param2.§[0§(param1.§1!+§());
         var _loc7_:Number = param2.§;!4§(param1.§1!+§());
         var _loc8_:Number = param1.§3J§().GetMass() * param1.§3J§().GetLinearVelocity().x - param2.§3J§().GetMass() * param2.§3J§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§3J§().GetMass() * param1.§3J§().GetLinearVelocity().y - param2.§3J§().GetMass() * param2.§3J§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§&!>§);
         var _loc14_:Number = Math.max(0,param2.§&!>§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§#!1§(),_loc14_ == param2.§]l§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§#!1§(),_loc13_ == param1.§]l§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§?l§(new b2Vec2(param2.§3J§().GetLinearVelocity().x * _loc18_,param2.§3J§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§?l§(new b2Vec2(param1.§3J§().GetLinearVelocity().x * _loc19_,param1.§3J§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §4!l§() : void
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = this.§#;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(_loc2_ != null && _loc2_.§#!t§())
            {
               this.§,@§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1%§() : void
      {
         var _loc2_:§`!_§ = null;
         var _loc1_:int = this.§#;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#;§[_loc1_] as §`!_§;
            if(_loc2_ != null && _loc2_.§65§())
            {
               this.§,@§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §7!K§() : int
      {
         return this.§#;§.length;
      }
      
      public function §>V§(param1:§ y§) : void
      {
         var _loc4_:§`!_§ = null;
         var _loc5_:§#4§ = null;
         var _loc6_:§0!Q§ = null;
         var _loc7_:§5b§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#;§.length)
         {
            if((_loc4_ = this.§#;§[_loc2_]).§`!-§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §#4§()).angle = _loc4_.§8c§();
                  _loc5_.id = _loc4_.§^r§;
                  _loc5_.x = _loc4_.§3J§().GetPosition().x;
                  _loc5_.y = _loc4_.§3J§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!@§.length)
         {
            _loc7_ = this.§!@§[_loc3_];
            _loc6_ = new §0!Q§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!a§,_loc7_.§;!0§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§`!I§,_loc7_.motorSpeed,_loc7_.§9c§,_loc7_.maxTorque);
            param1.§[u§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §[S§() : void
      {
         var _loc1_:int = 0;
         while(this.§#;§.length > _loc1_)
         {
            if(this.§#;§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§^Q§(this.§#;§[_loc1_]);
            }
         }
      }
      
      public function §,Q§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§#;§.length)
         {
            if(this.§#;§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§#;§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§9! § = param1;
         this.§@i§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#;§.length)
         {
            if(this.§#;§[_loc2_].isTexture())
            {
               this.§#;§[_loc2_].sprite.visible = !this.§9! §;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§!!M§ = param1;
      }
      
      public function §1!_§() : Boolean
      {
         return this.§!!M§;
      }
      
      public function §9!x§() : int
      {
         return this.§#!z§;
      }
      
      public function §<!§() : int
      {
         return this.§[!w§;
      }
      
      public function §=!u§(param1:String) : §`!_§
      {
         var _loc3_:§`!_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#;§.length)
         {
            _loc3_ = this.§#;§[_loc2_] as §`!_§;
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
