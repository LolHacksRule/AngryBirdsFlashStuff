package §3p§
{
   import §"L§.LevelModel;
   import §%t§.b2PrismaticJoint;
   import §%t§.b2WeldJoint;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §&V§.§+H§;
   import §&V§.§3V§;
   import §&V§.§>!G§;
   import §&V§.§`!1§;
   import §,!_§.§;K§;
   import §2!H§.§&!U§;
   import §2!H§.§1H§;
   import §2!H§.LevelMain;
   import §2!H§.ScoreCollector;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §;T§.§5s§;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemMaterial;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   import §=?§.SoundEngine;
   import §[m§.LevelThemeBackgroundManager;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelObjectManager
   {
       
      
      protected var §8c§:Vector.<LevelObject>;
      
      protected var §-!,§:int;
      
      public var §"!>§:LevelMain;
      
      public var §?h§:Vector.<§#!f§>;
      
      protected var §+E§:Sprite;
      
      protected var §!!@§:Sprite;
      
      private var §^x§:Sprite;
      
      private var §#J§:Sprite;
      
      private var §3!j§:Sprite;
      
      protected var §]!S§:Vector.<Texture>;
      
      protected var §=![§:Vector.<§>!G§>;
      
      protected var §6!@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §?B§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §0m§:Boolean = false;
      
      protected var §?!C§:Number;
      
      protected var §=1§:int;
      
      protected var §1N§:Vector.<§`!1§>;
      
      protected var §6-§:int = 0;
      
      private var §+R§:int = 0;
      
      private var §<D§:int = 0;
      
      private var §7Y§:int;
      
      private var §-R§:Boolean = true;
      
      private var §"R§:Boolean = true;
      
      public function LevelObjectManager(param1:LevelMain, param2:LevelModel, param3:Sprite)
      {
         var _loc5_:§>!G§ = null;
         var _loc6_:§+H§ = null;
         var _loc7_:LevelObject = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:LevelObject = null;
         var _loc11_:LevelObject = null;
         this.§8c§ = new Vector.<LevelObject>();
         this.§?h§ = new Vector.<§#!f§>();
         this.§]!S§ = new Vector.<Texture>();
         this.§?!C§ = this.§&!U§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§1N§ = new Vector.<§`!1§>();
         super();
         this.§"!>§ = param1;
         this.§-!,§ = 0;
         this.§!!@§ = param3;
         this.§!!@§.§<!4§ = false;
         this.§"R§ = true;
         this.§-R§ = true;
         this.§+E§ = new Sprite();
         this.§^x§ = new Sprite();
         this.§#J§ = new Sprite();
         this.§3!j§ = new Sprite();
         this.§!!@§.addChild(this.§+E§);
         this.§!!@§.addChild(this.§^x§);
         this.§!!@§.addChild(this.§#J§);
         this.§!!@§.addChild(this.§3!j§);
         this.addObject(LevelThemeBackgroundManager.§]!0§(param2.theme).§8@§,(this.§"!>§.§'g§.§4!>§ + this.§"!>§.§'g§.§5;§) / 2,this.§"!>§.§'g§.§ !c§ + §1H§.§;!`§);
         this.§7Y§ = this.§8c§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§2L§)
         {
            _loc6_ = param2.§`T§(_loc4_);
            _loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            if(_loc7_)
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§75§();
         this.§[B§(true);
         this.§=![§ = new Vector.<§>!G§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§=!#§)
         {
            this.§=![§.push(§>!G§.§8!j§(param2.§1!N§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§=![§)
         {
            _loc8_ = _loc5_.index1 + this.§7Y§;
            _loc9_ = _loc5_.index2 + this.§7Y§;
            if(_loc8_ < this.§8c§.length && _loc9_ < this.§8c§.length)
            {
               _loc10_ = this.§8c§[_loc8_];
               _loc11_ = this.§8c§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §3V§.§@+§)
               {
                  _loc5_.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(_loc5_.§0§(_loc10_,_loc11_));
               }
               else
               {
                  this.§1N§.push(new §`!1§(_loc8_,_loc9_,_loc5_.§]!f§));
               }
            }
         }
      }
      
      protected function get §&!U§() : Class
      {
         return §&!U§;
      }
      
      public function get §5!K§() : Sprite
      {
         return this.§3!j§;
      }
      
      public function get §3$§() : Sprite
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§8c§.length > 0)
         {
            this.§&U§(0);
         }
         this.§8c§ = null;
         this.§1N§ = null;
         if(this.§!!@§)
         {
            this.§!!@§.dispose();
            this.§!!@§ = null;
            this.§+E§ = null;
            this.§3!j§ = null;
            this.§^x§ = null;
            this.§#J§ = null;
         }
         while(this.§]!S§.length > 0)
         {
            _loc1_ = this.§]!S§.pop();
            this.§"!>§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §[B§(param1:Boolean) : void
      {
         this.§+E§.visible = param1;
      }
      
      private function §75§() : void
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
         var _loc13_:§-m§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<LevelObject> = new Vector.<LevelObject>();
         for each(_loc3_ in this.§8c§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§!!@§);
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
            this.§8!H§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§47§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§"!>§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§]!S§.push(_loc12_);
            _loc13_ = new §-m§(_loc12_);
            _loc13_.x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§+E§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §47§(param1:Vector.<LevelObject>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
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
            _loc11_ = _loc7_.§8!&§.shape;
            _loc12_ = _loc11_.§%!S§();
            _loc13_ = new Rectangle(_loc12_[0].x / LevelMain.§8N§ * param6,_loc12_[0].y / LevelMain.§8N§ * param6,(_loc12_[1].x - _loc12_[0].x) / LevelMain.§8N§ * param6,(_loc12_[1].y - _loc12_[0].y) / LevelMain.§8N§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§=Y§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §8!H§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§"!>§.background.§ #§();
         var _loc5_:§;K§ = this.§"!>§.backgroundTextureManager.§]&§(_loc4_);
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
      
      public function §@!&§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : LevelObject
      {
         var _loc10_:LevelObject = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §3l§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §9!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §>!5§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §=&§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §,O§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §]!J§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §6!Q§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §4!G§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§6-§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : LevelObject
      {
         var _loc10_:Sprite = new Sprite();
         _loc10_.scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:LevelObject = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§-R§;
            this.§8c§[this.§8c§.length] = _loc11_;
         }
         else
         {
            this.§8c§[this.§8c§.length] = _loc11_;
         }
         if(_loc11_ is §4!G§ && !_loc11_.§?O§())
         {
            this.§^x§.addChild(_loc10_);
            ++this.§6-§;
         }
         else if(_loc11_.front || param9)
         {
            this.§3!j§.addChild(_loc10_);
         }
         else
         {
            this.§#J§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§"!>§.§6Q§(_loc11_);
         }
         if(param6)
         {
            this.§"!>§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §8!j§(param1:int, param2:LevelObject, param3:LevelObject) : §>!G§
      {
         var _loc6_:§>!G§ = null;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:int = this.§8c§.indexOf(param3) - this.§7Y§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            _loc6_ = new §>!G§(§3V§.§9`§,_loc4_,_loc5_,new Point(0,0),new Point(0,0));
            _loc6_.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(_loc6_.§0§(param2,param3));
            this.§=![§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §]M§(param1:§>!G§) : void
      {
         if(!(param1.§7#§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:LevelObject = this.§`T§(param1.index1 + this.§7Y§);
         var _loc3_:LevelObject = this.§`T§(param1.index2 + this.§7Y§);
         this.§"!>§.mLevelEngine.mWorld.§-!A§(param1.§7#§);
         param1.§7#§ = this.§"!>§.mLevelEngine.mWorld.§"!"§(param1.§0§(_loc2_,_loc3_));
      }
      
      public function §9l§(param1:LevelObject) : Vector.<§>!G§>
      {
         var _loc4_:§>!G§ = null;
         var _loc2_:Vector.<§>!G§> = new Vector.<§>!G§>();
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§=![§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §%V§() : Vector.<§>!G§>
      {
         return this.§=![§;
      }
      
      public function §2N§(param1:LevelObject) : void
      {
         var _loc2_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc3_:int = this.§=![§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§=![§[_loc3_].index1 == _loc2_ || this.§=![§[_loc3_].index2 == _loc2_)
            {
               this.§=![§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §^Y§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc3_:int = this.§8c§.indexOf(param1) - this.§7Y§;
         var _loc4_:int = this.§8c§.indexOf(param2) - this.§7Y§;
         var _loc5_:int = this.§=![§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§=![§[_loc5_].index1 == _loc3_ && this.§=![§[_loc5_].index2 == _loc4_ || this.§=![§[_loc5_].index1 == _loc4_ && this.§=![§[_loc5_].index2 == _loc3_)
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
         var _loc11_:§5s§ = null;
         var _loc12_:§5s§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§@!&§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§<D§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = LevelItemManager.§&!i§(param2);
            _loc10_ = new §]x§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            _loc12_ = LevelItemManager.§&!i§(param2);
            if(_loc12_ == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = LevelItemManager.§&!i§(param2);
            }
            if(_loc12_.§17§ == §5s§.§"!W§ || _loc12_.§17§ == §5s§.§'!W§)
            {
               _loc10_ = new §0w§(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new LevelObject(this,param1,this.§"!>§.mLevelEngine.mWorld,this.§"!>§,this.§-!,§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §2F§(param1:Number) : void
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = this.§8c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc3_)
            {
               if(_loc3_.§0o§ <= 0)
               {
                  this.§&U§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§!!E§();
                  _loc3_.§[!`§();
               }
            }
            _loc2_--;
         }
         this.§8!A§(param1);
      }
      
      protected function §8!A§(param1:Number) : void
      {
         var _loc3_:§>!G§ = null;
         var _loc4_:§`!1§ = null;
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§1N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc4_ = this.§1N§[_loc2_];
            if(_loc4_.§`r§)
            {
               _loc5_ = _loc4_.update(param1);
               if(_loc5_ != -1)
               {
                  _loc6_ = this.§2z§("block_" + _loc5_);
                  if(_loc6_)
                  {
                     this.§"!A§(_loc6_,true,true,true);
                  }
                  this.§1N§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§=![§)
         {
            if(_loc3_.type == §3V§.§]C§ && _loc3_.§=!h§)
            {
               _loc7_ = (_loc3_.§7#§ as b2PrismaticJoint).§02§();
               _loc8_ = (_loc3_.§7#§ as b2PrismaticJoint).§?!&§();
               if(_loc3_.§in § && _loc3_.§3-§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§7#§ as b2PrismaticJoint).§+!e§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§?h§.push(§#!f§.createExplosion(param1,param2,param3));
         SoundEngine.§9!X§("TntExplosions","ChannelExplosions");
      }
      
      public function § !f§(param1:Number, param2:Number) : int
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§8c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_];
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
      
      public function §;C§(param1:Number, param2:Number) : LevelObject
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§8c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_];
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
      
      public function §`T§(param1:int) : LevelObject
      {
         return this.§8c§[param1];
      }
      
      public function §8?§(param1:Number, param2:Number) : void
      {
         var _loc4_:LevelObject = null;
         var _loc3_:int = this.§8c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_] as LevelObject;
            _loc4_.§8?§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&!!§(param1:LevelObject, param2:Number) : Boolean
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
         if(param1.§0o§ == param1.§]!3§)
         {
            if(this.§?!C§ < this.§&!U§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§?!C§ += param2 * this.§&!U§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§9f§().§<O§(param2 * this.§?!C§);
            this.§=1§ = 0;
         }
         else if(this.§=1§ == 0)
         {
            this.§=1§ = this.§"!>§.§,6§;
         }
         if(param1.§&E§() || this.§5!k§(param1) || this.§=1§ > 0 && this.§"!>§.§,6§ > this.§=1§ + this.§&!U§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§&!U§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  SoundEngine.§9!X§("Mighty_Eagle_Selected_1","ChannelBird");
                  SoundEngine.§9!X§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§9f§().GetPosition().x - this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§9f§().GetPosition().y - this.§&!U§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&!U§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§5!k§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&!U§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§=1§ = 0;
                  _loc7_.§7!O§.§+!=§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §,!T§(param1:LevelObject, param2:Number) : Boolean
      {
         var _loc5_:LevelObject = null;
         if(this.§&!U§.MIGHTY_EAGLE_USE_SHADE && !this.§0m§ && this.mMightyEagleTimer > this.§&!U§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§0m§ = true;
            this.§"!>§.§%2§();
         }
         this.mMightyEagleTimer += param2;
         this.§"!>§.particles.§@4§(§0'§.§@R§,LevelParticleManager.§[K§,§0'§.§&A§,param1.§9f§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§9f§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§0'§.§%!`§(param1.§#>§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§1!X§(this.§&!U§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§?B§)
            {
               this.§?B§ = false;
               this.§"!>§.§-!i§();
               param1.§@r§(LevelItemSoundResource.§@m§);
               this.mSardineCanAdded = false;
               param1.§7!O§.§1L§ = true;
               param1.§7!O§.§<3§();
               for each(_loc5_ in this.§8c§)
               {
                  if(_loc5_ && _loc5_.§"!7§())
                  {
                     _loc5_.§9f§().SetAwake(true);
                     _loc5_.§9f§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§`L§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§8c§)
               {
                  if(_loc5_ && _loc5_.§"!7§())
                  {
                     _loc5_.applyDamage(_loc5_.§]!3§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§9f§().GetPosition().y >= -5.5;
            this.§?B§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§@!C§(param2,new Point(this.§&!U§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&!U§.MIGHTY_EAGLE_Y_CHANGE),this.§&!U§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §2k§() : void
      {
         var _loc1_:§#!f§ = null;
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
         while(this.§?h§.length > 0)
         {
            _loc1_ = this.§?h§.shift();
            _loc2_ = _loc1_.pushRadius;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§8c§)
            {
               _loc8_ = _loc6_.§9f§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§9f§().GetPosition().y - _loc4_;
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
                     _loc6_.§9f§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
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
            this.§"!>§.particles.§@4§(this.§%z§(_loc1_.type),LevelParticleManager.§[K§,§0'§.§7R§,_loc3_,_loc4_,600,"",§0'§.§7!!§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§"!>§.particles.§@4§(§0'§.§%J§,LevelParticleManager.§[K§,§0'§.§&A§,_loc3_,_loc4_,_loc16_,"",§0'§.§7!!§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §%z§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §0'§.§-s§;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         var _loc3_:int = this.§8c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§8c§[_loc3_];
            if(_loc2_.§3g§())
            {
               if(this.§&!!§(_loc2_,param1))
               {
                  this.§&U§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§?O§())
            {
               this.§,!T§(_loc2_,param1);
            }
            else if(this.§5!k§(_loc2_))
            {
               _loc2_.§@r§(LevelItemSoundResource.§5!,§);
               this.§&U§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@r§(LevelItemSoundResource.§5!,§);
               this.§&U§(_loc3_,false,true,true);
            }
            else if(_loc2_.§'W§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§2k§();
      }
      
      private function §`L§() : void
      {
         var _loc1_:§>!G§ = null;
         for each(_loc1_ in this.§=![§)
         {
            this.§"!>§.mLevelEngine.mWorld.§-!A§(_loc1_.§7#§);
         }
      }
      
      public function §,!c§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8c§.length)
         {
            _loc2_ = this.§8c§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §5!k§(param1:LevelObject) : Boolean
      {
         if(param1 && param1.§8!&§.§>t§() != LevelItemMaterial.§!!&§ && this.§"!>§.§'g§.§4!1§(param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §&U§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§>!G§ = null;
         var _loc7_:§`!1§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:LevelObject = this.§8c§[param1];
         if(_loc5_.§"!7§())
         {
            ++this.§+R§;
         }
         else if(_loc5_.§'W§())
         {
            --this.§6-§;
         }
         if(_loc5_ == this.§"!>§.activeObject)
         {
            this.§"!>§.activeObject = null;
         }
         if(param2)
         {
            this.§"!>§.addScore(_loc5_.§8!&§.score,ScoreCollector.§&o§,true,_loc5_.§9f§().GetPosition().x,_loc5_.§9f§().GetPosition().y - 3,§0'§.§'>§(_loc5_.§#>§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§"!>§.particles);
         }
         if(param4)
         {
            this.§^1§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§#!$§(_loc5_.sprite);
         this.§2N§(_loc5_);
         for each(_loc6_ in this.§=![§)
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
         for each(_loc7_ in this.§1N§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§`r§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§8c§[param1] = null;
         this.§8c§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:LevelObject, param2:LevelParticleManager) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §#!$§(param1:Sprite) : void
      {
         if(this.§#J§.contains(param1))
         {
            this.§#J§.removeChild(param1);
            return;
         }
         if(this.§^x§.contains(param1))
         {
            this.§^x§.removeChild(param1);
            return;
         }
         if(this.§+E§.contains(param1))
         {
            this.§+E§.removeChild(param1);
            return;
         }
         if(this.§3!j§.contains(param1))
         {
            this.§3!j§.removeChild(param1);
            return;
         }
      }
      
      protected function §^1§(param1:LevelObject) : void
      {
         if(param1.§8k§().toUpperCase() == "WHITE_EGG" || param1.§#!B§())
         {
            if(param1.§#>§.toUpperCase() == §=&§.§'!O§)
            {
               this.addExplosions(§#!f§.§!q§,param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§#!f§.§#y§,param1.§9f§().GetPosition().x,param1.§9f§().GetPosition().y);
            }
         }
      }
      
      public function §"!A§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§&U§(this.§8c§.indexOf(param1),param2,param3,param4);
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         this.§!!@§.x = -param1;
         this.§!!@§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8c§.length)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
            if(_loc3_ && _loc3_.§"!7§() && _loc3_.§0o§ > 0)
            {
               if(!param1 || _loc3_.§7!O§.mTryToBlink <= 0 && _loc3_.§7!O§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §>z§(param1:Boolean = false) : int
      {
         var _loc4_:LevelObject = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§8c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§8c§[_loc3_] as LevelObject;
            if(_loc4_ && _loc4_.§"!7§() && _loc4_.§0o§ > 0)
            {
               if(!param1 || _loc4_.§7!O§.mTryToBlink <= 0 && _loc4_.§7!O§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §]V§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8c§)
         {
            if(_loc2_ && (_loc2_.§9!&§() || _loc2_.§8r§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §9L§() : int
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8c§)
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
         var _loc2_:int = this.§8c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8c§[_loc2_];
            if(_loc3_ && _loc3_.§"!7§() && _loc3_.§0o§ > 0)
            {
               _loc3_.§7!O§.mTryToScream = LevelObjectRenderer.§9!g§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@!W§() : Boolean
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§8c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§'W§() && _loc2_.§0o§ > 0)
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
         var _loc1_:int = this.§8c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc2_ && _loc2_.§0o§ > 0 && _loc2_.§17§ != §5s§.§#z§)
            {
               if(_loc2_.§`O§() && !_loc2_.§&E§())
               {
                  return false;
               }
               if(_loc2_.§'W§() && _loc2_.§0o§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §4J§(param1:Boolean = false) : LevelObject
      {
         var _loc5_:int = 0;
         var _loc6_:LevelObject = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§8c§.length;
         var _loc3_:int = 1 + Math.random() * this.§>z§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               _loc6_ = this.§8c§[_loc5_];
               if(_loc6_ && _loc6_.§"!7§() && _loc6_.§0o§ > 0)
               {
                  if(!param1 || _loc6_.§7!O§.mTryToBlink <= 0 && _loc6_.§7!O§.mTryToScream <= 0)
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
      
      public function §<o§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§8c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§8c§[_loc2_] as LevelObject).§8!&§.score;
            if((this.§8c§[_loc2_] as LevelObject).§`O§())
            {
               _loc1_ += LevelMain.§!!R§.getValue() * int((this.§8c§[_loc2_] as LevelObject).§]!3§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§"!>§.slingshot.§<o§());
      }
      
      public function §76§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         if(param1.§'W§() && param2.§'W§())
         {
            return true;
         }
         if(!param1.§]@§() && !param2.§]@§())
         {
            return true;
         }
         return false;
      }
      
      public function §#!C§() : void
      {
         this.mSardineCanAdded = true;
         this.§6-§ = 0;
      }
      
      public function §%v§(param1:LevelObject, param2:LevelObject) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§?O§() || param2.§"!7§())
            {
               param2.applyDamage(param2.§]!3§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§?O§() || param1.§"!7§())
            {
               param1.applyDamage(param1.§]!3§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§&!U§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§3g§() || param2.§3g§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§76§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§;!'§(param2.§8k§());
         var _loc5_:Number = param1.§3v§(param2.§8k§());
         var _loc6_:Number = param2.§;!'§(param1.§8k§());
         var _loc7_:Number = param2.§3v§(param1.§8k§());
         var _loc8_:Number = param1.§9f§().GetMass() * param1.§9f§().GetLinearVelocity().x - param2.§9f§().GetMass() * param2.§9f§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§9f§().GetMass() * param1.§9f§().GetLinearVelocity().y - param2.§9f§().GetMass() * param2.§9f§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§0o§);
         var _loc14_:Number = Math.max(0,param2.§0o§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§'W§(),_loc14_ == param2.§]!3§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§'W§(),_loc13_ == param1.§]!3§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            _loc18_ = (_loc12_ - _loc13_) / _loc12_;
            _loc18_ *= _loc7_;
            if(_loc18_ > 1)
            {
               _loc18_ = 1;
            }
            param2.§2!&§(new b2Vec2(param2.§9f§().GetLinearVelocity().x * _loc18_,param2.§9f§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            _loc19_ = (_loc11_ - _loc14_) / _loc11_;
            _loc19_ *= _loc5_;
            if(_loc19_ > 1)
            {
               _loc19_ = 1;
            }
            param1.§2!&§(new b2Vec2(param1.§9f§().GetLinearVelocity().x * _loc19_,param1.§9f§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §'!7§() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§8c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§"!7§())
            {
               this.§&U§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §8h§() : void
      {
         var _loc2_:LevelObject = null;
         var _loc1_:int = this.§8c§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8c§[_loc1_] as LevelObject;
            if(_loc2_ != null && _loc2_.§#!B§())
            {
               this.§&U§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[!=§() : int
      {
         return this.§8c§.length;
      }
      
      public function §5!H§(param1:LevelModel) : void
      {
         var _loc4_:LevelObject = null;
         var _loc5_:§+H§ = null;
         var _loc6_:§3V§ = null;
         var _loc7_:§>!G§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8c§.length)
         {
            _loc4_ = this.§8c§[_loc2_];
            if(_loc4_.§#!S§)
            {
               if(!_loc4_.isGround())
               {
                  _loc5_ = new §+H§();
                  _loc5_.angle = _loc4_.§=Y§();
                  _loc5_.id = _loc4_.§#>§;
                  _loc5_.x = _loc4_.§9f§().GetPosition().x;
                  _loc5_.y = _loc4_.§9f§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=![§.length)
         {
            _loc7_ = this.§=![§[_loc3_];
            _loc6_ = new §3V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!H§,_loc7_.§in §,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§3-§,_loc7_.motorSpeed,_loc7_.§=!h§,_loc7_.maxTorque);
            param1.§&8§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §5!&§() : void
      {
         var _loc1_:int = 0;
         while(this.§8c§.length > _loc1_)
         {
            if(this.§8c§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§"!A§(this.§8c§[_loc1_]);
            }
         }
      }
      
      public function §!!K§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§8c§.length)
         {
            if(this.§8c§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§8c§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-R§ = param1;
         this.§[B§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8c§.length)
         {
            if(this.§8c§[_loc2_].isTexture())
            {
               this.§8c§[_loc2_].sprite.visible = !this.§-R§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§"R§ = param1;
      }
      
      public function §+!]§() : Boolean
      {
         return this.§"R§;
      }
      
      public function §]D§() : int
      {
         return this.§<D§;
      }
      
      public function §!!J§() : int
      {
         return this.§+R§;
      }
      
      public function §2z§(param1:String) : LevelObject
      {
         var _loc3_:LevelObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8c§.length)
         {
            _loc3_ = this.§8c§[_loc2_] as LevelObject;
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
