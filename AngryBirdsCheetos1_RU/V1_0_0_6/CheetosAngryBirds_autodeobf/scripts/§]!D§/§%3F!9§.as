package §]!D§
{
   import §"!P§.§-!+§;
   import §"!P§.§1!$§;
   import §"!P§.§8!N§;
   import §"!P§.§?!C§;
   import §"k§.§5!7§;
   import §%n§.§"!;§;
   import §%n§.§3!A§;
   import §%n§.§4Q§;
   import §%n§.§5!6§;
   import §%n§.§<>§;
   import §0H§.§0!&§;
   import §2>§.§?!1§;
   import §3q§.b2Vec2;
   import §8!`§.§%G§;
   import §8!`§.§4J§;
   import §8!`§.§5!C§;
   import §8!`§.§7I§;
   import §9A§.b2PrismaticJoint;
   import §9A§.b2WeldJoint;
   import §;!Q§.§%o§;
   import §;!Q§.Sprite;
   import §<J§.§&L§;
   import §]p§.Texture;
   import §`;§.§5i§;
   import §`;§.§[E§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!9§
   {
       
      
      protected var §'_§:Vector.<§@!]§>;
      
      protected var §<!'§:int;
      
      public var §'N§:§4J§;
      
      public var §+C§:Vector.<§"$§>;
      
      protected var §,!]§:Sprite;
      
      protected var §"!F§:Sprite;
      
      private var §`r§:Sprite;
      
      private var §>!1§:Sprite;
      
      private var §,!E§:Sprite;
      
      protected var §^!W§:Vector.<Texture>;
      
      protected var §7!"§:Vector.<§?!C§>;
      
      protected var §7!=§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-!N§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §1&§:Boolean = false;
      
      protected var §&!!§:Number;
      
      protected var §#!,§:int;
      
      protected var §0d§:Vector.<§1!$§>;
      
      protected var §4!#§:int = 0;
      
      private var §6X§:int = 0;
      
      private var §"N§:int = 0;
      
      private var §]]§:int;
      
      private var §+l§:Boolean = true;
      
      private var §0[§:Boolean = true;
      
      public function §?!9§(param1:§4J§, param2:§0!&§, param3:Sprite)
      {
         var _loc5_:§?!C§ = null;
         var _loc6_:§8!N§ = null;
         var _loc7_:§@!]§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§@!]§ = null;
         var _loc11_:§@!]§ = null;
         this.§'_§ = new Vector.<§@!]§>();
         this.§+C§ = new Vector.<§"$§>();
         this.§^!W§ = new Vector.<Texture>();
         this.§&!!§ = this.§7I§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§0d§ = new Vector.<§1!$§>();
         super();
         this.§'N§ = param1;
         this.§<!'§ = 0;
         this.§"!F§ = param3;
         this.§"!F§.§+!T§ = false;
         this.§0[§ = true;
         this.§+l§ = true;
         this.§,!]§ = new Sprite();
         this.§`r§ = new Sprite();
         this.§>!1§ = new Sprite();
         this.§,!E§ = new Sprite();
         this.§"!F§.addChild(this.§,!]§);
         this.§"!F§.addChild(this.§`r§);
         this.§"!F§.addChild(this.§>!1§);
         this.§"!F§.addChild(this.§,!E§);
         this.addObject(§&L§.§'!C§(param2.theme).§=c§,(this.§'N§.§[!_§.§;!#§ + this.§'N§.§[!_§.§3§) / 2,this.§'N§.§[!_§.§,!3§ + §5!C§.§3%§);
         this.§]]§ = this.§'_§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§1c§)
         {
            _loc6_ = param2.§,S§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§2!X§();
         this.§4!6§(true);
         this.§7!"§ = new Vector.<§?!C§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§;T§)
         {
            this.§7!"§.push(§?!C§.§[y§(param2.§8,§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§7!"§)
         {
            _loc8_ = _loc5_.index1 + this.§]]§;
            _loc9_ = _loc5_.index2 + this.§]]§;
            if(_loc8_ < this.§'_§.length && _loc9_ < this.§'_§.length)
            {
               _loc10_ = this.§'_§[_loc8_];
               _loc11_ = this.§'_§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-!+§.§ !H§)
               {
                  _loc5_.§2!`§ = this.§'N§.mLevelEngine.mWorld.§+!"§(_loc5_.§"!>§(_loc10_,_loc11_));
               }
               else
               {
                  this.§0d§.push(new §1!$§(_loc8_,_loc9_,_loc5_.§>4§));
               }
            }
         }
      }
      
      protected function get §7I§() : Class
      {
         return §7I§;
      }
      
      public function get §5!8§() : Sprite
      {
         return this.§,!E§;
      }
      
      public function get §]v§() : Sprite
      {
         return this.§"!F§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§'_§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§'_§ = null;
         this.§0d§ = null;
         if(this.§"!F§)
         {
            this.§"!F§.dispose();
            this.§"!F§ = null;
            this.§,!]§ = null;
            this.§,!E§ = null;
            this.§`r§ = null;
            this.§>!1§ = null;
         }
         while(this.§^!W§.length > 0)
         {
            _loc1_ = this.§^!W§.pop();
            this.§'N§.§>?§.§]!>§(_loc1_);
         }
      }
      
      private function §4!6§(param1:Boolean) : void
      {
         this.§,!]§.visible = param1;
      }
      
      private function §2!X§() : void
      {
         var _loc3_:§@!]§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%o§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@!]§> = new Vector.<§@!]§>();
         for each(_loc3_ in this.§'_§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§"!F§);
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
            this.§?w§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§#l§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§'N§.§>?§.§2!;§(_loc10_);
            this.§^!W§.push(_loc12_);
            (_loc13_ = new §%o§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§,!]§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §#l§(param1:Vector.<§@!]§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§@!]§ = null;
         var _loc11_:§"!;§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-!^§.shape).§7!H§();
            _loc13_ = new Rectangle(_loc12_[0].x / §4J§.§<W§ * param6,_loc12_[0].y / §4J§.§<W§ * param6,(_loc12_[1].x - _loc12_[0].x) / §4J§.§<W§ * param6,(_loc12_[1].y - _loc12_[0].y) / §4J§.§<W§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§ !0§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §?w§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§'N§.background.§2#§();
         var _loc5_:§5!7§;
         if(_loc5_ = this.§'N§.§"! §.§'!R§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!]§
      {
         var _loc10_:§@!]§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §;!_§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §@v§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §%,§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §'Q§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §&Z§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §2M§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §2v§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §,!@§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4!#§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@!]§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§@!]§;
         if((_loc11_ = this.§&!#§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§+l§;
            this.§'_§[this.§'_§.length] = _loc11_;
         }
         else
         {
            this.§'_§[this.§'_§.length] = _loc11_;
         }
         if(_loc11_ is §,!@§ && !_loc11_.§"!2§())
         {
            this.§`r§.addChild(_loc10_);
            ++this.§4!#§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,!E§.addChild(_loc10_);
         }
         else
         {
            this.§>!1§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§'N§.§8!O§(_loc11_);
         }
         if(param6)
         {
            this.§'N§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §[y§(param1:int, param2:§@!]§, param3:§@!]§) : §?!C§
      {
         var _loc6_:§?!C§ = null;
         var _loc4_:int = this.§'_§.indexOf(param2) - this.§]]§;
         var _loc5_:int = this.§'_§.indexOf(param3) - this.§]]§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §?!C§(§-!+§.§,<§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§2!`§ = this.§'N§.mLevelEngine.mWorld.§+!"§(_loc6_.§"!>§(param2,param3));
            this.§7!"§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §5?§(param1:§?!C§) : void
      {
         if(!(param1.§2!`§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§@!]§ = this.§,S§(param1.index1 + this.§]]§);
         var _loc3_:§@!]§ = this.§,S§(param1.index2 + this.§]]§);
         this.§'N§.mLevelEngine.mWorld.§]X§(param1.§2!`§);
         param1.§2!`§ = this.§'N§.mLevelEngine.mWorld.§+!"§(param1.§"!>§(_loc2_,_loc3_));
      }
      
      public function §3!_§(param1:§@!]§) : Vector.<§?!C§>
      {
         var _loc4_:§?!C§ = null;
         var _loc2_:Vector.<§?!C§> = new Vector.<§?!C§>();
         var _loc3_:int = this.§'_§.indexOf(param1) - this.§]]§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§7!"§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §!!§() : Vector.<§?!C§>
      {
         return this.§7!"§;
      }
      
      public function §^!P§(param1:§@!]§) : void
      {
         var _loc2_:int = this.§'_§.indexOf(param1) - this.§]]§;
         var _loc3_:int = this.§7!"§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§7!"§[_loc3_].index1 == _loc2_ || this.§7!"§[_loc3_].index2 == _loc2_)
            {
               this.§7!"§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-K§(param1:§@!]§, param2:§@!]§) : Boolean
      {
         var _loc3_:int = this.§'_§.indexOf(param1) - this.§]]§;
         var _loc4_:int = this.§'_§.indexOf(param2) - this.§]]§;
         var _loc5_:int = this.§7!"§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§7!"§[_loc5_].index1 == _loc3_ && this.§7!"§[_loc5_].index2 == _loc4_ || this.§7!"§[_loc5_].index1 == _loc4_ && this.§7!"§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §&!#§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!]§
      {
         var _loc10_:§@!]§ = null;
         var _loc11_:§<>§ = null;
         var _loc12_:§<>§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§"N§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §5!6§.§,Q§(param2);
            _loc10_ = new §[!9§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §5!6§.§,Q§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §5!6§.§,Q§(param2);
            }
            if(_loc12_.§;&§ == §<>§.§-!F§ || _loc12_.§;&§ == §<>§.§'I§)
            {
               _loc10_ = new §65§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §@!]§(this,param1,this.§'N§.mLevelEngine.mWorld,this.§'N§,this.§<!'§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §?!R§(param1:Number) : void
      {
         var _loc3_:§@!]§ = null;
         var _loc2_:int = this.§'_§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'_§[_loc2_] as §@!]§;
            if(_loc3_)
            {
               if(_loc3_.§5h§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§6!'§();
                  _loc3_.§8!;§();
               }
            }
            _loc2_--;
         }
         this.§=v§(param1);
      }
      
      protected function §=v§(param1:Number) : void
      {
         var _loc3_:§?!C§ = null;
         var _loc4_:§1!$§ = null;
         var _loc5_:int = 0;
         var _loc6_:§@!]§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§0d§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§0d§[_loc2_]).§2K§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§'!P§("block_" + _loc5_))
                  {
                     this.§@!@§(_loc6_,true,true,true);
                  }
                  this.§0d§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§7!"§)
         {
            if(_loc3_.type == §-!+§.§%!E§ && _loc3_.§`,§)
            {
               _loc7_ = (_loc3_.§2!`§ as b2PrismaticJoint).§`H§();
               _loc8_ = (_loc3_.§2!`§ as b2PrismaticJoint).§!!W§();
               if(_loc3_.§9D§ && _loc3_.§47§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§2!`§ as b2PrismaticJoint).§^=§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§+C§.push(§"$§.§3!F§(param1,param2,param3));
         §?!1§.§0!O§("TntExplosions","ChannelExplosions");
      }
      
      public function §#!?§(param1:Number, param2:Number) : int
      {
         var _loc4_:§@!]§ = null;
         var _loc3_:int = this.§'_§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§'_§[_loc3_])
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
      
      public function §+!F§(param1:Number, param2:Number) : §@!]§
      {
         var _loc4_:§@!]§ = null;
         var _loc3_:int = this.§'_§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§'_§[_loc3_])
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
      
      public function §,S§(param1:int) : §@!]§
      {
         return this.§'_§[param1];
      }
      
      public function § u§(param1:Number, param2:Number) : void
      {
         var _loc4_:§@!]§ = null;
         var _loc3_:int = this.§'_§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§'_§[_loc3_] as §@!]§).§ u§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §#`§(param1:§@!]§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§@!]§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§5h§ == param1.§!e§)
         {
            if(this.§&!!§ < this.§7I§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§&!!§ += param2 * this.§7I§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§^!_§().§%!,§(param2 * this.§&!!§);
            this.§#!,§ = 0;
         }
         else if(this.§#!,§ == 0)
         {
            this.§#!,§ = this.§'N§.§@x§;
         }
         if(param1.§>8§() || this.§6$§(param1) || this.§#!,§ > 0 && this.§'N§.§@x§ > this.§#!,§ + this.§7I§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§7I§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§7I§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§7I§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §?!1§.§0!O§("Mighty_Eagle_Selected_1","ChannelBird");
                  §?!1§.§0!O§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§7I§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§^!_§().GetPosition().x - this.§7I§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§^!_§().GetPosition().y - this.§7I§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§7I§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§6$§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§7I§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#!,§ = 0;
                  _loc7_.§`T§.§0!%§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §#R§(param1:§@!]§, param2:Number) : Boolean
      {
         var _loc5_:§@!]§ = null;
         if(this.§7I§.MIGHTY_EAGLE_USE_SHADE && !this.§1&§ && this.mMightyEagleTimer > this.§7I§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§1&§ = true;
            this.§'N§.§@r§();
         }
         this.mMightyEagleTimer += param2;
         this.§'N§.particles.addParticle(§[E§.§4!B§,§5i§.§-!D§,§[E§.§!`§,param1.§^!_§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§^!_§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§[E§.§2!<§(param1.§4u§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§9![§(this.§7I§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§-!N§)
            {
               this.§-!N§ = false;
               this.§'N§.§<!=§();
               param1.§3a§(§3!A§.§=!X§);
               this.mSardineCanAdded = false;
               param1.§`T§.§1!=§ = true;
               param1.§`T§.§5!]§();
               for each(_loc5_ in this.§'_§)
               {
                  if(_loc5_ && _loc5_.§=j§())
                  {
                     _loc5_.§^!_§().SetAwake(true);
                     _loc5_.§^!_§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§8;§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§'_§)
               {
                  if(_loc5_ && _loc5_.§=j§())
                  {
                     _loc5_.applyDamage(_loc5_.§!e§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§^!_§().GetPosition().y >= -5.5;
            this.§-!N§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!D§(param2,new Point(this.§7I§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§7I§.MIGHTY_EAGLE_Y_CHANGE),this.§7I§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §-!1§() : void
      {
         var _loc1_:§"$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§@!]§ = null;
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
         while(this.§+C§.length > 0)
         {
            _loc1_ = this.§+C§.shift();
            _loc2_ = _loc1_.§ !D§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§'_§)
            {
               _loc8_ = _loc6_.§^!_§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§^!_§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§ !D§)
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
                     _loc6_.§^!_§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§,!4§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§'N§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§5i§.§-!D§,§[E§.§'m§,_loc3_,_loc4_,600,"",§[E§.§,! §,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§'N§.particles.addParticle(§[E§.§=3§,§5i§.§-!D§,§[E§.§!`§,_loc3_,_loc4_,_loc16_,"",§[E§.§,! §,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §[E§.§]L§;
      }
      
      public function §6§(param1:Number) : void
      {
         var _loc2_:§@!]§ = null;
         var _loc3_:int = this.§'_§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§'_§[_loc3_];
            if(_loc2_.§7!0§())
            {
               if(this.§#`§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§"!2§())
            {
               this.§#R§(_loc2_,param1);
            }
            else if(this.§6$§(_loc2_))
            {
               _loc2_.§3a§(§3!A§.§=m§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§3a§(§3!A§.§=m§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§@b§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§-!1§();
      }
      
      private function §8;§() : void
      {
         var _loc1_:§?!C§ = null;
         for each(_loc1_ in this.§7!"§)
         {
            this.§'N§.mLevelEngine.mWorld.§]X§(_loc1_.§2!`§);
         }
      }
      
      public function §>!4§() : Boolean
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'_§.length)
         {
            _loc2_ = this.§'_§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §6$§(param1:§@!]§) : Boolean
      {
         if(param1 && param1.§-!^§.§&v§() != §4Q§.§#!%§ && this.§'N§.§[!_§.§'>§(param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§?!C§ = null;
         var _loc7_:§1!$§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§@!]§;
         if((_loc5_ = this.§'_§[param1]).§=j§())
         {
            ++this.§6X§;
         }
         else if(_loc5_.§@b§())
         {
            --this.§4!#§;
         }
         if(_loc5_ == this.§'N§.activeObject)
         {
            this.§'N§.activeObject = null;
         }
         if(param2)
         {
            this.§'N§.addScore(_loc5_.§-!^§.score,§%G§.§,`§,true,_loc5_.§^!_§().GetPosition().x,_loc5_.§^!_§().GetPosition().y - 3,§[E§.§?!V§(_loc5_.§4u§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§'N§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§-0§(_loc5_.sprite);
         this.§^!P§(_loc5_);
         for each(_loc6_ in this.§7!"§)
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
         for each(_loc7_ in this.§0d§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§2K§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§'_§[param1] = null;
         this.§'_§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§@!]§, param2:§5i§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §-0§(param1:Sprite) : void
      {
         if(this.§>!1§.contains(param1))
         {
            this.§>!1§.removeChild(param1);
            return;
         }
         if(this.§`r§.contains(param1))
         {
            this.§`r§.removeChild(param1);
            return;
         }
         if(this.§,!]§.contains(param1))
         {
            this.§,!]§.removeChild(param1);
            return;
         }
         if(this.§,!E§.contains(param1))
         {
            this.§,!E§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§@!]§) : void
      {
         if(param1.§8r§().toUpperCase() == "WHITE_EGG" || param1.§ [§())
         {
            if(param1.§4u§.toUpperCase() == §'Q§.§9Y§)
            {
               this.addExplosions(§"$§.§^#§,param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§"$§.§+R§,param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y);
            }
         }
      }
      
      public function §@!@§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§'_§.indexOf(param1),param2,param3,param4);
      }
      
      public function §<0§(param1:Number, param2:Number) : void
      {
         this.§"!F§.x = -param1;
         this.§"!F§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§@!]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'_§.length)
         {
            _loc3_ = this.§'_§[_loc2_] as §@!]§;
            if(_loc3_ && _loc3_.§=j§() && _loc3_.§5h§ > 0)
            {
               if(!param1 || _loc3_.§`T§.mTryToBlink <= 0 && _loc3_.§`T§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]F§(param1:Boolean = false) : int
      {
         var _loc4_:§@!]§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§'_§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§'_§[_loc3_] as §@!]§) && _loc4_.§=j§() && _loc4_.§5h§ > 0)
            {
               if(!param1 || _loc4_.§`T§.mTryToBlink <= 0 && _loc4_.§`T§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §;u§() : int
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§'_§)
         {
            if(_loc2_ && (_loc2_.§,F§() || _loc2_.§<;§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §"Q§() : int
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§'_§)
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
         var _loc3_:§@!]§ = null;
         var _loc2_:int = this.§'_§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'_§[_loc2_];
            if(_loc3_ && _loc3_.§=j§() && _loc3_.§5h§ > 0)
            {
               _loc3_.§`T§.mTryToScream = §]!R§.§<_§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<!%§() : Boolean
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = this.§'_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'_§[_loc1_] as §@!]§;
            if(_loc2_ && _loc2_.§@b§() && _loc2_.§5h§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = this.§'_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'_§[_loc1_] as §@!]§;
            if(_loc2_ && _loc2_.§5h§ > 0 && _loc2_.§;&§ != §<>§.§7Y§)
            {
               if(_loc2_.§+!3§() && !_loc2_.§>8§())
               {
                  return false;
               }
               if(_loc2_.§@b§() && _loc2_.§5h§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §#c§(param1:Boolean = false) : §@!]§
      {
         var _loc5_:int = 0;
         var _loc6_:§@!]§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§'_§.length;
         var _loc3_:int = 1 + Math.random() * this.§]F§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§'_§[_loc5_]) && _loc6_.§=j§() && _loc6_.§5h§ > 0)
               {
                  if(!param1 || _loc6_.§`T§.mTryToBlink <= 0 && _loc6_.§`T§.mTryToScream <= 0)
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
      
      public function §=C§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§'_§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§'_§[_loc2_] as §@!]§).§-!^§.score;
            if((this.§'_§[_loc2_] as §@!]§).§+!3§())
            {
               _loc1_ += §4J§.§<+§.getValue() * int((this.§'_§[_loc2_] as §@!]§).§!e§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§'N§.slingshot.§=C§());
      }
      
      public function § l§(param1:§@!]§, param2:§@!]§) : Boolean
      {
         if(param1.§@b§() && param2.§@b§())
         {
            return true;
         }
         if(!param1.§?!,§() && !param2.§?!,§())
         {
            return true;
         }
         return false;
      }
      
      public function §,m§() : void
      {
         this.mSardineCanAdded = true;
         this.§4!#§ = 0;
      }
      
      public function objectCollision(param1:§@!]§, param2:§@!]§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§"!2§() || param2.§=j§())
            {
               param2.applyDamage(param2.§!e§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§"!2§() || param1.§=j§())
            {
               param1.applyDamage(param1.§!e§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§7I§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§7!0§() || param2.§7!0§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§ l§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§"s§(param2.§8r§());
         var _loc5_:Number = param1.§-u§(param2.§8r§());
         var _loc6_:Number = param2.§"s§(param1.§8r§());
         var _loc7_:Number = param2.§-u§(param1.§8r§());
         var _loc8_:Number = param1.§^!_§().GetMass() * param1.§^!_§().GetLinearVelocity().x - param2.§^!_§().GetMass() * param2.§^!_§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§^!_§().GetMass() * param1.§^!_§().GetLinearVelocity().y - param2.§^!_§().GetMass() * param2.§^!_§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§5h§);
         var _loc14_:Number = Math.max(0,param2.§5h§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§@b§(),_loc14_ == param2.§!e§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§@b§(),_loc13_ == param1.§!e§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§=!M§(new b2Vec2(param2.§^!_§().GetLinearVelocity().x * _loc18_,param2.§^!_§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§=!M§(new b2Vec2(param1.§^!_§().GetLinearVelocity().x * _loc19_,param1.§^!_§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §]!6§() : void
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = this.§'_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'_§[_loc1_] as §@!]§;
            if(_loc2_ != null && _loc2_.§=j§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §@L§() : void
      {
         var _loc2_:§@!]§ = null;
         var _loc1_:int = this.§'_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'_§[_loc1_] as §@!]§;
            if(_loc2_ != null && _loc2_.§ [§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §]!2§() : int
      {
         return this.§'_§.length;
      }
      
      public function §<!O§(param1:§0!&§) : void
      {
         var _loc4_:§@!]§ = null;
         var _loc5_:§8!N§ = null;
         var _loc6_:§-!+§ = null;
         var _loc7_:§?!C§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'_§.length)
         {
            if((_loc4_ = this.§'_§[_loc2_]).§@A§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §8!N§()).angle = _loc4_.§ !0§();
                  _loc5_.id = _loc4_.§4u§;
                  _loc5_.x = _loc4_.§^!_§().GetPosition().x;
                  _loc5_.y = _loc4_.§^!_§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§7!"§.length)
         {
            _loc7_ = this.§7!"§[_loc3_];
            _loc6_ = new §-!+§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§7=§,_loc7_.§9D§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§47§,_loc7_.motorSpeed,_loc7_.§`,§,_loc7_.maxTorque);
            param1.§]_§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §@!D§() : void
      {
         var _loc1_:int = 0;
         while(this.§'_§.length > _loc1_)
         {
            if(this.§'_§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§@!@§(this.§'_§[_loc1_]);
            }
         }
      }
      
      public function §-x§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§'_§.length)
         {
            if(this.§'_§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§'_§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§+l§ = param1;
         this.§4!6§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'_§.length)
         {
            if(this.§'_§[_loc2_].isTexture())
            {
               this.§'_§[_loc2_].sprite.visible = !this.§+l§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§0[§ = param1;
      }
      
      public function §8<§() : Boolean
      {
         return this.§0[§;
      }
      
      public function §1k§() : int
      {
         return this.§"N§;
      }
      
      public function §4§() : int
      {
         return this.§6X§;
      }
      
      public function §'!P§(param1:String) : §@!]§
      {
         var _loc3_:§@!]§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§'_§.length)
         {
            _loc3_ = this.§'_§[_loc2_] as §@!]§;
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
