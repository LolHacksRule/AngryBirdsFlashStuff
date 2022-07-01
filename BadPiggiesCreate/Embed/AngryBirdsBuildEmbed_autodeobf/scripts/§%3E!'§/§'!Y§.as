package §>!'§
{
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§2! §;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §1?§.§+!§;
   import §<!<§.§ !p§;
   import §<!<§.§7E§;
   import §<!<§.§8!t§;
   import §<!<§.§;J§;
   import §<!B§.b2Vec2;
   import §=U§.§>?§;
   import §?!6§.§"!0§;
   import §?!6§.§1!!§;
   import §?!6§.§@T§;
   import §?!6§.§]!@§;
   import §?!6§.§`4§;
   import §@_§.§1M§;
   import §@_§.§@!%§;
   import §@_§.§[!k§;
   import §@_§.§[F§;
   import §[h§.b2WeldJoint;
   import §]Z§.§7!n§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!Y§
   {
       
      
      protected var §do §:Vector.<§<!3§>;
      
      protected var §]!r§:int;
      
      public var §-n§:§7E§;
      
      public var §5O§:Vector.<§'T§>;
      
      protected var §6!e§:Sprite;
      
      protected var §]!,§:Sprite;
      
      private var §0G§:Sprite;
      
      private var §`H§:Sprite;
      
      private var §?g§:Sprite;
      
      protected var §'O§:Vector.<Texture>;
      
      protected var §2^§:Vector.<§1M§>;
      
      protected var §2-§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-P§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,!T§:Boolean = false;
      
      protected var §"2§:Number = 0.07;
      
      protected var §4!]§:int;
      
      protected var §;!7§:Vector.<§@!%§>;
      
      protected var §>L§:int = 0;
      
      private var §99§:int = 0;
      
      private var §@Q§:int = 0;
      
      private var §"@§:int;
      
      private var §?!t§:Boolean = true;
      
      private var §'0§:Boolean = true;
      
      public function §'!Y§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc5_:§1M§ = null;
         var _loc6_:§[!k§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§<!3§ = null;
         var _loc10_:§<!3§ = null;
         this.§do § = new Vector.<§<!3§>();
         this.§5O§ = new Vector.<§'T§>();
         this.§'O§ = new Vector.<Texture>();
         this.§;!7§ = new Vector.<§@!%§>();
         super();
         this.§-n§ = param1;
         this.§]!r§ = 0;
         this.§]!,§ = param3;
         this.§]!,§.§[,§ = false;
         this.§'0§ = true;
         this.§?!t§ = true;
         this.§6!e§ = new Sprite();
         this.§0G§ = new Sprite();
         this.§`H§ = new Sprite();
         this.§?g§ = new Sprite();
         this.§]!,§.addChild(this.§6!e§);
         this.§]!,§.addChild(this.§0G§);
         this.§]!,§.addChild(this.§`H§);
         this.§]!,§.addChild(this.§?g§);
         this.addObject(§7!n§.§&!c§(param2.theme).§-§,(this.§-n§.borders.§'U§ + this.§-n§.borders.§<`§) / 2,this.§-n§.borders.mBorderGround_B2 + §8!t§.§-!-§);
         this.§"@§ = this.§do §.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§0'§)
         {
            _loc6_ = param2.getObject(_loc4_);
            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            _loc4_++;
         }
         this.§`!@§();
         this.§?O§(true);
         this.§2^§ = new Vector.<§1M§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§^!L§)
         {
            this.§2^§.push(§1M§.§3H§(param2.§'N§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§2^§)
         {
            _loc7_ = _loc5_.index1 + this.§"@§;
            _loc8_ = _loc5_.index2 + this.§"@§;
            if(_loc7_ < this.§do §.length && _loc8_ < this.§do §.length)
            {
               _loc9_ = this.§do §[_loc7_];
               _loc10_ = this.§do §[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               if(_loc5_.type != §[F§.§7m§)
               {
                  _loc5_.§0i§ = this.§-n§.§[!U§.§&4§.§`v§(_loc5_.§?!V§(_loc9_,_loc10_));
               }
               else
               {
                  this.§;!7§.push(new §@!%§(_loc7_,_loc8_,_loc5_.§2!l§));
               }
            }
         }
      }
      
      public function get §&s§() : Sprite
      {
         return this.§?g§;
      }
      
      public function get §[Z§() : Sprite
      {
         return this.§]!,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§do §.length > 0)
         {
            this.§2p§(0);
         }
         this.§do § = null;
         this.§;!7§ = null;
         if(this.§]!,§)
         {
            this.§]!,§.dispose();
            this.§]!,§ = null;
            this.§6!e§ = null;
            this.§?g§ = null;
            this.§0G§ = null;
            this.§`H§ = null;
         }
         while(this.§'O§.length > 0)
         {
            _loc1_ = this.§'O§.pop();
            this.§-n§.textureManager.§[!]§(_loc1_);
         }
      }
      
      private function §?O§(param1:Boolean) : void
      {
         this.§6!e§.visible = param1;
      }
      
      private function §`!@§() : void
      {
         var _loc3_:§<!3§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7!J§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§<!3§> = new Vector.<§<!3§>();
         for each(_loc3_ in this.§do §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§]!,§);
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
            this.§7!I§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§2c§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§-n§.textureManager.§%!^§(_loc10_);
            this.§'O§.push(_loc12_);
            (_loc13_ = new §7!J§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§6!e§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §2c§(param1:Vector.<§<!3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§<!3§ = null;
         var _loc11_:§"!0§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9U§.shape).§]!5§();
            _loc13_ = new Rectangle(_loc12_[0].x / §7E§.§8!'§ * param6,_loc12_[0].y / §7E§.§8!'§ * param6,(_loc12_[1].x - _loc12_[0].x) / §7E§.§8!'§ * param6,(_loc12_[1].y - _loc12_[0].y) / §7E§.§8!'§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§;x§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §7!I§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§-n§.background.§'!e§();
         var _loc5_:§>?§;
         if(_loc5_ = this.§-n§.backgroundTextureManager.§8!@§(_loc4_))
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
      
      public function § C§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §<!3§
      {
         var _loc10_:§<!3§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §&!6§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §`D§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §3!E§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §7!7§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §2!Q§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §#z§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §2L§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §7!U§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>L§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §<!3§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§<!3§;
         if((_loc11_ = this.§'$§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§?!t§;
            this.§do §[this.§do §.length] = _loc11_;
         }
         else
         {
            this.§do §[this.§do §.length] = _loc11_;
         }
         if(_loc11_ is §7!U§ && !_loc11_.§='§())
         {
            this.§0G§.addChild(_loc10_);
            ++this.§>L§;
         }
         else if(_loc11_.front || param9)
         {
            this.§?g§.addChild(_loc10_);
         }
         else
         {
            this.§`H§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§-n§.§=,§(_loc11_);
         }
         if(param6)
         {
            this.§-n§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §3H§(param1:int, param2:§<!3§, param3:§<!3§) : §1M§
      {
         var _loc6_:§1M§ = null;
         var _loc4_:int = this.§do §.indexOf(param2) - this.§"@§;
         var _loc5_:int = this.§do §.indexOf(param3) - this.§"@§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §1M§(§[F§.§"l§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0i§ = this.§-n§.§[!U§.§&4§.§`v§(_loc6_.§?!V§(param2,param3));
            this.§2^§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §=r§(param1:§1M§) : void
      {
         if(!(param1.§0i§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§<!3§ = this.getObject(param1.index1 + this.§"@§);
         var _loc3_:§<!3§ = this.getObject(param1.index2 + this.§"@§);
         this.§-n§.§[!U§.§&4§.§;!S§(param1.§0i§);
         param1.§0i§ = this.§-n§.§[!U§.§&4§.§`v§(param1.§?!V§(_loc2_,_loc3_));
      }
      
      public function §@!r§(param1:§<!3§) : Vector.<§1M§>
      {
         var _loc4_:§1M§ = null;
         var _loc2_:Vector.<§1M§> = new Vector.<§1M§>();
         var _loc3_:int = this.§do §.indexOf(param1) - this.§"@§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§2^§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §1!8§() : Vector.<§1M§>
      {
         return this.§2^§;
      }
      
      public function §[!;§(param1:§<!3§) : void
      {
         var _loc2_:int = this.§do §.indexOf(param1) - this.§"@§;
         var _loc3_:int = this.§2^§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2^§[_loc3_].index1 == _loc2_ || this.§2^§[_loc3_].index2 == _loc2_)
            {
               this.§2^§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §%Y§(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc3_:int = this.§do §.indexOf(param1) - this.§"@§;
         var _loc4_:int = this.§do §.indexOf(param2) - this.§"@§;
         var _loc5_:int = this.§2^§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§2^§[_loc5_].index1 == _loc3_ && this.§2^§[_loc5_].index2 == _loc4_ || this.§2^§[_loc5_].index1 == _loc4_ && this.§2^§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §'$§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §<!3§
      {
         var _loc10_:§<!3§ = null;
         var _loc11_:§]!@§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§ C§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§@Q§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §3^§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §1!!§.§#P§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §1!!§.§#P§(param2);
            }
            if(_loc11_.§&!j§ == §]!@§.§&l§ || _loc11_.§&!j§ == §]!@§.§6!r§)
            {
               _loc10_ = new §,&§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §<!3§(this,param1,this.§-n§.§[!U§.§&4§,this.§-n§,this.§]!r§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §8I§(param1:Number) : void
      {
         var _loc3_:§<!3§ = null;
         var _loc2_:int = this.§do §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§do §[_loc2_] as §<!3§;
            if(_loc3_)
            {
               if(_loc3_.§!!>§ <= 0)
               {
                  this.§2p§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§2!<§();
                  _loc3_.§=!_§();
               }
            }
            _loc2_--;
         }
         this.§%!%§(param1);
      }
      
      protected function §%!%§(param1:Number) : void
      {
         var _loc3_:§@!%§ = null;
         var _loc4_:int = 0;
         var _loc2_:int = this.§;!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!7§[_loc2_];
            if(_loc3_.§[§)
            {
               if((_loc4_ = _loc3_.update(param1)) != -1)
               {
                  if(_loc4_ < this.§do §.length && this.§do §[_loc4_] != null)
                  {
                     this.§2p§(_loc4_,true,true,true);
                  }
                  this.§;!7§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§5O§.push(§'T§.createExplosion(param1,param2,param3));
         §+!§.§4c§("TntExplosions","ChannelExplosions");
      }
      
      public function §^!!§(param1:Number, param2:Number) : int
      {
         var _loc4_:§<!3§ = null;
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§do §[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §<!3§
      {
         var _loc4_:§<!3§ = null;
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§do §[_loc3_])
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
      
      public function getObject(param1:int) : §<!3§
      {
         return this.§do §[param1];
      }
      
      public function §[!o§(param1:Number, param2:Number) : void
      {
         var _loc4_:§<!3§ = null;
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§do §[_loc3_] as §<!3§).§[!o§(param2,param1);
            _loc3_--;
         }
      }
      
      private function § !R§(param1:§<!3§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§<!3§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§!!>§ == param1.§1!s§)
         {
            if(this.§"2§ < §;J§.§6!F§)
            {
               this.§"2§ += param2 * §;J§.§-H§;
            }
            param1.getBody().SetAngularVelocity(param2 * this.§"2§);
            this.§4!]§ = 0;
         }
         else if(this.§4!]§ == 0)
         {
            this.§4!]§ = this.§-n§.§1z§;
         }
         if(param1.§^!%§() || this.§+!Z§(param1) || this.§4!]§ > 0 && this.§-n§.§1z§ > this.§4!]§ + §;J§.§1!o§)
         {
            if(this.mMightyEagleTimer < §;J§.§]!f§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §;J§.§<m§ && _loc4_ > §;J§.§<m§)
               {
                  §+!§.§4c§("Mighty_Eagle_Selected_1","ChannelBird");
                  §+!§.§4c§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §;J§.§]!f§)
               {
                  _loc5_ = param1.getBody().GetPosition().x - §;J§.§1]§;
                  _loc6_ = param1.getBody().GetPosition().y - §;J§.§1]§ * §;J§.§do§ * 1.07;
                  if(this.§+!Z§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§;J§.§6!g§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§4!]§ = 0;
                  _loc7_.§0!E§.§&!Q§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §]9§(param1:§<!3§, param2:Number) : Boolean
      {
         var _loc5_:§<!3§ = null;
         if(!this.§,!T§ && this.mMightyEagleTimer > §;J§.§&v§)
         {
            this.§,!T§ = true;
            this.§-n§.§6g§();
         }
         this.mMightyEagleTimer += param2;
         this.§-n§.particles.§1&§(§!r§.§2!H§,§<!r§.§1N§,§!r§.§^!F§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§!r§.§^!O§(param1.§>p§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§9p§(§;J§.§&!e§ * param2);
            _loc4_ = -1;
            if(this.§-P§)
            {
               this.§-P§ = false;
               this.§-n§.§!S§();
               param1.§97§(§@T§.§"!=§);
               this.mSardineCanAdded = false;
               param1.§0!E§.§+!O§ = true;
               param1.§0!E§.§]T§();
               for each(_loc5_ in this.§do §)
               {
                  if(_loc5_ && _loc5_.§%P§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+!4§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§do §)
               {
                  if(_loc5_ && _loc5_.§%P§())
                  {
                     _loc5_.applyDamage(_loc5_.§1!s§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§-P§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§0!?§(param2,new Point(1,_loc4_ * §;J§.§do§),§;J§.§ !$§);
         return false;
      }
      
      private function §0!d§() : void
      {
         var _loc1_:§'T§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§<!3§ = null;
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
         while(this.§5O§.length > 0)
         {
            _loc1_ = this.§5O§.shift();
            _loc2_ = _loc1_.§>!d§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§do §)
            {
               _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§>!d§)
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
                     _loc6_.getBody().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§while§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§-n§.particles.§1&§(this.§?=§(_loc1_.type),§<!r§.§1N§,§!r§.§0!_§,_loc3_,_loc4_,600,"",§!r§.§4Z§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§-n§.particles.§1&§(§!r§.§3!?§,§<!r§.§1N§,§!r§.§^!F§,_loc3_,_loc4_,_loc16_,"",§!r§.§4Z§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §?=§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §!r§.§#!"§;
      }
      
      public function §5<§(param1:Number) : void
      {
         var _loc2_:§<!3§ = null;
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§do §[_loc3_];
            if(_loc2_.§4!t§())
            {
               if(this.§ !R§(_loc2_,param1))
               {
                  this.§2p§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§='§())
            {
               this.§]9§(_loc2_,param1);
            }
            else if(this.§+!Z§(_loc2_))
            {
               _loc2_.§97§(§@T§.§9A§);
               this.§2p§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§97§(§@T§.§9A§);
               this.§2p§(_loc3_,false,true,true);
            }
            else if(_loc2_.§;L§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§0!d§();
      }
      
      private function §+!4§() : void
      {
         var _loc1_:§1M§ = null;
         for each(_loc1_ in this.§2^§)
         {
            this.§-n§.§[!U§.§&4§.§;!S§(_loc1_.§0i§);
         }
      }
      
      public function §,4§() : Boolean
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§do §.length)
         {
            _loc2_ = this.§do §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §+!Z§(param1:§<!3§) : Boolean
      {
         if(param1 && param1.§9U§.§2<§() != §`4§.§4A§ && this.§-n§.borders.§&!L§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §2p§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§1M§ = null;
         var _loc7_:§@!%§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§<!3§;
         if((_loc5_ = this.§do §[param1]).§%P§())
         {
            ++this.§99§;
         }
         else if(_loc5_.§;L§())
         {
            --this.§>L§;
         }
         if(_loc5_ == this.§-n§.activeObject)
         {
            this.§-n§.activeObject = null;
         }
         if(param2)
         {
            this.§-n§.addScore(_loc5_.§9U§.score,§ !p§.§8A§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§!r§.§&M§(_loc5_.§>p§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§-n§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§ c§(_loc5_.sprite);
         this.§[!;§(_loc5_);
         for each(_loc6_ in this.§2^§)
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
         for each(_loc7_ in this.§;!7§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§[§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
            if(_loc7_.id2 >= param1)
            {
               --_loc7_.id2;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§do §[param1] = null;
         this.§do §.splice(param1,1);
      }
      
      private function § c§(param1:Sprite) : void
      {
         if(this.§`H§.contains(param1))
         {
            this.§`H§.removeChild(param1);
            return;
         }
         if(this.§0G§.contains(param1))
         {
            this.§0G§.removeChild(param1);
            return;
         }
         if(this.§6!e§.contains(param1))
         {
            this.§6!e§.removeChild(param1);
            return;
         }
         if(this.§?g§.contains(param1))
         {
            this.§?g§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§<!3§) : void
      {
         if(param1.§^!a§().toUpperCase() == "WHITE_EGG" || param1.§`x§())
         {
            if(param1.§>p§.toUpperCase() == §7!7§.§6!T§)
            {
               this.addExplosions(§'T§.§8&§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§'T§.§]!A§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§2p§(this.§do §.indexOf(param1),param2,param3,param4);
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         this.§]!,§.x = -param1;
         this.§]!,§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§<!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§do §.length)
         {
            _loc3_ = this.§do §[_loc2_] as §<!3§;
            if(_loc3_ && _loc3_.§%P§() && _loc3_.§!!>§ > 0)
            {
               if(!param1 || _loc3_.§0!E§.mTryToBlink <= 0 && _loc3_.§0!E§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§<!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§do §.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§do §[_loc3_] as §<!3§) && _loc4_.§%P§() && _loc4_.§!!>§ > 0)
            {
               if(!param1 || _loc4_.§0!E§.mTryToBlink <= 0 && _loc4_.§0!E§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function getBlockCount() : int
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§do §)
         {
            if(_loc2_ && (_loc2_.§;!Z§() || _loc2_.§`T§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§do §)
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
         var _loc3_:§<!3§ = null;
         var _loc2_:int = this.§do §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§do §[_loc2_];
            if(_loc3_ && _loc3_.§%P§() && _loc3_.§!!>§ > 0)
            {
               _loc3_.§0!E§.mTryToScream = §6!N§.§0+§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §9h§() : Boolean
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = this.§do §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc2_ && _loc2_.§;L§() && _loc2_.§!!>§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = this.§do §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc2_ && _loc2_.§!!>§ > 0 && _loc2_.§&!j§ != §]!@§.§!!3§)
            {
               if(_loc2_.§'c§() && !_loc2_.§^!%§())
               {
                  return false;
               }
               if(_loc2_.§;L§() && _loc2_.§!!>§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §'2§(param1:Boolean = false) : §<!3§
      {
         var _loc5_:int = 0;
         var _loc6_:§<!3§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§do §.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§do §[_loc5_]) && _loc6_.§%P§() && _loc6_.§!!>§ > 0)
               {
                  if(!param1 || _loc6_.§0!E§.mTryToBlink <= 0 && _loc6_.§0!E§.mTryToScream <= 0)
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
      
      public function §]+§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§do §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§do §[_loc2_] as §<!3§).§9U§.score;
            if((this.§do §[_loc2_] as §<!3§).§'c§())
            {
               _loc1_ += §7E§.§5X§.getValue() * int((this.§do §[_loc2_] as §<!3§).§1!s§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§-n§.slingshot.§]+§());
      }
      
      public function §]n§(param1:§<!3§, param2:§<!3§) : Boolean
      {
         if(param1.§;L§() && param2.§;L§())
         {
            return true;
         }
         if(!param1.§8l§() && !param2.§8l§())
         {
            return true;
         }
         return false;
      }
      
      public function §#!Y§() : void
      {
         this.mSardineCanAdded = true;
         this.§>L§ = 0;
      }
      
      public function objectCollision(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§='§() || param2.§%P§())
            {
               param2.applyDamage(param2.§1!s§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§='§() || param1.§%P§())
            {
               param1.applyDamage(param1.§1!s§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §;J§.§]!f§)
         {
            if(param1.§4!t§() || param2.§4!t§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§]n§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§!&§(param2.§^!a§());
         var _loc5_:Number = param1.§-p§(param2.§^!a§());
         var _loc6_:Number = param2.§!&§(param1.§^!a§());
         var _loc7_:Number = param2.§-p§(param1.§^!a§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§!!>§);
         var _loc14_:Number = Math.max(0,param2.§!!>§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§;L§(),_loc14_ == param2.§1!s§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§;L§(),_loc13_ == param1.§1!s§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§'!S§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§'!S§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=B§() : void
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = this.§do §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc2_ != null && _loc2_.§%P§())
            {
               this.§2p§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §6!E§() : void
      {
         var _loc2_:§<!3§ = null;
         var _loc1_:int = this.§do §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§do §[_loc1_] as §<!3§;
            if(_loc2_ != null && _loc2_.§`x§())
            {
               this.§2p§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§do §.length;
      }
      
      public function §9!-§(param1:§2! §) : void
      {
         var _loc4_:§<!3§ = null;
         var _loc5_:§[!k§ = null;
         var _loc6_:§[F§ = null;
         var _loc7_:§1M§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§do §.length)
         {
            if((_loc4_ = this.§do §[_loc2_]).§[U§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §[!k§()).angle = _loc4_.§;x§();
                  _loc5_.id = _loc4_.§>p§;
                  _loc5_.x = _loc4_.getBody().GetPosition().x;
                  _loc5_.y = _loc4_.getBody().GetPosition().y;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2^§.length)
         {
            _loc7_ = this.§2^§[_loc3_];
            _loc6_ = new §[F§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§@!g§,_loc7_.§'@§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§'_§,_loc7_.motorSpeed,_loc7_.§-a§,_loc7_.maxTorque);
            param1.§"g§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §7!S§() : void
      {
         var _loc1_:int = 0;
         while(this.§do §.length > _loc1_)
         {
            if(this.§do §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§do §[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§do §.length)
         {
            if(this.§do §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§do §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§?!t§ = param1;
         this.§?O§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§do §.length)
         {
            if(this.§do §[_loc2_].isTexture())
            {
               this.§do §[_loc2_].sprite.visible = !this.§?!t§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§'0§ = param1;
      }
      
      public function §=!C§() : Boolean
      {
         return this.§'0§;
      }
      
      public function §6!&§() : int
      {
         return this.§@Q§;
      }
      
      public function § !q§() : int
      {
         return this.§99§;
      }
   }
}
