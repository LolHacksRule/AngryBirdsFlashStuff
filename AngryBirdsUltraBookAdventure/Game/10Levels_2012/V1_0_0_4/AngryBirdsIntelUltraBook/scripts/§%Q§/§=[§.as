package §%Q§
{
   import § use§.§+N§;
   import § use§.§-$§;
   import § use§.§0!D§;
   import § use§.§<!t§;
   import §"R§.§ !Q§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§;v§;
   import §,!5§.§[$§;
   import §,!5§.§^g§;
   import §,!Q§.§ !P§;
   import §-w§.§+W§;
   import §0!N§.§=+§;
   import §9!"§.b2PrismaticJoint;
   import §9!"§.b2WeldJoint;
   import §<!1§.§0"§;
   import §<!1§.§2!W§;
   import §<!1§.§9B§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=[§
   {
       
      
      protected var §;Y§:Vector.<§`!<§>;
      
      protected var §>Q§:int;
      
      public var §?l§:§^g§;
      
      public var §]O§:Vector.<§=N§>;
      
      protected var §0R§:Sprite;
      
      protected var §!U§:Sprite;
      
      private var §42§:Sprite;
      
      private var §4!n§:Sprite;
      
      private var §7!o§:Sprite;
      
      protected var §1!Z§:Vector.<Texture>;
      
      protected var §4a§:Vector.<§-$§>;
      
      protected var §?@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §"2§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §%!%§:Boolean = false;
      
      protected var §-d§:Number;
      
      protected var §<y§:int;
      
      protected var §@!=§:Vector.<§<!t§>;
      
      protected var §^!O§:int = 0;
      
      private var §5!h§:int = 0;
      
      private var § m§:int = 0;
      
      private var §3!y§:int;
      
      private var §>!I§:Boolean = true;
      
      private var §^Y§:Boolean = true;
      
      public function §=[§(param1:§^g§, param2:§=+§, param3:Sprite)
      {
         var _loc5_:§-$§ = null;
         var _loc6_:§0!D§ = null;
         var _loc7_:§`!<§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§`!<§ = null;
         var _loc11_:§`!<§ = null;
         this.§;Y§ = new Vector.<§`!<§>();
         this.§]O§ = new Vector.<§=N§>();
         this.§1!Z§ = new Vector.<Texture>();
         this.§-d§ = this.§0;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§@!=§ = new Vector.<§<!t§>();
         super();
         this.§?l§ = param1;
         this.§>Q§ = 0;
         this.§!U§ = param3;
         this.§!U§.§@!U§ = false;
         this.§^Y§ = true;
         this.§>!I§ = true;
         this.§0R§ = new Sprite();
         this.§42§ = new Sprite();
         this.§4!n§ = new Sprite();
         this.§7!o§ = new Sprite();
         this.§!U§.addChild(this.§0R§);
         this.§!U§.addChild(this.§42§);
         this.§!U§.addChild(this.§4!n§);
         this.§!U§.addChild(this.§7!o§);
         this.addObject(§ !P§.§^!'§(param2.theme).§]!k§,(this.§?l§.§ !p§.§"Z§ + this.§?l§.§ !p§.§!!_§) / 2,this.§?l§.§ !p§.§>6§ + §[$§.§5#§);
         this.§3!y§ = this.§;Y§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§ %§)
         {
            _loc6_ = param2.§8!3§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§9!Q§();
         this.§ !]§(true);
         this.§4a§ = new Vector.<§-$§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§^!"§)
         {
            this.§4a§.push(§-$§.§1j§(param2.§!y§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§4a§)
         {
            _loc8_ = _loc5_.index1 + this.§3!y§;
            _loc9_ = _loc5_.index2 + this.§3!y§;
            if(_loc8_ < this.§;Y§.length && _loc9_ < this.§;Y§.length)
            {
               _loc10_ = this.§;Y§[_loc8_];
               _loc11_ = this.§;Y§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §+N§.§3!!§)
               {
                  _loc5_.§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(_loc5_.§6-§(_loc10_,_loc11_));
               }
               else
               {
                  this.§@!=§.push(new §<!t§(_loc8_,_loc9_,_loc5_.§5l§));
               }
            }
         }
      }
      
      protected function get §0;§() : Class
      {
         return §0;§;
      }
      
      public function get §9G§() : Sprite
      {
         return this.§7!o§;
      }
      
      public function get §'^§() : Sprite
      {
         return this.§!U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§;Y§.length > 0)
         {
            this.§>I§(0);
         }
         this.§;Y§ = null;
         this.§@!=§ = null;
         if(this.§!U§)
         {
            this.§!U§.dispose();
            this.§!U§ = null;
            this.§0R§ = null;
            this.§7!o§ = null;
            this.§42§ = null;
            this.§4!n§ = null;
         }
         while(this.§1!Z§.length > 0)
         {
            _loc1_ = this.§1!Z§.pop();
            this.§?l§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function § !]§(param1:Boolean) : void
      {
         this.§0R§.visible = param1;
      }
      
      private function §9!Q§() : void
      {
         var _loc3_:§`!<§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§?!U§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`!<§> = new Vector.<§`!<§>();
         for each(_loc3_ in this.§;Y§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§!U§);
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
            this.§]K§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§3b§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§?l§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§1!Z§.push(_loc12_);
            (_loc13_ = new §?!U§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§0R§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §3b§(param1:Vector.<§`!<§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§`!<§ = null;
         var _loc11_:§2!W§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9o§.shape).§%!x§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^g§.§^!S§ * param6,_loc12_[0].y / §^g§.§^!S§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^g§.§^!S§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^g§.§^!S§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§2a§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §]K§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§?l§.background.§`!T§();
         var _loc5_:§+W§;
         if(_loc5_ = this.§?l§.backgroundTextureManager.§6u§(_loc4_))
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
      
      public function §#m§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         var _loc10_:§`!<§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §%d§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §1!=§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §8<§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §`b§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §6!Y§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §!!t§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §]!2§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §3L§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§^!O§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!<§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§`!<§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§>!I§;
            this.§;Y§[this.§;Y§.length] = _loc11_;
         }
         else
         {
            this.§;Y§[this.§;Y§.length] = _loc11_;
         }
         if(_loc11_ is §3L§ && !_loc11_.§-!R§())
         {
            this.§42§.addChild(_loc10_);
            ++this.§^!O§;
         }
         else if(_loc11_.front || param9)
         {
            this.§7!o§.addChild(_loc10_);
         }
         else
         {
            this.§4!n§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§?l§.§=!Z§(_loc11_);
         }
         if(param6)
         {
            this.§?l§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §1j§(param1:int, param2:§`!<§, param3:§`!<§) : §-$§
      {
         var _loc6_:§-$§ = null;
         var _loc4_:int = this.§;Y§.indexOf(param2) - this.§3!y§;
         var _loc5_:int = this.§;Y§.indexOf(param3) - this.§3!y§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §-$§(§+N§.§,a§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(_loc6_.§6-§(param2,param3));
            this.§4a§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §[!§(param1:§-$§) : void
      {
         if(!(param1.§5?§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§`!<§ = this.§8!3§(param1.index1 + this.§3!y§);
         var _loc3_:§`!<§ = this.§8!3§(param1.index2 + this.§3!y§);
         this.§?l§.mLevelEngine.mWorld.§5!l§(param1.§5?§);
         param1.§5?§ = this.§?l§.mLevelEngine.mWorld.§00§(param1.§6-§(_loc2_,_loc3_));
      }
      
      public function §,!S§(param1:§`!<§) : Vector.<§-$§>
      {
         var _loc4_:§-$§ = null;
         var _loc2_:Vector.<§-$§> = new Vector.<§-$§>();
         var _loc3_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§4a§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §7H§() : Vector.<§-$§>
      {
         return this.§4a§;
      }
      
      public function §;G§(param1:§`!<§) : void
      {
         var _loc2_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         var _loc3_:int = this.§4a§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§4a§[_loc3_].index1 == _loc2_ || this.§4a§[_loc3_].index2 == _loc2_)
            {
               this.§4a§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § !`§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         var _loc3_:int = this.§;Y§.indexOf(param1) - this.§3!y§;
         var _loc4_:int = this.§;Y§.indexOf(param2) - this.§3!y§;
         var _loc5_:int = this.§4a§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§4a§[_loc5_].index1 == _loc3_ && this.§4a§[_loc5_].index2 == _loc4_ || this.§4a§[_loc5_].index1 == _loc4_ && this.§4a§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         var _loc10_:§`!<§ = null;
         var _loc11_:§9B§ = null;
         var _loc12_:§9B§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§#m§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§ m§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §<F§.§1]§(param2);
            _loc10_ = new §6j§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §<F§.§1]§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §<F§.§1]§(param2);
            }
            if(_loc12_.§6K§ == §9B§.§=!%§ || _loc12_.§6K§ == §9B§.§4x§)
            {
               _loc10_ = new §7!Z§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §`!<§(this,param1,this.§?l§.mLevelEngine.mWorld,this.§?l§,this.§>Q§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §?!k§(param1:Number) : void
      {
         var _loc3_:§`!<§ = null;
         var _loc2_:int = this.§;Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
            if(_loc3_)
            {
               if(_loc3_.§%!R§ <= 0)
               {
                  this.§>I§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§<!&§();
                  _loc3_.§"k§();
               }
            }
            _loc2_--;
         }
         this.§ ![§(param1);
      }
      
      protected function § ![§(param1:Number) : void
      {
         var _loc3_:§-$§ = null;
         var _loc4_:§<!t§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`!<§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§@!=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§@!=§[_loc2_]).§"?§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§#-§("block_" + _loc5_))
                  {
                     this.§!!D§(_loc6_,true,true,true);
                  }
                  this.§@!=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§4a§)
         {
            if(_loc3_.type == §+N§.§0!'§ && _loc3_.§9!J§)
            {
               _loc7_ = (_loc3_.§5?§ as b2PrismaticJoint).§<!0§();
               _loc8_ = (_loc3_.§5?§ as b2PrismaticJoint).§1!V§();
               if(_loc3_.§,!X§ && _loc3_.§7!H§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§5?§ as b2PrismaticJoint).§[>§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§]O§.push(§=N§.createExplosion(param1,param2,param3));
         § !Q§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §=V§(param1:Number, param2:Number) : int
      {
         var _loc4_:§`!<§ = null;
         var _loc3_:int = this.§;Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;Y§[_loc3_])
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
      
      public function §"+§(param1:Number, param2:Number) : §`!<§
      {
         var _loc4_:§`!<§ = null;
         var _loc3_:int = this.§;Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;Y§[_loc3_])
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
      
      public function §8!3§(param1:int) : §`!<§
      {
         return this.§;Y§[param1];
      }
      
      public function §!!7§(param1:Number, param2:Number) : void
      {
         var _loc4_:§`!<§ = null;
         var _loc3_:int = this.§;Y§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§;Y§[_loc3_] as §`!<§).§!!7§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §^!9§(param1:§`!<§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§`!<§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§%!R§ == param1.§-!!§)
         {
            if(this.§-d§ < this.§0;§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§-d§ += param2 * this.§0;§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§5b§().§@X§(param2 * this.§-d§);
            this.§<y§ = 0;
         }
         else if(this.§<y§ == 0)
         {
            this.§<y§ = this.§?l§.§ i§;
         }
         if(param1.§9!i§() || this.§1!§(param1) || this.§<y§ > 0 && this.§?l§.§ i§ > this.§<y§ + this.§0;§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§0;§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§0;§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  § !Q§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  § !Q§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§5b§().GetPosition().x - this.§0;§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§5b§().GetPosition().y - this.§0;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§0;§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§1!§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§0;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§<y§ = 0;
                  _loc7_.§?!M§.§<!K§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §'!#§(param1:§`!<§, param2:Number) : Boolean
      {
         var _loc5_:§`!<§ = null;
         if(this.§0;§.MIGHTY_EAGLE_USE_SHADE && !this.§%!%§ && this.mMightyEagleTimer > this.§0;§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§%!%§ = true;
            this.§?l§.§#S§();
         }
         this.mMightyEagleTimer += param2;
         this.§?l§.particles.§ K§(§1!e§.§?A§,§+F§.§+!X§,§1!e§.§<V§,param1.§5b§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§5b§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§1!e§.§"!J§(param1.§<!]§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§&!a§(this.§0;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§"2§)
            {
               this.§"2§ = false;
               this.§?l§.§9!g§();
               param1.§@j§(§<!R§.§5F§);
               this.mSardineCanAdded = false;
               param1.§?!M§.§82§ = true;
               param1.§?!M§.§true §();
               for each(_loc5_ in this.§;Y§)
               {
                  if(_loc5_ && _loc5_.§<+§())
                  {
                     _loc5_.§5b§().SetAwake(true);
                     _loc5_.§5b§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.override();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§;Y§)
               {
                  if(_loc5_ && _loc5_.§<+§())
                  {
                     _loc5_.applyDamage(_loc5_.§-!!§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§5b§().GetPosition().y >= -5.5;
            this.§"2§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§7@§(param2,new Point(this.§0;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§0;§.MIGHTY_EAGLE_Y_CHANGE),this.§0;§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §1!y§() : void
      {
         var _loc1_:§=N§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`!<§ = null;
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
         while(this.§]O§.length > 0)
         {
            _loc1_ = this.§]O§.shift();
            _loc2_ = _loc1_.§@!§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§;Y§)
            {
               _loc8_ = _loc6_.§5b§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§5b§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§@!§)
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
                     _loc6_.§5b§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§8!K§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§?l§.particles.§ K§(this.§>1§(_loc1_.type),§+F§.§+!X§,§1!e§.§'!K§,_loc3_,_loc4_,600,"",§1!e§.§3!4§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§?l§.particles.§ K§(§1!e§.§2!^§,§+F§.§+!X§,§1!e§.§<V§,_loc3_,_loc4_,_loc16_,"",§1!e§.§3!4§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §>1§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §1!e§.§[!&§;
      }
      
      public function §6s§(param1:Number) : void
      {
         var _loc2_:§`!<§ = null;
         var _loc3_:int = this.§;Y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc3_];
            if(_loc2_.§+!O§())
            {
               if(this.§^!9§(_loc2_,param1))
               {
                  this.§>I§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§-!R§())
            {
               this.§'!#§(_loc2_,param1);
            }
            else if(this.§1!§(_loc2_))
            {
               _loc2_.§@j§(§<!R§.§1!p§);
               this.§>I§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@j§(§<!R§.§1!p§);
               this.§>I§(_loc3_,false,true,true);
            }
            else if(_loc2_.§ !"§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§1!y§();
      }
      
      private function override() : void
      {
         var _loc1_:§-$§ = null;
         for each(_loc1_ in this.§4a§)
         {
            this.§?l§.mLevelEngine.mWorld.§5!l§(_loc1_.§5?§);
         }
      }
      
      public function §8L§() : Boolean
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;Y§.length)
         {
            _loc2_ = this.§;Y§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §1!§(param1:§`!<§) : Boolean
      {
         if(param1 && param1.§9o§.§#!N§() != §0"§.§5P§ && this.§?l§.§ !p§.§,A§(param1.§5b§().GetPosition().x,param1.§5b§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §>I§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§-$§ = null;
         var _loc7_:§<!t§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§`!<§;
         if((_loc5_ = this.§;Y§[param1]).§<+§())
         {
            ++this.§5!h§;
         }
         else if(_loc5_.§ !"§())
         {
            --this.§^!O§;
         }
         if(_loc5_ == this.§?l§.activeObject)
         {
            this.§?l§.activeObject = null;
         }
         if(param2)
         {
            this.§?l§.addScore(_loc5_.§9o§.score,§;v§.§-!A§,true,_loc5_.§5b§().GetPosition().x,_loc5_.§5b§().GetPosition().y - 3,§1!e§.§?L§(_loc5_.§<!]§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§?l§.particles);
         }
         if(param4)
         {
            this.§=!9§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+!a§(_loc5_.sprite);
         this.§;G§(_loc5_);
         for each(_loc6_ in this.§4a§)
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
         for each(_loc7_ in this.§@!=§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§"?§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§;Y§[param1] = null;
         this.§;Y§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§`!<§, param2:§+F§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+!a§(param1:Sprite) : void
      {
         if(this.§4!n§.contains(param1))
         {
            this.§4!n§.removeChild(param1);
            return;
         }
         if(this.§42§.contains(param1))
         {
            this.§42§.removeChild(param1);
            return;
         }
         if(this.§0R§.contains(param1))
         {
            this.§0R§.removeChild(param1);
            return;
         }
         if(this.§7!o§.contains(param1))
         {
            this.§7!o§.removeChild(param1);
            return;
         }
      }
      
      protected function §=!9§(param1:§`!<§) : void
      {
         if(param1.§'!Q§().toUpperCase() == "WHITE_EGG" || param1.§&!&§())
         {
            if(param1.§<!]§.toUpperCase() == §`b§.§;!X§)
            {
               this.addExplosions(§=N§.§;!P§,param1.§5b§().GetPosition().x,param1.§5b§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§=N§.§;!I§,param1.§5b§().GetPosition().x,param1.§5b§().GetPosition().y);
            }
         }
      }
      
      public function §!!D§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§>I§(this.§;Y§.indexOf(param1),param2,param3,param4);
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         this.§!U§.x = -param1;
         this.§!U§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§`!<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;Y§.length)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
            if(_loc3_ && _loc3_.§<+§() && _loc3_.§%!R§ > 0)
            {
               if(!param1 || _loc3_.§?!M§.mTryToBlink <= 0 && _loc3_.§?!M§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §"!i§(param1:Boolean = false) : int
      {
         var _loc4_:§`!<§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§;Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;Y§[_loc3_] as §`!<§) && _loc4_.§<+§() && _loc4_.§%!R§ > 0)
            {
               if(!param1 || _loc4_.§?!M§.mTryToBlink <= 0 && _loc4_.§?!M§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §case §() : int
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;Y§)
         {
            if(_loc2_ && (_loc2_.§=]§() || _loc2_.§'!U§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §3!A§() : int
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;Y§)
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
         var _loc3_:§`!<§ = null;
         var _loc2_:int = this.§;Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;Y§[_loc2_];
            if(_loc3_ && _loc3_.§<+§() && _loc3_.§%!R§ > 0)
            {
               _loc3_.§?!M§.mTryToScream = §'!%§.§2<§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function § !y§() : Boolean
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = this.§;Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc2_ && _loc2_.§ !"§() && _loc2_.§%!R§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = this.§;Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc2_ && _loc2_.§%!R§ > 0 && _loc2_.§6K§ != §9B§.§%!>§)
            {
               if(_loc2_.§,!R§() && !_loc2_.§9!i§())
               {
                  return false;
               }
               if(_loc2_.§ !"§() && _loc2_.§%!R§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §;l§(param1:Boolean = false) : §`!<§
      {
         var _loc5_:int = 0;
         var _loc6_:§`!<§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§;Y§.length;
         var _loc3_:int = 1 + Math.random() * this.§"!i§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§;Y§[_loc5_]) && _loc6_.§<+§() && _loc6_.§%!R§ > 0)
               {
                  if(!param1 || _loc6_.§?!M§.mTryToBlink <= 0 && _loc6_.§?!M§.mTryToScream <= 0)
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
      
      public function §^!v§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§;Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§;Y§[_loc2_] as §`!<§).§9o§.score;
            if((this.§;Y§[_loc2_] as §`!<§).§,!R§())
            {
               _loc1_ += §^g§.§>p§.getValue() * int((this.§;Y§[_loc2_] as §`!<§).§-!!§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§?l§.slingshot.§^!v§());
      }
      
      public function §>8§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         if(param1.§ !"§() && param2.§ !"§())
         {
            return true;
         }
         if(!param1.§8U§() && !param2.§8U§())
         {
            return true;
         }
         return false;
      }
      
      public function §2G§() : void
      {
         this.mSardineCanAdded = true;
         this.§^!O§ = 0;
      }
      
      public function §7!4§(param1:§`!<§, param2:§`!<§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§-!R§() || param2.§<+§())
            {
               param2.applyDamage(param2.§-!!§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§-!R§() || param1.§<+§())
            {
               param1.applyDamage(param1.§-!!§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§+!O§() || param2.§+!O§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§>8§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§;!`§(param2.§'!Q§());
         var _loc5_:Number = param1.§"!5§(param2.§'!Q§());
         var _loc6_:Number = param2.§;!`§(param1.§'!Q§());
         var _loc7_:Number = param2.§"!5§(param1.§'!Q§());
         var _loc8_:Number = param1.§5b§().GetMass() * param1.§5b§().GetLinearVelocity().x - param2.§5b§().GetMass() * param2.§5b§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§5b§().GetMass() * param1.§5b§().GetLinearVelocity().y - param2.§5b§().GetMass() * param2.§5b§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§%!R§);
         var _loc14_:Number = Math.max(0,param2.§%!R§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ !"§(),_loc14_ == param2.§-!!§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ !"§(),_loc13_ == param1.§-!!§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§"q§(new b2Vec2(param2.§5b§().GetLinearVelocity().x * _loc18_,param2.§5b§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§"q§(new b2Vec2(param1.§5b§().GetLinearVelocity().x * _loc19_,param1.§5b§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §1W§() : void
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = this.§;Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc2_ != null && _loc2_.§<+§())
            {
               this.§>I§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §;!>§() : void
      {
         var _loc2_:§`!<§ = null;
         var _loc1_:int = this.§;Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;Y§[_loc1_] as §`!<§;
            if(_loc2_ != null && _loc2_.§&!&§())
            {
               this.§>I§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §,3§() : int
      {
         return this.§;Y§.length;
      }
      
      public function §'&§(param1:§=+§) : void
      {
         var _loc4_:§`!<§ = null;
         var _loc5_:§0!D§ = null;
         var _loc6_:§+N§ = null;
         var _loc7_:§-$§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;Y§.length)
         {
            if((_loc4_ = this.§;Y§[_loc2_]).§8!x§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §0!D§()).angle = _loc4_.§2a§();
                  _loc5_.id = _loc4_.§<!]§;
                  _loc5_.x = _loc4_.§5b§().GetPosition().x;
                  _loc5_.y = _loc4_.§5b§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§4a§.length)
         {
            _loc7_ = this.§4a§[_loc3_];
            _loc6_ = new §+N§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§%!d§,_loc7_.§,!X§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§7!H§,_loc7_.motorSpeed,_loc7_.§9!J§,_loc7_.maxTorque);
            param1.§"!K§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §&!T§() : void
      {
         var _loc1_:int = 0;
         while(this.§;Y§.length > _loc1_)
         {
            if(this.§;Y§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§!!D§(this.§;Y§[_loc1_]);
            }
         }
      }
      
      public function §!Z§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§;Y§.length)
         {
            if(this.§;Y§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§;Y§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§>!I§ = param1;
         this.§ !]§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;Y§.length)
         {
            if(this.§;Y§[_loc2_].isTexture())
            {
               this.§;Y§[_loc2_].sprite.visible = !this.§>!I§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§^Y§ = param1;
      }
      
      public function §3m§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function §9a§() : int
      {
         return this.§ m§;
      }
      
      public function §]N§() : int
      {
         return this.§5!h§;
      }
      
      public function §#-§(param1:String) : §`!<§
      {
         var _loc3_:§`!<§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;Y§.length)
         {
            _loc3_ = this.§;Y§[_loc2_] as §`!<§;
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
