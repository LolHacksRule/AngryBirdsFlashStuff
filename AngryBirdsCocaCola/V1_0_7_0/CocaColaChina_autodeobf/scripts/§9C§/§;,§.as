package §9C§
{
   import §#m§.§&r§;
   import §#m§.§34§;
   import §#m§.§3T§;
   import §#m§.§;N§;
   import §#m§.§`5§;
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §-X§.§5!F§;
   import §2l§.§4!Q§;
   import §2o§.§%!Y§;
   import §2o§.§2!Z§;
   import §2o§.§3l§;
   import §2o§.§8!9§;
   import §4A§.§&_§;
   import §4A§.§-!3§;
   import §4A§.§0!!§;
   import §4A§.§96§;
   import §6$§.b2PrismaticJoint;
   import §6$§.b2WeldJoint;
   import §7m§.§7I§;
   import §<!8§.b2Vec2;
   import §`! §.§1!#§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;,§
   {
       
      
      protected var §]!X§:Vector.<§4!G§>;
      
      protected var §'<§:int;
      
      public var mLevelMain:§&_§;
      
      public var §`!!§:Vector.<§+!]§>;
      
      protected var §+9§:Sprite;
      
      protected var §^!1§:Sprite;
      
      private var §3m§:Sprite;
      
      private var §;+§:Sprite;
      
      private var §+!?§:Sprite;
      
      protected var §[U§:Vector.<Texture>;
      
      protected var §9`§:Vector.<§%!Y§>;
      
      protected var §3E§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §#n§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §;x§:Boolean = false;
      
      protected var §7!K§:Number;
      
      protected var §]l§:int;
      
      protected var §^!G§:Vector.<§8!9§>;
      
      protected var §4[§:int = 0;
      
      private var §+!4§:int = 0;
      
      private var §'L§:int = 0;
      
      private var §9o§:int;
      
      private var §[;§:Boolean = true;
      
      private var §1B§:Boolean = true;
      
      public function §;,§(param1:§&_§, param2:§5!F§, param3:Sprite)
      {
         var _loc5_:§%!Y§ = null;
         var _loc6_:§2!Z§ = null;
         var _loc7_:§4!G§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§4!G§ = null;
         var _loc11_:§4!G§ = null;
         this.§]!X§ = new Vector.<§4!G§>();
         this.§`!!§ = new Vector.<§+!]§>();
         this.§[U§ = new Vector.<Texture>();
         this.§7!K§ = this.§96§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§^!G§ = new Vector.<§8!9§>();
         super();
         this.mLevelMain = param1;
         this.§'<§ = 0;
         this.§^!1§ = param3;
         this.§^!1§.§8!Q§ = false;
         this.§1B§ = true;
         this.§[;§ = true;
         this.§+9§ = new Sprite();
         this.§3m§ = new Sprite();
         this.§;+§ = new Sprite();
         this.§+!?§ = new Sprite();
         this.§^!1§.addChild(this.§+9§);
         this.§^!1§.addChild(this.§3m§);
         this.§^!1§.addChild(this.§;+§);
         this.§^!1§.addChild(this.§+!?§);
         this.§7o§(§1!#§.§extends§(param2.theme).§1§,(this.mLevelMain.§@I§.§!O§ + this.mLevelMain.§@I§.§`i§) / 2,this.mLevelMain.§@I§.§?!K§ + §0!!§.§9M§);
         this.§9o§ = this.§]!X§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§0V§)
         {
            _loc6_ = param2.§2!-§(_loc4_);
            if(_loc7_ = this.§7o§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§"a§();
         this.§8!%§(true);
         this.§9`§ = new Vector.<§%!Y§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§ !`§)
         {
            this.§9`§.push(§%!Y§.§6m§(param2.§,f§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§9`§)
         {
            _loc8_ = _loc5_.index1 + this.§9o§;
            _loc9_ = _loc5_.index2 + this.§9o§;
            if(_loc8_ < this.§]!X§.length && _loc9_ < this.§]!X§.length)
            {
               _loc10_ = this.§]!X§[_loc8_];
               _loc11_ = this.§]!X§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §3l§.§`y§)
               {
                  _loc5_.§^!`§ = this.mLevelMain.mLevelEngine.mWorld.§&!-§(_loc5_.§+!9§(_loc10_,_loc11_));
               }
               else
               {
                  this.§^!G§.push(new §8!9§(_loc8_,_loc9_,_loc5_.§8!N§));
               }
            }
         }
      }
      
      protected function get §96§() : Class
      {
         return §96§;
      }
      
      public function get § !6§() : Sprite
      {
         return this.§+!?§;
      }
      
      public function get §,!§() : Sprite
      {
         return this.§^!1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§]!X§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§]!X§ = null;
         this.§^!G§ = null;
         if(this.§^!1§)
         {
            this.§^!1§.dispose();
            this.§^!1§ = null;
            this.§+9§ = null;
            this.§+!?§ = null;
            this.§3m§ = null;
            this.§;+§ = null;
         }
         while(this.§[U§.length > 0)
         {
            _loc1_ = this.§[U§.pop();
            this.mLevelMain.textureManager.§+q§(_loc1_);
         }
      }
      
      private function §8!%§(param1:Boolean) : void
      {
         this.§+9§.visible = param1;
      }
      
      private function §"a§() : void
      {
         var _loc3_:§4!G§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%^§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§4!G§> = new Vector.<§4!G§>();
         for each(_loc3_ in this.§]!X§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§^!1§);
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
            this.§,!#§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§ 4§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.§5!S§(_loc10_);
            this.§[U§.push(_loc12_);
            (_loc13_ = new §%^§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§+9§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function § 4§(param1:Vector.<§4!G§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§4!G§ = null;
         var _loc11_:§;N§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§4!%§.shape).§]!J§();
            _loc13_ = new Rectangle(_loc12_[0].x / §&_§.§5-§ * param6,_loc12_[0].y / §&_§.§5-§ * param6,(_loc12_[1].x - _loc12_[0].x) / §&_§.§5-§ * param6,(_loc12_[1].y - _loc12_[0].y) / §&_§.§5-§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§'v§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §,!#§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§;!3§();
         var _loc5_:§4!Q§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§!v§(_loc4_))
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
      
      public function §]8§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!G§
      {
         var _loc10_:§4!G§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §]A§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §]!F§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §7!F§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §<c§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §6E§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §?&§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §&h§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §&]§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4[§ > 0;
      }
      
      public function §7o§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!G§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§4!G§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§[;§;
            this.§]!X§[this.§]!X§.length] = _loc11_;
         }
         else
         {
            this.§]!X§[this.§]!X§.length] = _loc11_;
         }
         if(_loc11_ is §&]§ && !_loc11_.§&!,§())
         {
            this.§3m§.addChild(_loc10_);
            ++this.§4[§;
         }
         else if(_loc11_.front || param9)
         {
            this.§+!?§.addChild(_loc10_);
         }
         else
         {
            this.§;+§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§[A§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §6m§(param1:int, param2:§4!G§, param3:§4!G§) : §%!Y§
      {
         var _loc6_:§%!Y§ = null;
         var _loc4_:int = this.§]!X§.indexOf(param2) - this.§9o§;
         var _loc5_:int = this.§]!X§.indexOf(param3) - this.§9o§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §%!Y§(§3l§.§5H§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§^!`§ = this.mLevelMain.mLevelEngine.mWorld.§&!-§(_loc6_.§+!9§(param2,param3));
            this.§9`§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §`!`§(param1:§%!Y§) : void
      {
         if(!(param1.§^!`§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§4!G§ = this.§2!-§(param1.index1 + this.§9o§);
         var _loc3_:§4!G§ = this.§2!-§(param1.index2 + this.§9o§);
         this.mLevelMain.mLevelEngine.mWorld.§6N§(param1.§^!`§);
         param1.§^!`§ = this.mLevelMain.mLevelEngine.mWorld.§&!-§(param1.§+!9§(_loc2_,_loc3_));
      }
      
      public function §2!A§(param1:§4!G§) : Vector.<§%!Y§>
      {
         var _loc4_:§%!Y§ = null;
         var _loc2_:Vector.<§%!Y§> = new Vector.<§%!Y§>();
         var _loc3_:int = this.§]!X§.indexOf(param1) - this.§9o§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§9`§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §;!1§() : Vector.<§%!Y§>
      {
         return this.§9`§;
      }
      
      public function §7<§(param1:§4!G§) : void
      {
         var _loc2_:int = this.§]!X§.indexOf(param1) - this.§9o§;
         var _loc3_:int = this.§9`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§9`§[_loc3_].index1 == _loc2_ || this.§9`§[_loc3_].index2 == _loc2_)
            {
               this.§9`§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §,!a§(param1:§4!G§, param2:§4!G§) : Boolean
      {
         var _loc3_:int = this.§]!X§.indexOf(param1) - this.§9o§;
         var _loc4_:int = this.§]!X§.indexOf(param2) - this.§9o§;
         var _loc5_:int = this.§9`§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§9`§[_loc5_].index1 == _loc3_ && this.§9`§[_loc5_].index2 == _loc4_ || this.§9`§[_loc5_].index1 == _loc4_ && this.§9`§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!G§
      {
         var _loc10_:§4!G§ = null;
         var _loc11_:§34§ = null;
         var _loc12_:§34§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§]8§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§'L§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §3T§.§,!G§(param2);
            _loc10_ = new §-c§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §3T§.§,!G§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §3T§.§,!G§(param2);
            }
            if(_loc12_.§#r§ == §34§.§^[§ || _loc12_.§#r§ == §34§.§&!'§)
            {
               _loc10_ = new §28§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §4!G§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'<§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc3_:§4!G§ = null;
         var _loc2_:int = this.§]!X§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!X§[_loc2_] as §4!G§;
            if(_loc3_)
            {
               if(_loc3_.§ b§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§7V§();
                  _loc3_.§^!%§();
               }
            }
            _loc2_--;
         }
         this.§,!C§(param1);
      }
      
      protected function §,!C§(param1:Number) : void
      {
         var _loc3_:§%!Y§ = null;
         var _loc4_:§8!9§ = null;
         var _loc5_:int = 0;
         var _loc6_:§4!G§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§^!G§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§^!G§[_loc2_]).§@!+§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§?!U§("block_" + _loc5_))
                  {
                     this.§+b§(_loc6_,true,true,true);
                  }
                  this.§^!G§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§9`§)
         {
            if(_loc3_.type == §3l§.§6;§ && _loc3_.§4!$§)
            {
               _loc7_ = (_loc3_.§^!`§ as b2PrismaticJoint).§"1§();
               _loc8_ = (_loc3_.§^!`§ as b2PrismaticJoint).§ 1§();
               if(_loc3_.§"2§ && _loc3_.§7w§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§^!`§ as b2PrismaticJoint).§-!a§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§`!!§.push(§+!]§.createExplosion(param1,param2,param3));
         §7I§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §%!+§(param1:Number, param2:Number) : int
      {
         var _loc4_:§4!G§ = null;
         var _loc3_:int = this.§]!X§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§]!X§[_loc3_])
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
      
      public function §-W§(param1:Number, param2:Number) : §4!G§
      {
         var _loc4_:§4!G§ = null;
         var _loc3_:int = this.§]!X§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§]!X§[_loc3_])
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
      
      public function §2!-§(param1:int) : §4!G§
      {
         return this.§]!X§[param1];
      }
      
      public function §-!+§(param1:Number, param2:Number) : void
      {
         var _loc4_:§4!G§ = null;
         var _loc3_:int = this.§]!X§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§]!X§[_loc3_] as §4!G§).§-!+§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §"W§(param1:§4!G§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§4!G§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§ b§ == param1.§&=§)
         {
            if(this.§7!K§ < this.§96§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§7!K§ += param2 * this.§96§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§@!?§().§>!-§(param2 * this.§7!K§);
            this.§]l§ = 0;
         }
         else if(this.§]l§ == 0)
         {
            this.§]l§ = this.mLevelMain.§@&§;
         }
         if(param1.§]!<§() || this.§^0§(param1) || this.§]l§ > 0 && this.mLevelMain.§@&§ > this.§]l§ + this.§96§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§96§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§96§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§96§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §7I§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §7I§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§96§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§@!?§().GetPosition().x - this.§96§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§@!?§().GetPosition().y - this.§96§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§96§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§^0§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§7o§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§96§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§]l§ = 0;
                  _loc7_.§5U§.§@!&§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §;P§(param1:§4!G§, param2:Number) : Boolean
      {
         var _loc5_:§4!G§ = null;
         if(this.§96§.MIGHTY_EAGLE_USE_SHADE && !this.§;x§ && this.mMightyEagleTimer > this.§96§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§;x§ = true;
            this.mLevelMain.§ '§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§<%§(§,!;§.§<!6§,§%C§.§5l§,§,!;§.§7s§,param1.§@!?§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§@!?§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§,!;§.§%!$§(param1.§!I§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§2!%§(this.§96§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§#n§)
            {
               this.§#n§ = false;
               this.mLevelMain.§4!X§();
               param1.§;Y§(§`5§.§<7§);
               this.mSardineCanAdded = false;
               param1.§5U§.§"3§ = true;
               param1.§5U§.§1?§();
               for each(_loc5_ in this.§]!X§)
               {
                  if(_loc5_ && _loc5_.§3!@§())
                  {
                     _loc5_.§@!?§().SetAwake(true);
                     _loc5_.§@!?§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§'!b§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§]!X§)
               {
                  if(_loc5_ && _loc5_.§3!@§())
                  {
                     _loc5_.applyDamage(_loc5_.§&=§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§@!?§().GetPosition().y >= -5.5;
            this.§#n§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§,!X§(param2,new Point(this.§96§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§96§.MIGHTY_EAGLE_Y_CHANGE),this.§96§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function § !2§() : void
      {
         var _loc1_:§+!]§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§4!G§ = null;
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
         while(this.§`!!§.length > 0)
         {
            _loc1_ = this.§`!!§.shift();
            _loc2_ = _loc1_.§&F§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§]!X§)
            {
               _loc8_ = _loc6_.§@!?§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§@!?§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§&F§)
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
                     _loc6_.§@!?§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§3'§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.mLevelMain.particles.§<%§(this.getMainExplosionCoreName(_loc1_.type),§%C§.§5l§,§,!;§.§`e§,_loc3_,_loc4_,600,"",§,!;§.§]!U§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§<%§(§,!;§.§[e§,§%C§.§5l§,§,!;§.§7s§,_loc3_,_loc4_,_loc16_,"",§,!;§.§]!U§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §,!;§.§+V§;
      }
      
      public function §@!S§(param1:Number) : void
      {
         var _loc2_:§4!G§ = null;
         var _loc3_:int = this.§]!X§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§]!X§[_loc3_];
            if(_loc2_.§[!U§())
            {
               if(this.§"W§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§&!,§())
            {
               this.§;P§(_loc2_,param1);
            }
            else if(this.§^0§(_loc2_))
            {
               _loc2_.§;Y§(§`5§.§1r§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;Y§(§`5§.§1r§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§]J§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§ !2§();
      }
      
      private function §'!b§() : void
      {
         var _loc1_:§%!Y§ = null;
         for each(_loc1_ in this.§9`§)
         {
            this.mLevelMain.mLevelEngine.mWorld.§6N§(_loc1_.§^!`§);
         }
      }
      
      public function §,t§() : Boolean
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!X§.length)
         {
            _loc2_ = this.§]!X§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §^0§(param1:§4!G§) : Boolean
      {
         if(param1 && param1.§4!%§.§>u§() != §&r§.§4D§ && this.mLevelMain.§@I§.§%6§(param1.§@!?§().GetPosition().x,param1.§@!?§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§%!Y§ = null;
         var _loc7_:§8!9§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§4!G§;
         if((_loc5_ = this.§]!X§[param1]).§3!@§())
         {
            ++this.§+!4§;
         }
         else if(_loc5_.§]J§())
         {
            --this.§4[§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§4!%§.score,§-!3§.§0!U§,true,_loc5_.§@!?§().GetPosition().x,_loc5_.§@!?§().GetPosition().y - 3,§,!;§.§%?§(_loc5_.§!I§));
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
         this.§;=§(_loc5_.sprite);
         this.§7<§(_loc5_);
         for each(_loc6_ in this.§9`§)
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
         for each(_loc7_ in this.§^!G§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§@!+§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§]!X§[param1] = null;
         this.§]!X§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§4!G§, param2:§%C§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §;=§(param1:Sprite) : void
      {
         if(this.§;+§.contains(param1))
         {
            this.§;+§.removeChild(param1);
            return;
         }
         if(this.§3m§.contains(param1))
         {
            this.§3m§.removeChild(param1);
            return;
         }
         if(this.§+9§.contains(param1))
         {
            this.§+9§.removeChild(param1);
            return;
         }
         if(this.§+!?§.contains(param1))
         {
            this.§+!?§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§4!G§) : void
      {
         if(param1.§@!@§().toUpperCase() == "WHITE_EGG" || param1.§,p§())
         {
            if(param1.§!I§.toUpperCase() == §<c§.§"d§)
            {
               this.addExplosions(§+!]§.§,-§,param1.§@!?§().GetPosition().x,param1.§@!?§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§+!]§.§"L§,param1.§@!?§().GetPosition().x,param1.§@!?§().GetPosition().y);
            }
         }
      }
      
      public function §+b§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§]!X§.indexOf(param1),param2,param3,param4);
      }
      
      public function §]H§(param1:Number, param2:Number) : void
      {
         this.§^!1§.x = -param1;
         this.§^!1§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§4!G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!X§.length)
         {
            _loc3_ = this.§]!X§[_loc2_] as §4!G§;
            if(_loc3_ && _loc3_.§3!@§() && _loc3_.§ b§ > 0)
            {
               if(!param1 || _loc3_.§5U§.mTryToBlink <= 0 && _loc3_.§5U§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §>[§(param1:Boolean = false) : int
      {
         var _loc4_:§4!G§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§]!X§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§]!X§[_loc3_] as §4!G§) && _loc4_.§3!@§() && _loc4_.§ b§ > 0)
            {
               if(!param1 || _loc4_.§5U§.mTryToBlink <= 0 && _loc4_.§5U§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §-!C§() : int
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]!X§)
         {
            if(_loc2_ && (_loc2_.§,m§() || _loc2_.§=N§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function § S§() : int
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]!X§)
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
         var _loc3_:§4!G§ = null;
         var _loc2_:int = this.§]!X§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!X§[_loc2_];
            if(_loc3_ && _loc3_.§3!@§() && _loc3_.§ b§ > 0)
            {
               _loc3_.§5U§.mTryToScream = §9!@§.§;X§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §,!V§() : Boolean
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = this.§]!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!X§[_loc1_] as §4!G§;
            if(_loc2_ && _loc2_.§]J§() && _loc2_.§ b§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = this.§]!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!X§[_loc1_] as §4!G§;
            if(_loc2_ && _loc2_.§ b§ > 0 && _loc2_.§#r§ != §34§.§;"§)
            {
               if(_loc2_.§-k§() && !_loc2_.§]!<§())
               {
                  return false;
               }
               if(_loc2_.§]J§() && _loc2_.§ b§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[!2§(param1:Boolean = false) : §4!G§
      {
         var _loc5_:int = 0;
         var _loc6_:§4!G§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§]!X§.length;
         var _loc3_:int = 1 + Math.random() * this.§>[§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§]!X§[_loc5_]) && _loc6_.§3!@§() && _loc6_.§ b§ > 0)
               {
                  if(!param1 || _loc6_.§5U§.mTryToBlink <= 0 && _loc6_.§5U§.mTryToScream <= 0)
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
      
      public function §=m§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§]!X§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§]!X§[_loc2_] as §4!G§).§4!%§.score;
            if((this.§]!X§[_loc2_] as §4!G§).§-k§())
            {
               _loc1_ += §&_§.§<!'§.getValue() * int((this.§]!X§[_loc2_] as §4!G§).§&=§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§=m§());
      }
      
      public function §1Y§(param1:§4!G§, param2:§4!G§) : Boolean
      {
         if(param1.§]J§() && param2.§]J§())
         {
            return true;
         }
         if(!param1.§!!`§() && !param2.§!!`§())
         {
            return true;
         }
         return false;
      }
      
      public function §-,§() : void
      {
         this.mSardineCanAdded = true;
         this.§4[§ = 0;
      }
      
      public function §%!3§(param1:§4!G§, param2:§4!G§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§&!,§() || param2.§3!@§())
            {
               param2.applyDamage(param2.§&=§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§&!,§() || param1.§3!@§())
            {
               param1.applyDamage(param1.§&=§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§96§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§[!U§() || param2.§[!U§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§1Y§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§8!H§(param2.§@!@§());
         var _loc5_:Number = param1.§=!$§(param2.§@!@§());
         var _loc6_:Number = param2.§8!H§(param1.§@!@§());
         var _loc7_:Number = param2.§=!$§(param1.§@!@§());
         var _loc8_:Number = param1.§@!?§().GetMass() * param1.§@!?§().GetLinearVelocity().x - param2.§@!?§().GetMass() * param2.§@!?§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§@!?§().GetMass() * param1.§@!?§().GetLinearVelocity().y - param2.§@!?§().GetMass() * param2.§@!?§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§ b§);
         var _loc14_:Number = Math.max(0,param2.§ b§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§]J§(),_loc14_ == param2.§&=§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§]J§(),_loc13_ == param1.§&=§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§8l§(new b2Vec2(param2.§@!?§().GetLinearVelocity().x * _loc18_,param2.§@!?§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§8l§(new b2Vec2(param1.§@!?§().GetLinearVelocity().x * _loc19_,param1.§@!?§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function static() : void
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = this.§]!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!X§[_loc1_] as §4!G§;
            if(_loc2_ != null && _loc2_.§3!@§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §9!G§() : void
      {
         var _loc2_:§4!G§ = null;
         var _loc1_:int = this.§]!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!X§[_loc1_] as §4!G§;
            if(_loc2_ != null && _loc2_.§,p§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[t§() : int
      {
         return this.§]!X§.length;
      }
      
      public function §]c§(param1:§5!F§) : void
      {
         var _loc4_:§4!G§ = null;
         var _loc5_:§2!Z§ = null;
         var _loc6_:§3l§ = null;
         var _loc7_:§%!Y§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!X§.length)
         {
            if((_loc4_ = this.§]!X§[_loc2_]).§-!4§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §2!Z§()).angle = _loc4_.§'v§();
                  _loc5_.id = _loc4_.§!I§;
                  _loc5_.x = _loc4_.§@!?§().GetPosition().x;
                  _loc5_.y = _loc4_.§@!?§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§7o§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9`§.length)
         {
            _loc7_ = this.§9`§[_loc3_];
            _loc6_ = new §3l§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§8!G§,_loc7_.§"2§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§7w§,_loc7_.motorSpeed,_loc7_.§4!$§,_loc7_.maxTorque);
            param1.§ ^§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §0!R§() : void
      {
         var _loc1_:int = 0;
         while(this.§]!X§.length > _loc1_)
         {
            if(this.§]!X§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§+b§(this.§]!X§[_loc1_]);
            }
         }
      }
      
      public function §2!]§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§]!X§.length)
         {
            if(this.§]!X§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§]!X§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§[;§ = param1;
         this.§8!%§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!X§.length)
         {
            if(this.§]!X§[_loc2_].isTexture())
            {
               this.§]!X§[_loc2_].sprite.visible = !this.§[;§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§1B§ = param1;
      }
      
      public function §?!D§() : Boolean
      {
         return this.§1B§;
      }
      
      public function §!b§() : int
      {
         return this.§'L§;
      }
      
      public function §9[§() : int
      {
         return this.§+!4§;
      }
      
      public function §?!U§(param1:String) : §4!G§
      {
         var _loc3_:§4!G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!X§.length)
         {
            _loc3_ = this.§]!X§[_loc2_] as §4!G§;
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
