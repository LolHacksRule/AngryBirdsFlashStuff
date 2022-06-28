package §8u§
{
   import §#h§.§ !H§;
   import §,!C§.§+X§;
   import §,!C§.§0v§;
   import §,!C§.§6m§;
   import §,!C§.§8!3§;
   import §,!C§.§implements§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§&!"§;
   import §3G§.§-s§;
   import §3G§.§4f§;
   import §5`§.§%F§;
   import §7!=§.Texture;
   import §8!>§.§ !4§;
   import §=!B§.§^!9§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import §`6§.§&!?§;
   import §`6§.§1!F§;
   import §`6§.§5!;§;
   import §`6§.§7=§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6a§
   {
       
      
      protected var §3N§:Vector.<§0r§>;
      
      protected var §95§:int;
      
      public var §33§:§!E§;
      
      public var §+@§:Vector.<§5<§>;
      
      protected var §]!?§:Sprite;
      
      protected var §,O§:Sprite;
      
      private var §21§:Sprite;
      
      private var §null§:Sprite;
      
      private var §&j§:Sprite;
      
      protected var § 1§:Vector.<Texture>;
      
      protected var §%]§:Vector.<§1!F§>;
      
      protected var §=Q§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §5!$§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §8!'§:Boolean = false;
      
      protected var §2_§:Number;
      
      protected var §@]§:int;
      
      protected var §'Z§:Vector.<§5!;§>;
      
      protected var §>D§:int = 0;
      
      private var §;!1§:int = 0;
      
      private var §`w§:int = 0;
      
      private var §,!3§:int;
      
      private var §-!2§:Boolean = true;
      
      private var §2!2§:Boolean = true;
      
      public function §6a§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         var _loc5_:§1!F§ = null;
         var _loc6_:§7=§ = null;
         var _loc7_:§0r§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§0r§ = null;
         var _loc11_:§0r§ = null;
         this.§3N§ = new Vector.<§0r§>();
         this.§+@§ = new Vector.<§5<§>();
         this.§ 1§ = new Vector.<Texture>();
         this.§2_§ = this.§&!"§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§'Z§ = new Vector.<§5!;§>();
         super();
         this.§33§ = param1;
         this.§95§ = 0;
         this.§,O§ = param3;
         this.§,O§.§!!%§ = false;
         this.§2!2§ = true;
         this.§-!2§ = true;
         this.§]!?§ = new Sprite();
         this.§21§ = new Sprite();
         this.§null§ = new Sprite();
         this.§&j§ = new Sprite();
         this.§,O§.addChild(this.§]!?§);
         this.§,O§.addChild(this.§21§);
         this.§,O§.addChild(this.§null§);
         this.§,O§.addChild(this.§&j§);
         this.addObject(§ !4§.§;h§(param2.theme).§;T§,(this.§33§.§0>§.§!D§ + this.§33§.§0>§.§%3§) / 2,this.§33§.§0>§.§-F§ + §-s§.§5!!§);
         this.§,!3§ = this.§3N§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§4,§)
         {
            _loc6_ = param2.§6!"§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§1!!§();
         this.§"A§(true);
         this.§%]§ = new Vector.<§1!F§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§1!7§)
         {
            this.§%]§.push(§1!F§.§]D§(param2.§7W§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§%]§)
         {
            _loc8_ = _loc5_.index1 + this.§,!3§;
            _loc9_ = _loc5_.index2 + this.§,!3§;
            if(_loc8_ < this.§3N§.length && _loc9_ < this.§3N§.length)
            {
               _loc10_ = this.§3N§[_loc8_];
               _loc11_ = this.§3N§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §&!?§.§`!$§)
               {
                  _loc5_.§?c§ = this.§33§.§=!D§.§<!F§.CreateJoint(_loc5_.§1O§(_loc10_,_loc11_));
               }
               else
               {
                  this.§'Z§.push(new §5!;§(_loc8_,_loc9_,_loc5_.§@M§));
               }
            }
         }
      }
      
      protected function get §&!"§() : Class
      {
         return §&!"§;
      }
      
      public function get §@?§() : Sprite
      {
         return this.§&j§;
      }
      
      public function get §4i§() : Sprite
      {
         return this.§,O§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§3N§.length > 0)
         {
            this.§2!G§(0);
         }
         this.§3N§ = null;
         this.§'Z§ = null;
         if(this.§,O§)
         {
            this.§,O§.dispose();
            this.§,O§ = null;
            this.§]!?§ = null;
            this.§&j§ = null;
            this.§21§ = null;
            this.§null§ = null;
         }
         while(this.§ 1§.length > 0)
         {
            _loc1_ = this.§ 1§.pop();
            this.§33§.textureManager.§[^§(_loc1_);
         }
      }
      
      private function §"A§(param1:Boolean) : void
      {
         this.§]!?§.visible = param1;
      }
      
      private function §1!!§() : void
      {
         var _loc3_:§0r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§4K§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§0r§> = new Vector.<§0r§>();
         for each(_loc3_ in this.§3N§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§,O§);
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
            this.§0c§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§1U§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§33§.textureManager.§-§(_loc10_);
            this.§ 1§.push(_loc12_);
            (_loc13_ = new §4K§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§]!?§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §1U§(param1:Vector.<§0r§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§0r§ = null;
         var _loc11_:§6m§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§ x§.shape).§0%§();
            _loc13_ = new Rectangle(_loc12_[0].x / §!E§.§#N§ * param6,_loc12_[0].y / §!E§.§#N§ * param6,(_loc12_[1].x - _loc12_[0].x) / §!E§.§#N§ * param6,(_loc12_[1].y - _loc12_[0].y) / §!E§.§#N§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§ for§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §0c§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§33§.background.§8X§();
         var _loc5_:§%F§;
         if(_loc5_ = this.§33§.backgroundTextureManager.§9,§(_loc4_))
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
      
      public function §^W§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §0r§
      {
         var _loc10_:§0r§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §[P§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §-!D§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §9o§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §#K§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §4y§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §-v§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §#H§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §8j§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>D§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §0r§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§0r§;
         if((_loc11_ = this.§;! §(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-!2§;
            this.§3N§[this.§3N§.length] = _loc11_;
         }
         else
         {
            this.§3N§[this.§3N§.length] = _loc11_;
         }
         if(_loc11_ is §8j§ && !_loc11_.§%!@§())
         {
            this.§21§.addChild(_loc10_);
            ++this.§>D§;
         }
         else if(_loc11_.front || param9)
         {
            this.§&j§.addChild(_loc10_);
         }
         else
         {
            this.§null§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§33§.§=F§(_loc11_);
         }
         if(param6)
         {
            this.§33§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §]D§(param1:int, param2:§0r§, param3:§0r§) : §1!F§
      {
         var _loc6_:§1!F§ = null;
         var _loc4_:int = this.§3N§.indexOf(param2) - this.§,!3§;
         var _loc5_:int = this.§3N§.indexOf(param3) - this.§,!3§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §1!F§(§&!?§.§%+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§?c§ = this.§33§.§=!D§.§<!F§.CreateJoint(_loc6_.§1O§(param2,param3));
            this.§%]§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §2!3§(param1:§1!F§) : void
      {
         if(!(param1.§?c§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§0r§ = this.§6!"§(param1.index1 + this.§,!3§);
         var _loc3_:§0r§ = this.§6!"§(param1.index2 + this.§,!3§);
         this.§33§.§=!D§.§<!F§.DestroyJoint(param1.§?c§);
         param1.§?c§ = this.§33§.§=!D§.§<!F§.CreateJoint(param1.§1O§(_loc2_,_loc3_));
      }
      
      public function §!=§(param1:§0r§) : Vector.<§1!F§>
      {
         var _loc4_:§1!F§ = null;
         var _loc2_:Vector.<§1!F§> = new Vector.<§1!F§>();
         var _loc3_:int = this.§3N§.indexOf(param1) - this.§,!3§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§%]§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §4!'§() : Vector.<§1!F§>
      {
         return this.§%]§;
      }
      
      public function §>!1§(param1:§0r§) : void
      {
         var _loc2_:int = this.§3N§.indexOf(param1) - this.§,!3§;
         var _loc3_:int = this.§%]§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§%]§[_loc3_].index1 == _loc2_ || this.§%]§[_loc3_].index2 == _loc2_)
            {
               this.§%]§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §#!%§(param1:§0r§, param2:§0r§) : Boolean
      {
         var _loc3_:int = this.§3N§.indexOf(param1) - this.§,!3§;
         var _loc4_:int = this.§3N§.indexOf(param2) - this.§,!3§;
         var _loc5_:int = this.§%]§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§%]§[_loc5_].index1 == _loc3_ && this.§%]§[_loc5_].index2 == _loc4_ || this.§%]§[_loc5_].index1 == _loc4_ && this.§%]§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §;! §(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §0r§
      {
         var _loc10_:§0r§ = null;
         var _loc11_:§+X§ = null;
         var _loc12_:§+X§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§^W§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§`w§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §0v§.§&2§(param2);
            _loc10_ = new § !8§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §0v§.§&2§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §0v§.§&2§(param2);
            }
            if(_loc12_.§!U§ == §+X§.§ !'§ || _loc12_.§!U§ == §+X§.§ >§)
            {
               _loc10_ = new §;X§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §0r§(this,param1,this.§33§.§=!D§.§<!F§,this.§33§,this.§95§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §^!C§(param1:Number) : void
      {
         var _loc3_:§0r§ = null;
         var _loc2_:int = this.§3N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3N§[_loc2_] as §0r§;
            if(_loc3_)
            {
               if(_loc3_.§@^§ <= 0)
               {
                  this.§2!G§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§9-§();
                  _loc3_.§`!+§();
               }
            }
            _loc2_--;
         }
         this.§<!E§(param1);
      }
      
      protected function §<!E§(param1:Number) : void
      {
         var _loc3_:§1!F§ = null;
         var _loc4_:§5!;§ = null;
         var _loc5_:int = 0;
         var _loc6_:§0r§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§'Z§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§'Z§[_loc2_]).§8i§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§3e§("block_" + _loc5_))
                  {
                     this.§'>§(_loc6_,true,true,true);
                  }
                  this.§'Z§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§%]§)
         {
            if(_loc3_.type == §&!?§.§?9§ && _loc3_.§[7§)
            {
               _loc7_ = (_loc3_.§?c§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§?c§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§ !C§ && _loc3_.§>]§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§?c§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§+@§.push(§5<§.createExplosion(param1,param2,param3));
         § !H§.§ !%§("TntExplosions","ChannelExplosions");
      }
      
      public function §@F§(param1:Number, param2:Number) : int
      {
         var _loc4_:§0r§ = null;
         var _loc3_:int = this.§3N§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3N§[_loc3_])
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
      
      public function §9!$§(param1:Number, param2:Number) : §0r§
      {
         var _loc4_:§0r§ = null;
         var _loc3_:int = this.§3N§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3N§[_loc3_])
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
      
      public function §6!"§(param1:int) : §0r§
      {
         return this.§3N§[param1];
      }
      
      public function §;C§(param1:Number, param2:Number) : void
      {
         var _loc4_:§0r§ = null;
         var _loc3_:int = this.§3N§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§3N§[_loc3_] as §0r§).§;C§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §"a§(param1:§0r§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§0r§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§@^§ == param1.§%!J§)
         {
            if(this.§2_§ < this.§&!"§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§2_§ += param2 * this.§&!"§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§?n§().SetAngularVelocity(param2 * this.§2_§);
            this.§@]§ = 0;
         }
         else if(this.§@]§ == 0)
         {
            this.§@]§ = this.§33§.§["§;
         }
         if(param1.§-[§() || this.§@u§(param1) || this.§@]§ > 0 && this.§33§.§["§ > this.§@]§ + this.§&!"§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§&!"§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§&!"§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§&!"§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  § !H§.§ !%§("Mighty_Eagle_Selected_1","ChannelBird");
                  § !H§.§ !%§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§&!"§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§?n§().GetPosition().x - this.§&!"§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§?n§().GetPosition().y - this.§&!"§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&!"§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§@u§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&!"§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§@]§ = 0;
                  _loc7_.§7!;§.§`u§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function § 6§(param1:§0r§, param2:Number) : Boolean
      {
         var _loc5_:§0r§ = null;
         if(this.§&!"§.MIGHTY_EAGLE_USE_SHADE && !this.§8!'§ && this.mMightyEagleTimer > this.§&!"§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§8!'§ = true;
            this.§33§.§07§();
         }
         this.mMightyEagleTimer += param2;
         this.§33§.particles.§8"§(§,i§.§?I§,§;x§.§]+§,§,i§.§6I§,param1.§?n§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§?n§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§,i§.§?Q§(param1.§>!"§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§7Q§(this.§&!"§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§5!$§)
            {
               this.§5!$§ = false;
               this.§33§.§;1§();
               param1.§'!"§(§implements§.§?8§);
               this.mSardineCanAdded = false;
               param1.§7!;§.§]m§ = true;
               param1.§7!;§.§'q§();
               for each(_loc5_ in this.§3N§)
               {
                  if(_loc5_ && _loc5_.§?V§())
                  {
                     _loc5_.§?n§().SetAwake(true);
                     _loc5_.§?n§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§'!-§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§3N§)
               {
                  if(_loc5_ && _loc5_.§?V§())
                  {
                     _loc5_.applyDamage(_loc5_.§%!J§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§?n§().GetPosition().y >= -5.5;
            this.§5!$§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§3!H§(param2,new Point(this.§&!"§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&!"§.MIGHTY_EAGLE_Y_CHANGE),this.§&!"§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §'x§() : void
      {
         var _loc1_:§5<§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§0r§ = null;
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
         while(this.§+@§.length > 0)
         {
            _loc1_ = this.§+@§.shift();
            _loc2_ = _loc1_.§`T§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§3N§)
            {
               _loc8_ = _loc6_.§?n§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§?n§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§`T§)
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
                     _loc6_.§?n§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§#!9§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§33§.particles.§8"§(this.§'4§(_loc1_.type),§;x§.§]+§,§,i§.§0!&§,_loc3_,_loc4_,600,"",§,i§.§4!A§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§33§.particles.§8"§(§,i§.§>B§,§;x§.§]+§,§,i§.§6I§,_loc3_,_loc4_,_loc16_,"",§,i§.§4!A§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §'4§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §,i§.§"O§;
      }
      
      public function §>!#§(param1:Number) : void
      {
         var _loc2_:§0r§ = null;
         var _loc3_:int = this.§3N§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3N§[_loc3_];
            if(_loc2_.§@1§())
            {
               if(this.§"a§(_loc2_,param1))
               {
                  this.§2!G§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§%!@§())
            {
               this.§ 6§(_loc2_,param1);
            }
            else if(this.§@u§(_loc2_))
            {
               _loc2_.§'!"§(§implements§.§&H§);
               this.§2!G§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§'!"§(§implements§.§&H§);
               this.§2!G§(_loc3_,false,true,true);
            }
            else if(_loc2_.§3r§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§'x§();
      }
      
      private function §'!-§() : void
      {
         var _loc1_:§1!F§ = null;
         for each(_loc1_ in this.§%]§)
         {
            this.§33§.§=!D§.§<!F§.DestroyJoint(_loc1_.§?c§);
         }
      }
      
      public function §1u§() : Boolean
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3N§.length)
         {
            _loc2_ = this.§3N§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §@u§(param1:§0r§) : Boolean
      {
         if(param1 && param1.§ x§.§1]§() != §8!3§.§%2§ && this.§33§.§0>§.§+!H§(param1.§?n§().GetPosition().x,param1.§?n§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §2!G§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§1!F§ = null;
         var _loc7_:§5!;§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§0r§;
         if((_loc5_ = this.§3N§[param1]).§?V§())
         {
            ++this.§;!1§;
         }
         else if(_loc5_.§3r§())
         {
            --this.§>D§;
         }
         if(_loc5_ == this.§33§.activeObject)
         {
            this.§33§.activeObject = null;
         }
         if(param2)
         {
            this.§33§.addScore(_loc5_.§ x§.score,§4f§.§7!#§,true,_loc5_.§?n§().GetPosition().x,_loc5_.§?n§().GetPosition().y - 3,§,i§.§[!1§(_loc5_.§>!"§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§33§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§4x§(_loc5_.sprite);
         this.§>!1§(_loc5_);
         for each(_loc6_ in this.§%]§)
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
         for each(_loc7_ in this.§'Z§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§8i§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§3N§[param1] = null;
         this.§3N§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§0r§, param2:§;x§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §4x§(param1:Sprite) : void
      {
         if(this.§null§.contains(param1))
         {
            this.§null§.removeChild(param1);
            return;
         }
         if(this.§21§.contains(param1))
         {
            this.§21§.removeChild(param1);
            return;
         }
         if(this.§]!?§.contains(param1))
         {
            this.§]!?§.removeChild(param1);
            return;
         }
         if(this.§&j§.contains(param1))
         {
            this.§&j§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§0r§) : void
      {
         if(param1.§8M§().toUpperCase() == "WHITE_EGG" || param1.§#!-§())
         {
            if(param1.§>!"§.toUpperCase() == §#K§.§@!=§)
            {
               this.addExplosions(§5<§.§7[§,param1.§?n§().GetPosition().x,param1.§?n§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§5<§.§&!'§,param1.§?n§().GetPosition().x,param1.§?n§().GetPosition().y);
            }
         }
      }
      
      public function §'>§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§2!G§(this.§3N§.indexOf(param1),param2,param3,param4);
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         this.§,O§.x = -param1;
         this.§,O§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§0r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3N§.length)
         {
            _loc3_ = this.§3N§[_loc2_] as §0r§;
            if(_loc3_ && _loc3_.§?V§() && _loc3_.§@^§ > 0)
            {
               if(!param1 || _loc3_.§7!;§.mTryToBlink <= 0 && _loc3_.§7!;§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@a§(param1:Boolean = false) : int
      {
         var _loc4_:§0r§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§3N§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3N§[_loc3_] as §0r§) && _loc4_.§?V§() && _loc4_.§@^§ > 0)
            {
               if(!param1 || _loc4_.§7!;§.mTryToBlink <= 0 && _loc4_.§7!;§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §]q§() : int
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3N§)
         {
            if(_loc2_ && (_loc2_.§%z§() || _loc2_.§9;§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>Z§() : int
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3N§)
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
         var _loc3_:§0r§ = null;
         var _loc2_:int = this.§3N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3N§[_loc2_];
            if(_loc3_ && _loc3_.§?V§() && _loc3_.§@^§ > 0)
            {
               _loc3_.§7!;§.mTryToScream = §44§.§;<§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §-y§() : Boolean
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = this.§3N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3N§[_loc1_] as §0r§;
            if(_loc2_ && _loc2_.§3r§() && _loc2_.§@^§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = this.§3N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3N§[_loc1_] as §0r§;
            if(_loc2_ && _loc2_.§@^§ > 0 && _loc2_.§!U§ != §+X§.§9?§)
            {
               if(_loc2_.§[!G§() && !_loc2_.§-[§())
               {
                  return false;
               }
               if(_loc2_.§3r§() && _loc2_.§@^§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §;_§(param1:Boolean = false) : §0r§
      {
         var _loc5_:int = 0;
         var _loc6_:§0r§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§3N§.length;
         var _loc3_:int = 1 + Math.random() * this.§@a§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§3N§[_loc5_]) && _loc6_.§?V§() && _loc6_.§@^§ > 0)
               {
                  if(!param1 || _loc6_.§7!;§.mTryToBlink <= 0 && _loc6_.§7!;§.mTryToScream <= 0)
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
      
      public function §#f§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§3N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§3N§[_loc2_] as §0r§).§ x§.score;
            if((this.§3N§[_loc2_] as §0r§).§[!G§())
            {
               _loc1_ += §!E§.§<!#§.getValue() * int((this.§3N§[_loc2_] as §0r§).§%!J§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§33§.slingshot.§#f§());
      }
      
      public function §3?§(param1:§0r§, param2:§0r§) : Boolean
      {
         if(param1.§3r§() && param2.§3r§())
         {
            return true;
         }
         if(!param1.§9!"§() && !param2.§9!"§())
         {
            return true;
         }
         return false;
      }
      
      public function §"g§() : void
      {
         this.mSardineCanAdded = true;
         this.§>D§ = 0;
      }
      
      public function objectCollision(param1:§0r§, param2:§0r§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§%!@§() || param2.§?V§())
            {
               param2.applyDamage(param2.§%!J§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§%!@§() || param1.§?V§())
            {
               param1.applyDamage(param1.§%!J§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§&!"§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§@1§() || param2.§@1§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§3?§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%h§(param2.§8M§());
         var _loc5_:Number = param1.§]F§(param2.§8M§());
         var _loc6_:Number = param2.§%h§(param1.§8M§());
         var _loc7_:Number = param2.§]F§(param1.§8M§());
         var _loc8_:Number = param1.§?n§().GetMass() * param1.§?n§().GetLinearVelocity().x - param2.§?n§().GetMass() * param2.§?n§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§?n§().GetMass() * param1.§?n§().GetLinearVelocity().y - param2.§?n§().GetMass() * param2.§?n§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§@^§);
         var _loc14_:Number = Math.max(0,param2.§@^§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§3r§(),_loc14_ == param2.§%!J§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§3r§(),_loc13_ == param1.§%!J§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§-n§(new b2Vec2(param2.§?n§().GetLinearVelocity().x * _loc18_,param2.§?n§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§-n§(new b2Vec2(param1.§?n§().GetLinearVelocity().x * _loc19_,param1.§?n§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §%!1§() : void
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = this.§3N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3N§[_loc1_] as §0r§;
            if(_loc2_ != null && _loc2_.§?V§())
            {
               this.§2!G§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §9C§() : void
      {
         var _loc2_:§0r§ = null;
         var _loc1_:int = this.§3N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3N§[_loc1_] as §0r§;
            if(_loc2_ != null && _loc2_.§#!-§())
            {
               this.§2!G§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[!8§() : int
      {
         return this.§3N§.length;
      }
      
      public function §"z§(param1:§^!9§) : void
      {
         var _loc4_:§0r§ = null;
         var _loc5_:§7=§ = null;
         var _loc6_:§&!?§ = null;
         var _loc7_:§1!F§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3N§.length)
         {
            if((_loc4_ = this.§3N§[_loc2_]).§'2§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §7=§()).angle = _loc4_.§ for§();
                  _loc5_.id = _loc4_.§>!"§;
                  _loc5_.x = _loc4_.§?n§().GetPosition().x;
                  _loc5_.y = _loc4_.§?n§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%]§.length)
         {
            _loc7_ = this.§%]§[_loc3_];
            _loc6_ = new §&!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§%!7§,_loc7_.§ !C§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§>]§,_loc7_.motorSpeed,_loc7_.§[7§,_loc7_.maxTorque);
            param1.§4!#§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §99§() : void
      {
         var _loc1_:int = 0;
         while(this.§3N§.length > _loc1_)
         {
            if(this.§3N§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§'>§(this.§3N§[_loc1_]);
            }
         }
      }
      
      public function §!-§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3N§.length)
         {
            if(this.§3N§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3N§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-!2§ = param1;
         this.§"A§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3N§.length)
         {
            if(this.§3N§[_loc2_].isTexture())
            {
               this.§3N§[_loc2_].sprite.visible = !this.§-!2§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2!2§ = param1;
      }
      
      public function §'n§() : Boolean
      {
         return this.§2!2§;
      }
      
      public function §#z§() : int
      {
         return this.§`w§;
      }
      
      public function §,E§() : int
      {
         return this.§;!1§;
      }
      
      public function §3e§(param1:String) : §0r§
      {
         var _loc3_:§0r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3N§.length)
         {
            _loc3_ = this.§3N§[_loc2_] as §0r§;
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
