package §"C§
{
   import §!6§.b2PrismaticJoint;
   import §!6§.b2WeldJoint;
   import §%b§.§,_§;
   import §%b§.§0!Z§;
   import §%b§.§?0§;
   import §%b§.§][§;
   import §+,§.b2Vec2;
   import §-A§.Texture;
   import §0C§.§;!Q§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §;C§.§5!O§;
   import §?!H§.§!h§;
   import §?!H§.§+e§;
   import §?!H§.§=!D§;
   import §?!H§.§?U§;
   import §?!H§.§]!H§;
   import §@!§.§ !N§;
   import §@I§.§ !W§;
   import §@I§.§"N§;
   import §@I§.§0!L§;
   import §@I§.§throw§;
   import §]!J§.§`!^§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.§%!G§;
   import §null §.Sprite;
   
   public class §7s§
   {
       
      
      protected var §,v§:Vector.<§?w§>;
      
      protected var § Y§:int;
      
      public var §]!8§:§0!Z§;
      
      public var §3=§:Vector.<§]%§>;
      
      protected var §%]§:Sprite;
      
      protected var § §:Sprite;
      
      private var §%!-§:Sprite;
      
      private var § O§:Sprite;
      
      private var §7g§:Sprite;
      
      protected var § n§:Vector.<Texture>;
      
      protected var §"!_§:Vector.<§ !W§>;
      
      protected var §[A§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §&!R§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §[>§:Boolean = false;
      
      protected var §;u§:Number;
      
      protected var §#1§:int;
      
      protected var §'x§:Vector.<§throw§>;
      
      protected var §+s§:int = 0;
      
      private var §]!!§:int = 0;
      
      private var §-n§:int = 0;
      
      private var § !R§:int;
      
      private var §3!8§:Boolean = true;
      
      private var § !_§:Boolean = true;
      
      public function §7s§(param1:§0!Z§, param2:§;!Q§, param3:Sprite)
      {
         var _loc5_:§ !W§ = null;
         var _loc6_:§"N§ = null;
         var _loc7_:§?w§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§?w§ = null;
         var _loc11_:§?w§ = null;
         this.§,v§ = new Vector.<§?w§>();
         this.§3=§ = new Vector.<§]%§>();
         this.§ n§ = new Vector.<Texture>();
         this.§;u§ = this.§][§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§'x§ = new Vector.<§throw§>();
         super();
         this.§]!8§ = param1;
         this.§ Y§ = 0;
         this.§ § = param3;
         this.§ §.§[;§ = false;
         this.§ !_§ = true;
         this.§3!8§ = true;
         this.§%]§ = new Sprite();
         this.§%!-§ = new Sprite();
         this.§ O§ = new Sprite();
         this.§7g§ = new Sprite();
         this.§ §.addChild(this.§%]§);
         this.§ §.addChild(this.§%!-§);
         this.§ §.addChild(this.§ O§);
         this.§ §.addChild(this.§7g§);
         this.addObject(§`!^§.§ !?§(param2.theme).§?"§,(this.§]!8§.§break§.§1B§ + this.§]!8§.§break§.§^!H§) / 2,this.§]!8§.§break§.§!!%§ + §,_§.§9^§);
         this.§ !R§ = this.§,v§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8!9§)
         {
            _loc6_ = param2.§,`§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§@N§();
         this.§!_§(true);
         this.§"!_§ = new Vector.<§ !W§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§;Y§)
         {
            this.§"!_§.push(§ !W§.§[1§(param2.§%,§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§"!_§)
         {
            _loc8_ = _loc5_.index1 + this.§ !R§;
            _loc9_ = _loc5_.index2 + this.§ !R§;
            if(_loc8_ < this.§,v§.length && _loc9_ < this.§,v§.length)
            {
               _loc10_ = this.§,v§[_loc8_];
               _loc11_ = this.§,v§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §0!L§.§`!H§)
               {
                  _loc5_.§`§ = this.§]!8§.mLevelEngine.mWorld.§&j§(_loc5_.§2Z§(_loc10_,_loc11_));
               }
               else
               {
                  this.§'x§.push(new §throw§(_loc8_,_loc9_,_loc5_.§,!N§));
               }
            }
         }
      }
      
      protected function get §][§() : Class
      {
         return §][§;
      }
      
      public function get §5w§() : Sprite
      {
         return this.§7g§;
      }
      
      public function get §use §() : Sprite
      {
         return this.§ §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§,v§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§,v§ = null;
         this.§'x§ = null;
         if(this.§ §)
         {
            this.§ §.dispose();
            this.§ § = null;
            this.§%]§ = null;
            this.§7g§ = null;
            this.§%!-§ = null;
            this.§ O§ = null;
         }
         while(this.§ n§.length > 0)
         {
            _loc1_ = this.§ n§.pop();
            this.§]!8§.§>A§.§]F§(_loc1_);
         }
      }
      
      private function §!_§(param1:Boolean) : void
      {
         this.§%]§.visible = param1;
      }
      
      private function §@N§() : void
      {
         var _loc3_:§?w§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%!G§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§?w§> = new Vector.<§?w§>();
         for each(_loc3_ in this.§,v§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§ §);
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
            this.§;d§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§=v§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]!8§.§>A§.§9!1§(_loc10_);
            this.§ n§.push(_loc12_);
            (_loc13_ = new §%!G§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§%]§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §=v§(param1:Vector.<§?w§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§?w§ = null;
         var _loc11_:§?U§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§;M§.shape).§"F§();
            _loc13_ = new Rectangle(_loc12_[0].x / §0!Z§.§+n§ * param6,_loc12_[0].y / §0!Z§.§+n§ * param6,(_loc12_[1].x - _loc12_[0].x) / §0!Z§.§+n§ * param6,(_loc12_[1].y - _loc12_[0].y) / §0!Z§.§+n§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§ !^§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §;d§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]!8§.background.§9P§();
         var _loc5_:§ !N§;
         if(_loc5_ = this.§]!8§.§@5§.§-J§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?w§
      {
         var _loc10_:§?w§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § !7§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §1!B§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §;A§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §6'§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §;l§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §7a§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §[!N§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §'!+§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§+s§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §?w§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§?w§;
         if((_loc11_ = this.§2K§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§3!8§;
            this.§,v§[this.§,v§.length] = _loc11_;
         }
         else
         {
            this.§,v§[this.§,v§.length] = _loc11_;
         }
         if(_loc11_ is §'!+§ && !_loc11_.§?!0§())
         {
            this.§%!-§.addChild(_loc10_);
            ++this.§+s§;
         }
         else if(_loc11_.front || param9)
         {
            this.§7g§.addChild(_loc10_);
         }
         else
         {
            this.§ O§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]!8§.§&L§(_loc11_);
         }
         if(param6)
         {
            this.§]!8§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §[1§(param1:int, param2:§?w§, param3:§?w§) : § !W§
      {
         var _loc6_:§ !W§ = null;
         var _loc4_:int = this.§,v§.indexOf(param2) - this.§ !R§;
         var _loc5_:int = this.§,v§.indexOf(param3) - this.§ !R§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new § !W§(§0!L§.§8§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§`§ = this.§]!8§.mLevelEngine.mWorld.§&j§(_loc6_.§2Z§(param2,param3));
            this.§"!_§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §,!?§(param1:§ !W§) : void
      {
         if(!(param1.§`§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§?w§ = this.§,`§(param1.index1 + this.§ !R§);
         var _loc3_:§?w§ = this.§,`§(param1.index2 + this.§ !R§);
         this.§]!8§.mLevelEngine.mWorld.§"?§(param1.§`§);
         param1.§`§ = this.§]!8§.mLevelEngine.mWorld.§&j§(param1.§2Z§(_loc2_,_loc3_));
      }
      
      public function §6!I§(param1:§?w§) : Vector.<§ !W§>
      {
         var _loc4_:§ !W§ = null;
         var _loc2_:Vector.<§ !W§> = new Vector.<§ !W§>();
         var _loc3_:int = this.§,v§.indexOf(param1) - this.§ !R§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§"!_§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §%q§() : Vector.<§ !W§>
      {
         return this.§"!_§;
      }
      
      public function §-M§(param1:§?w§) : void
      {
         var _loc2_:int = this.§,v§.indexOf(param1) - this.§ !R§;
         var _loc3_:int = this.§"!_§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§"!_§[_loc3_].index1 == _loc2_ || this.§"!_§[_loc3_].index2 == _loc2_)
            {
               this.§"!_§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2@§(param1:§?w§, param2:§?w§) : Boolean
      {
         var _loc3_:int = this.§,v§.indexOf(param1) - this.§ !R§;
         var _loc4_:int = this.§,v§.indexOf(param2) - this.§ !R§;
         var _loc5_:int = this.§"!_§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§"!_§[_loc5_].index1 == _loc3_ && this.§"!_§[_loc5_].index2 == _loc4_ || this.§"!_§[_loc5_].index1 == _loc4_ && this.§"!_§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §2K§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?w§
      {
         var _loc10_:§?w§ = null;
         var _loc11_:§]!H§ = null;
         var _loc12_:§]!H§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§-n§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §!h§.§2M§(param2);
            _loc10_ = new §!>§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §!h§.§2M§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §!h§.§2M§(param2);
            }
            if(_loc12_.§<l§ == §]!H§.§6!K§ || _loc12_.§<l§ == §]!H§.§>!;§)
            {
               _loc10_ = new §^!=§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §?w§(this,param1,this.§]!8§.mLevelEngine.mWorld,this.§]!8§,this.§ Y§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §^n§(param1:Number) : void
      {
         var _loc3_:§?w§ = null;
         var _loc2_:int = this.§,v§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,v§[_loc2_] as §?w§;
            if(_loc3_)
            {
               if(_loc3_.§;&§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§<L§();
                  _loc3_.§@%§();
               }
            }
            _loc2_--;
         }
         this.§;!H§(param1);
      }
      
      protected function §;!H§(param1:Number) : void
      {
         var _loc3_:§ !W§ = null;
         var _loc4_:§throw§ = null;
         var _loc5_:int = 0;
         var _loc6_:§?w§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§'x§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§'x§[_loc2_]).§@!+§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§-S§("block_" + _loc5_))
                  {
                     this.§"!0§(_loc6_,true,true,true);
                  }
                  this.§'x§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§"!_§)
         {
            if(_loc3_.type == §0!L§.§#!^§ && _loc3_.§1l§)
            {
               _loc7_ = (_loc3_.§`§ as b2PrismaticJoint).§2?§();
               _loc8_ = (_loc3_.§`§ as b2PrismaticJoint).§#!9§();
               if(_loc3_.§%!"§ && _loc3_.§-!5§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§`§ as b2PrismaticJoint).§9!E§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§3=§.push(§]%§.§9!Q§(param1,param2,param3));
         §5!O§.§-q§("TntExplosions","ChannelExplosions");
      }
      
      public function §`!8§(param1:Number, param2:Number) : int
      {
         var _loc4_:§?w§ = null;
         var _loc3_:int = this.§,v§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,v§[_loc3_])
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
      
      public function §,u§(param1:Number, param2:Number) : §?w§
      {
         var _loc4_:§?w§ = null;
         var _loc3_:int = this.§,v§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,v§[_loc3_])
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
      
      public function §,`§(param1:int) : §?w§
      {
         return this.§,v§[param1];
      }
      
      public function §%!K§(param1:Number, param2:Number) : void
      {
         var _loc4_:§?w§ = null;
         var _loc3_:int = this.§,v§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§,v§[_loc3_] as §?w§).§%!K§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §-w§(param1:§?w§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§?w§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§;&§ == param1.§-#§)
         {
            if(this.§;u§ < this.§][§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§;u§ += param2 * this.§][§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§?@§().§5p§(param2 * this.§;u§);
            this.§#1§ = 0;
         }
         else if(this.§#1§ == 0)
         {
            this.§#1§ = this.§]!8§.§%!@§;
         }
         if(param1.§]!;§() || this.§=!2§(param1) || this.§#1§ > 0 && this.§]!8§.§%!@§ > this.§#1§ + this.§][§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§][§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§][§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§][§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §5!O§.§-q§("Mighty_Eagle_Selected_1","ChannelBird");
                  §5!O§.§-q§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§][§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§?@§().GetPosition().x - this.§][§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§?@§().GetPosition().y - this.§][§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§][§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§=!2§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§][§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#1§ = 0;
                  _loc7_.§9X§.§4H§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §2S§(param1:§?w§, param2:Number) : Boolean
      {
         var _loc5_:§?w§ = null;
         if(this.§][§.MIGHTY_EAGLE_USE_SHADE && !this.§[>§ && this.mMightyEagleTimer > this.§][§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§[>§ = true;
            this.§]!8§.§>-§();
         }
         this.mMightyEagleTimer += param2;
         this.§]!8§.particles.addParticle(§=!F§.§[<§,§;m§.§?=§,§=!F§.§'U§,param1.§?@§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§?@§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§=!F§.§2T§(param1.§]!W§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§,!%§(this.§][§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§&!R§)
            {
               this.§&!R§ = false;
               this.§]!8§.§>P§();
               param1.§1!A§(§=!D§.§'!5§);
               this.mSardineCanAdded = false;
               param1.§9X§.§+!F§ = true;
               param1.§9X§.§2!Y§();
               for each(_loc5_ in this.§,v§)
               {
                  if(_loc5_ && _loc5_.§4V§())
                  {
                     _loc5_.§?@§().SetAwake(true);
                     _loc5_.§?@§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§>!_§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§,v§)
               {
                  if(_loc5_ && _loc5_.§4V§())
                  {
                     _loc5_.applyDamage(_loc5_.§-#§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§?@§().GetPosition().y >= -5.5;
            this.§&!R§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§'l§(param2,new Point(this.§][§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§][§.MIGHTY_EAGLE_Y_CHANGE),this.§][§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §!L§() : void
      {
         var _loc1_:§]%§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§?w§ = null;
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
         while(this.§3=§.length > 0)
         {
            _loc1_ = this.§3=§.shift();
            _loc2_ = _loc1_.§&!N§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§,v§)
            {
               _loc8_ = _loc6_.§?@§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§?@§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§&!N§)
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
                     _loc6_.§?@§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§[!O§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§]!8§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§;m§.§?=§,§=!F§.§<=§,_loc3_,_loc4_,600,"",§=!F§.§@s§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]!8§.particles.addParticle(§=!F§.§<!%§,§;m§.§?=§,§=!F§.§'U§,_loc3_,_loc4_,_loc16_,"",§=!F§.§@s§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §=!F§.§>6§;
      }
      
      public function §8!,§(param1:Number) : void
      {
         var _loc2_:§?w§ = null;
         var _loc3_:int = this.§,v§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,v§[_loc3_];
            if(_loc2_.§'&§())
            {
               if(this.§-w§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§?!0§())
            {
               this.§2S§(_loc2_,param1);
            }
            else if(this.§=!2§(_loc2_))
            {
               _loc2_.§1!A§(§=!D§.§@y§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§1!A§(§=!D§.§@y§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§<-§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§!L§();
      }
      
      private function §>!_§() : void
      {
         var _loc1_:§ !W§ = null;
         for each(_loc1_ in this.§"!_§)
         {
            this.§]!8§.mLevelEngine.mWorld.§"?§(_loc1_.§`§);
         }
      }
      
      public function §4!=§() : Boolean
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,v§.length)
         {
            _loc2_ = this.§,v§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §=!2§(param1:§?w§) : Boolean
      {
         if(param1 && param1.§;M§.§[!]§() != §+e§.§!5§ && this.§]!8§.§break§.§[!6§(param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§ !W§ = null;
         var _loc7_:§throw§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§?w§;
         if((_loc5_ = this.§,v§[param1]).§4V§())
         {
            ++this.§]!!§;
         }
         else if(_loc5_.§<-§())
         {
            --this.§+s§;
         }
         if(_loc5_ == this.§]!8§.activeObject)
         {
            this.§]!8§.activeObject = null;
         }
         if(param2)
         {
            this.§]!8§.addScore(_loc5_.§;M§.score,§?0§.§6!D§,true,_loc5_.§?@§().GetPosition().x,_loc5_.§?@§().GetPosition().y - 3,§=!F§.§4#§(_loc5_.§]!W§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§]!8§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§^w§(_loc5_.sprite);
         this.§-M§(_loc5_);
         for each(_loc6_ in this.§"!_§)
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
         for each(_loc7_ in this.§'x§)
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
         this.§,v§[param1] = null;
         this.§,v§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§?w§, param2:§;m§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §^w§(param1:Sprite) : void
      {
         if(this.§ O§.contains(param1))
         {
            this.§ O§.removeChild(param1);
            return;
         }
         if(this.§%!-§.contains(param1))
         {
            this.§%!-§.removeChild(param1);
            return;
         }
         if(this.§%]§.contains(param1))
         {
            this.§%]§.removeChild(param1);
            return;
         }
         if(this.§7g§.contains(param1))
         {
            this.§7g§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§?w§) : void
      {
         if(param1.§ !$§().toUpperCase() == "WHITE_EGG" || param1.§8!E§())
         {
            if(param1.§]!W§.toUpperCase() == §6'§.§0B§)
            {
               this.addExplosions(§]%§.§@r§,param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]%§.§[!X§,param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y);
            }
         }
      }
      
      public function §"!0§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§,v§.indexOf(param1),param2,param3,param4);
      }
      
      public function §@^§(param1:Number, param2:Number) : void
      {
         this.§ §.x = -param1;
         this.§ §.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§?w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,v§.length)
         {
            _loc3_ = this.§,v§[_loc2_] as §?w§;
            if(_loc3_ && _loc3_.§4V§() && _loc3_.§;&§ > 0)
            {
               if(!param1 || _loc3_.§9X§.mTryToBlink <= 0 && _loc3_.§9X§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^4§(param1:Boolean = false) : int
      {
         var _loc4_:§?w§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,v§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,v§[_loc3_] as §?w§) && _loc4_.§4V§() && _loc4_.§;&§ > 0)
            {
               if(!param1 || _loc4_.§9X§.mTryToBlink <= 0 && _loc4_.§9X§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §?!Y§() : int
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,v§)
         {
            if(_loc2_ && (_loc2_.§8E§() || _loc2_.§#!<§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §[!8§() : int
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,v§)
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
         var _loc3_:§?w§ = null;
         var _loc2_:int = this.§,v§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,v§[_loc2_];
            if(_loc3_ && _loc3_.§4V§() && _loc3_.§;&§ > 0)
            {
               _loc3_.§9X§.mTryToScream = §]y§.§"d§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §%!L§() : Boolean
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = this.§,v§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,v§[_loc1_] as §?w§;
            if(_loc2_ && _loc2_.§<-§() && _loc2_.§;&§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = this.§,v§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,v§[_loc1_] as §?w§;
            if(_loc2_ && _loc2_.§;&§ > 0 && _loc2_.§<l§ != §]!H§.§ !-§)
            {
               if(_loc2_.§-u§() && !_loc2_.§]!;§())
               {
                  return false;
               }
               if(_loc2_.§<-§() && _loc2_.§;&§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §+m§(param1:Boolean = false) : §?w§
      {
         var _loc5_:int = 0;
         var _loc6_:§?w§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§,v§.length;
         var _loc3_:int = 1 + Math.random() * this.§^4§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§,v§[_loc5_]) && _loc6_.§4V§() && _loc6_.§;&§ > 0)
               {
                  if(!param1 || _loc6_.§9X§.mTryToBlink <= 0 && _loc6_.§9X§.mTryToScream <= 0)
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
      
      public function §#!@§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§,v§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§,v§[_loc2_] as §?w§).§;M§.score;
            if((this.§,v§[_loc2_] as §?w§).§-u§())
            {
               _loc1_ += §0!Z§.§76§.getValue() * int((this.§,v§[_loc2_] as §?w§).§-#§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]!8§.slingshot.§#!@§());
      }
      
      public function §?!D§(param1:§?w§, param2:§?w§) : Boolean
      {
         if(param1.§<-§() && param2.§<-§())
         {
            return true;
         }
         if(!param1.§`!3§() && !param2.§`!3§())
         {
            return true;
         }
         return false;
      }
      
      public function §`7§() : void
      {
         this.mSardineCanAdded = true;
         this.§+s§ = 0;
      }
      
      public function objectCollision(param1:§?w§, param2:§?w§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§?!0§() || param2.§4V§())
            {
               param2.applyDamage(param2.§-#§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§?!0§() || param1.§4V§())
            {
               param1.applyDamage(param1.§-#§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§][§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§'&§() || param2.§'&§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§?!D§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§4!#§(param2.§ !$§());
         var _loc5_:Number = param1.§4w§(param2.§ !$§());
         var _loc6_:Number = param2.§4!#§(param1.§ !$§());
         var _loc7_:Number = param2.§4w§(param1.§ !$§());
         var _loc8_:Number = param1.§?@§().GetMass() * param1.§?@§().GetLinearVelocity().x - param2.§?@§().GetMass() * param2.§?@§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§?@§().GetMass() * param1.§?@§().GetLinearVelocity().y - param2.§?@§().GetMass() * param2.§?@§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§;&§);
         var _loc14_:Number = Math.max(0,param2.§;&§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§<-§(),_loc14_ == param2.§-#§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§<-§(),_loc13_ == param1.§-#§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§8"§(new b2Vec2(param2.§?@§().GetLinearVelocity().x * _loc18_,param2.§?@§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§8"§(new b2Vec2(param1.§?@§().GetLinearVelocity().x * _loc19_,param1.§?@§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §<B§() : void
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = this.§,v§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,v§[_loc1_] as §?w§;
            if(_loc2_ != null && _loc2_.§4V§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §%$§() : void
      {
         var _loc2_:§?w§ = null;
         var _loc1_:int = this.§,v§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,v§[_loc1_] as §?w§;
            if(_loc2_ != null && _loc2_.§8!E§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §?!-§() : int
      {
         return this.§,v§.length;
      }
      
      public function §-!S§(param1:§;!Q§) : void
      {
         var _loc4_:§?w§ = null;
         var _loc5_:§"N§ = null;
         var _loc6_:§0!L§ = null;
         var _loc7_:§ !W§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,v§.length)
         {
            if((_loc4_ = this.§,v§[_loc2_]).§2!G§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §"N§()).angle = _loc4_.§ !^§();
                  _loc5_.id = _loc4_.§]!W§;
                  _loc5_.x = _loc4_.§?@§().GetPosition().x;
                  _loc5_.y = _loc4_.§?@§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§"!_§.length)
         {
            _loc7_ = this.§"!_§[_loc3_];
            _loc6_ = new §0!L§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§^![§,_loc7_.§%!"§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§-!5§,_loc7_.motorSpeed,_loc7_.§1l§,_loc7_.maxTorque);
            param1.§?!<§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §>!O§() : void
      {
         var _loc1_:int = 0;
         while(this.§,v§.length > _loc1_)
         {
            if(this.§,v§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§"!0§(this.§,v§[_loc1_]);
            }
         }
      }
      
      public function §-!K§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,v§.length)
         {
            if(this.§,v§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,v§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§3!8§ = param1;
         this.§!_§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,v§.length)
         {
            if(this.§,v§[_loc2_].isTexture())
            {
               this.§,v§[_loc2_].sprite.visible = !this.§3!8§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§ !_§ = param1;
      }
      
      public function §,t§() : Boolean
      {
         return this.§ !_§;
      }
      
      public function §<?§() : int
      {
         return this.§-n§;
      }
      
      public function §>9§() : int
      {
         return this.§]!!§;
      }
      
      public function §-S§(param1:String) : §?w§
      {
         var _loc3_:§?w§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,v§.length)
         {
            _loc3_ = this.§,v§[_loc2_] as §?w§;
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
