package §^!$§
{
   import §%!^§.§"!7§;
   import §%!a§.§ !§;
   import §%!a§.§ !R§;
   import §%!a§.§0m§;
   import §%!a§.§?!9§;
   import §%!a§.§^!=§;
   import §%i§.§%!_§;
   import §%i§.§-f§;
   import §%i§.§0>§;
   import §%i§.§>!;§;
   import §&!9§.§,,§;
   import §&!9§.Sprite;
   import §&F§.§-w§;
   import §&F§.§4]§;
   import §&F§.§6K§;
   import §&F§.§>!2§;
   import §+x§.§-6§;
   import §1!9§.§!9§;
   import §4!J§.b2PrismaticJoint;
   import §4!J§.b2WeldJoint;
   import §48§.§6!Z§;
   import §6!4§.Texture;
   import §6V§.b2Vec2;
   import §?=§.§&j§;
   import §?=§.§8S§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!D§
   {
       
      
      protected var §[1§:Vector.<§?![§>;
      
      protected var §'!3§:int;
      
      public var mLevelMain:§>!2§;
      
      public var §5!+§:Vector.<§;Y§>;
      
      protected var §!3§:Sprite;
      
      protected var §5!a§:Sprite;
      
      private var §"c§:Sprite;
      
      private var §[I§:Sprite;
      
      private var §'`§:Sprite;
      
      protected var §3t§:Vector.<Texture>;
      
      protected var §4!?§:Vector.<§>!;§>;
      
      protected var §#!3§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §'z§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`T§:Boolean = false;
      
      protected var §0j§:Number;
      
      protected var §2y§:int;
      
      protected var §=O§:Vector.<§0>§>;
      
      protected var §<a§:int = 0;
      
      private var §@n§:int = 0;
      
      private var §4N§:int = 0;
      
      private var §"_§:int;
      
      private var §?!@§:Boolean = true;
      
      private var §1!c§:Boolean = true;
      
      public function §;!D§(param1:§>!2§, param2:§"!7§, param3:Sprite)
      {
         var _loc5_:§>!;§ = null;
         var _loc6_:§%!_§ = null;
         var _loc7_:§?![§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§?![§ = null;
         var _loc11_:§?![§ = null;
         this.§[1§ = new Vector.<§?![§>();
         this.§5!+§ = new Vector.<§;Y§>();
         this.§3t§ = new Vector.<Texture>();
         this.§0j§ = this.§-w§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§=O§ = new Vector.<§0>§>();
         super();
         this.mLevelMain = param1;
         this.§'!3§ = 0;
         this.§5!a§ = param3;
         this.§5!a§.§2!2§ = false;
         this.§1!c§ = true;
         this.§?!@§ = true;
         this.§!3§ = new Sprite();
         this.§"c§ = new Sprite();
         this.§[I§ = new Sprite();
         this.§'`§ = new Sprite();
         this.§5!a§.addChild(this.§!3§);
         this.§5!a§.addChild(this.§"c§);
         this.§5!a§.addChild(this.§[I§);
         this.§5!a§.addChild(this.§'`§);
         this.§^!3§(§!9§.§-Q§(param2.theme).§!=§,(this.mLevelMain.§&!D§.§`!c§ + this.mLevelMain.§&!D§.§5b§) / 2,this.mLevelMain.§&!D§.§]![§ + §4]§.§"!A§);
         this.§"_§ = this.§[1§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§2![§)
         {
            _loc6_ = param2.§#z§(_loc4_);
            if(_loc7_ = this.§^!3§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§8'§();
         this.§3r§(true);
         this.§4!?§ = new Vector.<§>!;§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§"!J§)
         {
            this.§4!?§.push(§>!;§.§ C§(param2.§[q§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§4!?§)
         {
            _loc8_ = _loc5_.index1 + this.§"_§;
            _loc9_ = _loc5_.index2 + this.§"_§;
            if(_loc8_ < this.§[1§.length && _loc9_ < this.§[1§.length)
            {
               _loc10_ = this.§[1§[_loc8_];
               _loc11_ = this.§[1§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-f§.§+J§)
               {
                  _loc5_.§>1§ = this.mLevelMain.mLevelEngine.mWorld.§1'§(_loc5_.§2!0§(_loc10_,_loc11_));
               }
               else
               {
                  this.§=O§.push(new §0>§(_loc8_,_loc9_,_loc5_.§2A§));
               }
            }
         }
      }
      
      protected function get §-w§() : Class
      {
         return §-w§;
      }
      
      public function get §<!b§() : Sprite
      {
         return this.§'`§;
      }
      
      public function get §8!e§() : Sprite
      {
         return this.§5!a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§[1§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§[1§ = null;
         this.§=O§ = null;
         if(this.§5!a§)
         {
            this.§5!a§.dispose();
            this.§5!a§ = null;
            this.§!3§ = null;
            this.§'`§ = null;
            this.§"c§ = null;
            this.§[I§ = null;
         }
         while(this.§3t§.length > 0)
         {
            _loc1_ = this.§3t§.pop();
            this.mLevelMain.textureManager.§+-§(_loc1_);
         }
      }
      
      private function §3r§(param1:Boolean) : void
      {
         this.§!3§.visible = param1;
      }
      
      private function §8'§() : void
      {
         var _loc3_:§?![§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§,,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§?![§> = new Vector.<§?![§>();
         for each(_loc3_ in this.§[1§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§5!a§);
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
            this.§5$§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§?Q§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.§@p§(_loc10_);
            this.§3t§.push(_loc12_);
            (_loc13_ = new §,,§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§!3§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §?Q§(param1:Vector.<§?![§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§?![§ = null;
         var _loc11_:§0m§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§'7§.shape).§'T§();
            _loc13_ = new Rectangle(_loc12_[0].x / §>!2§.§9d§ * param6,_loc12_[0].y / §>!2§.§9d§ * param6,(_loc12_[1].x - _loc12_[0].x) / §>!2§.§9d§ * param6,(_loc12_[1].y - _loc12_[0].y) / §>!2§.§9d§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§<!e§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §5$§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§6!N§();
         var _loc5_:§6!Z§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§-o§(_loc4_))
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
      
      public function §2!K§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?![§
      {
         var _loc10_:§?![§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §>!-§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §#S§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §4!G§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §@5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §#0§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §break§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §<[§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §6y§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§<a§ > 0;
      }
      
      public function §^!3§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §?![§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§?![§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§?!@§;
            this.§[1§[this.§[1§.length] = _loc11_;
         }
         else
         {
            this.§[1§[this.§[1§.length] = _loc11_;
         }
         if(_loc11_ is §6y§ && !_loc11_.§,c§())
         {
            this.§"c§.addChild(_loc10_);
            ++this.§<a§;
         }
         else if(_loc11_.front || param9)
         {
            this.§'`§.addChild(_loc10_);
         }
         else
         {
            this.§[I§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§4!%§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function § C§(param1:int, param2:§?![§, param3:§?![§) : §>!;§
      {
         var _loc6_:§>!;§ = null;
         var _loc4_:int = this.§[1§.indexOf(param2) - this.§"_§;
         var _loc5_:int = this.§[1§.indexOf(param3) - this.§"_§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §>!;§(§-f§.§7X§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§>1§ = this.mLevelMain.mLevelEngine.mWorld.§1'§(_loc6_.§2!0§(param2,param3));
            this.§4!?§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §@P§(param1:§>!;§) : void
      {
         if(!(param1.§>1§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§?![§ = this.§#z§(param1.index1 + this.§"_§);
         var _loc3_:§?![§ = this.§#z§(param1.index2 + this.§"_§);
         this.mLevelMain.mLevelEngine.mWorld.§'!A§(param1.§>1§);
         param1.§>1§ = this.mLevelMain.mLevelEngine.mWorld.§1'§(param1.§2!0§(_loc2_,_loc3_));
      }
      
      public function §1O§(param1:§?![§) : Vector.<§>!;§>
      {
         var _loc4_:§>!;§ = null;
         var _loc2_:Vector.<§>!;§> = new Vector.<§>!;§>();
         var _loc3_:int = this.§[1§.indexOf(param1) - this.§"_§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§4!?§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §9H§() : Vector.<§>!;§>
      {
         return this.§4!?§;
      }
      
      public function §-!S§(param1:§?![§) : void
      {
         var _loc2_:int = this.§[1§.indexOf(param1) - this.§"_§;
         var _loc3_:int = this.§4!?§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§4!?§[_loc3_].index1 == _loc2_ || this.§4!?§[_loc3_].index2 == _loc2_)
            {
               this.§4!?§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%N§(param1:§?![§, param2:§?![§) : Boolean
      {
         var _loc3_:int = this.§[1§.indexOf(param1) - this.§"_§;
         var _loc4_:int = this.§[1§.indexOf(param2) - this.§"_§;
         var _loc5_:int = this.§4!?§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§4!?§[_loc5_].index1 == _loc3_ && this.§4!?§[_loc5_].index2 == _loc4_ || this.§4!?§[_loc5_].index1 == _loc4_ && this.§4!?§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?![§
      {
         var _loc10_:§?![§ = null;
         var _loc11_:§?!9§ = null;
         var _loc12_:§?!9§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§2!K§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§4N§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = § !R§.§^L§(param2);
            _loc10_ = new § !L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = § !R§.§^L§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = § !R§.§^L§(param2);
            }
            if(_loc12_.§&y§ == §?!9§.§[!e§ || _loc12_.§&y§ == §?!9§.§1K§)
            {
               _loc10_ = new §8!U§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §?![§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'!3§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §;=§(param1:Number) : void
      {
         var _loc3_:§?![§ = null;
         var _loc2_:int = this.§[1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[1§[_loc2_] as §?![§;
            if(_loc3_)
            {
               if(_loc3_.§+m§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§9A§();
                  _loc3_.§'!F§();
               }
            }
            _loc2_--;
         }
         this.§0!@§(param1);
      }
      
      protected function §0!@§(param1:Number) : void
      {
         var _loc3_:§>!;§ = null;
         var _loc4_:§0>§ = null;
         var _loc5_:int = 0;
         var _loc6_:§?![§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§=O§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§=O§[_loc2_]).§0t§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§=p§("block_" + _loc5_))
                  {
                     this.§+!d§(_loc6_,true,true,true);
                  }
                  this.§=O§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§4!?§)
         {
            if(_loc3_.type == §-f§.§'![§ && _loc3_.§%!#§)
            {
               _loc7_ = (_loc3_.§>1§ as b2PrismaticJoint).§@&§();
               _loc8_ = (_loc3_.§>1§ as b2PrismaticJoint).§+s§();
               if(_loc3_.§,3§ && _loc3_.§;3§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§>1§ as b2PrismaticJoint).§9U§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§5!+§.push(§;Y§.createExplosion(param1,param2,param3));
         §-6§.§6!#§("TntExplosions","ChannelExplosions");
      }
      
      public function §+o§(param1:Number, param2:Number) : int
      {
         var _loc4_:§?![§ = null;
         var _loc3_:int = this.§[1§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§[1§[_loc3_])
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
      
      public function §!!'§(param1:Number, param2:Number) : §?![§
      {
         var _loc4_:§?![§ = null;
         var _loc3_:int = this.§[1§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§[1§[_loc3_])
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
      
      public function §#z§(param1:int) : §?![§
      {
         return this.§[1§[param1];
      }
      
      public function §0!?§(param1:Number, param2:Number) : void
      {
         var _loc4_:§?![§ = null;
         var _loc3_:int = this.§[1§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§[1§[_loc3_] as §?![§).§0!?§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §`! §(param1:§?![§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§?![§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§+m§ == param1.§>!`§)
         {
            if(this.§0j§ < this.§-w§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§0j§ += param2 * this.§-w§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§#!!§().§[!!§(param2 * this.§0j§);
            this.§2y§ = 0;
         }
         else if(this.§2y§ == 0)
         {
            this.§2y§ = this.mLevelMain.§;!&§;
         }
         if(param1.§^!S§() || this.§>!1§(param1) || this.§2y§ > 0 && this.mLevelMain.§;!&§ > this.§2y§ + this.§-w§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§-w§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§-w§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§-w§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §-6§.§6!#§("Mighty_Eagle_Selected_1","ChannelBird");
                  §-6§.§6!#§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§-w§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§#!!§().GetPosition().x - this.§-w§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§#!!§().GetPosition().y - this.§-w§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§-w§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§>!1§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§^!3§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§-w§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§2y§ = 0;
                  _loc7_.§^!9§.§6_§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §]R§(param1:§?![§, param2:Number) : Boolean
      {
         var _loc5_:§?![§ = null;
         if(this.§-w§.MIGHTY_EAGLE_USE_SHADE && !this.§`T§ && this.mMightyEagleTimer > this.§-w§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§`T§ = true;
            this.mLevelMain.§1!N§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§<§(§8S§.§]t§,§&j§.§`W§,§8S§.§[!C§,param1.§#!!§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§#!!§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§8S§.§"0§(param1.§=^§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§-e§(this.§-w§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§'z§)
            {
               this.§'z§ = false;
               this.mLevelMain.§ d§();
               param1.§&!Q§(§^!=§.§2!S§);
               this.mSardineCanAdded = false;
               param1.§^!9§.§]J§ = true;
               param1.§^!9§.§!h§();
               for each(_loc5_ in this.§[1§)
               {
                  if(_loc5_ && _loc5_.§+_§())
                  {
                     _loc5_.§#!!§().SetAwake(true);
                     _loc5_.§#!!§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§]T§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§[1§)
               {
                  if(_loc5_ && _loc5_.§+_§())
                  {
                     _loc5_.applyDamage(_loc5_.§>!`§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§#!!§().GetPosition().y >= -5.5;
            this.§'z§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§?!F§(param2,new Point(this.§-w§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§-w§.MIGHTY_EAGLE_Y_CHANGE),this.§-w§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §7B§() : void
      {
         var _loc1_:§;Y§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§?![§ = null;
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
         while(this.§5!+§.length > 0)
         {
            _loc1_ = this.§5!+§.shift();
            _loc2_ = _loc1_.§>>§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§[1§)
            {
               _loc8_ = _loc6_.§#!!§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§#!!§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§>>§)
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
                     _loc6_.§#!!§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§%A§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§4u§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§<§(this.getMainExplosionCoreName(_loc1_.type),§&j§.§`W§,§8S§.§?m§,_loc3_,_loc4_,600,"",§8S§.§=!E§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§<§(§8S§.§extends§,§&j§.§`W§,§8S§.§[!C§,_loc3_,_loc4_,_loc16_,"",§8S§.§=!E§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §4u§(param1:§?![§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8S§.§%!K§;
      }
      
      public function §`!9§(param1:Number) : void
      {
         var _loc2_:§?![§ = null;
         var _loc3_:int = this.§[1§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§[1§[_loc3_];
            if(_loc2_.§6#§())
            {
               if(this.§`! §(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§,c§())
            {
               this.§]R§(_loc2_,param1);
            }
            else if(this.§>!1§(_loc2_))
            {
               _loc2_.§&!Q§(§^!=§.§#p§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§&!Q§(§^!=§.§#p§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§8g§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§7B§();
      }
      
      private function §]T§() : void
      {
         var _loc1_:§>!;§ = null;
         for each(_loc1_ in this.§4!?§)
         {
            if(_loc1_.type != §-f§.§+J§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§'!A§(_loc1_.§>1§);
            }
         }
      }
      
      public function § h§() : Boolean
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[1§.length)
         {
            _loc2_ = this.§[1§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §>!1§(param1:§?![§) : Boolean
      {
         if(param1 && param1.§'7§.§@7§() != § !§.§6W§ && this.mLevelMain.§&!D§.§79§(param1.§#!!§().GetPosition().x,param1.§#!!§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§>!;§ = null;
         var _loc7_:§0>§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§?![§;
         if((_loc5_ = this.§[1§[param1]).§+_§())
         {
            ++this.§@n§;
         }
         else if(_loc5_.§8g§())
         {
            --this.§<a§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§'7§.score,§6K§.§9!&§,true,_loc5_.§#!!§().GetPosition().x,_loc5_.§#!!§().GetPosition().y - 3,§8S§.§'y§(_loc5_.§=^§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+!X§(_loc5_.sprite);
         this.§-!S§(_loc5_);
         for each(_loc6_ in this.§4!?§)
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
         for each(_loc7_ in this.§=O§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§0t§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§[1§[param1] = null;
         this.§[1§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§?![§, param2:§&j§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+!X§(param1:Sprite) : void
      {
         if(this.§[I§.contains(param1))
         {
            this.§[I§.removeChild(param1);
            return;
         }
         if(this.§"c§.contains(param1))
         {
            this.§"c§.removeChild(param1);
            return;
         }
         if(this.§!3§.contains(param1))
         {
            this.§!3§.removeChild(param1);
            return;
         }
         if(this.§'`§.contains(param1))
         {
            this.§'`§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§?![§) : void
      {
         if(param1.§'W§().toUpperCase() == "WHITE_EGG" || param1.§!!,§())
         {
            if(param1.§=^§.toUpperCase() == §@5§.§#!Z§)
            {
               this.addExplosions(§;Y§.§=!=§,param1.§#!!§().GetPosition().x,param1.§#!!§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§;Y§.§&!c§,param1.§#!!§().GetPosition().x,param1.§#!!§().GetPosition().y);
            }
         }
      }
      
      public function §+!d§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§[1§.indexOf(param1),param2,param3,param4);
      }
      
      public function §,!Q§(param1:Number, param2:Number) : void
      {
         this.§5!a§.x = -param1;
         this.§5!a§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§?![§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[1§.length)
         {
            _loc3_ = this.§[1§[_loc2_] as §?![§;
            if(_loc3_ && _loc3_.§+_§() && _loc3_.§+m§ > 0)
            {
               if(!param1 || _loc3_.§^!9§.mTryToBlink <= 0 && _loc3_.§^!9§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § !c§(param1:Boolean = false) : int
      {
         var _loc4_:§?![§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§[1§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§[1§[_loc3_] as §?![§) && _loc4_.§+_§() && _loc4_.§+m§ > 0)
            {
               if(!param1 || _loc4_.§^!9§.mTryToBlink <= 0 && _loc4_.§^!9§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §=!S§() : int
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[1§)
         {
            if(_loc2_ && (_loc2_.§9!D§() || _loc2_.§`h§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §[!9§() : int
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[1§)
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
         var _loc3_:§?![§ = null;
         var _loc2_:int = this.§[1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[1§[_loc2_];
            if(_loc3_ && _loc3_.§+_§() && _loc3_.§+m§ > 0)
            {
               _loc3_.§^!9§.mTryToScream = §4<§.§]7§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §7G§() : Boolean
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = this.§[1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[1§[_loc1_] as §?![§;
            if(_loc2_ && _loc2_.§8g§() && _loc2_.§+m§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = this.§[1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[1§[_loc1_] as §?![§;
            if(_loc2_ && _loc2_.§+m§ > 0 && _loc2_.§&y§ != §?!9§.§=!$§)
            {
               if(_loc2_.§5<§() && !_loc2_.§^!S§())
               {
                  return false;
               }
               if(_loc2_.§8g§() && _loc2_.§+m§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<!I§(param1:Boolean = false) : §?![§
      {
         var _loc5_:int = 0;
         var _loc6_:§?![§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§[1§.length;
         var _loc3_:int = 1 + Math.random() * this.§ !c§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§[1§[_loc5_]) && _loc6_.§+_§() && _loc6_.§+m§ > 0)
               {
                  if(!param1 || _loc6_.§^!9§.mTryToBlink <= 0 && _loc6_.§^!9§.mTryToScream <= 0)
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
      
      public function §'N§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§[1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§[1§[_loc2_] as §?![§).§'7§.score;
            if((this.§[1§[_loc2_] as §?![§).§5<§())
            {
               _loc1_ += §>!2§.§,!I§.getValue() * int((this.§[1§[_loc2_] as §?![§).§>!`§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§'N§());
      }
      
      public function §8!0§(param1:§?![§, param2:§?![§) : Boolean
      {
         if(param1.§8g§() && param2.§8g§())
         {
            return true;
         }
         if(!param1.§&a§() && !param2.§&a§())
         {
            return true;
         }
         return false;
      }
      
      public function §"Z§() : void
      {
         this.mSardineCanAdded = true;
         this.§<a§ = 0;
      }
      
      public function §'9§(param1:§?![§, param2:§?![§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§,c§() || param2.§+_§())
            {
               param2.applyDamage(param2.§>!`§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§,c§() || param1.§+_§())
            {
               param1.applyDamage(param1.§>!`§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§-w§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§6#§() || param2.§6#§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§8!0§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§6O§(param2.§'W§());
         var _loc5_:Number = param1.§!v§(param2.§'W§());
         var _loc6_:Number = param2.§6O§(param1.§'W§());
         var _loc7_:Number = param2.§!v§(param1.§'W§());
         var _loc8_:Number = param1.§#!!§().GetMass() * param1.§#!!§().GetLinearVelocity().x - param2.§#!!§().GetMass() * param2.§#!!§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§#!!§().GetMass() * param1.§#!!§().GetLinearVelocity().y - param2.§#!!§().GetMass() * param2.§#!!§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§+m§);
         var _loc14_:Number = Math.max(0,param2.§+m§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§8g§(),_loc14_ == param2.§>!`§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§8g§(),_loc13_ == param1.§>!`§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§^!5§(new b2Vec2(param2.§#!!§().GetLinearVelocity().x * _loc18_,param2.§#!!§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§^!5§(new b2Vec2(param1.§#!!§().GetLinearVelocity().x * _loc19_,param1.§#!!§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §<,§() : void
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = this.§[1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[1§[_loc1_] as §?![§;
            if(_loc2_ != null && _loc2_.§+_§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2!8§() : void
      {
         var _loc2_:§?![§ = null;
         var _loc1_:int = this.§[1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[1§[_loc1_] as §?![§;
            if(_loc2_ != null && _loc2_.§!!,§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §-!`§() : int
      {
         return this.§[1§.length;
      }
      
      public function §+H§(param1:§"!7§) : void
      {
         var _loc4_:§?![§ = null;
         var _loc5_:§%!_§ = null;
         var _loc6_:§-f§ = null;
         var _loc7_:§>!;§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[1§.length)
         {
            if((_loc4_ = this.§[1§[_loc2_]).§[;§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §%!_§()).angle = _loc4_.§<!e§();
                  _loc5_.id = _loc4_.§=^§;
                  _loc5_.x = _loc4_.§#!!§().GetPosition().x;
                  _loc5_.y = _loc4_.§#!!§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§^!3§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§4!?§.length)
         {
            _loc7_ = this.§4!?§[_loc3_];
            _loc6_ = new §-f§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§?!I§,_loc7_.§,3§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§;3§,_loc7_.motorSpeed,_loc7_.§%!#§,_loc7_.maxTorque);
            param1.§&B§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §6N§() : void
      {
         var _loc1_:int = 0;
         while(this.§[1§.length > _loc1_)
         {
            if(this.§[1§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§+!d§(this.§[1§[_loc1_]);
            }
         }
      }
      
      public function §0y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§[1§.length)
         {
            if(this.§[1§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§[1§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§?!@§ = param1;
         this.§3r§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[1§.length)
         {
            if(this.§[1§[_loc2_].isTexture())
            {
               this.§[1§[_loc2_].sprite.visible = !this.§?!@§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§1!c§ = param1;
      }
      
      public function §'"§() : Boolean
      {
         return this.§1!c§;
      }
      
      public function §!!H§() : int
      {
         return this.§4N§;
      }
      
      public function §^!Y§() : int
      {
         return this.§@n§;
      }
      
      public function §=p§(param1:String) : §?![§
      {
         var _loc3_:§?![§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[1§.length)
         {
            _loc3_ = this.§[1§[_loc2_] as §?![§;
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
