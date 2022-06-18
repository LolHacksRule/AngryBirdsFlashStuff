package §[>§
{
   import §'G§.§1n§;
   import §'G§.§2!]§;
   import §'G§.§5e§;
   import §'G§.§6!]§;
   import §'G§.§?[§;
   import §+!E§.§>!E§;
   import §+a§.Texture;
   import §7!7§.§return§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §8<§.b2PrismaticJoint;
   import §8<§.b2WeldJoint;
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import §9T§.§'_§;
   import §9T§.§,S§;
   import §9T§.§2s§;
   import §9T§.§=!^§;
   import §=0§.§^L§;
   import §>!H§.§-7§;
   import §>!H§.§7D§;
   import §>!H§.§8!L§;
   import §>!H§.§^!<§;
   import §[R§.b2Vec2;
   import §^9§.§3A§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!'§
   {
       
      
      protected var §6! §:Vector.<§`,§>;
      
      protected var §!g§:int;
      
      public var §&?§:§=!^§;
      
      public var §`v§:Vector.<§5!$§>;
      
      protected var §3!3§:Sprite;
      
      protected var §]@§:Sprite;
      
      private var §^_§:Sprite;
      
      private var §#f§:Sprite;
      
      private var §6!Q§:Sprite;
      
      protected var §`+§:Vector.<Texture>;
      
      protected var §<Y§:Vector.<§-7§>;
      
      protected var § !4§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §=!#§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>P§:Boolean = false;
      
      protected var §[z§:Number;
      
      protected var §`!C§:int;
      
      protected var §0,§:Vector.<§8!L§>;
      
      protected var §#7§:int = 0;
      
      private var §]h§:int = 0;
      
      private var §%!D§:int = 0;
      
      private var §=§:int;
      
      private var §7T§:Boolean = true;
      
      private var §'r§:Boolean = true;
      
      public function §'!'§(param1:§=!^§, param2:§3A§, param3:Sprite)
      {
         var _loc5_:§-7§ = null;
         var _loc6_:§^!<§ = null;
         var _loc7_:§`,§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§`,§ = null;
         var _loc11_:§`,§ = null;
         this.§6! § = new Vector.<§`,§>();
         this.§`v§ = new Vector.<§5!$§>();
         this.§`+§ = new Vector.<Texture>();
         this.§[z§ = this.§'_§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§0,§ = new Vector.<§8!L§>();
         super();
         this.§&?§ = param1;
         this.§!g§ = 0;
         this.§]@§ = param3;
         this.§]@§.§`!M§ = false;
         this.§'r§ = true;
         this.§7T§ = true;
         this.§3!3§ = new Sprite();
         this.§^_§ = new Sprite();
         this.§#f§ = new Sprite();
         this.§6!Q§ = new Sprite();
         this.§]@§.addChild(this.§3!3§);
         this.§]@§.addChild(this.§^_§);
         this.§]@§.addChild(this.§#f§);
         this.§]@§.addChild(this.§6!Q§);
         this.addObject(§>!E§.§%!4§(param2.theme).§9!>§,(this.§&?§.§5!V§.§'M§ + this.§&?§.§5!V§.§9c§) / 2,this.§&?§.§5!V§.§?!$§ + §,S§.§2!6§);
         this.§=§ = this.§6! §.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§3!N§)
         {
            _loc6_ = param2.§+D§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§@R§();
         this.§4X§(true);
         this.§<Y§ = new Vector.<§-7§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§&!B§)
         {
            this.§<Y§.push(§-7§.§6a§(param2.§#X§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§<Y§)
         {
            _loc8_ = _loc5_.index1 + this.§=§;
            _loc9_ = _loc5_.index2 + this.§=§;
            if(_loc8_ < this.§6! §.length && _loc9_ < this.§6! §.length)
            {
               _loc10_ = this.§6! §[_loc8_];
               _loc11_ = this.§6! §[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §7D§.§8!E§)
               {
                  _loc5_.§#C§ = this.§&?§.mLevelEngine.mWorld.§'C§(_loc5_.§"X§(_loc10_,_loc11_));
               }
               else
               {
                  this.§0,§.push(new §8!L§(_loc8_,_loc9_,_loc5_.§ S§));
               }
            }
         }
      }
      
      protected function get §'_§() : Class
      {
         return §'_§;
      }
      
      public function get § L§() : Sprite
      {
         return this.§6!Q§;
      }
      
      public function get §?2§() : Sprite
      {
         return this.§]@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§6! §.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§6! § = null;
         this.§0,§ = null;
         if(this.§]@§)
         {
            this.§]@§.dispose();
            this.§]@§ = null;
            this.§3!3§ = null;
            this.§6!Q§ = null;
            this.§^_§ = null;
            this.§#f§ = null;
         }
         while(this.§`+§.length > 0)
         {
            _loc1_ = this.§`+§.pop();
            this.§&?§.§!c§.§]%§(_loc1_);
         }
      }
      
      private function §4X§(param1:Boolean) : void
      {
         this.§3!3§.visible = param1;
      }
      
      private function §@R§() : void
      {
         var _loc3_:§`,§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§"z§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`,§> = new Vector.<§`,§>();
         for each(_loc3_ in this.§6! §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§]@§);
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
            this.§<Z§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§7!Z§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§&?§.§!c§.§1u§(_loc10_);
            this.§`+§.push(_loc12_);
            (_loc13_ = new §"z§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§3!3§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §7!Z§(param1:Vector.<§`,§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§`,§ = null;
         var _loc11_:§2!]§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§!P§.shape).§#b§();
            _loc13_ = new Rectangle(_loc12_[0].x / §=!^§.§4#§ * param6,_loc12_[0].y / §=!^§.§4#§ * param6,(_loc12_[1].x - _loc12_[0].x) / §=!^§.§4#§ * param6,(_loc12_[1].y - _loc12_[0].y) / §=!^§.§4#§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§9!4§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §<Z§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§&?§.background.§@!M§();
         var _loc5_:§^L§;
         if(_loc5_ = this.§&?§.§ set§.§ r§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`,§
      {
         var _loc10_:§`,§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §8]§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §5U§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §9!M§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §[S§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §<F§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §7!]§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,,§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §;J§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#7§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`,§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§`,§;
         if((_loc11_ = this.§ `§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§7T§;
            this.§6! §[this.§6! §.length] = _loc11_;
         }
         else
         {
            this.§6! §[this.§6! §.length] = _loc11_;
         }
         if(_loc11_ is §;J§ && !_loc11_.§throw§())
         {
            this.§^_§.addChild(_loc10_);
            ++this.§#7§;
         }
         else if(_loc11_.front || param9)
         {
            this.§6!Q§.addChild(_loc10_);
         }
         else
         {
            this.§#f§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§&?§.§^!O§(_loc11_);
         }
         if(param6)
         {
            this.§&?§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §6a§(param1:int, param2:§`,§, param3:§`,§) : §-7§
      {
         var _loc6_:§-7§ = null;
         var _loc4_:int = this.§6! §.indexOf(param2) - this.§=§;
         var _loc5_:int = this.§6! §.indexOf(param3) - this.§=§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §-7§(§7D§.§2%§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§#C§ = this.§&?§.mLevelEngine.mWorld.§'C§(_loc6_.§"X§(param2,param3));
            this.§<Y§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §6A§(param1:§-7§) : void
      {
         if(!(param1.§#C§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§`,§ = this.§+D§(param1.index1 + this.§=§);
         var _loc3_:§`,§ = this.§+D§(param1.index2 + this.§=§);
         this.§&?§.mLevelEngine.mWorld.§6z§(param1.§#C§);
         param1.§#C§ = this.§&?§.mLevelEngine.mWorld.§'C§(param1.§"X§(_loc2_,_loc3_));
      }
      
      public function §+!+§(param1:§`,§) : Vector.<§-7§>
      {
         var _loc4_:§-7§ = null;
         var _loc2_:Vector.<§-7§> = new Vector.<§-7§>();
         var _loc3_:int = this.§6! §.indexOf(param1) - this.§=§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§<Y§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §4,§() : Vector.<§-7§>
      {
         return this.§<Y§;
      }
      
      public function §^!M§(param1:§`,§) : void
      {
         var _loc2_:int = this.§6! §.indexOf(param1) - this.§=§;
         var _loc3_:int = this.§<Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§<Y§[_loc3_].index1 == _loc2_ || this.§<Y§[_loc3_].index2 == _loc2_)
            {
               this.§<Y§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'k§(param1:§`,§, param2:§`,§) : Boolean
      {
         var _loc3_:int = this.§6! §.indexOf(param1) - this.§=§;
         var _loc4_:int = this.§6! §.indexOf(param2) - this.§=§;
         var _loc5_:int = this.§<Y§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§<Y§[_loc5_].index1 == _loc3_ && this.§<Y§[_loc5_].index2 == _loc4_ || this.§<Y§[_loc5_].index1 == _loc4_ && this.§<Y§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function § `§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`,§
      {
         var _loc10_:§`,§ = null;
         var _loc11_:§1n§ = null;
         var _loc12_:§1n§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§%!D§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §6!]§.§'!Q§(param2);
            _loc10_ = new §,!?§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §6!]§.§'!Q§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §6!]§.§'!Q§(param2);
            }
            if(_loc12_.§!!&§ == §1n§.§1w§ || _loc12_.§!!&§ == §1n§.§;!H§)
            {
               _loc10_ = new §0k§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §`,§(this,param1,this.§&?§.mLevelEngine.mWorld,this.§&?§,this.§!g§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§[!+§();
         return _loc10_;
      }
      
      private function §[!+§() : String
      {
         var _loc3_:§`,§ = null;
         var _loc1_:int = this.§6! §.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§6! §)
            {
               if(_loc3_.uniqueID == _loc1_.toString())
               {
                  _loc1_++;
                  _loc2_ = false;
                  break;
               }
            }
         }
         return _loc1_.toString();
      }
      
      public function §,!X§(param1:Number) : void
      {
         var _loc3_:§`,§ = null;
         var _loc2_:int = this.§6! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6! §[_loc2_] as §`,§;
            if(_loc3_)
            {
               if(_loc3_.§8!?§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§^!I§();
                  _loc3_.§=!5§();
               }
            }
            _loc2_--;
         }
         this.§ ]§(param1);
      }
      
      protected function § ]§(param1:Number) : void
      {
         var _loc3_:§-7§ = null;
         var _loc4_:§8!L§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`,§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§0,§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§0,§[_loc2_]).§"!6§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§&§("block_" + _loc5_))
                  {
                     this.§>1§(_loc6_,true,true,true);
                  }
                  this.§0,§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§<Y§)
         {
            if(_loc3_.type == §7D§.§#V§ && _loc3_.§]r§)
            {
               _loc7_ = (_loc3_.§#C§ as b2PrismaticJoint).§5!"§();
               _loc8_ = (_loc3_.§#C§ as b2PrismaticJoint).§0!E§();
               if(_loc3_.§#!!§ && _loc3_.§>!A§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§#C§ as b2PrismaticJoint).§9d§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§`v§.push(§5!$§.§9v§(param1,param2,param3));
         §return§.§2!S§("TntExplosions","ChannelExplosions");
      }
      
      public function §]!U§(param1:Number, param2:Number) : int
      {
         var _loc4_:§`,§ = null;
         var _loc3_:int = this.§6! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§6! §[_loc3_])
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
      
      public function §4n§(param1:Number, param2:Number) : §`,§
      {
         var _loc4_:§`,§ = null;
         var _loc3_:int = this.§6! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§6! §[_loc3_])
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
      
      public function §+D§(param1:int) : §`,§
      {
         return this.§6! §[param1];
      }
      
      public function §[l§(param1:Number, param2:Number) : void
      {
         var _loc4_:§`,§ = null;
         var _loc3_:int = this.§6! §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§6! §[_loc3_] as §`,§).§[l§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §@<§(param1:§`,§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§`,§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§8!?§ == param1.§6!_§)
         {
            if(this.§[z§ < this.§'_§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§[z§ += param2 * this.§'_§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§7!<§().§&![§(param2 * this.§[z§);
            this.§`!C§ = 0;
         }
         else if(this.§`!C§ == 0)
         {
            this.§`!C§ = this.§&?§.§!!E§;
         }
         if(param1.§'[§() || this.§!=§(param1) || this.§`!C§ > 0 && this.§&?§.§!!E§ > this.§`!C§ + this.§'_§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§'_§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§'_§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§'_§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §return§.§2!S§("Mighty_Eagle_Selected_1","ChannelBird");
                  §return§.§2!S§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§'_§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§7!<§().GetPosition().x - this.§'_§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§7!<§().GetPosition().y - this.§'_§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§'_§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§!=§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§'_§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§`!C§ = 0;
                  _loc7_.§#!9§.§>U§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function § w§(param1:§`,§, param2:Number) : Boolean
      {
         var _loc5_:§`,§ = null;
         if(this.§'_§.MIGHTY_EAGLE_USE_SHADE && !this.§>P§ && this.mMightyEagleTimer > this.§'_§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>P§ = true;
            this.§&?§.§4&§();
         }
         this.mMightyEagleTimer += param2;
         this.§&?§.particles.addParticle(§%v§.§4!W§,§2!4§.§8!Q§,§%v§.§[H§,param1.§7!<§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§7!<§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§%v§.§!v§(param1.§@!]§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§,2§(this.§'_§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§=!#§)
            {
               this.§=!#§ = false;
               this.§&?§.§?c§();
               param1.§]!%§(§5e§.§9_§);
               this.mSardineCanAdded = false;
               param1.§#!9§.§?u§ = true;
               param1.§#!9§.§&8§();
               for each(_loc5_ in this.§6! §)
               {
                  if(_loc5_ && _loc5_.§7Q§())
                  {
                     _loc5_.§7!<§().SetAwake(true);
                     _loc5_.§7!<§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§0m§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§6! §)
               {
                  if(_loc5_ && _loc5_.§7Q§())
                  {
                     _loc5_.applyDamage(_loc5_.§6!_§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§7!<§().GetPosition().y >= -5.5;
            this.§=!#§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§^j§(param2,new Point(this.§'_§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§'_§.MIGHTY_EAGLE_Y_CHANGE),this.§'_§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §4_§() : void
      {
         var _loc1_:§5!$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`,§ = null;
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
         while(this.§`v§.length > 0)
         {
            _loc1_ = this.§`v§.shift();
            _loc2_ = _loc1_.§-!,§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§6! §)
            {
               _loc8_ = _loc6_.§7!<§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§7!<§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§-!,§)
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
                     _loc6_.§7!<§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§?_§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§#!Y§(_loc6_,_loc14_);
               }
            }
            this.§&?§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§2!4§.§8!Q§,§%v§.§'c§,_loc3_,_loc4_,600,"",§%v§.§1!^§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§&?§.particles.addParticle(§%v§.§'N§,§2!4§.§8!Q§,§%v§.§[H§,_loc3_,_loc4_,_loc16_,"",§%v§.§1!^§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §#!Y§(param1:§`,§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §%v§.§%5§;
      }
      
      public function §8-§(param1:Number) : void
      {
         var _loc2_:§`,§ = null;
         var _loc3_:int = this.§6! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§6! §[_loc3_];
            if(_loc2_.§8!<§())
            {
               if(this.§@<§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§throw§())
            {
               this.§ w§(_loc2_,param1);
            }
            else if(this.§!=§(_loc2_))
            {
               _loc2_.§]!%§(§5e§.§2!_§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§]!%§(§5e§.§2!_§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§ !Y§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§4_§();
      }
      
      private function §0m§() : void
      {
         var _loc1_:§-7§ = null;
         for each(_loc1_ in this.§<Y§)
         {
            if(_loc1_.type != §7D§.§8!E§)
            {
               this.§&?§.mLevelEngine.mWorld.§6z§(_loc1_.§#C§);
            }
         }
      }
      
      public function §`l§() : Boolean
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6! §.length)
         {
            _loc2_ = this.§6! §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §!=§(param1:§`,§) : Boolean
      {
         if(param1 && param1.§!P§.§%j§() != §?[§.§0!S§ && this.§&?§.§5!V§.§;i§(param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§-7§ = null;
         var _loc7_:§8!L§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§`,§;
         if((_loc5_ = this.§6! §[param1]).§7Q§())
         {
            ++this.§]h§;
         }
         else if(_loc5_.§ !Y§())
         {
            --this.§#7§;
         }
         if(_loc5_ == this.§&?§.activeObject)
         {
            this.§&?§.activeObject = null;
         }
         if(param2)
         {
            this.§&?§.addScore(_loc5_.§!P§.score,§2s§.§9F§,true,_loc5_.§7!<§().GetPosition().x,_loc5_.§7!<§().GetPosition().y - 3,§%v§.§]§(_loc5_.§@!]§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§&?§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§]6§(_loc5_.sprite);
         this.§^!M§(_loc5_);
         for each(_loc6_ in this.§<Y§)
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
         for each(_loc7_ in this.§0,§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§"!6§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§6! §[param1] = null;
         this.§6! §.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§`,§, param2:§2!4§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §]6§(param1:Sprite) : void
      {
         if(this.§#f§.contains(param1))
         {
            this.§#f§.removeChild(param1);
            return;
         }
         if(this.§^_§.contains(param1))
         {
            this.§^_§.removeChild(param1);
            return;
         }
         if(this.§3!3§.contains(param1))
         {
            this.§3!3§.removeChild(param1);
            return;
         }
         if(this.§6!Q§.contains(param1))
         {
            this.§6!Q§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§`,§) : void
      {
         if(param1.§=!8§().toUpperCase() == "WHITE_EGG" || param1.§#P§())
         {
            if(param1.§@!]§.toUpperCase() == §[S§.§=!<§)
            {
               this.addExplosions(§5!$§.§ T§,param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§5!$§.§+!C§,param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y);
            }
         }
      }
      
      public function §>1§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§6! §.indexOf(param1),param2,param3,param4);
      }
      
      public function §^!E§(param1:Number, param2:Number) : void
      {
         this.§]@§.x = -param1;
         this.§]@§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§`,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6! §.length)
         {
            _loc3_ = this.§6! §[_loc2_] as §`,§;
            if(_loc3_ && _loc3_.§7Q§() && _loc3_.§8!?§ > 0)
            {
               if(!param1 || _loc3_.§#!9§.mTryToBlink <= 0 && _loc3_.§#!9§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#!6§(param1:Boolean = false) : int
      {
         var _loc4_:§`,§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§6! §.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§6! §[_loc3_] as §`,§) && _loc4_.§7Q§() && _loc4_.§8!?§ > 0)
            {
               if(!param1 || _loc4_.§#!9§.mTryToBlink <= 0 && _loc4_.§#!9§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §3!=§() : int
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6! §)
         {
            if(_loc2_ && (_loc2_.§-S§() || _loc2_.§2i§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §6!L§() : int
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§6! §)
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
         var _loc3_:§`,§ = null;
         var _loc2_:int = this.§6! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6! §[_loc2_];
            if(_loc3_ && _loc3_.§7Q§() && _loc3_.§8!?§ > 0)
            {
               _loc3_.§#!9§.mTryToScream = §]S§.§]T§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §=!Z§() : Boolean
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = this.§6! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6! §[_loc1_] as §`,§;
            if(_loc2_ && _loc2_.§ !Y§() && _loc2_.§8!?§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = this.§6! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6! §[_loc1_] as §`,§;
            if(_loc2_ && _loc2_.§8!?§ > 0 && _loc2_.§!!&§ != §1n§.§3Q§)
            {
               if(_loc2_.§ f§() && !_loc2_.§'[§())
               {
                  return false;
               }
               if(_loc2_.§ !Y§() && _loc2_.§8!?§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!R§(param1:Boolean = false) : §`,§
      {
         var _loc5_:int = 0;
         var _loc6_:§`,§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§6! §.length;
         var _loc3_:int = 1 + Math.random() * this.§#!6§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§6! §[_loc5_]) && _loc6_.§7Q§() && _loc6_.§8!?§ > 0)
               {
                  if(!param1 || _loc6_.§#!9§.mTryToBlink <= 0 && _loc6_.§#!9§.mTryToScream <= 0)
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
      
      public function §,!1§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§6! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§6! §[_loc2_] as §`,§).§!P§.score;
            if((this.§6! §[_loc2_] as §`,§).§ f§())
            {
               _loc1_ += §=!^§.§=;§.getValue() * int((this.§6! §[_loc2_] as §`,§).§6!_§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§&?§.slingshot.§,!1§());
      }
      
      public function §7!B§(param1:§`,§, param2:§`,§) : Boolean
      {
         if(param1.§ !Y§() && param2.§ !Y§())
         {
            return true;
         }
         if(!param1.§1G§() && !param2.§1G§())
         {
            return true;
         }
         return false;
      }
      
      public function §+!G§() : void
      {
         this.mSardineCanAdded = true;
         this.§#7§ = 0;
      }
      
      public function objectCollision(param1:§`,§, param2:§`,§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§throw§() || param2.§7Q§())
            {
               param2.applyDamage(param2.§6!_§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§throw§() || param1.§7Q§())
            {
               param1.applyDamage(param1.§6!_§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§'_§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§8!<§() || param2.§8!<§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§7!B§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§>!D§(param2.§=!8§());
         var _loc5_:Number = param1.§<Q§(param2.§=!8§());
         var _loc6_:Number = param2.§>!D§(param1.§=!8§());
         var _loc7_:Number = param2.§<Q§(param1.§=!8§());
         var _loc8_:Number = param1.§7!<§().GetMass() * param1.§7!<§().GetLinearVelocity().x - param2.§7!<§().GetMass() * param2.§7!<§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§7!<§().GetMass() * param1.§7!<§().GetLinearVelocity().y - param2.§7!<§().GetMass() * param2.§7!<§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§8!?§);
         var _loc14_:Number = Math.max(0,param2.§8!?§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ !Y§(),_loc14_ == param2.§6!_§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ !Y§(),_loc13_ == param1.§6!_§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§<!W§(new b2Vec2(param2.§7!<§().GetLinearVelocity().x * _loc18_,param2.§7!<§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§<!W§(new b2Vec2(param1.§7!<§().GetLinearVelocity().x * _loc19_,param1.§7!<§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §3a§() : void
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = this.§6! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6! §[_loc1_] as §`,§;
            if(_loc2_ != null && _loc2_.§7Q§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §continue§() : void
      {
         var _loc2_:§`,§ = null;
         var _loc1_:int = this.§6! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6! §[_loc1_] as §`,§;
            if(_loc2_ != null && _loc2_.§#P§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2!B§() : int
      {
         return this.§6! §.length;
      }
      
      public function §@F§(param1:§3A§) : void
      {
         var _loc4_:§`,§ = null;
         var _loc5_:§^!<§ = null;
         var _loc6_:§7D§ = null;
         var _loc7_:§-7§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6! §.length)
         {
            if(!(_loc4_ = this.§6! §[_loc2_]).isGround())
            {
               (_loc5_ = new §^!<§()).angle = _loc4_.§9!4§();
               _loc5_.id = _loc4_.§@!]§;
               _loc5_.x = _loc4_.§7!<§().GetPosition().x;
               _loc5_.y = _loc4_.§7!<§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§<Y§.length)
         {
            _loc7_ = this.§<Y§[_loc3_];
            _loc6_ = new §7D§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§6?§,_loc7_.§#!!§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§>!A§,_loc7_.motorSpeed,_loc7_.§]r§,_loc7_.maxTorque);
            param1.§7!X§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §3G§() : void
      {
         var _loc1_:int = 0;
         while(this.§6! §.length > _loc1_)
         {
            if(this.§6! §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§>1§(this.§6! §[_loc1_]);
            }
         }
      }
      
      public function §!9§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§6! §.length)
         {
            if(this.§6! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§6! §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§7T§ = param1;
         this.§4X§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6! §.length)
         {
            if(this.§6! §[_loc2_].isTexture())
            {
               this.§6! §[_loc2_].sprite.visible = !this.§7T§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§'r§ = param1;
      }
      
      public function §-!Y§() : Boolean
      {
         return this.§'r§;
      }
      
      public function §0!!§() : int
      {
         return this.§%!D§;
      }
      
      public function §7!'§() : int
      {
         return this.§]h§;
      }
      
      public function §&§(param1:String) : §`,§
      {
         var _loc3_:§`,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6! §.length)
         {
            _loc3_ = this.§6! §[_loc2_] as §`,§;
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
