package §finally§
{
   import §"o§.§ M§;
   import §"o§.§#U§;
   import §"o§.§,J§;
   import §"o§.§6y§;
   import §%?§.Texture;
   import §&V§.§;Q§;
   import §2!"§.§ !A§;
   import §2!"§.§ ^§;
   import §2!"§.§4!%§;
   import §2!"§.§8y§;
   import §2!"§.§;,§;
   import §;!2§.§"@§;
   import §;!2§.§15§;
   import §;!2§.§6!D§;
   import §;!2§.§6f§;
   import §;f§.§^o§;
   import §>Z§.§2;§;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import §^!1§.§6v§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3X§
   {
       
      
      protected var §68§:Vector.<§%!7§>;
      
      protected var §>G§:int;
      
      public var § 6§:§ M§;
      
      public var §]e§:Vector.<§=%§>;
      
      protected var §";§:Sprite;
      
      protected var §![§:Sprite;
      
      private var §>!3§:Sprite;
      
      private var §`!$§:Sprite;
      
      private var §get §:Sprite;
      
      protected var §&n§:Vector.<Texture>;
      
      protected var §%!4§:Vector.<§6f§>;
      
      protected var §6!#§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §#!4§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,K§:Boolean = false;
      
      protected var §`!C§:Number = 0.07;
      
      protected var §1!0§:int;
      
      protected var §#f§:Vector.<§15§>;
      
      protected var §,]§:int = 0;
      
      private var §&;§:int = 0;
      
      private var §4`§:int = 0;
      
      private var §"!G§:int;
      
      private var §-k§:Boolean = true;
      
      private var §-j§:Boolean = true;
      
      public function §3X§(param1:§ M§, param2:§^o§, param3:Sprite)
      {
         var _loc5_:§6f§ = null;
         var _loc6_:§6!D§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§%!7§ = null;
         var _loc10_:§%!7§ = null;
         this.§68§ = new Vector.<§%!7§>();
         this.§]e§ = new Vector.<§=%§>();
         this.§&n§ = new Vector.<Texture>();
         this.§#f§ = new Vector.<§15§>();
         super();
         this.§ 6§ = param1;
         this.§>G§ = 0;
         this.§![§ = param3;
         this.§![§.§0D§ = false;
         this.§-j§ = true;
         this.§-k§ = true;
         this.§";§ = new Sprite();
         this.§>!3§ = new Sprite();
         this.§`!$§ = new Sprite();
         this.§get § = new Sprite();
         this.§![§.addChild(this.§";§);
         this.§![§.addChild(this.§>!3§);
         this.§![§.addChild(this.§`!$§);
         this.§![§.addChild(this.§get §);
         this.addObject(§6v§.§7i§(param2.theme).§@j§,(this.§ 6§.§2!§.§-l§ + this.§ 6§.§2!§.§^!7§) / 2,this.§ 6§.§2!§.§1n§ + §#U§.§3!#§);
         this.§"!G§ = this.§68§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§'^§)
         {
            _loc6_ = param2.§ n§(_loc4_);
            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            _loc4_++;
         }
         this.§,P§();
         this.§6h§(true);
         this.§%!4§ = new Vector.<§6f§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§ !8§)
         {
            this.§%!4§.push(§6f§.§ !@§(param2.§8T§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§%!4§)
         {
            _loc7_ = _loc5_.index1 + this.§"!G§;
            _loc8_ = _loc5_.index2 + this.§"!G§;
            if(_loc7_ < this.§68§.length && _loc8_ < this.§68§.length)
            {
               _loc9_ = this.§68§[_loc7_];
               _loc10_ = this.§68§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               if(_loc5_.type != §"@§.§0!6§)
               {
                  _loc5_.§<?§ = this.§ 6§.§'!?§.§?O§.CreateJoint(_loc5_.§3H§(_loc9_,_loc10_));
               }
               else
               {
                  this.§#f§.push(new §15§(_loc7_,_loc8_,_loc5_.§&@§));
               }
            }
         }
      }
      
      public function get §-y§() : Sprite
      {
         return this.§get §;
      }
      
      public function get §4[§() : Sprite
      {
         return this.§![§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§68§.length > 0)
         {
            this.§6!G§(0);
         }
         this.§68§ = null;
         this.§#f§ = null;
         if(this.§![§)
         {
            this.§![§.dispose();
            this.§![§ = null;
            this.§";§ = null;
            this.§get § = null;
            this.§>!3§ = null;
            this.§`!$§ = null;
         }
         while(this.§&n§.length > 0)
         {
            _loc1_ = this.§&n§.pop();
            this.§ 6§.textureManager.§,?§(_loc1_);
         }
      }
      
      private function §6h§(param1:Boolean) : void
      {
         this.§";§.visible = param1;
      }
      
      private function §,P§() : void
      {
         var _loc3_:§%!7§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§"S§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§%!7§> = new Vector.<§%!7§>();
         for each(_loc3_ in this.§68§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§![§);
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
            this.§3%§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§%!$§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§ 6§.textureManager.§[[§(_loc10_);
            this.§&n§.push(_loc12_);
            (_loc13_ = new §"S§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§";§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §%!$§(param1:Vector.<§%!7§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§%!7§ = null;
         var _loc11_:§;,§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5M§.shape).§6U§();
            _loc13_ = new Rectangle(_loc12_[0].x / § M§.§%v§ * param6,_loc12_[0].y / § M§.§%v§ * param6,(_loc12_[1].x - _loc12_[0].x) / § M§.§%v§ * param6,(_loc12_[1].y - _loc12_[0].y) / § M§.§%v§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§&1§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3%§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§ 6§.background.§[!F§();
         var _loc5_:§;Q§;
         if(_loc5_ = this.§ 6§.backgroundTextureManager.§]i§(_loc4_))
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
      
      public function §,W§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!7§
      {
         var _loc10_:§%!7§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §&!G§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §5x§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §>'§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §9H§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §'U§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §@=§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §%g§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §5!$§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§,]§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §%!7§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§%!7§;
         if((_loc11_ = this.§!!<§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-k§;
            this.§68§[this.§68§.length] = _loc11_;
         }
         else
         {
            this.§68§[this.§68§.length] = _loc11_;
         }
         if(_loc11_ is §5!$§ && !_loc11_.§9;§())
         {
            this.§>!3§.addChild(_loc10_);
            ++this.§,]§;
         }
         else if(_loc11_.front || param9)
         {
            this.§get §.addChild(_loc10_);
         }
         else
         {
            this.§`!$§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§ 6§.§]5§(_loc11_);
         }
         if(param6)
         {
            this.§ 6§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function § !@§(param1:int, param2:§%!7§, param3:§%!7§) : §6f§
      {
         var _loc6_:§6f§ = null;
         var _loc4_:int = this.§68§.indexOf(param2) - this.§"!G§;
         var _loc5_:int = this.§68§.indexOf(param3) - this.§"!G§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §6f§(§"@§.§^+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§<?§ = this.§ 6§.§'!?§.§?O§.CreateJoint(_loc6_.§3H§(param2,param3));
            this.§%!4§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §!`§(param1:§6f§) : void
      {
         if(!(param1.§<?§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§%!7§ = this.§ n§(param1.index1 + this.§"!G§);
         var _loc3_:§%!7§ = this.§ n§(param1.index2 + this.§"!G§);
         this.§ 6§.§'!?§.§?O§.DestroyJoint(param1.§<?§);
         param1.§<?§ = this.§ 6§.§'!?§.§?O§.CreateJoint(param1.§3H§(_loc2_,_loc3_));
      }
      
      public function §,A§(param1:§%!7§) : Vector.<§6f§>
      {
         var _loc4_:§6f§ = null;
         var _loc2_:Vector.<§6f§> = new Vector.<§6f§>();
         var _loc3_:int = this.§68§.indexOf(param1) - this.§"!G§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§%!4§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §"O§() : Vector.<§6f§>
      {
         return this.§%!4§;
      }
      
      public function §3!3§(param1:§%!7§) : void
      {
         var _loc2_:int = this.§68§.indexOf(param1) - this.§"!G§;
         var _loc3_:int = this.§%!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§%!4§[_loc3_].index1 == _loc2_ || this.§%!4§[_loc3_].index2 == _loc2_)
            {
               this.§%!4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"p§(param1:§%!7§, param2:§%!7§) : Boolean
      {
         var _loc3_:int = this.§68§.indexOf(param1) - this.§"!G§;
         var _loc4_:int = this.§68§.indexOf(param2) - this.§"!G§;
         var _loc5_:int = this.§%!4§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§%!4§[_loc5_].index1 == _loc3_ && this.§%!4§[_loc5_].index2 == _loc4_ || this.§%!4§[_loc5_].index1 == _loc4_ && this.§%!4§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §!!<§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!7§
      {
         var _loc10_:§%!7§ = null;
         var _loc11_:§ !A§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§,W§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§4`§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §;=§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §4!%§.§`!+§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §4!%§.§`!+§(param2);
            }
            if(_loc11_.§=&§ == § !A§.§+`§ || _loc11_.§=&§ == § !A§.§2#§)
            {
               _loc10_ = new §9!G§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §%!7§(this,param1,this.§ 6§.§'!?§.§?O§,this.§ 6§,this.§>G§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §`W§(param1:Number) : void
      {
         var _loc3_:§%!7§ = null;
         var _loc2_:int = this.§68§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§68§[_loc2_] as §%!7§;
            if(_loc3_)
            {
               if(_loc3_.§8x§ <= 0)
               {
                  this.§6!G§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§,! §();
                  _loc3_.§!c§();
               }
            }
            _loc2_--;
         }
         this.§+Y§(param1);
      }
      
      protected function §+Y§(param1:Number) : void
      {
         var _loc3_:§15§ = null;
         var _loc4_:int = 0;
         var _loc2_:int = this.§#f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#f§[_loc2_];
            if(_loc3_.§`!§)
            {
               if((_loc4_ = _loc3_.update(param1)) != -1)
               {
                  if(_loc4_ < this.§68§.length && this.§68§[_loc4_] != null)
                  {
                     this.§6!G§(_loc4_,true,true,true);
                  }
                  this.§#f§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§]e§.push(§=%§.createExplosion(param1,param2,param3));
         §2;§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §3!%§(param1:Number, param2:Number) : int
      {
         var _loc4_:§%!7§ = null;
         var _loc3_:int = this.§68§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§68§[_loc3_])
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
      
      public function §,^§(param1:Number, param2:Number) : §%!7§
      {
         var _loc4_:§%!7§ = null;
         var _loc3_:int = this.§68§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§68§[_loc3_])
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
      
      public function § n§(param1:int) : §%!7§
      {
         return this.§68§[param1];
      }
      
      public function §,u§(param1:Number, param2:Number) : void
      {
         var _loc4_:§%!7§ = null;
         var _loc3_:int = this.§68§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§68§[_loc3_] as §%!7§).§,u§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §@l§(param1:§%!7§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§%!7§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§8x§ == param1.§3-§)
         {
            if(this.§`!C§ < §,J§.§0a§)
            {
               this.§`!C§ += param2 * §,J§.§6+§;
            }
            param1.§+!-§().SetAngularVelocity(param2 * this.§`!C§);
            this.§1!0§ = 0;
         }
         else if(this.§1!0§ == 0)
         {
            this.§1!0§ = this.§ 6§.§"!D§;
         }
         if(param1.§7!3§() || this.§4!3§(param1) || this.§1!0§ > 0 && this.§ 6§.§"!D§ > this.§1!0§ + §,J§.§>!@§)
         {
            if(this.mMightyEagleTimer < §,J§.§+4§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §,J§.§,+§ && _loc4_ > §,J§.§,+§)
               {
                  §2;§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §2;§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §,J§.§+4§)
               {
                  _loc5_ = param1.§+!-§().GetPosition().x - §,J§.§-n§;
                  _loc6_ = param1.§+!-§().GetPosition().y - §,J§.§-n§ * §,J§.§2@§ * 1.07;
                  if(this.§4!3§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§,J§.§ Y§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§1!0§ = 0;
                  _loc7_.§8h§.§^&§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §!o§(param1:§%!7§, param2:Number) : Boolean
      {
         var _loc5_:§%!7§ = null;
         if(!this.§,K§ && this.mMightyEagleTimer > §,J§.§%! §)
         {
            this.§,K§ = true;
            this.§ 6§.§,j§();
         }
         this.mMightyEagleTimer += param2;
         this.§ 6§.particles.§1C§(§`b§.§7M§,§<u§.§>7§,§`b§.§ "§,param1.§+!-§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§+!-§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§`b§.§>!6§(param1.§5o§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§+y§(§,J§.§=<§ * param2);
            _loc4_ = -1;
            if(this.§#!4§)
            {
               this.§#!4§ = false;
               this.§ 6§.§]n§();
               param1.§continue§(§8y§.§ [§);
               this.mSardineCanAdded = false;
               param1.§8h§.§5!G§ = true;
               param1.§8h§.§,x§();
               for each(_loc5_ in this.§68§)
               {
                  if(_loc5_ && _loc5_.§[!5§())
                  {
                     _loc5_.§+!-§().SetAwake(true);
                     _loc5_.§+!-§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§9g§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§68§)
               {
                  if(_loc5_ && _loc5_.§[!5§())
                  {
                     _loc5_.applyDamage(_loc5_.§3-§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§+!-§().GetPosition().y >= -5.5;
            this.§#!4§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§3N§(param2,new Point(1,_loc4_ * §,J§.§2@§),§,J§.§<R§);
         return false;
      }
      
      private function §8G§() : void
      {
         var _loc1_:§=%§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§%!7§ = null;
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
         while(this.§]e§.length > 0)
         {
            _loc1_ = this.§]e§.shift();
            _loc2_ = _loc1_.§=!8§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§68§)
            {
               _loc8_ = _loc6_.§+!-§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§+!-§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§=!8§)
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
                     _loc6_.§+!-§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§>q§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§ 6§.particles.§1C§(this.§;B§(_loc1_.type),§<u§.§>7§,§`b§.§67§,_loc3_,_loc4_,600,"",§`b§.§@b§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§ 6§.particles.§1C§(§`b§.§+1§,§<u§.§>7§,§`b§.§ "§,_loc3_,_loc4_,_loc16_,"",§`b§.§@b§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §;B§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §`b§.§'Q§;
      }
      
      public function §8!A§(param1:Number) : void
      {
         var _loc2_:§%!7§ = null;
         var _loc3_:int = this.§68§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§68§[_loc3_];
            if(_loc2_.§,c§())
            {
               if(this.§@l§(_loc2_,param1))
               {
                  this.§6!G§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§9;§())
            {
               this.§!o§(_loc2_,param1);
            }
            else if(this.§4!3§(_loc2_))
            {
               _loc2_.§continue§(§8y§.§&!2§);
               this.§6!G§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§continue§(§8y§.§&!2§);
               this.§6!G§(_loc3_,false,true,true);
            }
            else if(_loc2_.§%!§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§8G§();
      }
      
      private function §9g§() : void
      {
         var _loc1_:§6f§ = null;
         for each(_loc1_ in this.§%!4§)
         {
            this.§ 6§.§'!?§.§?O§.DestroyJoint(_loc1_.§<?§);
         }
      }
      
      public function §8K§() : Boolean
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§68§.length)
         {
            _loc2_ = this.§68§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §4!3§(param1:§%!7§) : Boolean
      {
         if(param1 && param1.§5M§.§ L§() != § ^§.§;h§ && this.§ 6§.§2!§.§-i§(param1.§+!-§().GetPosition().x,param1.§+!-§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §6!G§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§6f§ = null;
         var _loc7_:§15§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§%!7§;
         if((_loc5_ = this.§68§[param1]).§[!5§())
         {
            ++this.§&;§;
         }
         else if(_loc5_.§%!§())
         {
            --this.§,]§;
         }
         if(_loc5_ == this.§ 6§.activeObject)
         {
            this.§ 6§.activeObject = null;
         }
         if(param2)
         {
            this.§ 6§.addScore(_loc5_.§5M§.score,§6y§.§9!;§,true,_loc5_.§+!-§().GetPosition().x,_loc5_.§+!-§().GetPosition().y - 3,§`b§.§1!E§(_loc5_.§5o§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§ 6§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§%_§(_loc5_.sprite);
         this.§3!3§(_loc5_);
         for each(_loc6_ in this.§%!4§)
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
         for each(_loc7_ in this.§#f§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§`!§ = true;
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
         this.§68§[param1] = null;
         this.§68§.splice(param1,1);
      }
      
      private function §%_§(param1:Sprite) : void
      {
         if(this.§`!$§.contains(param1))
         {
            this.§`!$§.removeChild(param1);
            return;
         }
         if(this.§>!3§.contains(param1))
         {
            this.§>!3§.removeChild(param1);
            return;
         }
         if(this.§";§.contains(param1))
         {
            this.§";§.removeChild(param1);
            return;
         }
         if(this.§get §.contains(param1))
         {
            this.§get §.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§%!7§) : void
      {
         if(param1.§+V§().toUpperCase() == "WHITE_EGG" || param1.§>L§())
         {
            if(param1.§5o§.toUpperCase() == §9H§.§9>§)
            {
               this.addExplosions(§=%§.§&!;§,param1.§+!-§().GetPosition().x,param1.§+!-§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§=%§.§7c§,param1.§+!-§().GetPosition().x,param1.§+!-§().GetPosition().y);
            }
         }
      }
      
      public function §25§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§6!G§(this.§68§.indexOf(param1),param2,param3,param4);
      }
      
      public function §4!A§(param1:Number, param2:Number) : void
      {
         this.§![§.x = -param1;
         this.§![§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§%!7§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§68§.length)
         {
            _loc3_ = this.§68§[_loc2_] as §%!7§;
            if(_loc3_ && _loc3_.§[!5§() && _loc3_.§8x§ > 0)
            {
               if(!param1 || _loc3_.§8h§.mTryToBlink <= 0 && _loc3_.§8h§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^q§(param1:Boolean = false) : int
      {
         var _loc4_:§%!7§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§68§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§68§[_loc3_] as §%!7§) && _loc4_.§[!5§() && _loc4_.§8x§ > 0)
            {
               if(!param1 || _loc4_.§8h§.mTryToBlink <= 0 && _loc4_.§8h§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §6!!§() : int
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§68§)
         {
            if(_loc2_ && (_loc2_.§8>§() || _loc2_.§%U§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §82§() : int
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§68§)
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
         var _loc3_:§%!7§ = null;
         var _loc2_:int = this.§68§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§68§[_loc2_];
            if(_loc3_ && _loc3_.§[!5§() && _loc3_.§8x§ > 0)
            {
               _loc3_.§8h§.mTryToScream = §`u§.§@S§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §#L§() : Boolean
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = this.§68§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§68§[_loc1_] as §%!7§;
            if(_loc2_ && _loc2_.§%!§() && _loc2_.§8x§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = this.§68§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§68§[_loc1_] as §%!7§;
            if(_loc2_ && _loc2_.§8x§ > 0 && _loc2_.§=&§ != § !A§.§7!&§)
            {
               if(_loc2_.§+A§() && !_loc2_.§7!3§())
               {
                  return false;
               }
               if(_loc2_.§%!§() && _loc2_.§8x§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[e§(param1:Boolean = false) : §%!7§
      {
         var _loc5_:int = 0;
         var _loc6_:§%!7§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§68§.length;
         var _loc3_:int = 1 + Math.random() * this.§^q§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§68§[_loc5_]) && _loc6_.§[!5§() && _loc6_.§8x§ > 0)
               {
                  if(!param1 || _loc6_.§8h§.mTryToBlink <= 0 && _loc6_.§8h§.mTryToScream <= 0)
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
      
      public function §-q§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§68§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§68§[_loc2_] as §%!7§).§5M§.score;
            if((this.§68§[_loc2_] as §%!7§).§+A§())
            {
               _loc1_ += § M§.§0!1§.getValue() * int((this.§68§[_loc2_] as §%!7§).§3-§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§ 6§.slingshot.§-q§());
      }
      
      public function §;q§(param1:§%!7§, param2:§%!7§) : Boolean
      {
         if(param1.§%!§() && param2.§%!§())
         {
            return true;
         }
         if(!param1.§6!F§() && !param2.§6!F§())
         {
            return true;
         }
         return false;
      }
      
      public function §#D§() : void
      {
         this.mSardineCanAdded = true;
         this.§,]§ = 0;
      }
      
      public function objectCollision(param1:§%!7§, param2:§%!7§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§9;§() || param2.§[!5§())
            {
               param2.applyDamage(param2.§3-§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§9;§() || param1.§[!5§())
            {
               param1.applyDamage(param1.§3-§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §,J§.§+4§)
         {
            if(param1.§,c§() || param2.§,c§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;q§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§[Y§(param2.§+V§());
         var _loc5_:Number = param1.§9E§(param2.§+V§());
         var _loc6_:Number = param2.§[Y§(param1.§+V§());
         var _loc7_:Number = param2.§9E§(param1.§+V§());
         var _loc8_:Number = param1.§+!-§().GetMass() * param1.§+!-§().GetLinearVelocity().x - param2.§+!-§().GetMass() * param2.§+!-§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§+!-§().GetMass() * param1.§+!-§().GetLinearVelocity().y - param2.§+!-§().GetMass() * param2.§+!-§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§8x§);
         var _loc14_:Number = Math.max(0,param2.§8x§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§%!§(),_loc14_ == param2.§3-§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§%!§(),_loc13_ == param1.§3-§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§6!@§(new b2Vec2(param2.§+!-§().GetLinearVelocity().x * _loc18_,param2.§+!-§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§6!@§(new b2Vec2(param1.§+!-§().GetLinearVelocity().x * _loc19_,param1.§+!-§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §null§() : void
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = this.§68§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§68§[_loc1_] as §%!7§;
            if(_loc2_ != null && _loc2_.§[!5§())
            {
               this.§6!G§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §4!;§() : void
      {
         var _loc2_:§%!7§ = null;
         var _loc1_:int = this.§68§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§68§[_loc1_] as §%!7§;
            if(_loc2_ != null && _loc2_.§>L§())
            {
               this.§6!G§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §8!D§() : int
      {
         return this.§68§.length;
      }
      
      public function §&a§(param1:§^o§) : void
      {
         var _loc4_:§%!7§ = null;
         var _loc5_:§6!D§ = null;
         var _loc6_:§"@§ = null;
         var _loc7_:§6f§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§68§.length)
         {
            if((_loc4_ = this.§68§[_loc2_]).§7n§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §6!D§()).angle = _loc4_.§&1§();
                  _loc5_.id = _loc4_.§5o§;
                  _loc5_.x = _loc4_.§+!-§().GetPosition().x;
                  _loc5_.y = _loc4_.§+!-§().GetPosition().y;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%!4§.length)
         {
            _loc7_ = this.§%!4§[_loc3_];
            _loc6_ = new §"@§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§<y§,_loc7_.§8#§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§]w§,_loc7_.motorSpeed,_loc7_.§'Z§,_loc7_.maxTorque);
            param1.§+! §(_loc6_);
            _loc3_++;
         }
      }
      
      public function §[`§() : void
      {
         var _loc1_:int = 0;
         while(this.§68§.length > _loc1_)
         {
            if(this.§68§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§25§(this.§68§[_loc1_]);
            }
         }
      }
      
      public function §8^§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§68§.length)
         {
            if(this.§68§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§68§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-k§ = param1;
         this.§6h§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§68§.length)
         {
            if(this.§68§[_loc2_].isTexture())
            {
               this.§68§[_loc2_].sprite.visible = !this.§-k§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§-j§ = param1;
      }
      
      public function §;!C§() : Boolean
      {
         return this.§-j§;
      }
      
      public function §7&§() : int
      {
         return this.§4`§;
      }
      
      public function §>e§() : int
      {
         return this.§&;§;
      }
   }
}
