package §"W§
{
   import § !_§.b2Vec2;
   import § 0§.Texture;
   import § d§.§&!S§;
   import § d§.§'!"§;
   import § d§.§+=§;
   import § d§.§]!_§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §2!@§.§;!Z§;
   import §3!§.§2!$§;
   import §3!A§.b2PrismaticJoint;
   import §3!A§.b2WeldJoint;
   import §8! §.§1_§;
   import §@!"§.§">§;
   import §@!"§.§'!^§;
   import §@!"§.§0!%§;
   import §@!"§.§97§;
   import §^-§.§#!3§;
   import §^-§.§'!!§;
   import §^-§.§4!`§;
   import §^-§.§;!f§;
   import §^-§.§=!B§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!T§
   {
       
      
      protected var §&!3§:Vector.<§;N§>;
      
      protected var §]!b§:int;
      
      public var §"2§:§'!"§;
      
      public var §4J§:Vector.<§<!#§>;
      
      protected var § m§:Sprite;
      
      protected var §2l§:Sprite;
      
      private var §>'§:Sprite;
      
      private var §-!A§:Sprite;
      
      private var §1!T§:Sprite;
      
      protected var §23§:Vector.<Texture>;
      
      protected var §`e§:Vector.<§">§>;
      
      protected var §9-§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §<k§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §4<§:Boolean = false;
      
      protected var §"D§:Number;
      
      protected var §>!M§:int;
      
      protected var §2'§:Vector.<§97§>;
      
      protected var § 9§:int = 0;
      
      private var §`!4§:int = 0;
      
      private var §`!-§:int = 0;
      
      private var §>@§:int;
      
      private var §+a§:Boolean = true;
      
      private var §!!C§:Boolean = true;
      
      public function §?!T§(param1:§'!"§, param2:§1_§, param3:Sprite)
      {
         var _loc5_:§">§ = null;
         var _loc6_:§'!^§ = null;
         var _loc7_:§;N§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§;N§ = null;
         var _loc11_:§;N§ = null;
         this.§&!3§ = new Vector.<§;N§>();
         this.§4J§ = new Vector.<§<!#§>();
         this.§23§ = new Vector.<Texture>();
         this.§"D§ = this.§&!S§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§2'§ = new Vector.<§97§>();
         super();
         this.§"2§ = param1;
         this.§]!b§ = 0;
         this.§2l§ = param3;
         this.§2l§.§4!W§ = false;
         this.§!!C§ = true;
         this.§+a§ = true;
         this.§ m§ = new Sprite();
         this.§>'§ = new Sprite();
         this.§-!A§ = new Sprite();
         this.§1!T§ = new Sprite();
         this.§2l§.addChild(this.§ m§);
         this.§2l§.addChild(this.§>'§);
         this.§2l§.addChild(this.§-!A§);
         this.§2l§.addChild(this.§1!T§);
         this.§3!1§(§;!Z§.§9!V§(param2.theme).§=M§,(this.§"2§.§=!E§.§]!K§ + this.§"2§.§=!E§.§;?§) / 2,this.§"2§.§=!E§.§9%§ + §+=§.§%!M§);
         this.§>@§ = this.§&!3§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§@L§)
         {
            _loc6_ = param2.§<Q§(_loc4_);
            if(_loc7_ = this.§3!1§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§5![§();
         this.§@!;§(true);
         this.§`e§ = new Vector.<§">§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§#V§)
         {
            this.§`e§.push(§">§.§'4§(param2.§!M§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§`e§)
         {
            _loc8_ = _loc5_.index1 + this.§>@§;
            _loc9_ = _loc5_.index2 + this.§>@§;
            if(_loc8_ < this.§&!3§.length && _loc9_ < this.§&!3§.length)
            {
               _loc10_ = this.§&!3§[_loc8_];
               _loc11_ = this.§&!3§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §0!%§.§[C§)
               {
                  _loc5_.§`!O§ = this.§"2§.mLevelEngine.mWorld.§>!G§(_loc5_.§throw§(_loc10_,_loc11_));
               }
               else
               {
                  this.§2'§.push(new §97§(_loc8_,_loc9_,_loc5_.§%L§));
               }
            }
         }
      }
      
      protected function get §&!S§() : Class
      {
         return §&!S§;
      }
      
      public function get §]a§() : Sprite
      {
         return this.§1!T§;
      }
      
      public function get §#6§() : Sprite
      {
         return this.§2l§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§&!3§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§&!3§ = null;
         this.§2'§ = null;
         if(this.§2l§)
         {
            this.§2l§.dispose();
            this.§2l§ = null;
            this.§ m§ = null;
            this.§1!T§ = null;
            this.§>'§ = null;
            this.§-!A§ = null;
         }
         while(this.§23§.length > 0)
         {
            _loc1_ = this.§23§.pop();
            this.§"2§.textureManager.§%!d§(_loc1_);
         }
      }
      
      private function §@!;§(param1:Boolean) : void
      {
         this.§ m§.visible = param1;
      }
      
      private function §5![§() : void
      {
         var _loc3_:§;N§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§9!,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;N§> = new Vector.<§;N§>();
         for each(_loc3_ in this.§&!3§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§2l§);
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
            this.§>!0§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§3G§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§"2§.textureManager.§-Z§(_loc10_);
            this.§23§.push(_loc12_);
            (_loc13_ = new §9!,§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§ m§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §3G§(param1:Vector.<§;N§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;N§ = null;
         var _loc11_:§=!B§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§6J§.shape).§?E§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'!"§.§#3§ * param6,_loc12_[0].y / §'!"§.§#3§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'!"§.§#3§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'!"§.§#3§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§1!N§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §>!0§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§"2§.background.§#!P§();
         var _loc5_:§2!$§;
         if(_loc5_ = this.§"2§.backgroundTextureManager.§1%§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;N§
      {
         var _loc10_:§;N§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § !`§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §"![§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §=!%§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §+!A§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §7!,§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §#m§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §!f§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §7!6§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§ 9§ > 0;
      }
      
      public function §3!1§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;N§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§;N§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§+a§;
            this.§&!3§[this.§&!3§.length] = _loc11_;
         }
         else
         {
            this.§&!3§[this.§&!3§.length] = _loc11_;
         }
         if(_loc11_ is §7!6§ && !_loc11_.§0E§())
         {
            this.§>'§.addChild(_loc10_);
            ++this.§ 9§;
         }
         else if(_loc11_.front || param9)
         {
            this.§1!T§.addChild(_loc10_);
         }
         else
         {
            this.§-!A§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§"2§.§6S§(_loc11_);
         }
         if(param6)
         {
            this.§"2§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §'4§(param1:int, param2:§;N§, param3:§;N§) : §">§
      {
         var _loc6_:§">§ = null;
         var _loc4_:int = this.§&!3§.indexOf(param2) - this.§>@§;
         var _loc5_:int = this.§&!3§.indexOf(param3) - this.§>@§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §">§(§0!%§.§4!8§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§`!O§ = this.§"2§.mLevelEngine.mWorld.§>!G§(_loc6_.§throw§(param2,param3));
            this.§`e§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §#0§(param1:§">§) : void
      {
         if(!(param1.§`!O§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§;N§ = this.§<Q§(param1.index1 + this.§>@§);
         var _loc3_:§;N§ = this.§<Q§(param1.index2 + this.§>@§);
         this.§"2§.mLevelEngine.mWorld.§>%§(param1.§`!O§);
         param1.§`!O§ = this.§"2§.mLevelEngine.mWorld.§>!G§(param1.§throw§(_loc2_,_loc3_));
      }
      
      public function § !J§(param1:§;N§) : Vector.<§">§>
      {
         var _loc4_:§">§ = null;
         var _loc2_:Vector.<§">§> = new Vector.<§">§>();
         var _loc3_:int = this.§&!3§.indexOf(param1) - this.§>@§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§`e§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §-!@§() : Vector.<§">§>
      {
         return this.§`e§;
      }
      
      public function §6Z§(param1:§;N§) : void
      {
         var _loc2_:int = this.§&!3§.indexOf(param1) - this.§>@§;
         var _loc3_:int = this.§`e§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§`e§[_loc3_].index1 == _loc2_ || this.§`e§[_loc3_].index2 == _loc2_)
            {
               this.§`e§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §03§(param1:§;N§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§2'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2'§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§2'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §import§(param1:§;N§, param2:§;N§) : Boolean
      {
         var _loc3_:int = this.§&!3§.indexOf(param1) - this.§>@§;
         var _loc4_:int = this.§&!3§.indexOf(param2) - this.§>@§;
         var _loc5_:int = this.§`e§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§`e§[_loc5_].index1 == _loc3_ && this.§`e§[_loc5_].index2 == _loc4_ || this.§`e§[_loc5_].index1 == _loc4_ && this.§`e§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;N§
      {
         var _loc10_:§;N§ = null;
         var _loc11_:§4!`§ = null;
         var _loc12_:§4!`§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§`!-§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §;!f§.§]!L§(param2);
            _loc10_ = new §=!7§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §;!f§.§]!L§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §;!f§.§]!L§(param2);
            }
            if(_loc12_.§`O§ == §4!`§.§?7§ || _loc12_.§`O§ == §4!`§.§&M§)
            {
               _loc10_ = new §-n§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §;N§(this,param1,this.§"2§.mLevelEngine.mWorld,this.§"2§,this.§]!b§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§&!C§();
         return _loc10_;
      }
      
      protected function §&!C§() : String
      {
         var _loc3_:§;N§ = null;
         var _loc1_:int = this.§&!3§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§&!3§)
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
      
      public function §0Y§(param1:Number) : void
      {
         var _loc3_:§;N§ = null;
         var _loc2_:int = this.§&!3§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!3§[_loc2_] as §;N§;
            if(_loc3_)
            {
               if(_loc3_.§>[§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§"n§();
                  _loc3_.§]z§();
               }
            }
            _loc2_--;
         }
         this.§7m§(param1);
      }
      
      protected function §7m§(param1:Number) : void
      {
         this.§0!0§(param1);
         this.§[!Z§();
      }
      
      private function §0!0§(param1:Number) : void
      {
         var _loc4_:§97§ = null;
         var _loc5_:int = 0;
         var _loc6_:§;N§ = null;
         if(this.§2'§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§97§> = this.§2'§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§0!?§ && this.§2'§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§,!f§("" + _loc5_))
                  {
                     this.§@&§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §[!Z§() : void
      {
         var _loc1_:§">§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§`e§)
         {
            if(_loc1_.type == §0!%§.§'!d§ && _loc1_.§9]§)
            {
               _loc2_ = (_loc1_.§`!O§ as b2PrismaticJoint).§#y§();
               _loc3_ = (_loc1_.§`!O§ as b2PrismaticJoint).§-x§();
               if(_loc1_.§?!L§ && _loc1_.§#e§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§`!O§ as b2PrismaticJoint).§3!V§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§4J§.push(§<!#§.createExplosion(param1,param2,param3));
         §#`§.§2o§("TntExplosions","ChannelExplosions");
      }
      
      public function §3!+§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;N§ = null;
         var _loc3_:int = this.§&!3§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§&!3§[_loc3_])
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
      
      public function §>!d§(param1:Number, param2:Number) : §;N§
      {
         var _loc4_:§;N§ = null;
         var _loc3_:int = this.§&!3§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§&!3§[_loc3_])
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
      
      public function §1I§(param1:Number, param2:Number) : Vector.<§;N§>
      {
         var _loc5_:§;N§ = null;
         var _loc3_:Vector.<§;N§> = new Vector.<§;N§>();
         var _loc4_:int = this.§&!3§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§&!3§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §<Q§(param1:int) : §;N§
      {
         return this.§&!3§[param1];
      }
      
      public function §^!N§(param1:Number, param2:Number) : void
      {
         var _loc4_:§;N§ = null;
         var _loc3_:int = this.§&!3§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§&!3§[_loc3_] as §;N§).§^!N§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §;!R§(param1:§;N§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§;N§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§>[§ == param1.§&J§)
         {
            if(this.§"D§ < this.§&!S§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§"D§ += param2 * this.§&!S§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§"!H§().§-V§(param2 * this.§"D§);
            this.§>!M§ = 0;
         }
         else if(this.§>!M§ == 0)
         {
            this.§>!M§ = this.§"2§.§1z§;
         }
         if(param1.§?g§() || this.§9O§(param1) || this.§>!M§ > 0 && this.§"2§.§1z§ > this.§>!M§ + this.§&!S§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§&!S§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§&!S§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§&!S§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §#`§.§2o§("Mighty_Eagle_Selected_1","ChannelBird");
                  §#`§.§2o§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§&!S§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§"!H§().GetPosition().x - this.§&!S§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§"!H§().GetPosition().y - this.§&!S§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&!S§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§9O§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§3!1§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&!S§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§>!M§ = 0;
                  _loc7_.§%f§.§,&§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §?!C§(param1:§;N§, param2:Number) : Boolean
      {
         var _loc5_:§;N§ = null;
         if(this.§&!S§.MIGHTY_EAGLE_USE_SHADE && !this.§4<§ && this.mMightyEagleTimer > this.§&!S§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§4<§ = true;
            this.§"2§.§1O§();
         }
         this.mMightyEagleTimer += param2;
         this.§"2§.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,param1.§"!H§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§"!H§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2z§.§?1§(param1.§]D§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§!j§(this.§&!S§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§<k§)
            {
               this.§<k§ = false;
               this.§"2§.§68§();
               param1.§,!^§(§'!!§.§!V§);
               this.mSardineCanAdded = false;
               param1.§%f§.§2F§ = true;
               param1.§%f§.§[]§();
               for each(_loc5_ in this.§&!3§)
               {
                  if(_loc5_ && _loc5_.§`!D§())
                  {
                     _loc5_.§"!H§().SetAwake(true);
                     _loc5_.§"!H§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§ '§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§&!3§)
               {
                  if(_loc5_ && _loc5_.§`!D§())
                  {
                     _loc5_.applyDamage(_loc5_.§&J§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§"!H§().GetPosition().y >= -5.5;
            this.§<k§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§=!?§(param2,new Point(this.§&!S§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&!S§.MIGHTY_EAGLE_Y_CHANGE),this.§&!S§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §8Z§() : void
      {
         var _loc1_:§<!#§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;N§ = null;
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
         while(this.§4J§.length > 0)
         {
            _loc1_ = this.§4J§.shift();
            _loc2_ = _loc1_.§1o§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§&!3§)
            {
               _loc8_ = _loc6_.§"!H§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§"!H§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§1o§)
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
                     _loc6_.§"!H§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§4!c§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§79§(_loc6_,_loc14_);
               }
            }
            this.§"2§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§"@§.§6^§,§2z§.§34§,_loc3_,_loc4_,600,"",§2z§.§]!U§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§"2§.particles.addParticle(§2z§.§0L§,§"@§.§6^§,§2z§.§<A§,_loc3_,_loc4_,_loc16_,"",§2z§.§]!U§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §79§(param1:§;N§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2z§.§8T§;
      }
      
      public function §6I§(param1:Number) : void
      {
         var _loc2_:§;N§ = null;
         var _loc3_:int = this.§&!3§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§&!3§[_loc3_];
            if(_loc2_.§-!;§())
            {
               if(this.§;!R§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§0E§())
            {
               this.§?!C§(_loc2_,param1);
            }
            else if(this.§9O§(_loc2_))
            {
               _loc2_.§,!^§(§'!!§.§?!f§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§,!^§(§'!!§.§?!f§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§#!-§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§8Z§();
      }
      
      private function § '§() : void
      {
         var _loc1_:§">§ = null;
         for each(_loc1_ in this.§`e§)
         {
            if(_loc1_.type != §0!%§.§[C§)
            {
               this.§"2§.mLevelEngine.mWorld.§>%§(_loc1_.§`!O§);
            }
         }
      }
      
      public function §+Y§() : Boolean
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!3§.length)
         {
            _loc2_ = this.§&!3§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §9O§(param1:§;N§) : Boolean
      {
         if(param1 && param1.§6J§.§%!3§() != §#!3§.§>I§ && this.§"2§.§=!E§.§0u§(param1.§"!H§().GetPosition().x,param1.§"!H§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§">§ = null;
         var _loc7_:§97§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§;N§;
         if((_loc5_ = this.§&!3§[param1]).§`!D§())
         {
            ++this.§`!4§;
         }
         else if(_loc5_.§#!-§())
         {
            --this.§ 9§;
         }
         if(_loc5_ == this.§"2§.activeObject)
         {
            this.§"2§.activeObject = null;
         }
         if(param2)
         {
            this.§"2§.addScore(_loc5_.§6J§.score,§]!_§.§6@§,true,_loc5_.§"!H§().GetPosition().x,_loc5_.§"!H§().GetPosition().y - 3,§2z§.§=6§(_loc5_.§]D§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§"2§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§5'§(_loc5_.sprite);
         this.§6Z§(_loc5_);
         this.§03§(_loc5_);
         for each(_loc6_ in this.§`e§)
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
         for each(_loc7_ in this.§2'§)
         {
            if(_loc7_.§^a§ == param1)
            {
               _loc7_.§0!?§ = true;
            }
            if(_loc7_.§^a§ >= param1)
            {
               --_loc7_.§^a§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§&!3§[param1] = null;
         this.§&!3§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§;N§, param2:§"@§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §5'§(param1:Sprite) : void
      {
         if(this.§-!A§.contains(param1))
         {
            this.§-!A§.removeChild(param1);
            return;
         }
         if(this.§>'§.contains(param1))
         {
            this.§>'§.removeChild(param1);
            return;
         }
         if(this.§ m§.contains(param1))
         {
            this.§ m§.removeChild(param1);
            return;
         }
         if(this.§1!T§.contains(param1))
         {
            this.§1!T§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§;N§) : void
      {
         if(param1.§9W§().toUpperCase() == "WHITE_EGG" || param1.§#j§())
         {
            if(param1.§]D§.toUpperCase() == §+!A§.§8r§)
            {
               this.addExplosions(§<!#§.§32§,param1.§"!H§().GetPosition().x,param1.§"!H§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§<!#§.§1a§,param1.§"!H§().GetPosition().x,param1.§"!H§().GetPosition().y);
            }
         }
      }
      
      public function §@&§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§&!3§.indexOf(param1),param2,param3,param4);
      }
      
      public function §9!J§(param1:Number, param2:Number) : void
      {
         this.§2l§.x = -param1;
         this.§2l§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§;N§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!3§.length)
         {
            _loc3_ = this.§&!3§[_loc2_] as §;N§;
            if(_loc3_ && _loc3_.§`!D§() && _loc3_.§>[§ > 0)
            {
               if(!param1 || _loc3_.§%f§.mTryToBlink <= 0 && _loc3_.§%f§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^]§(param1:Boolean = false) : int
      {
         var _loc4_:§;N§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§&!3§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!3§[_loc3_] as §;N§) && _loc4_.§`!D§() && _loc4_.§>[§ > 0)
            {
               if(!param1 || _loc4_.§%f§.mTryToBlink <= 0 && _loc4_.§%f§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §8P§() : int
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!3§)
         {
            if(_loc2_ && (_loc2_.§!`§() || _loc2_.§#!F§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §4!<§() : int
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!3§)
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
         var _loc3_:§;N§ = null;
         var _loc2_:int = this.§&!3§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!3§[_loc2_];
            if(_loc3_ && _loc3_.§`!D§() && _loc3_.§>[§ > 0)
            {
               _loc3_.§%f§.mTryToScream = §0f§.§![§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §1!E§() : Boolean
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = this.§&!3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!3§[_loc1_] as §;N§;
            if(_loc2_ && _loc2_.§#!-§() && _loc2_.§>[§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = this.§&!3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!3§[_loc1_] as §;N§;
            if(_loc2_ && _loc2_.§>[§ > 0 && _loc2_.§`O§ != §4!`§.§ [§)
            {
               if(_loc2_.§8!V§() && !_loc2_.§?g§())
               {
                  return false;
               }
               if(_loc2_.§#!-§() && _loc2_.§>[§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §1H§(param1:Boolean = false) : §;N§
      {
         var _loc5_:int = 0;
         var _loc6_:§;N§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§&!3§.length;
         var _loc3_:int = 1 + Math.random() * this.§^]§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§&!3§[_loc5_]) && _loc6_.§`!D§() && _loc6_.§>[§ > 0)
               {
                  if(!param1 || _loc6_.§%f§.mTryToBlink <= 0 && _loc6_.§%f§.mTryToScream <= 0)
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
      
      public function §'!J§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§&!3§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§&!3§[_loc2_] as §;N§).§6J§.score;
            if((this.§&!3§[_loc2_] as §;N§).§8!V§())
            {
               _loc1_ += §'!"§.§5H§.getValue() * int((this.§&!3§[_loc2_] as §;N§).§&J§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§"2§.slingshot.§'!J§());
      }
      
      public function §+!H§(param1:§;N§, param2:§;N§) : Boolean
      {
         if(param1.§#!-§() && param2.§#!-§())
         {
            return true;
         }
         if(!param1.§#u§() && !param2.§#u§())
         {
            return true;
         }
         return false;
      }
      
      public function §]r§() : void
      {
         this.mSardineCanAdded = true;
         this.§ 9§ = 0;
      }
      
      public function §use §(param1:§;N§, param2:§;N§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§0E§() || param2.§`!D§())
            {
               param2.applyDamage(param2.§&J§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§0E§() || param1.§`!D§())
            {
               param1.applyDamage(param1.§&J§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§&!S§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§-!;§() || param2.§-!;§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§+!H§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§&"§(param2.§9W§());
         var _loc5_:Number = param1.§[!S§(param2.§9W§());
         var _loc6_:Number = param2.§&"§(param1.§9W§());
         var _loc7_:Number = param2.§[!S§(param1.§9W§());
         var _loc8_:Number = param1.§"!H§().GetMass() * param1.§"!H§().GetLinearVelocity().x - param2.§"!H§().GetMass() * param2.§"!H§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§"!H§().GetMass() * param1.§"!H§().GetLinearVelocity().y - param2.§"!H§().GetMass() * param2.§"!H§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§>[§);
         var _loc14_:Number = Math.max(0,param2.§>[§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§#!-§(),_loc14_ == param2.§&J§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§#!-§(),_loc13_ == param1.§&J§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§!-§(new b2Vec2(param2.§"!H§().GetLinearVelocity().x * _loc18_,param2.§"!H§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§!-§(new b2Vec2(param1.§"!H§().GetLinearVelocity().x * _loc19_,param1.§"!H§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §5o§() : void
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = this.§&!3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!3§[_loc1_] as §;N§;
            if(_loc2_ != null && _loc2_.§`!D§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §3!&§() : void
      {
         var _loc2_:§;N§ = null;
         var _loc1_:int = this.§&!3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!3§[_loc1_] as §;N§;
            if(_loc2_ != null && _loc2_.§#j§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[O§() : int
      {
         return this.§&!3§.length;
      }
      
      public function §@!b§(param1:§1_§) : void
      {
         var _loc4_:§;N§ = null;
         var _loc5_:§'!^§ = null;
         var _loc6_:§0!%§ = null;
         var _loc7_:§">§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!3§.length)
         {
            if(!(_loc4_ = this.§&!3§[_loc2_]).isGround())
            {
               (_loc5_ = new §'!^§()).angle = _loc4_.§1!N§();
               _loc5_.id = _loc4_.§]D§;
               _loc5_.x = _loc4_.§"!H§().GetPosition().x;
               _loc5_.y = _loc4_.§"!H§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§3!1§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§`e§.length)
         {
            _loc7_ = this.§`e§[_loc3_];
            _loc6_ = new §0!%§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§8!c§,_loc7_.§?!L§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§#e§,_loc7_.motorSpeed,_loc7_.§9]§,_loc7_.maxTorque);
            param1.§3E§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §!J§() : void
      {
         var _loc1_:int = 0;
         while(this.§&!3§.length > _loc1_)
         {
            if(this.§&!3§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§@&§(this.§&!3§[_loc1_]);
            }
         }
      }
      
      public function §[!`§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&!3§.length)
         {
            if(this.§&!3§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&!3§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§+a§ = param1;
         this.§@!;§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!3§.length)
         {
            if(this.§&!3§[_loc2_].isTexture())
            {
               this.§&!3§[_loc2_].sprite.visible = !this.§+a§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§!!C§ = param1;
      }
      
      public function §11§() : Boolean
      {
         return this.§!!C§;
      }
      
      public function §0k§() : int
      {
         return this.§`!-§;
      }
      
      public function §0!R§() : int
      {
         return this.§`!4§;
      }
      
      public function §,!f§(param1:String) : §;N§
      {
         var _loc3_:§;N§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!3§.length)
         {
            _loc3_ = this.§&!3§[_loc2_] as §;N§;
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
