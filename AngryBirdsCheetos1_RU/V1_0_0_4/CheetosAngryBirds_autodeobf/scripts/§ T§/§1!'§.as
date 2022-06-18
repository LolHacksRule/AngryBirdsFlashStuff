package § T§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §#K§.§,3§;
   import §+!U§.§ ]§;
   import §+!U§.§!#§;
   import §+!U§.§]q§;
   import §+!U§.§^!S§;
   import §-!_§.§?!!§;
   import §1!A§.§;a§;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §5n§.b2PrismaticJoint;
   import §5n§.b2WeldJoint;
   import §5x§.§&o§;
   import §5x§.§6T§;
   import §5x§.§<!8§;
   import §5x§.§]R§;
   import §5x§.override;
   import §7z§.§1K§;
   import §7z§.§3a§;
   import §7z§.§5b§;
   import §7z§.§]!-§;
   import §8K§.§9!S§;
   import §=q§.§?X§;
   import §^n§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!'§
   {
       
      
      protected var §=!L§:Vector.<§"!2§>;
      
      protected var §,!I§:int;
      
      public var §^'§:§]!-§;
      
      public var §,!R§:Vector.<§+!Q§>;
      
      protected var §6K§:Sprite;
      
      protected var §'!1§:Sprite;
      
      private var §8!C§:Sprite;
      
      private var §if §:Sprite;
      
      private var §#!'§:Sprite;
      
      protected var §-d§:Vector.<Texture>;
      
      protected var §%!D§:Vector.<§!#§>;
      
      protected var §0!;§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var § !F§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §^B§:Boolean = false;
      
      protected var §?E§:Number;
      
      protected var §7L§:int;
      
      protected var §-!=§:Vector.<§^!S§>;
      
      protected var §+!]§:int = 0;
      
      private var §,,§:int = 0;
      
      private var §2!7§:int = 0;
      
      private var §>!]§:int;
      
      private var §9o§:Boolean = true;
      
      private var §"g§:Boolean = true;
      
      public function §1!'§(param1:§]!-§, param2:§?X§, param3:Sprite)
      {
         var _loc5_:§!#§ = null;
         var _loc6_:§]q§ = null;
         var _loc7_:§"!2§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§"!2§ = null;
         var _loc11_:§"!2§ = null;
         this.§=!L§ = new Vector.<§"!2§>();
         this.§,!R§ = new Vector.<§+!Q§>();
         this.§-d§ = new Vector.<Texture>();
         this.§?E§ = this.§5b§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§-!=§ = new Vector.<§^!S§>();
         super();
         this.§^'§ = param1;
         this.§,!I§ = 0;
         this.§'!1§ = param3;
         this.§'!1§.§6R§ = false;
         this.§"g§ = true;
         this.§9o§ = true;
         this.§6K§ = new Sprite();
         this.§8!C§ = new Sprite();
         this.§if § = new Sprite();
         this.§#!'§ = new Sprite();
         this.§'!1§.addChild(this.§6K§);
         this.§'!1§.addChild(this.§8!C§);
         this.§'!1§.addChild(this.§if §);
         this.§'!1§.addChild(this.§#!'§);
         this.addObject(§?!!§.§2!U§(param2.theme).§<J§,(this.§^'§.§7Y§.§^!K§ + this.§^'§.§7Y§.§7B§) / 2,this.§^'§.§7Y§.§-q§ + §1K§.§<Z§);
         this.§>!]§ = this.§=!L§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§`_§)
         {
            _loc6_ = param2.§7X§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§`!6§();
         this.§&!H§(true);
         this.§%!D§ = new Vector.<§!#§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§`!C§)
         {
            this.§%!D§.push(§!#§.§23§(param2.§2!^§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§%!D§)
         {
            _loc8_ = _loc5_.index1 + this.§>!]§;
            _loc9_ = _loc5_.index2 + this.§>!]§;
            if(_loc8_ < this.§=!L§.length && _loc9_ < this.§=!L§.length)
            {
               _loc10_ = this.§=!L§[_loc8_];
               _loc11_ = this.§=!L§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != § ]§.§7!P§)
               {
                  _loc5_.§!!4§ = this.§^'§.mLevelEngine.mWorld.§2!!§(_loc5_.§<D§(_loc10_,_loc11_));
               }
               else
               {
                  this.§-!=§.push(new §^!S§(_loc8_,_loc9_,_loc5_.each));
               }
            }
         }
      }
      
      protected function get §5b§() : Class
      {
         return §5b§;
      }
      
      public function get §5G§() : Sprite
      {
         return this.§#!'§;
      }
      
      public function get §[8§() : Sprite
      {
         return this.§'!1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§=!L§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§=!L§ = null;
         this.§-!=§ = null;
         if(this.§'!1§)
         {
            this.§'!1§.dispose();
            this.§'!1§ = null;
            this.§6K§ = null;
            this.§#!'§ = null;
            this.§8!C§ = null;
            this.§if § = null;
         }
         while(this.§-d§.length > 0)
         {
            _loc1_ = this.§-d§.pop();
            this.§^'§.§^!"§.§>P§(_loc1_);
         }
      }
      
      private function §&!H§(param1:Boolean) : void
      {
         this.§6K§.visible = param1;
      }
      
      private function §`!6§() : void
      {
         var _loc3_:§"!2§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§;a§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"!2§> = new Vector.<§"!2§>();
         for each(_loc3_ in this.§=!L§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§'!1§);
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
            this.§9!9§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§8!^§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§^'§.§^!"§.§@U§(_loc10_);
            this.§-d§.push(_loc12_);
            (_loc13_ = new §;a§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§6K§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §8!^§(param1:Vector.<§"!2§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§"!2§ = null;
         var _loc11_:override = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5!B§.shape).§+!<§();
            _loc13_ = new Rectangle(_loc12_[0].x / §]!-§.§>C§ * param6,_loc12_[0].y / §]!-§.§>C§ * param6,(_loc12_[1].x - _loc12_[0].x) / §]!-§.§>C§ * param6,(_loc12_[1].y - _loc12_[0].y) / §]!-§.§>C§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§5o§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §9!9§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§^'§.background.§]!J§();
         var _loc5_:§9!S§;
         if(_loc5_ = this.§^'§.§#!P§.§0!F§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!2§
      {
         var _loc10_:§"!2§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §<U§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §=g§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §?R§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §`!'§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §return§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §<!2§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §<V§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §1M§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§+!]§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"!2§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§"!2§;
         if((_loc11_ = this.§82§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§9o§;
            this.§=!L§[this.§=!L§.length] = _loc11_;
         }
         else
         {
            this.§=!L§[this.§=!L§.length] = _loc11_;
         }
         if(_loc11_ is §1M§ && !_loc11_.§[g§())
         {
            this.§8!C§.addChild(_loc10_);
            ++this.§+!]§;
         }
         else if(_loc11_.front || param9)
         {
            this.§#!'§.addChild(_loc10_);
         }
         else
         {
            this.§if §.addChild(_loc10_);
         }
         if(param5)
         {
            this.§^'§.§&;§(_loc11_);
         }
         if(param6)
         {
            this.§^'§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §23§(param1:int, param2:§"!2§, param3:§"!2§) : §!#§
      {
         var _loc6_:§!#§ = null;
         var _loc4_:int = this.§=!L§.indexOf(param2) - this.§>!]§;
         var _loc5_:int = this.§=!L§.indexOf(param3) - this.§>!]§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §!#§(§ ]§.§"!R§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§!!4§ = this.§^'§.mLevelEngine.mWorld.§2!!§(_loc6_.§<D§(param2,param3));
            this.§%!D§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §'!-§(param1:§!#§) : void
      {
         if(!(param1.§!!4§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§"!2§ = this.§7X§(param1.index1 + this.§>!]§);
         var _loc3_:§"!2§ = this.§7X§(param1.index2 + this.§>!]§);
         this.§^'§.mLevelEngine.mWorld.§1!O§(param1.§!!4§);
         param1.§!!4§ = this.§^'§.mLevelEngine.mWorld.§2!!§(param1.§<D§(_loc2_,_loc3_));
      }
      
      public function §83§(param1:§"!2§) : Vector.<§!#§>
      {
         var _loc4_:§!#§ = null;
         var _loc2_:Vector.<§!#§> = new Vector.<§!#§>();
         var _loc3_:int = this.§=!L§.indexOf(param1) - this.§>!]§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§%!D§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §=!;§() : Vector.<§!#§>
      {
         return this.§%!D§;
      }
      
      public function §+!-§(param1:§"!2§) : void
      {
         var _loc2_:int = this.§=!L§.indexOf(param1) - this.§>!]§;
         var _loc3_:int = this.§%!D§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§%!D§[_loc3_].index1 == _loc2_ || this.§%!D§[_loc3_].index2 == _loc2_)
            {
               this.§%!D§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §5N§(param1:§"!2§, param2:§"!2§) : Boolean
      {
         var _loc3_:int = this.§=!L§.indexOf(param1) - this.§>!]§;
         var _loc4_:int = this.§=!L§.indexOf(param2) - this.§>!]§;
         var _loc5_:int = this.§%!D§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§%!D§[_loc5_].index1 == _loc3_ && this.§%!D§[_loc5_].index2 == _loc4_ || this.§%!D§[_loc5_].index1 == _loc4_ && this.§%!D§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §82§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!2§
      {
         var _loc10_:§"!2§ = null;
         var _loc11_:§6T§ = null;
         var _loc12_:§6T§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§2!7§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §]R§.§;!H§(param2);
            _loc10_ = new §@`§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §]R§.§;!H§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §]R§.§;!H§(param2);
            }
            if(_loc12_.§#!%§ == §6T§.§]b§ || _loc12_.§#!%§ == §6T§.§^q§)
            {
               _loc10_ = new §<>§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §"!2§(this,param1,this.§^'§.mLevelEngine.mWorld,this.§^'§,this.§,!I§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §@u§(param1:Number) : void
      {
         var _loc3_:§"!2§ = null;
         var _loc2_:int = this.§=!L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=!L§[_loc2_] as §"!2§;
            if(_loc3_)
            {
               if(_loc3_.§'!"§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§"T§();
                  _loc3_.§^!X§();
               }
            }
            _loc2_--;
         }
         this.§^!Y§(param1);
      }
      
      protected function §^!Y§(param1:Number) : void
      {
         var _loc3_:§!#§ = null;
         var _loc4_:§^!S§ = null;
         var _loc5_:int = 0;
         var _loc6_:§"!2§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§-!=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§-!=§[_loc2_]).§&R§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§4!J§("block_" + _loc5_))
                  {
                     this.§^g§(_loc6_,true,true,true);
                  }
                  this.§-!=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§%!D§)
         {
            if(_loc3_.type == § ]§.§[j§ && _loc3_.§+!C§)
            {
               _loc7_ = (_loc3_.§!!4§ as b2PrismaticJoint).§^d§();
               _loc8_ = (_loc3_.§!!4§ as b2PrismaticJoint).§>&§();
               if(_loc3_.§--§ && _loc3_.§`A§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§!!4§ as b2PrismaticJoint).§-!#§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§,!R§.push(§+!Q§.§;-§(param1,param2,param3));
         §,3§.§7!=§("TntExplosions","ChannelExplosions");
      }
      
      public function §8!I§(param1:Number, param2:Number) : int
      {
         var _loc4_:§"!2§ = null;
         var _loc3_:int = this.§=!L§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=!L§[_loc3_])
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
      
      public function §,L§(param1:Number, param2:Number) : §"!2§
      {
         var _loc4_:§"!2§ = null;
         var _loc3_:int = this.§=!L§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=!L§[_loc3_])
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
      
      public function §7X§(param1:int) : §"!2§
      {
         return this.§=!L§[param1];
      }
      
      public function §01§(param1:Number, param2:Number) : void
      {
         var _loc4_:§"!2§ = null;
         var _loc3_:int = this.§=!L§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=!L§[_loc3_] as §"!2§).§01§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §,d§(param1:§"!2§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§"!2§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§'!"§ == param1.§get §)
         {
            if(this.§?E§ < this.§5b§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§?E§ += param2 * this.§5b§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§][§().§'!U§(param2 * this.§?E§);
            this.§7L§ = 0;
         }
         else if(this.§7L§ == 0)
         {
            this.§7L§ = this.§^'§.§;!]§;
         }
         if(param1.§2!H§() || this.§,f§(param1) || this.§7L§ > 0 && this.§^'§.§;!]§ > this.§7L§ + this.§5b§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§5b§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§5b§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§5b§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §,3§.§7!=§("Mighty_Eagle_Selected_1","ChannelBird");
                  §,3§.§7!=§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§5b§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§][§().GetPosition().x - this.§5b§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§][§().GetPosition().y - this.§5b§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§5b§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§,f§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§5b§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§7L§ = 0;
                  _loc7_.§9t§.§5!9§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §%?§(param1:§"!2§, param2:Number) : Boolean
      {
         var _loc5_:§"!2§ = null;
         if(this.§5b§.MIGHTY_EAGLE_USE_SHADE && !this.§^B§ && this.mMightyEagleTimer > this.§5b§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§^B§ = true;
            this.§^'§.§!3§();
         }
         this.mMightyEagleTimer += param2;
         this.§^'§.particles.addParticle(§^!_§.§"1§,§0m§.§=!T§,§^!_§.§4t§,param1.§][§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§][§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§^!_§.§2!N§(param1.§9@§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§9f§(this.§5b§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§ !F§)
            {
               this.§ !F§ = false;
               this.§^'§.§3R§();
               param1.§^[§(§&o§.§ !9§);
               this.mSardineCanAdded = false;
               param1.§9t§.§@L§ = true;
               param1.§9t§.§=^§();
               for each(_loc5_ in this.§=!L§)
               {
                  if(_loc5_ && _loc5_.§6!Q§())
                  {
                     _loc5_.§][§().SetAwake(true);
                     _loc5_.§][§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§<!;§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§=!L§)
               {
                  if(_loc5_ && _loc5_.§6!Q§())
                  {
                     _loc5_.applyDamage(_loc5_.§get § * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§][§().GetPosition().y >= -5.5;
            this.§ !F§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§%!#§(param2,new Point(this.§5b§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§5b§.MIGHTY_EAGLE_Y_CHANGE),this.§5b§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §@!?§() : void
      {
         var _loc1_:§+!Q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§"!2§ = null;
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
         while(this.§,!R§.length > 0)
         {
            _loc1_ = this.§,!R§.shift();
            _loc2_ = _loc1_.§&!J§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§=!L§)
            {
               _loc8_ = _loc6_.§][§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§][§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§&!J§)
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
                     _loc6_.§][§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§ @§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§^'§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§0m§.§=!T§,§^!_§.§+!!§,_loc3_,_loc4_,600,"",§^!_§.§+N§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§^'§.particles.addParticle(§^!_§.§#o§,§0m§.§=!T§,§^!_§.§4t§,_loc3_,_loc4_,_loc16_,"",§^!_§.§+N§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §^!_§.§'8§;
      }
      
      public function §4M§(param1:Number) : void
      {
         var _loc2_:§"!2§ = null;
         var _loc3_:int = this.§=!L§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=!L§[_loc3_];
            if(_loc2_.§?'§())
            {
               if(this.§,d§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§[g§())
            {
               this.§%?§(_loc2_,param1);
            }
            else if(this.§,f§(_loc2_))
            {
               _loc2_.§^[§(§&o§.§2$§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§^[§(§&o§.§2$§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§<O§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@!?§();
      }
      
      private function §<!;§() : void
      {
         var _loc1_:§!#§ = null;
         for each(_loc1_ in this.§%!D§)
         {
            this.§^'§.mLevelEngine.mWorld.§1!O§(_loc1_.§!!4§);
         }
      }
      
      public function §'M§() : Boolean
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!L§.length)
         {
            _loc2_ = this.§=!L§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §,f§(param1:§"!2§) : Boolean
      {
         if(param1 && param1.§5!B§.§=!@§() != §<!8§.§?!N§ && this.§^'§.§7Y§.§%!§(param1.§][§().GetPosition().x,param1.§][§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§!#§ = null;
         var _loc7_:§^!S§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§"!2§;
         if((_loc5_ = this.§=!L§[param1]).§6!Q§())
         {
            ++this.§,,§;
         }
         else if(_loc5_.§<O§())
         {
            --this.§+!]§;
         }
         if(_loc5_ == this.§^'§.activeObject)
         {
            this.§^'§.activeObject = null;
         }
         if(param2)
         {
            this.§^'§.addScore(_loc5_.§5!B§.score,§3a§.§?y§,true,_loc5_.§][§().GetPosition().x,_loc5_.§][§().GetPosition().y - 3,§^!_§.§9R§(_loc5_.§9@§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§^'§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§1b§(_loc5_.sprite);
         this.§+!-§(_loc5_);
         for each(_loc6_ in this.§%!D§)
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
         for each(_loc7_ in this.§-!=§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§&R§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§=!L§[param1] = null;
         this.§=!L§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§"!2§, param2:§0m§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §1b§(param1:Sprite) : void
      {
         if(this.§if §.contains(param1))
         {
            this.§if §.removeChild(param1);
            return;
         }
         if(this.§8!C§.contains(param1))
         {
            this.§8!C§.removeChild(param1);
            return;
         }
         if(this.§6K§.contains(param1))
         {
            this.§6K§.removeChild(param1);
            return;
         }
         if(this.§#!'§.contains(param1))
         {
            this.§#!'§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§"!2§) : void
      {
         if(param1.§?h§().toUpperCase() == "WHITE_EGG" || param1.§6!!§())
         {
            if(param1.§9@§.toUpperCase() == §`!'§.§^a§)
            {
               this.addExplosions(§+!Q§.§-;§,param1.§][§().GetPosition().x,param1.§][§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§+!Q§.§";§,param1.§][§().GetPosition().x,param1.§][§().GetPosition().y);
            }
         }
      }
      
      public function §^g§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§=!L§.indexOf(param1),param2,param3,param4);
      }
      
      public function §4!B§(param1:Number, param2:Number) : void
      {
         this.§'!1§.x = -param1;
         this.§'!1§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§"!2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            _loc3_ = this.§=!L§[_loc2_] as §"!2§;
            if(_loc3_ && _loc3_.§6!Q§() && _loc3_.§'!"§ > 0)
            {
               if(!param1 || _loc3_.§9t§.mTryToBlink <= 0 && _loc3_.§9t§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]!&§(param1:Boolean = false) : int
      {
         var _loc4_:§"!2§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=!L§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=!L§[_loc3_] as §"!2§) && _loc4_.§6!Q§() && _loc4_.§'!"§ > 0)
            {
               if(!param1 || _loc4_.§9t§.mTryToBlink <= 0 && _loc4_.§9t§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §7D§() : int
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!L§)
         {
            if(_loc2_ && (_loc2_.§for§() || _loc2_.§9;§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §;Y§() : int
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=!L§)
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
         var _loc3_:§"!2§ = null;
         var _loc2_:int = this.§=!L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=!L§[_loc2_];
            if(_loc3_ && _loc3_.§6!Q§() && _loc3_.§'!"§ > 0)
            {
               _loc3_.§9t§.mTryToScream = §4$§.§,!;§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@D§() : Boolean
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = this.§=!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!L§[_loc1_] as §"!2§;
            if(_loc2_ && _loc2_.§<O§() && _loc2_.§'!"§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = this.§=!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!L§[_loc1_] as §"!2§;
            if(_loc2_ && _loc2_.§'!"§ > 0 && _loc2_.§#!%§ != §6T§.§-j§)
            {
               if(_loc2_.§&!F§() && !_loc2_.§2!H§())
               {
                  return false;
               }
               if(_loc2_.§<O§() && _loc2_.§'!"§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §@!X§(param1:Boolean = false) : §"!2§
      {
         var _loc5_:int = 0;
         var _loc6_:§"!2§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§=!L§.length;
         var _loc3_:int = 1 + Math.random() * this.§]!&§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§=!L§[_loc5_]) && _loc6_.§6!Q§() && _loc6_.§'!"§ > 0)
               {
                  if(!param1 || _loc6_.§9t§.mTryToBlink <= 0 && _loc6_.§9t§.mTryToScream <= 0)
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
      
      public function §`!$§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§=!L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§=!L§[_loc2_] as §"!2§).§5!B§.score;
            if((this.§=!L§[_loc2_] as §"!2§).§&!F§())
            {
               _loc1_ += §]!-§.§[!7§.getValue() * int((this.§=!L§[_loc2_] as §"!2§).§get §);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§^'§.slingshot.§`!$§());
      }
      
      public function §[u§(param1:§"!2§, param2:§"!2§) : Boolean
      {
         if(param1.§<O§() && param2.§<O§())
         {
            return true;
         }
         if(!param1.§#!?§() && !param2.§#!?§())
         {
            return true;
         }
         return false;
      }
      
      public function §4I§() : void
      {
         this.mSardineCanAdded = true;
         this.§+!]§ = 0;
      }
      
      public function objectCollision(param1:§"!2§, param2:§"!2§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§[g§() || param2.§6!Q§())
            {
               param2.applyDamage(param2.§get § * 2,true,true,true,false);
               return true;
            }
            if(param2.§[g§() || param1.§6!Q§())
            {
               param1.applyDamage(param1.§get § * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§5b§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§?'§() || param2.§?'§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§[u§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§9!,§(param2.§?h§());
         var _loc5_:Number = param1.§ !;§(param2.§?h§());
         var _loc6_:Number = param2.§9!,§(param1.§?h§());
         var _loc7_:Number = param2.§ !;§(param1.§?h§());
         var _loc8_:Number = param1.§][§().GetMass() * param1.§][§().GetLinearVelocity().x - param2.§][§().GetMass() * param2.§][§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§][§().GetMass() * param1.§][§().GetLinearVelocity().y - param2.§][§().GetMass() * param2.§][§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§'!"§);
         var _loc14_:Number = Math.max(0,param2.§'!"§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§<O§(),_loc14_ == param2.§get §);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§<O§(),_loc13_ == param1.§get §);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§#g§(new b2Vec2(param2.§][§().GetLinearVelocity().x * _loc18_,param2.§][§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§#g§(new b2Vec2(param1.§][§().GetLinearVelocity().x * _loc19_,param1.§][§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §<B§() : void
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = this.§=!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!L§[_loc1_] as §"!2§;
            if(_loc2_ != null && _loc2_.§6!Q§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §=B§() : void
      {
         var _loc2_:§"!2§ = null;
         var _loc1_:int = this.§=!L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!L§[_loc1_] as §"!2§;
            if(_loc2_ != null && _loc2_.§6!!§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §>r§() : int
      {
         return this.§=!L§.length;
      }
      
      public function §&!I§(param1:§?X§) : void
      {
         var _loc4_:§"!2§ = null;
         var _loc5_:§]q§ = null;
         var _loc6_:§ ]§ = null;
         var _loc7_:§!#§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            if((_loc4_ = this.§=!L§[_loc2_]).§?!5§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §]q§()).angle = _loc4_.§5o§();
                  _loc5_.id = _loc4_.§9@§;
                  _loc5_.x = _loc4_.§][§().GetPosition().x;
                  _loc5_.y = _loc4_.§][§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%!D§.length)
         {
            _loc7_ = this.§%!D§[_loc3_];
            _loc6_ = new § ]§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!'§,_loc7_.§--§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§`A§,_loc7_.motorSpeed,_loc7_.§+!C§,_loc7_.maxTorque);
            param1.§=!'§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §#"§() : void
      {
         var _loc1_:int = 0;
         while(this.§=!L§.length > _loc1_)
         {
            if(this.§=!L§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§^g§(this.§=!L§[_loc1_]);
            }
         }
      }
      
      public function §%!&§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=!L§.length)
         {
            if(this.§=!L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=!L§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§9o§ = param1;
         this.§&!H§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            if(this.§=!L§[_loc2_].isTexture())
            {
               this.§=!L§[_loc2_].sprite.visible = !this.§9o§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§"g§ = param1;
      }
      
      public function §,i§() : Boolean
      {
         return this.§"g§;
      }
      
      public function §9!§() : int
      {
         return this.§2!7§;
      }
      
      public function §#H§() : int
      {
         return this.§,,§;
      }
      
      public function §4!J§(param1:String) : §"!2§
      {
         var _loc3_:§"!2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            _loc3_ = this.§=!L§[_loc2_] as §"!2§;
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
