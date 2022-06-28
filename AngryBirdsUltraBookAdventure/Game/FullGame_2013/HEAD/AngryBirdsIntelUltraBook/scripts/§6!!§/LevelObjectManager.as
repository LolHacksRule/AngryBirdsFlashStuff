package §6!!§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §4!C§.§,!0§;
   import §4!C§.§2!3§;
   import §4!C§.§7W§;
   import §4!C§.§@!>§;
   import §6!J§.Texture;
   import §=;§.b2PrismaticJoint;
   import §=;§.b2WeldJoint;
   import §>!8§.b2Vec2;
   import §>!_§.LevelModel;
   import §>=§.LevelThemeBackgroundManager;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   import §]!@§.ScoreCollector;
   import §]!@§.§[6§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §package§.§2Y§;
   import §package§.LevelItemManager;
   import §package§.LevelItemMaterial;
   import §package§.LevelItemShape;
   import §package§.LevelItemSoundResource;
   
   public class LevelObjectManager
   {
       
      
      protected var §4g§:Vector.<LevelObject>;
      
      protected var §8!,§:int;
      
      public var §`s§:LevelMain;
      
      public var §6!>§:Vector.<§[!T§>;
      
      protected var §?g§:Sprite;
      
      protected var §[!8§:Sprite;
      
      private var §%R§:Sprite;
      
      private var §;8§:Sprite;
      
      private var §'K§:Sprite;
      
      protected var §=!g§:Vector.<Texture>;
      
      protected var §#!R§:Vector.<§@!>§>;
      
      protected var §1!;§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §"m§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §?J§:Boolean = false;
      
      protected var §+!6§:Number;
      
      protected var §;!J§:int;
      
      protected var §@!I§:Vector.<§2!3§>;
      
      protected var §#X§:int = 0;
      
      private var §<!E§:int = 0;
      
      private var §3!X§:int = 0;
      
      private var §4! §:int;
      
      private var §<[§:Boolean = true;
      
      private var §#6§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc5_:§@!>§ = null;
         var _loc6_:§,!0§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         this.§4g§ = new Vector.<LevelObject>();
         this.§6!>§ = new Vector.<§[!T§>();
         this.§=!g§ = new Vector.<Texture>();
         this.§+!6§ = this.§ ?§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§@!I§ = new Vector.<§2!3§>();
         super();
         this.§`s§ = param1;
         this.§8!,§ = 0;
         this.§[!8§ = param3;
         this.§[!8§.§<@§ = false;
         this.§#6§ = true;
         this.§<[§ = true;
         this.§?g§ = new Sprite();
         this.§%R§ = new Sprite();
         this.§;8§ = new Sprite();
         this.§'K§ = new Sprite();
         this.§[!8§.addChild(this.§?g§);
         this.§[!8§.addChild(this.§%R§);
         this.§[!8§.addChild(this.§;8§);
         this.§[!8§.addChild(this.§'K§);
         this.addObject(LevelThemeBackgroundManager.§#!W§(param2.theme).§9!3§,(this.§`s§.§!![§.§9!1§ + this.§`s§.§!![§.§6]§) / 2,this.§`s§.§!![§.§-!J§ + §[6§.§ case§);
         this.§4! § = this.§4g§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§"&§)
         {
            _loc6_ = param2.§98§(_loc4_);
            _loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            if(_loc7_)
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§3!A§();
         this.§^Y§(true);
         this.§#!R§ = new Vector.<§@!>§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§,!j§)
         {
            this.§#!R§.push(§@!>§.§9!F§(param2.§!n§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§#!R§)
         {
            _loc8_ = _loc5_.index1 + this.§4! §;
            _loc9_ = _loc5_.index2 + this.§4! §;
            if(_loc8_ < this.§4g§.length && _loc9_ < this.§4g§.length)
            {
               _loc10_ = this.§4g§[_loc8_];
               _loc11_ = this.§4g§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §7W§.§9c§)
               {
                  _loc5_.§@9§ = this.§`s§.mLevelEngine.mWorld.§%!A§(_loc5_.§#!C§(_loc10_,_loc11_));
               }
               else
               {
                  this.§@!I§.push(new §2!3§(_loc8_,_loc9_,_loc5_.§6G§));
               }
            }
         }
      }
      
      protected function get § ?§() : Class
      {
         return § ?§;
      }
      
      public function get §>a§() : Sprite
      {
         return this.§'K§;
      }
      
      public function get §%!%§() : Sprite
      {
         return this.§[!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§4g§.length > 0)
         {
            this.§>!&§(0);
         }
         this.§4g§ = null;
         this.§@!I§ = null;
         if(this.§[!8§)
         {
            this.§[!8§.dispose();
            this.§[!8§ = null;
            this.§?g§ = null;
            this.§'K§ = null;
            this.§%R§ = null;
            this.§;8§ = null;
         }
         while(this.§=!g§.length > 0)
         {
            _loc1_ = this.§=!g§.pop();
            this.§`s§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §^Y§(param1:Boolean) : void
      {
         this.§?g§.visible = param1;
      }
      
      private function §3!A§() : void
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
         var _loc13_:§0!b§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§4g§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§[!8§);
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
            this.§3!5§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§6!Z§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§`s§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§=!g§.push(_loc12_);
            _loc13_ = new §0!b§(_loc12_);
            _loc13_.x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§?g§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §6!Z§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
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
            _loc11_ = _loc7_.§0[§.shape;
            _loc12_ = _loc11_.§7P§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§@!d§ * param6,_loc12_[0].y / LevelMain.§@!d§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§@!d§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§@!d§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§ %§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3!5§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§`s§.background.§`![§();
         var _loc5_:§ H§ = this.§`s§.backgroundTextureManager.§]w§(_loc4_);
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
      
      public function §?!i§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc10_:LevelObject = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §8!@§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §5!>§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §[!-§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §9T§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §#I§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §;V§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §9V§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §6!f§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#X§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc10_:Sprite = new Sprite();
         _loc10_.scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§<[§;
            this.§4g§[this.§4g§.length] = _loc11_;
         }
         else
         {
            this.§4g§[this.§4g§.length] = _loc11_;
         }
         if(_loc11_ is §6!f§ && !_loc11_.§4!b§())
         {
            this.§%R§.addChild(_loc10_);
            ++this.§#X§;
         }
         else if(_loc11_.front || param9)
         {
            this.§'K§.addChild(_loc10_);
         }
         else
         {
            this.§;8§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§`s§.§8!`§(_loc11_);
         }
         if(param6)
         {
            this.§`s§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §9!F§(param1:int, param2:LevelObject, param3:LevelObject) : §@!>§
      {
         var _loc6_:§@!>§ = null;
         var _loc4_:int = this.§4g§.indexOf(param2) - this.§4! §;
         var _loc5_:int = this.§4g§.indexOf(param3) - this.§4! §;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            _loc6_ = new §@!>§(§7W§.§]!0§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
            _loc6_.§@9§ = this.§`s§.mLevelEngine.mWorld.§%!A§(_loc6_.§#!C§(param2,param3));
            this.§#!R§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §3!4§(param1:§@!>§) : void
      {
         if(!(param1.§@9§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:LevelObject = this.§98§(param1.index1 + this.§4! §);
         var _loc3_:LevelObject = this.§98§(param1.index2 + this.§4! §);
         this.§`s§.mLevelEngine.mWorld.§24§(param1.§@9§);
         param1.§@9§ = this.§`s§.mLevelEngine.mWorld.§%!A§(param1.§#!C§(_loc2_,_loc3_));
      }
      
      public function §?!'§(param1:LevelObject) : Vector.<§@!>§>
      {
         var _loc4_:§@!>§ = null;
         var _loc2_:Vector.<§@!>§> = new Vector.<§@!>§>();
         var _loc3_:int = this.§4g§.indexOf(param1) - this.§4! §;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§#!R§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §#!X§() : Vector.<§@!>§>
      {
         return this.§#!R§;
      }
      
      public function §<§(param1:LevelObject) : void
      {
         var _loc2_:int = this.§4g§.indexOf(param1) - this.§4! §;
         var _loc3_:int = this.§#!R§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§#!R§[_loc3_].index1 == _loc2_ || this.§#!R§[_loc3_].index2 == _loc2_)
            {
               this.§#!R§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §5l§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:int = this.§4g§.indexOf(param1) - this.§4! §;
         var _loc4_:int = this.§4g§.indexOf(param2) - this.§4! §;
         var _loc5_:int = this.§#!R§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§#!R§[_loc5_].index1 == _loc3_ && this.§#!R§[_loc5_].index2 == _loc4_ || this.§#!R§[_loc5_].index1 == _loc4_ && this.§#!R§[_loc5_].index2 == _loc3_)
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
         var _loc11_:§2Y§ = null;
         var _loc12_:§2Y§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§?!i§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§3!X§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = LevelItemManager.§-`§(param2);
            _loc10_ = new §4q§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            _loc12_ = LevelItemManager.§-`§(param2);
            if(_loc12_ == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = LevelItemManager.§-`§(param2);
            }
            if(_loc12_.§4o§ == §2Y§.§9!0§ || _loc12_.§4o§ == §2Y§.§?N§)
            {
               _loc10_ = new §,!E§(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new LevelObject(this,param1,this.§`s§.mLevelEngine.mWorld,this.§`s§,this.§8!,§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §]7§(param1:Number) : void
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.§4g§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4g§[_loc2_] as LevelObject;
            if(_loc3_)
            {
               if(_loc3_.§3W§ <= 0)
               {
                  this.§>!&§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4a§();
                  _loc3_.§`!Z§();
               }
            }
            _loc2_--;
         }
         this.§70§(param1);
      }
      
      protected function §70§(param1:Number) : void
      {
         var _loc3_:§@!>§ = null;
         var _loc4_:§2!3§ = null;
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§@!I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc4_ = this.§@!I§[_loc2_];
            if(_loc4_.§7<§)
            {
               _loc5_ = _loc4_.update(param1);
               if(_loc5_ != -1)
               {
                  _loc6_ = this.§,9§("block_" + _loc5_);
                  if(_loc6_)
                  {
                     this.§ -§(_loc6_,true,true,true);
                  }
                  this.§@!I§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§#!R§)
         {
            if(_loc3_.type == §7W§.§=N§ && _loc3_.§-!D§)
            {
               _loc7_ = (_loc3_.§@9§ as b2PrismaticJoint).§]f§();
               _loc8_ = (_loc3_.§@9§ as b2PrismaticJoint).§9!W§();
               if(_loc3_.§#§ && _loc3_.§>'§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§@9§ as b2PrismaticJoint).§#f§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§6!>§.push(§[!T§.createExplosion(param1,param2,param3));
         SoundEngine.§-!h§("TntExplosions","ChannelExplosions");
      }
      
      public function §[&§(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§4g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4g§[_loc3_];
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
      
      public function §-4§(param1:Number, param2:Number) : LevelObject
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§4g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4g§[_loc3_];
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
      
      public function §98§(param1:int) : LevelObject
      {
         return this.§4g§[param1];
      }
      
      public function §<&§(param1:Number, param2:Number) : void
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§4g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4g§[_loc3_] as LevelObject;
            _loc4_.§<&§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §8!>§(param1:LevelObject, param2:Number) : Boolean
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
         if(param1.§3W§ == param1.§>!"§)
         {
            if(this.§+!6§ < this.§ ?§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§+!6§ += param2 * this.§ ?§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§@!'§().§%#§(param2 * this.§+!6§);
            this.§;!J§ = 0;
         }
         else if(this.§;!J§ == 0)
         {
            this.§;!J§ = this.§`s§.§`!>§;
         }
         if(param1.§5_§() || this.§'!]§(param1) || this.§;!J§ > 0 && this.§`s§.§`!>§ > this.§;!J§ + this.§ ?§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§ ?§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§ ?§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§ ?§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  SoundEngine.§-!h§("Mighty_Eagle_Selected_1","ChannelBird");
                  SoundEngine.§-!h§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§ ?§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§@!'§().GetPosition().x - this.§ ?§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§@!'§().GetPosition().y - this.§ ?§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§ ?§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§'!]§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§ ?§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§;!J§ = 0;
                  _loc7_.§`!P§.§<,§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §=i§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc5_:LevelObject = null;
         if(this.§ ?§.MIGHTY_EAGLE_USE_SHADE && !this.§?J§ && this.mMightyEagleTimer > this.§ ?§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§?J§ = true;
            this.§`s§.§5!K§();
         }
         this.mMightyEagleTimer += param2;
         this.§`s§.particles.§?`§(§ !_§.§8,§,LevelParticleManager.§9!H§,§ !_§.§0o§,param1.§@!'§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§@!'§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§ !_§.§ do§(param1.§ I§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§ !#§(this.§ ?§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§"m§)
            {
               this.§"m§ = false;
               this.§`s§.§;[§();
               param1.§!d§(LevelItemSoundResource.§7!#§);
               this.mSardineCanAdded = false;
               param1.§`!P§.§&[§ = true;
               param1.§`!P§.§@!2§();
               for each(_loc5_ in this.§4g§)
               {
                  if(_loc5_ && _loc5_.§;!C§())
                  {
                     _loc5_.§@!'§().SetAwake(true);
                     _loc5_.§@!'§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§catch§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§4g§)
               {
                  if(_loc5_ && _loc5_.§;!C§())
                  {
                     _loc5_.applyDamage(_loc5_.§>!"§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§@!'§().GetPosition().y >= -5.5;
            this.§"m§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§02§(param2,new Point(this.§ ?§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§ ?§.MIGHTY_EAGLE_Y_CHANGE),this.§ ?§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function § !O§() : void
      {
         var _loc1_:§[!T§ = null;
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
         while(this.§6!>§.length > 0)
         {
            _loc1_ = this.§6!>§.shift();
            _loc2_ = _loc1_.pushRadius;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§4g§)
            {
               _loc8_ = _loc6_.§@!'§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§@!'§().GetPosition().y - _loc4_;
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
                     _loc6_.§@!'§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
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
            this.§`s§.particles.§?`§(this.§%!G§(_loc1_.type),LevelParticleManager.§9!H§,§ !_§.§=_§,_loc3_,_loc4_,600,"",§ !_§.§`!9§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§`s§.particles.§?`§(§ !_§.§8W§,LevelParticleManager.§9!H§,§ !_§.§0o§,_loc3_,_loc4_,_loc16_,"",§ !_§.§`!9§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §%!G§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return § !_§.§]!e§;
      }
      
      public function §31§(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         var _loc3_:int = this.§4g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§4g§[_loc3_];
            if(_loc2_.§do §())
            {
               if(this.§8!>§(_loc2_,param1))
               {
                  this.§>!&§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§4!b§())
            {
               this.§=i§(_loc2_,param1);
            }
            else if(this.§'!]§(_loc2_))
            {
               _loc2_.§!d§(LevelItemSoundResource.§=z§);
               this.§>!&§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§!d§(LevelItemSoundResource.§=z§);
               this.§>!&§(_loc3_,false,true,true);
            }
            else if(_loc2_.§]![§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§ !O§();
      }
      
      private function §catch§() : void
      {
         var _loc1_:§@!>§ = null;
         for each(_loc1_ in this.§#!R§)
         {
            this.§`s§.mLevelEngine.mWorld.§24§(_loc1_.§@9§);
         }
      }
      
      public function §0!=§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4g§.length)
         {
            _loc2_ = this.§4g§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §'!]§(param1:LevelObject) : Boolean
      {
         if(param1 && param1.§0[§.§#B§() != LevelItemMaterial.§>s§ && this.§`s§.§!![§.§>p§(param1.§@!'§().GetPosition().x,param1.§@!'§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §>!&§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@!>§ = null;
         var _loc7_:§2!3§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:LevelObject = this.§4g§[param1];
         if(_loc5_.§;!C§())
         {
            ++this.§<!E§;
         }
         else if(_loc5_.§]![§())
         {
            --this.§#X§;
         }
         if(_loc5_ == this.§`s§.activeObject)
         {
            this.§`s§.activeObject = null;
         }
         if(param2)
         {
            this.§`s§.addScore(_loc5_.§0[§.score,ScoreCollector.§ !K§,true,_loc5_.§@!'§().GetPosition().x,_loc5_.§@!'§().GetPosition().y - 3,§ !_§.§5U§(_loc5_.§ I§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§`s§.particles);
         }
         if(param4)
         {
            this.§-$§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§4Z§(_loc5_.sprite);
         this.§<§(_loc5_);
         for each(_loc6_ in this.§#!R§)
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
         for each(_loc7_ in this.§@!I§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§7<§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§4g§[param1] = null;
         this.§4g§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §4Z§(param1:Sprite) : void
      {
         if(this.§;8§.contains(param1))
         {
            this.§;8§.removeChild(param1);
            return;
         }
         if(this.§%R§.contains(param1))
         {
            this.§%R§.removeChild(param1);
            return;
         }
         if(this.§?g§.contains(param1))
         {
            this.§?g§.removeChild(param1);
            return;
         }
         if(this.§'K§.contains(param1))
         {
            this.§'K§.removeChild(param1);
            return;
         }
      }
      
      protected function §-$§(param1:LevelObject) : void
      {
         if(param1.§6!L§().toUpperCase() == "WHITE_EGG" || param1.§!R§())
         {
            if(param1.§ I§.toUpperCase() == §9T§.final)
            {
               this.addExplosions(§[!T§.§;a§,param1.§@!'§().GetPosition().x,param1.§@!'§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§[!T§.§9j§,param1.§@!'§().GetPosition().x,param1.§@!'§().GetPosition().y);
            }
         }
      }
      
      public function § -§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§>!&§(this.§4g§.indexOf(param1),param2,param3,param4);
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         this.§[!8§.x = -param1;
         this.§[!8§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4g§.length)
         {
            _loc3_ = this.§4g§[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.§;!C§() && _loc3_.§3W§ > 0)
            {
               if(!param1 || _loc3_.§`!P§.mTryToBlink <= 0 && _loc3_.§`!P§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,§(param1:Boolean = false) : int
      {
         var _loc4_:LevelObject = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§4g§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4g§[_loc3_] as LevelObject;
            if(_loc4_ && _loc4_.§;!C§() && _loc4_.§3W§ > 0)
            {
               if(!param1 || _loc4_.§`!P§.mTryToBlink <= 0 && _loc4_.§`!P§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §0m§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4g§)
         {
            if(_loc2_ && (_loc2_.§9s§() || _loc2_.§6F§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §6!8§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4g§)
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
         var _loc2_:int = this.§4g§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4g§[_loc2_];
            if(_loc3_ && _loc3_.§;!C§() && _loc3_.§3W§ > 0)
            {
               _loc3_.§`!P§.mTryToScream = LevelObjectRenderer.§9I§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §7o§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§4g§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4g§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§]![§() && _loc2_.§3W§ > 0)
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
         var _loc1_:int = this.§4g§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4g§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§3W§ > 0 && _loc2_.§4o§ != §2Y§.§?Y§)
            {
               if(_loc2_.§7!F§() && !_loc2_.§5_§())
               {
                  return false;
               }
               if(_loc2_.§]![§() && _loc2_.§3W§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §9!Z§(param1:Boolean = false) : LevelObject
      {
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§4g§.length;
         var _loc3_:int = 1 + Math.random() * this.§,§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = this.§4g§[_loc5_];
               if(_loc6_ && _loc6_.§;!C§() && _loc6_.§3W§ > 0)
               {
                  if(!param1 || _loc6_.§`!P§.mTryToBlink <= 0 && _loc6_.§`!P§.mTryToScream <= 0)
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
      
      public function §-!^§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§4g§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§4g§[_loc2_] as LevelObject).§0[§.score;
            if((this.§4g§[_loc2_] as LevelObject).§7!F§())
            {
               _loc1_ += LevelMain.§2!S§.getValue() * int((this.§4g§[_loc2_] as LevelObject).§>!"§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§`s§.slingshot.§-!^§());
      }
      
      public function §-0§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         if(param1.§]![§() && param2.§]![§())
         {
            return true;
         }
         if(!param1.§>!%§() && !param2.§>!%§())
         {
            return true;
         }
         return false;
      }
      
      public function §get §() : void
      {
         this.mSardineCanAdded = true;
         this.§#X§ = 0;
      }
      
      public function §"!#§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§4!b§() || param2.§;!C§())
            {
               param2.applyDamage(param2.§>!"§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§4!b§() || param1.§;!C§())
            {
               param1.applyDamage(param1.§>!"§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§ ?§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§do §() || param2.§do §())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§-0§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§8v§(param2.§6!L§());
         var _loc5_:Number = param1.§&j§(param2.§6!L§());
         var _loc6_:Number = param2.§8v§(param1.§6!L§());
         var _loc7_:Number = param2.§&j§(param1.§6!L§());
         var _loc8_:Number = param1.§@!'§().GetMass() * param1.§@!'§().GetLinearVelocity().x - param2.§@!'§().GetMass() * param2.§@!'§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§@!'§().GetMass() * param1.§@!'§().GetLinearVelocity().y - param2.§@!'§().GetMass() * param2.§@!'§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§3W§);
         var _loc14_:Number = Math.max(0,param2.§3W§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§]![§(),_loc14_ == param2.§>!"§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§]![§(),_loc13_ == param1.§>!"§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            _loc18_ = (_loc12_ - _loc13_) / _loc12_;
            _loc18_ *= _loc7_;
            if(_loc18_ > 1)
            {
               _loc18_ = 1;
            }
            param2.§&!d§(new b2Vec2(param2.§@!'§().GetLinearVelocity().x * _loc18_,param2.§@!'§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            _loc19_ = (_loc11_ - _loc14_) / _loc11_;
            _loc19_ *= _loc5_;
            if(_loc19_ > 1)
            {
               _loc19_ = 1;
            }
            param1.§&!d§(new b2Vec2(param1.§@!'§().GetLinearVelocity().x * _loc19_,param1.§@!'§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §3!h§() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§4g§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4g§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§;!C§())
            {
               this.§>!&§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §9l§() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§4g§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4g§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§!R§())
            {
               this.§>!&§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §7N§() : int
      {
         return this.§4g§.length;
      }
      
      public function §-I§(param1:LevelModel) : void
      {
         var _loc4_:LevelObject = null;
         var _loc5_:§,!0§ = null;
         var _loc6_:§7W§ = null;
         var _loc7_:§@!>§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4g§.length)
         {
            _loc4_ = this.§4g§[_loc2_];
            if(_loc4_.§3!S§)
            {
               if(!_loc4_.isGround())
               {
                  _loc5_ = new §,!0§();
                  _loc5_.angle = _loc4_.§ %§();
                  _loc5_.id = _loc4_.§ I§;
                  _loc5_.x = _loc4_.§@!'§().GetPosition().x;
                  _loc5_.y = _loc4_.§@!'§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#!R§.length)
         {
            _loc7_ = this.§#!R§[_loc3_];
            _loc6_ = new §7W§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§"x§,_loc7_.§#§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§>'§,_loc7_.motorSpeed,_loc7_.§-!D§,_loc7_.maxTorque);
            param1.§?7§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §4I§() : void
      {
         var _loc1_:int = 0;
         while(this.§4g§.length > _loc1_)
         {
            if(this.§4g§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§ -§(this.§4g§[_loc1_]);
            }
         }
      }
      
      public function §<2§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§4g§.length)
         {
            if(this.§4g§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§4g§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§<[§ = param1;
         this.§^Y§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4g§.length)
         {
            if(this.§4g§[_loc2_].isTexture())
            {
               this.§4g§[_loc2_].sprite.visible = !this.§<[§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§#6§ = param1;
      }
      
      public function §<!?§() : Boolean
      {
         return this.§#6§;
      }
      
      public function §!!S§() : int
      {
         return this.§3!X§;
      }
      
      public function §"Q§() : int
      {
         return this.§<!E§;
      }
      
      public function §,9§(param1:String) : LevelObject
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4g§.length)
         {
            _loc3_ = this.§4g§[_loc2_] as LevelObject;
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
