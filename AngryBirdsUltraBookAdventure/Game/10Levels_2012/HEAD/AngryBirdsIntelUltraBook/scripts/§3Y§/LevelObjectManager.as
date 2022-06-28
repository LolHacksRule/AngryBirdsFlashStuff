package §3Y§
{
   import §#!X§.LevelModel;
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §5!_§.b2PrismaticJoint;
   import §5!_§.b2WeldJoint;
   import §6Z§.§&D§;
   import §6Z§.§@P§;
   import §6Z§.§]!Z§;
   import §6Z§.§^!g§;
   import §8!?§.§?!B§;
   import §?!&§.b2Vec2;
   import §?A§.§'K§;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import §?A§.ScoreCollector;
   import §[a§.LevelThemeBackgroundManager;
   import §^L§.§0!J§;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemMaterial;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager
   {
       
      
      protected var §!2§:Vector.<LevelObject>;
      
      protected var §#!+§:int;
      
      public var §6f§:LevelMain;
      
      public var §+!+§:Vector.<§^!6§>;
      
      protected var §%!2§:Sprite;
      
      protected var §?U§:Sprite;
      
      private var §,!d§:Sprite;
      
      private var §-R§:Sprite;
      
      private var §?1§:Sprite;
      
      protected var §3!i§:Vector.<Texture>;
      
      protected var §&d§:Vector.<§@P§>;
      
      protected var §17§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §3!`§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §%!;§:Boolean = false;
      
      protected var §;!0§:Number;
      
      protected var §^O§:int;
      
      protected var §^!'§:Vector.<§]!Z§>;
      
      protected var §>!6§:int = 0;
      
      private var §,!&§:int = 0;
      
      private var §=!O§:int = 0;
      
      private var §1p§:int;
      
      private var §6!P§:Boolean = true;
      
      private var §<"§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc5_:§@P§ = null;
         var _loc6_:§^!g§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         this.§!2§ = new Vector.<LevelObject>();
         this.§+!+§ = new Vector.<§^!6§>();
         this.§3!i§ = new Vector.<Texture>();
         this.§;!0§ = this.§5a§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§^!'§ = new Vector.<§]!Z§>();
         super();
         this.§6f§ = param1;
         this.§#!+§ = 0;
         this.§?U§ = param3;
         this.§?U§.§9@§ = false;
         this.§<"§ = true;
         this.§6!P§ = true;
         this.§%!2§ = new Sprite();
         this.§,!d§ = new Sprite();
         this.§-R§ = new Sprite();
         this.§?1§ = new Sprite();
         this.§?U§.addChild(this.§%!2§);
         this.§?U§.addChild(this.§,!d§);
         this.§?U§.addChild(this.§-R§);
         this.§?U§.addChild(this.§?1§);
         this.addObject(LevelThemeBackgroundManager.§"!f§(param2.theme).§,@§,(this.§6f§.§7!%§.§6!3§ + this.§6f§.§7!%§.§%Q§) / 2,this.§6f§.§7!%§.§7!5§ + §'K§.§^K§);
         this.§1p§ = this.§!2§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§;!V§)
         {
            _loc6_ = param2.§[O§(_loc4_);
            _loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            if(_loc7_)
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§?&§();
         this.§>!E§(true);
         this.§&d§ = new Vector.<§@P§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§?!Z§)
         {
            this.§&d§.push(§@P§.§98§(param2.§&B§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§&d§)
         {
            _loc8_ = _loc5_.index1 + this.§1p§;
            _loc9_ = _loc5_.index2 + this.§1p§;
            if(_loc8_ < this.§!2§.length && _loc9_ < this.§!2§.length)
            {
               _loc10_ = this.§!2§[_loc8_];
               _loc11_ = this.§!2§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §&D§.§-0§)
               {
                  _loc5_.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(_loc5_.§2b§(_loc10_,_loc11_));
               }
               else
               {
                  this.§^!'§.push(new §]!Z§(_loc8_,_loc9_,_loc5_.§1_§));
               }
            }
         }
      }
      
      protected function get §5a§() : Class
      {
         return §5a§;
      }
      
      public function get §!!<§() : Sprite
      {
         return this.§?1§;
      }
      
      public function get §>r§() : Sprite
      {
         return this.§?U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§!2§.length > 0)
         {
            this.§3P§(0);
         }
         this.§!2§ = null;
         this.§^!'§ = null;
         if(this.§?U§)
         {
            this.§?U§.dispose();
            this.§?U§ = null;
            this.§%!2§ = null;
            this.§?1§ = null;
            this.§,!d§ = null;
            this.§-R§ = null;
         }
         while(this.§3!i§.length > 0)
         {
            _loc1_ = this.§3!i§.pop();
            this.§6f§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §>!E§(param1:Boolean) : void
      {
         this.§%!2§.visible = param1;
      }
      
      private function §?&§() : void
      {
         var _loc3_:LevelObject = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§&p§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§!2§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§?U§);
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
            this.§ !8§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§@Z§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§6f§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§3!i§.push(_loc12_);
            _loc13_ = new §&p§(_loc12_);
            _loc13_.x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§%!2§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §@Z§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:LevelObject = null;
         var _loc11_:LevelItemShape = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc11_ = _loc7_.§>!9§.shape;
            _loc12_ = _loc11_.§?L§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§!5§ * param6,_loc12_[0].y / LevelMain.§!5§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§!5§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§!5§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§=W§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function § !8§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.§6f§.background.§[!O§();
         var _loc5_:§?!B§ = this.§6f§.backgroundTextureManager.§"!'§(_loc4_);
         if(_loc5_)
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            _loc7_ = new Matrix();
            _loc7_.scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = param1.bottom / _loc9_;
            _loc11_++;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = param1.right / _loc8_;
            _loc13_++;
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
      
      public function §,D§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc10_:LevelObject = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §each §(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §-!c§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §6m§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §>!7§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §%;§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §<N§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §`!N§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §[r§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>!6§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc10_:Sprite = new Sprite();
         _loc10_.scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§6!P§;
            this.§!2§[this.§!2§.length] = _loc11_;
         }
         else
         {
            this.§!2§[this.§!2§.length] = _loc11_;
         }
         if(_loc11_ is §[r§ && !_loc11_.§3s§())
         {
            this.§,!d§.addChild(_loc10_);
            ++this.§>!6§;
         }
         else if(_loc11_.front || param9)
         {
            this.§?1§.addChild(_loc10_);
         }
         else
         {
            this.§-R§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§6f§.§8I§(_loc11_);
         }
         if(param6)
         {
            this.§6f§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §98§(param1:int, param2:LevelObject, param3:LevelObject) : §@P§
      {
         var _loc6_:§@P§ = null;
         var _loc4_:int = this.§!2§.indexOf(param2) - this.§1p§;
         var _loc5_:int = this.§!2§.indexOf(param3) - this.§1p§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            _loc6_ = new §@P§(§&D§.§9!-§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
            _loc6_.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(_loc6_.§2b§(param2,param3));
            this.§&d§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §`p§(param1:§@P§) : void
      {
         if(!(param1.§^!E§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:LevelObject = this.§[O§(param1.index1 + this.§1p§);
         var _loc3_:LevelObject = this.§[O§(param1.index2 + this.§1p§);
         this.§6f§.mLevelEngine.mWorld.§1#§(param1.§^!E§);
         param1.§^!E§ = this.§6f§.mLevelEngine.mWorld.§`H§(param1.§2b§(_loc2_,_loc3_));
      }
      
      public function §1Q§(param1:LevelObject) : Vector.<§@P§>
      {
         var _loc4_:§@P§ = null;
         var _loc2_:Vector.<§@P§> = new Vector.<§@P§>();
         var _loc3_:int = this.§!2§.indexOf(param1) - this.§1p§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§&d§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §]y§() : Vector.<§@P§>
      {
         return this.§&d§;
      }
      
      public function §3!B§(param1:LevelObject) : void
      {
         var _loc2_:int = this.§!2§.indexOf(param1) - this.§1p§;
         var _loc3_:int = this.§&d§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§&d§[_loc3_].index1 == _loc2_ || this.§&d§[_loc3_].index2 == _loc2_)
            {
               this.§&d§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §!g§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:int = this.§!2§.indexOf(param1) - this.§1p§;
         var _loc4_:int = this.§!2§.indexOf(param2) - this.§1p§;
         var _loc5_:int = this.§&d§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§&d§[_loc5_].index1 == _loc3_ && this.§&d§[_loc5_].index2 == _loc4_ || this.§&d§[_loc5_].index1 == _loc4_ && this.§&d§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc10_:LevelObject = null;
         var _loc11_:§0!J§ = null;
         var _loc12_:§0!J§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§,D§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§=!O§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = LevelItemManager.§><§(param2);
            _loc10_ = new §!!^§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            _loc12_ = LevelItemManager.§><§(param2);
            if(_loc12_ == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = LevelItemManager.§><§(param2);
            }
            if(_loc12_.§4i§ == §0!J§.§ K§ || _loc12_.§4i§ == §0!J§.§ !Z§)
            {
               _loc10_ = new §'k§(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new LevelObject(this,param1,this.§6f§.mLevelEngine.mWorld,this.§6f§,this.§#!+§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function § U§(param1:Number) : void
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.§!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
            if(_loc3_)
            {
               if(_loc3_.§19§ <= 0)
               {
                  this.§3P§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4!G§();
                  _loc3_.§ try§();
               }
            }
            _loc2_--;
         }
         this.§0@§(param1);
      }
      
      protected function §0@§(param1:Number) : void
      {
         var _loc3_:§@P§ = null;
         var _loc4_:§]!Z§ = null;
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§^!'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc4_ = this.§^!'§[_loc2_];
            if(_loc4_.§9O§)
            {
               _loc5_ = _loc4_.update(param1);
               if(_loc5_ != -1)
               {
                  _loc6_ = this.§ x§("block_" + _loc5_);
                  if(_loc6_)
                  {
                     this.§6T§(_loc6_,true,true,true);
                  }
                  this.§^!'§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§&d§)
         {
            if(_loc3_.type == §&D§.§;!I§ && _loc3_.§8!&§)
            {
               _loc7_ = (_loc3_.§^!E§ as b2PrismaticJoint).§>t§();
               _loc8_ = (_loc3_.§^!E§ as b2PrismaticJoint).§3!g§();
               if(_loc3_.§5J§ && _loc3_.§=E§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§^!E§ as b2PrismaticJoint).§39§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§+!+§.push(§^!6§.createExplosion(param1,param2,param3));
         SoundEngine.§`B§("TntExplosions","ChannelExplosions");
      }
      
      public function §35§(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_];
            if(_loc4_)
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
      
      public function §9!k§(param1:Number, param2:Number) : LevelObject
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_];
            if(_loc4_)
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
      
      public function §[O§(param1:int) : LevelObject
      {
         return this.§!2§[param1];
      }
      
      public function §,9§(param1:Number, param2:Number) : void
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_] as LevelObject;
            _loc4_.§,9§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §;!G§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:LevelObject = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§19§ == param1.§^V§)
         {
            if(this.§;!0§ < this.§5a§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§;!0§ += param2 * this.§5a§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§8!N§().§&R§(param2 * this.§;!0§);
            this.§^O§ = 0;
         }
         else if(this.§^O§ == 0)
         {
            this.§^O§ = this.§6f§.§"!-§;
         }
         if(param1.§[q§() || this.§>!g§(param1) || this.§^O§ > 0 && this.§6f§.§"!-§ > this.§^O§ + this.§5a§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§5a§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§5a§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§5a§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  SoundEngine.§`B§("Mighty_Eagle_Selected_1","ChannelBird");
                  SoundEngine.§`B§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§5a§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§8!N§().GetPosition().x - this.§5a§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§8!N§().GetPosition().y - this.§5a§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§5a§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§>!g§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§5a§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§^O§ = 0;
                  _loc7_.§ get§.§6v§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §'q§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc5_:LevelObject = null;
         if(this.§5a§.MIGHTY_EAGLE_USE_SHADE && !this.§%!;§ && this.mMightyEagleTimer > this.§5a§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§%!;§ = true;
            this.§6f§.§]a§();
         }
         this.mMightyEagleTimer += param2;
         this.§6f§.particles.§%!!§(§8!;§.§=!5§,LevelParticleManager.§1!'§,§8!;§.§;Z§,param1.§8!N§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§8!N§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§8!;§.§"K§(param1.§4!W§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§3'§(this.§5a§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§3!`§)
            {
               this.§3!`§ = false;
               this.§6f§.§8-§();
               param1.§8!9§(LevelItemSoundResource.§[!e§);
               this.mSardineCanAdded = false;
               param1.§ get§.§#[§ = true;
               param1.§ get§.§#I§();
               for each(_loc5_ in this.§!2§)
               {
                  if(_loc5_ && _loc5_.§<!#§())
                  {
                     _loc5_.§8!N§().SetAwake(true);
                     _loc5_.§8!N§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§0R§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§!2§)
               {
                  if(_loc5_ && _loc5_.§<!#§())
                  {
                     _loc5_.applyDamage(_loc5_.§^V§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§8!N§().GetPosition().y >= -5.5;
            this.§3!`§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§3!"§(param2,new Point(this.§5a§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§5a§.MIGHTY_EAGLE_Y_CHANGE),this.§5a§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §4V§() : void
      {
         var _loc1_:§^!6§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:LevelObject = null;
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
         while(this.§+!+§.length > 0)
         {
            _loc1_ = this.§+!+§.shift();
            _loc2_ = _loc1_.pushRadius;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§!2§)
            {
               _loc8_ = _loc6_.§8!N§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§8!N§().GetPosition().y - _loc4_;
               _loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
               if(_loc10_ <= _loc1_.pushRadius)
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
                     _loc6_.§8!N§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.damageRadius)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§6f§.particles.§%!!§(this.§]!c§(_loc1_.type),LevelParticleManager.§1!'§,§8!;§.§&!"§,_loc3_,_loc4_,600,"",§8!;§.§"L§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§6f§.particles.§%!!§(§8!;§.§8!T§,LevelParticleManager.§1!'§,§8!;§.§;Z§,_loc3_,_loc4_,_loc16_,"",§8!;§.§"L§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §]!c§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8!;§.§!q§;
      }
      
      public function §7O§(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         var _loc3_:int = this.§!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!2§[_loc3_];
            if(_loc2_.§#j§())
            {
               if(this.§;!G§(_loc2_,param1))
               {
                  this.§3P§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§3s§())
            {
               this.§'q§(_loc2_,param1);
            }
            else if(this.§>!g§(_loc2_))
            {
               _loc2_.§8!9§(LevelItemSoundResource.§9!%§);
               this.§3P§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§8!9§(LevelItemSoundResource.§9!%§);
               this.§3P§(_loc3_,false,true,true);
            }
            else if(_loc2_.§+!J§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§4V§();
      }
      
      private function §0R§() : void
      {
         var _loc1_:§@P§ = null;
         for each(_loc1_ in this.§&d§)
         {
            this.§6f§.mLevelEngine.mWorld.§1#§(_loc1_.§^!E§);
         }
      }
      
      public function §[z§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!2§.length)
         {
            _loc2_ = this.§!2§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §>!g§(param1:LevelObject) : Boolean
      {
         if(param1 && param1.§>!9§.§>!h§() != LevelItemMaterial.§>Z§ && this.§6f§.§7!%§.§0t§(param1.§8!N§().GetPosition().x,param1.§8!N§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §3P§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@P§ = null;
         var _loc7_:§]!Z§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:LevelObject = this.§!2§[param1];
         if(_loc5_.§<!#§())
         {
            ++this.§,!&§;
         }
         else if(_loc5_.§+!J§())
         {
            --this.§>!6§;
         }
         if(_loc5_ == this.§6f§.activeObject)
         {
            this.§6f§.activeObject = null;
         }
         if(param2)
         {
            this.§6f§.addScore(_loc5_.§>!9§.score,ScoreCollector.§'J§,true,_loc5_.§8!N§().GetPosition().x,_loc5_.§8!N§().GetPosition().y - 3,§8!;§.§7!i§(_loc5_.§4!W§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§6f§.particles);
         }
         if(param4)
         {
            this.§=<§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+![§(_loc5_.sprite);
         this.§3!B§(_loc5_);
         for each(_loc6_ in this.§&d§)
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
         for each(_loc7_ in this.§^!'§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§9O§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§!2§[param1] = null;
         this.§!2§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+![§(param1:Sprite) : void
      {
         if(this.§-R§.contains(param1))
         {
            this.§-R§.removeChild(param1);
            return;
         }
         if(this.§,!d§.contains(param1))
         {
            this.§,!d§.removeChild(param1);
            return;
         }
         if(this.§%!2§.contains(param1))
         {
            this.§%!2§.removeChild(param1);
            return;
         }
         if(this.§?1§.contains(param1))
         {
            this.§?1§.removeChild(param1);
            return;
         }
      }
      
      protected function §=<§(param1:LevelObject) : void
      {
         if(param1.§4Y§().toUpperCase() == "WHITE_EGG" || param1.§=§())
         {
            if(param1.§4!W§.toUpperCase() == §>!7§.§4"§)
            {
               this.addExplosions(§^!6§.§3!U§,param1.§8!N§().GetPosition().x,param1.§8!N§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§^!6§.§9!Y§,param1.§8!N§().GetPosition().x,param1.§8!N§().GetPosition().y);
            }
         }
      }
      
      public function §6T§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§3P§(this.§!2§.indexOf(param1),param2,param3,param4);
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         this.§?U§.x = -param1;
         this.§?U§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!2§.length)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.§<!#§() && _loc3_.§19§ > 0)
            {
               if(!param1 || _loc3_.§ get§.mTryToBlink <= 0 && _loc3_.§ get§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^9§(param1:Boolean = false) : int
      {
         var _loc4_:LevelObject = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§!2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§!2§[_loc3_] as LevelObject;
            if(_loc4_ && _loc4_.§<!#§() && _loc4_.§19§ > 0)
            {
               if(!param1 || _loc4_.§ get§.mTryToBlink <= 0 && _loc4_.§ get§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §]7§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!2§)
         {
            if(_loc2_ && (_loc2_.§in§() || _loc2_.§3u§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §8j§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!2§)
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
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.§!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!2§[_loc2_];
            if(_loc3_ && _loc3_.§<!#§() && _loc3_.§19§ > 0)
            {
               _loc3_.§ get§.mTryToScream = LevelObjectRenderer.§6!H§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §51§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§+!J§() && _loc2_.§19§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§19§ > 0 && _loc2_.§4i§ != §0!J§.§5!+§)
            {
               if(_loc2_.§6!;§() && !_loc2_.§[q§())
               {
                  return false;
               }
               if(_loc2_.§+!J§() && _loc2_.§19§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>!$§(param1:Boolean = false) : LevelObject
      {
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§!2§.length;
         var _loc3_:int = 1 + Math.random() * this.§^9§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = this.§!2§[_loc5_];
               if(_loc6_ && _loc6_.§<!#§() && _loc6_.§19§ > 0)
               {
                  if(!param1 || _loc6_.§ get§.mTryToBlink <= 0 && _loc6_.§ get§.mTryToScream <= 0)
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
      
      public function §[!R§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§!2§[_loc2_] as LevelObject).§>!9§.score;
            if((this.§!2§[_loc2_] as LevelObject).§6!;§())
            {
               _loc1_ += LevelMain.§<a§.getValue() * int((this.§!2§[_loc2_] as LevelObject).§^V§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§6f§.slingshot.§[!R§());
      }
      
      public function §4§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         if(param1.§+!J§() && param2.§+!J§())
         {
            return true;
         }
         if(!param1.§>!M§() && !param2.§>!M§())
         {
            return true;
         }
         return false;
      }
      
      public function §9e§() : void
      {
         this.mSardineCanAdded = true;
         this.§>!6§ = 0;
      }
      
      public function §3!?§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§3s§() || param2.§<!#§())
            {
               param2.applyDamage(param2.§^V§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§3s§() || param1.§<!#§())
            {
               param1.applyDamage(param1.§^V§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§5a§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§#j§() || param2.§#j§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§4§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§ do§(param2.§4Y§());
         var _loc5_:Number = param1.§^_§(param2.§4Y§());
         var _loc6_:Number = param2.§ do§(param1.§4Y§());
         var _loc7_:Number = param2.§^_§(param1.§4Y§());
         var _loc8_:Number = param1.§8!N§().GetMass() * param1.§8!N§().GetLinearVelocity().x - param2.§8!N§().GetMass() * param2.§8!N§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§8!N§().GetMass() * param1.§8!N§().GetLinearVelocity().y - param2.§8!N§().GetMass() * param2.§8!N§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§19§);
         var _loc14_:Number = Math.max(0,param2.§19§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§+!J§(),_loc14_ == param2.§^V§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§+!J§(),_loc13_ == param1.§^V§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            _loc18_ = (_loc12_ - _loc13_) / _loc12_;
            _loc18_ *= _loc7_;
            if(_loc18_ > 1)
            {
               _loc18_ = 1;
            }
            param2.§%h§(new b2Vec2(param2.§8!N§().GetLinearVelocity().x * _loc18_,param2.§8!N§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            _loc19_ = (_loc11_ - _loc14_) / _loc11_;
            _loc19_ *= _loc5_;
            if(_loc19_ > 1)
            {
               _loc19_ = 1;
            }
            param1.§%h§(new b2Vec2(param1.§8!N§().GetLinearVelocity().x * _loc19_,param1.§8!N§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §"!b§() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§<!#§())
            {
               this.§3P§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §"! §() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§!2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!2§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§=§())
            {
               this.§3P§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §'g§() : int
      {
         return this.§!2§.length;
      }
      
      public function §+!C§(param1:LevelModel) : void
      {
         var _loc4_:LevelObject = null;
         var _loc5_:§^!g§ = null;
         var _loc6_:§&D§ = null;
         var _loc7_:§@P§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!2§.length)
         {
            _loc4_ = this.§!2§[_loc2_];
            if(_loc4_.§'!M§)
            {
               if(!_loc4_.isGround())
               {
                  _loc5_ = new §^!g§();
                  _loc5_.angle = _loc4_.§=W§();
                  _loc5_.id = _loc4_.§4!W§;
                  _loc5_.x = _loc4_.§8!N§().GetPosition().x;
                  _loc5_.y = _loc4_.§8!N§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&d§.length)
         {
            _loc7_ = this.§&d§[_loc3_];
            _loc6_ = new §&D§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§4!Q§,_loc7_.§5J§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§=E§,_loc7_.motorSpeed,_loc7_.§8!&§,_loc7_.maxTorque);
            param1.§1u§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §2F§() : void
      {
         var _loc1_:int = 0;
         while(this.§!2§.length > _loc1_)
         {
            if(this.§!2§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§6T§(this.§!2§[_loc1_]);
            }
         }
      }
      
      public function §?!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!2§.length)
         {
            if(this.§!2§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!2§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§6!P§ = param1;
         this.§>!E§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!2§.length)
         {
            if(this.§!2§[_loc2_].isTexture())
            {
               this.§!2§[_loc2_].sprite.visible = !this.§6!P§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§<"§ = param1;
      }
      
      public function §&5§() : Boolean
      {
         return this.§<"§;
      }
      
      public function §;!h§() : int
      {
         return this.§=!O§;
      }
      
      public function §8a§() : int
      {
         return this.§,!&§;
      }
      
      public function § x§(param1:String) : LevelObject
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!2§.length)
         {
            _loc3_ = this.§!2§[_loc2_] as LevelObject;
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
