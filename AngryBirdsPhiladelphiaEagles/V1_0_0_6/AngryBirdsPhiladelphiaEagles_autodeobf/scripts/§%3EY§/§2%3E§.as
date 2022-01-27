package §>Y§
{
   import §#!0§.§#-§;
   import §&K§.§&!A§;
   import §&K§.§0"§;
   import §&K§.§3r§;
   import §&K§.set;
   import §1E§.§5T§;
   import §4!-§.§%o§;
   import §4!-§.§1F§;
   import §4!-§.§4`§;
   import §4!-§.Tuner;
   import §4!0§.§#^§;
   import §86§.§?5§;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import §<Z§.§ P§;
   import §<Z§.§ l§;
   import §<Z§.§5!G§;
   import §<Z§.§>!!§;
   import §<Z§.§^!C§;
   import §[!A§.Texture;
   import §^?§.§[9§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2>§
   {
       
      
      protected var §?`§:Vector.<§#o§>;
      
      protected var §;+§:int;
      
      public var §'!8§:§%o§;
      
      public var §3g§:Vector.<§'D§>;
      
      protected var §96§:Sprite;
      
      protected var §'f§:Sprite;
      
      private var §-U§:Sprite;
      
      private var §<w§:Sprite;
      
      private var §&!B§:Sprite;
      
      protected var §"!P§:Vector.<Texture>;
      
      protected var §5'§:Vector.<§3r§>;
      
      protected var §+!6§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §0!5§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §@t§:Boolean = false;
      
      protected var §>M§:Number;
      
      protected var §^u§:int;
      
      protected var §;i§:Vector.<§0"§>;
      
      protected var §4!,§:int = 0;
      
      private var §3!§:int = 0;
      
      private var §'!#§:int = 0;
      
      private var §6&§:int;
      
      private var §`-§:Boolean = true;
      
      private var §@K§:Boolean = true;
      
      public function §2>§(param1:§%o§, param2:§5T§, param3:Sprite)
      {
         var _loc5_:§3r§ = null;
         var _loc6_:§&!A§ = null;
         var _loc7_:§#o§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§#o§ = null;
         var _loc11_:§#o§ = null;
         this.§?`§ = new Vector.<§#o§>();
         this.§3g§ = new Vector.<§'D§>();
         this.§"!P§ = new Vector.<Texture>();
         this.§>M§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§;i§ = new Vector.<§0"§>();
         super();
         this.§'!8§ = param1;
         this.§;+§ = 0;
         this.§'f§ = param3;
         this.§'f§.§+k§ = false;
         this.§@K§ = true;
         this.§`-§ = true;
         this.§96§ = new Sprite();
         this.§-U§ = new Sprite();
         this.§<w§ = new Sprite();
         this.§&!B§ = new Sprite();
         this.§'f§.addChild(this.§96§);
         this.§'f§.addChild(this.§-U§);
         this.§'f§.addChild(this.§<w§);
         this.§'f§.addChild(this.§&!B§);
         this.addObject(§[9§.§ r§(param2.theme).§-?§,(this.§'!8§.§=!#§.§8V§ + this.§'!8§.§=!#§.§7T§) / 2,this.§'!8§.§=!#§.§,!2§ + §4`§.§@!#§);
         this.§6&§ = this.§?`§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§`7§)
         {
            _loc6_ = param2.§1!1§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§if §();
         this.§7W§(true);
         this.§5'§ = new Vector.<§3r§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§9!'§)
         {
            this.§5'§.push(§3r§.§0C§(param2.§>I§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§5'§)
         {
            _loc8_ = _loc5_.index1 + this.§6&§;
            _loc9_ = _loc5_.index2 + this.§6&§;
            if(_loc8_ < this.§?`§.length && _loc9_ < this.§?`§.length)
            {
               _loc10_ = this.§?`§[_loc8_];
               _loc11_ = this.§?`§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != set.§^o§)
               {
                  _loc5_.§"3§ = this.§'!8§.§,!%§.§4=§.CreateJoint(_loc5_.§>!6§(_loc10_,_loc11_));
               }
               else
               {
                  this.§;i§.push(new §0"§(_loc8_,_loc9_,_loc5_.§63§));
               }
            }
         }
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §!_§() : Sprite
      {
         return this.§&!B§;
      }
      
      public function get §-J§() : Sprite
      {
         return this.§'f§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§?`§.length > 0)
         {
            this.§,5§(0);
         }
         this.§?`§ = null;
         this.§;i§ = null;
         if(this.§'f§)
         {
            this.§'f§.dispose();
            this.§'f§ = null;
            this.§96§ = null;
            this.§&!B§ = null;
            this.§-U§ = null;
            this.§<w§ = null;
         }
         while(this.§"!P§.length > 0)
         {
            _loc1_ = this.§"!P§.pop();
            this.§'!8§.textureManager.§7a§(_loc1_);
         }
      }
      
      private function §7W§(param1:Boolean) : void
      {
         this.§96§.visible = param1;
      }
      
      private function §if §() : void
      {
         var _loc3_:§#o§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§?5§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§#o§> = new Vector.<§#o§>();
         for each(_loc3_ in this.§?`§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§'f§);
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
            this.§3k§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§0Q§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§'!8§.textureManager.§5Y§(_loc10_);
            this.§"!P§.push(_loc12_);
            (_loc13_ = new §?5§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§96§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §0Q§(param1:Vector.<§#o§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§#o§ = null;
         var _loc11_:§ P§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5p§.shape).§!!7§();
            _loc13_ = new Rectangle(_loc12_[0].x / §%o§.§]!?§ * param6,_loc12_[0].y / §%o§.§]!?§ * param6,(_loc12_[1].x - _loc12_[0].x) / §%o§.§]!?§ * param6,(_loc12_[1].y - _loc12_[0].y) / §%o§.§]!?§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§`,§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3k§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§'!8§.background.§^k§();
         var _loc5_:§#^§;
         if(_loc5_ = this.§'!8§.backgroundTextureManager.§2L§(_loc4_))
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
      
      public function §7m§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §#o§
      {
         var _loc10_:§#o§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §9!"§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §<`§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §?i§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §"!-§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §?!@§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §@!N§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §%y§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §5t§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4!,§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §#o§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§#o§;
         if((_loc11_ = this.§+Z§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§`-§;
            this.§?`§[this.§?`§.length] = _loc11_;
         }
         else
         {
            this.§?`§[this.§?`§.length] = _loc11_;
         }
         if(_loc11_ is §5t§ && !_loc11_.§1H§())
         {
            this.§-U§.addChild(_loc10_);
            ++this.§4!,§;
         }
         else if(_loc11_.front || param9)
         {
            this.§&!B§.addChild(_loc10_);
         }
         else
         {
            this.§<w§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§'!8§.§]#§(_loc11_);
         }
         if(param6)
         {
            this.§'!8§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §0C§(param1:int, param2:§#o§, param3:§#o§) : §3r§
      {
         var _loc6_:§3r§ = null;
         var _loc4_:int = this.§?`§.indexOf(param2) - this.§6&§;
         var _loc5_:int = this.§?`§.indexOf(param3) - this.§6&§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §3r§(set.§5!M§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§"3§ = this.§'!8§.§,!%§.§4=§.CreateJoint(_loc6_.§>!6§(param2,param3));
            this.§5'§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §^!B§(param1:§3r§) : void
      {
         if(!(param1.§"3§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§#o§ = this.§1!1§(param1.index1 + this.§6&§);
         var _loc3_:§#o§ = this.§1!1§(param1.index2 + this.§6&§);
         this.§'!8§.§,!%§.§4=§.DestroyJoint(param1.§"3§);
         param1.§"3§ = this.§'!8§.§,!%§.§4=§.CreateJoint(param1.§>!6§(_loc2_,_loc3_));
      }
      
      public function §!f§(param1:§#o§) : Vector.<§3r§>
      {
         var _loc4_:§3r§ = null;
         var _loc2_:Vector.<§3r§> = new Vector.<§3r§>();
         var _loc3_:int = this.§?`§.indexOf(param1) - this.§6&§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§5'§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §+x§() : Vector.<§3r§>
      {
         return this.§5'§;
      }
      
      public function §%!'§(param1:§#o§) : void
      {
         var _loc2_:int = this.§?`§.indexOf(param1) - this.§6&§;
         var _loc3_:int = this.§5'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§5'§[_loc3_].index1 == _loc2_ || this.§5'§[_loc3_].index2 == _loc2_)
            {
               this.§5'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §@!B§(param1:§#o§, param2:§#o§) : Boolean
      {
         var _loc3_:int = this.§?`§.indexOf(param1) - this.§6&§;
         var _loc4_:int = this.§?`§.indexOf(param2) - this.§6&§;
         var _loc5_:int = this.§5'§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§5'§[_loc5_].index1 == _loc3_ && this.§5'§[_loc5_].index2 == _loc4_ || this.§5'§[_loc5_].index1 == _loc4_ && this.§5'§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §+Z§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §#o§
      {
         var _loc10_:§#o§ = null;
         var _loc11_:§^!C§ = null;
         var _loc12_:§^!C§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§7m§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§'!#§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = § l§.§"<§(param2);
            _loc10_ = new §8k§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = § l§.§"<§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = § l§.§"<§(param2);
            }
            if(_loc12_.§5u§ == §^!C§.§%!C§ || _loc12_.§5u§ == §^!C§.§'I§)
            {
               _loc10_ = new §'w§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §#o§(this,param1,this.§'!8§.§,!%§.§4=§,this.§'!8§,this.§;+§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §^!G§(param1:Number) : void
      {
         var _loc3_:§#o§ = null;
         var _loc2_:int = this.§?`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?`§[_loc2_] as §#o§;
            if(_loc3_)
            {
               if(_loc3_.§=4§ <= 0)
               {
                  this.§,5§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§1!0§();
                  _loc3_.§3X§();
               }
            }
            _loc2_--;
         }
         this.§0!!§(param1);
      }
      
      protected function §0!!§(param1:Number) : void
      {
         var _loc3_:§3r§ = null;
         var _loc4_:§0"§ = null;
         var _loc5_:int = 0;
         var _loc6_:§#o§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§;i§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§;i§[_loc2_]).§-!B§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§1§("block_" + _loc5_))
                  {
                     this.§[B§(_loc6_,true,true,true);
                  }
                  this.§;i§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§5'§)
         {
            if(_loc3_.type == set.§%!+§ && _loc3_.§!M§)
            {
               _loc7_ = (_loc3_.§"3§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§"3§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§3s§ && _loc3_.§6M§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§"3§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§3g§.push(§'D§.createExplosion(param1,param2,param3));
         §#-§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §>O§(param1:Number, param2:Number) : int
      {
         var _loc4_:§#o§ = null;
         var _loc3_:int = this.§?`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§?`§[_loc3_])
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
      
      public function §7!J§(param1:Number, param2:Number) : §#o§
      {
         var _loc4_:§#o§ = null;
         var _loc3_:int = this.§?`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§?`§[_loc3_])
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
      
      public function §1!1§(param1:int) : §#o§
      {
         return this.§?`§[param1];
      }
      
      public function §2!!§(param1:Number, param2:Number) : void
      {
         var _loc4_:§#o§ = null;
         var _loc3_:int = this.§?`§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§?`§[_loc3_] as §#o§).§2!!§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §0^§(param1:§#o§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§#o§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§=4§ == param1.§72§)
         {
            if(this.§>M§ < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§>M§ += param2 * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§[5§().SetAngularVelocity(param2 * this.§>M§);
            this.§^u§ = 0;
         }
         else if(this.§^u§ == 0)
         {
            this.§^u§ = this.§'!8§.§#g§;
         }
         if(param1.§9!2§() || this.§^r§(param1) || this.§^u§ > 0 && this.§'!8§.§#g§ > this.§^u§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §#-§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §#-§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§[5§().GetPosition().x - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§[5§().GetPosition().y - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§^r§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§^u§ = 0;
                  _loc7_.§%!B§.§6p§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function § !$§(param1:§#o§, param2:Number) : Boolean
      {
         var _loc5_:§#o§ = null;
         if(this.Tuner.MIGHTY_EAGLE_USE_SHADE && !this.§@t§ && this.mMightyEagleTimer > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§@t§ = true;
            this.§'!8§.§^E§();
         }
         this.mMightyEagleTimer += param2;
         this.§'!8§.particles.addParticle(§5!C§.§-!E§,§ try§.§4!+§,§5!C§.§'! §,param1.§[5§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§[5§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§5!C§.§ 4§(param1.§]q§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§<2§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§0!5§)
            {
               this.§0!5§ = false;
               this.§'!8§.§>6§();
               param1.§&l§(§5!G§.§]r§);
               this.mSardineCanAdded = false;
               param1.§%!B§.§9p§ = true;
               param1.§%!B§.§-!C§();
               for each(_loc5_ in this.§?`§)
               {
                  if(_loc5_ && _loc5_.§3!4§())
                  {
                     _loc5_.§[5§().SetAwake(true);
                     _loc5_.§[5§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§#`§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§?`§)
               {
                  if(_loc5_ && _loc5_.§3!4§())
                  {
                     _loc5_.applyDamage(_loc5_.§72§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§[5§().GetPosition().y >= -5.5;
            this.§0!5§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§&!4§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §@!'§() : void
      {
         var _loc1_:§'D§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§#o§ = null;
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
         while(this.§3g§.length > 0)
         {
            _loc1_ = this.§3g§.shift();
            _loc2_ = _loc1_.§'K§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§?`§)
            {
               _loc8_ = _loc6_.§[5§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§[5§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§'K§)
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
                     _loc6_.§[5§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§]?§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§&!+§(_loc6_,_loc14_);
               }
            }
            this.§'!8§.particles.addParticle(this.§3O§(_loc1_.type),§ try§.§4!+§,§5!C§.§7b§,_loc3_,_loc4_,600,"",§5!C§.§-!7§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§'!8§.particles.addParticle(§5!C§.§^I§,§ try§.§4!+§,§5!C§.§'! §,_loc3_,_loc4_,_loc16_,"",§5!C§.§-!7§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §&!+§(param1:§#o§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §3O§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §5!C§.§8!F§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§#o§ = null;
         var _loc3_:int = this.§?`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§?`§[_loc3_];
            if(_loc2_.§2O§())
            {
               if(this.§0^§(_loc2_,param1))
               {
                  this.§,5§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§1H§())
            {
               this.§ !$§(_loc2_,param1);
            }
            else if(this.§^r§(_loc2_))
            {
               _loc2_.§&l§(§5!G§.§4!<§);
               this.§,5§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§&l§(§5!G§.§4!<§);
               this.§,5§(_loc3_,false,true,true);
            }
            else if(_loc2_.§-!D§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@!'§();
      }
      
      private function §#`§() : void
      {
         var _loc1_:§3r§ = null;
         for each(_loc1_ in this.§5'§)
         {
            if(_loc1_.type != set.§^o§)
            {
               this.§'!8§.§,!%§.§4=§.DestroyJoint(_loc1_.§"3§);
            }
         }
      }
      
      public function §`!D§() : Boolean
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?`§.length)
         {
            _loc2_ = this.§?`§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §^r§(param1:§#o§) : Boolean
      {
         if(param1 && param1.§5p§.§ !N§() != §>!!§.§;^§ && this.§'!8§.§=!#§.§-+§(param1.§[5§().GetPosition().x,param1.§[5§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §,5§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§3r§ = null;
         var _loc7_:§0"§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§#o§;
         if((_loc5_ = this.§?`§[param1]).§3!4§())
         {
            ++this.§3!§;
         }
         else if(_loc5_.§-!D§())
         {
            --this.§4!,§;
         }
         if(_loc5_ == this.§'!8§.activeObject)
         {
            this.§'!8§.activeObject = null;
         }
         if(param2)
         {
            this.§'!8§.addScore(_loc5_.§5p§.score,§1F§.§;[§,true,_loc5_.§[5§().GetPosition().x,_loc5_.§[5§().GetPosition().y - 3,§5!C§.§0L§(_loc5_.§]q§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§'!8§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+!!§(_loc5_.sprite);
         this.§%!'§(_loc5_);
         for each(_loc6_ in this.§5'§)
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
         for each(_loc7_ in this.§;i§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§-!B§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§?`§[param1] = null;
         this.§?`§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§#o§, param2:§ try§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+!!§(param1:Sprite) : void
      {
         if(this.§<w§.contains(param1))
         {
            this.§<w§.removeChild(param1);
            return;
         }
         if(this.§-U§.contains(param1))
         {
            this.§-U§.removeChild(param1);
            return;
         }
         if(this.§96§.contains(param1))
         {
            this.§96§.removeChild(param1);
            return;
         }
         if(this.§&!B§.contains(param1))
         {
            this.§&!B§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§#o§) : void
      {
         if(param1.§]N§().toUpperCase() == "WHITE_EGG" || param1.§%z§())
         {
            if(param1.§]q§.toUpperCase() == §"!-§.§%!§)
            {
               this.addExplosions(§'D§.§'t§,param1.§[5§().GetPosition().x,param1.§[5§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§'D§.§>a§,param1.§[5§().GetPosition().x,param1.§[5§().GetPosition().y);
            }
         }
      }
      
      public function §[B§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§,5§(this.§?`§.indexOf(param1),param2,param3,param4);
      }
      
      public function §`2§(param1:Number, param2:Number) : void
      {
         this.§'f§.x = -param1;
         this.§'f§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§#o§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?`§.length)
         {
            _loc3_ = this.§?`§[_loc2_] as §#o§;
            if(_loc3_ && _loc3_.§3!4§() && _loc3_.§=4§ > 0)
            {
               if(!param1 || _loc3_.§%!B§.mTryToBlink <= 0 && _loc3_.§%!B§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §]6§(param1:Boolean = false) : int
      {
         var _loc4_:§#o§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§?`§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§?`§[_loc3_] as §#o§) && _loc4_.§3!4§() && _loc4_.§=4§ > 0)
            {
               if(!param1 || _loc4_.§%!B§.mTryToBlink <= 0 && _loc4_.§%!B§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §%!G§() : int
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?`§)
         {
            if(_loc2_ && (_loc2_.§6X§() || _loc2_.§]W§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §4!L§() : int
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?`§)
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
         var _loc3_:§#o§ = null;
         var _loc2_:int = this.§?`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?`§[_loc2_];
            if(_loc3_ && _loc3_.§3!4§() && _loc3_.§=4§ > 0)
            {
               _loc3_.§%!B§.mTryToScream = §^!,§.§'!?§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §?,§() : Boolean
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = this.§?`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?`§[_loc1_] as §#o§;
            if(_loc2_ && _loc2_.§-!D§() && _loc2_.§=4§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = this.§?`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?`§[_loc1_] as §#o§;
            if(_loc2_ && _loc2_.§=4§ > 0 && _loc2_.§5u§ != §^!C§.§7>§)
            {
               if(_loc2_.§+#§() && !_loc2_.§9!2§())
               {
                  return false;
               }
               if(_loc2_.§-!D§() && _loc2_.§=4§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §10§(param1:Boolean = false) : §#o§
      {
         var _loc5_:int = 0;
         var _loc6_:§#o§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§?`§.length;
         var _loc3_:int = 1 + Math.random() * this.§]6§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§?`§[_loc5_]) && _loc6_.§3!4§() && _loc6_.§=4§ > 0)
               {
                  if(!param1 || _loc6_.§%!B§.mTryToBlink <= 0 && _loc6_.§%!B§.mTryToScream <= 0)
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
      
      public function §"z§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§?`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§?`§[_loc2_] as §#o§).§5p§.score;
            if((this.§?`§[_loc2_] as §#o§).§+#§())
            {
               _loc1_ += §%o§.§-m§.getValue() * int((this.§?`§[_loc2_] as §#o§).§72§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§'!8§.slingshot.§"z§());
      }
      
      public function §![§(param1:§#o§, param2:§#o§) : Boolean
      {
         if(param1.§-!D§() && param2.§-!D§())
         {
            return true;
         }
         if(!param1.§7!,§() && !param2.§7!,§())
         {
            return true;
         }
         return false;
      }
      
      public function mightyEagleUsed() : void
      {
         this.mSardineCanAdded = true;
         this.§4!,§ = 0;
      }
      
      public function objectCollision(param1:§#o§, param2:§#o§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§1H§() || param2.§3!4§())
            {
               param2.applyDamage(param2.§72§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§1H§() || param1.§3!4§())
            {
               param1.applyDamage(param1.§72§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§2O§() || param2.§2O§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§![§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§"!L§(param2.§]N§());
         var _loc5_:Number = param1.§2!J§(param2.§]N§());
         var _loc6_:Number = param2.§"!L§(param1.§]N§());
         var _loc7_:Number = param2.§2!J§(param1.§]N§());
         var _loc8_:Number = param1.§[5§().GetMass() * param1.§[5§().GetLinearVelocity().x - param2.§[5§().GetMass() * param2.§[5§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§[5§().GetMass() * param1.§[5§().GetLinearVelocity().y - param2.§[5§().GetMass() * param2.§[5§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§=4§);
         var _loc14_:Number = Math.max(0,param2.§=4§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§-!D§(),_loc14_ == param2.§72§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§-!D§(),_loc13_ == param1.§72§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§?^§(new b2Vec2(param2.§[5§().GetLinearVelocity().x * _loc18_,param2.§[5§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§?^§(new b2Vec2(param1.§[5§().GetLinearVelocity().x * _loc19_,param1.§[5§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §?'§() : void
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = this.§?`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?`§[_loc1_] as §#o§;
            if(_loc2_ != null && _loc2_.§3!4§())
            {
               this.§,5§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1!%§() : void
      {
         var _loc2_:§#o§ = null;
         var _loc1_:int = this.§?`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?`§[_loc1_] as §#o§;
            if(_loc2_ != null && _loc2_.§%z§())
            {
               this.§,5§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §-=§() : int
      {
         return this.§?`§.length;
      }
      
      public function §97§(param1:§5T§) : void
      {
         var _loc4_:§#o§ = null;
         var _loc5_:§&!A§ = null;
         var _loc6_:set = null;
         var _loc7_:§3r§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?`§.length)
         {
            if((_loc4_ = this.§?`§[_loc2_]).§'!H§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §&!A§()).angle = _loc4_.§`,§();
                  _loc5_.id = _loc4_.§]q§;
                  _loc5_.x = _loc4_.§[5§().GetPosition().x;
                  _loc5_.y = _loc4_.§[5§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5'§.length)
         {
            _loc7_ = this.§5'§[_loc3_];
            _loc6_ = new set(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§!%§,_loc7_.§3s§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§6M§,_loc7_.motorSpeed,_loc7_.§!M§,_loc7_.maxTorque);
            param1.§@!3§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §use§() : void
      {
         var _loc1_:int = 0;
         while(this.§?`§.length > _loc1_)
         {
            if(this.§?`§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§[B§(this.§?`§[_loc1_]);
            }
         }
      }
      
      public function §61§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§?`§.length)
         {
            if(this.§?`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§?`§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§`-§ = param1;
         this.§7W§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?`§.length)
         {
            if(this.§?`§[_loc2_].isTexture())
            {
               this.§?`§[_loc2_].sprite.visible = !this.§`-§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§@K§ = param1;
      }
      
      public function §89§() : Boolean
      {
         return this.§@K§;
      }
      
      public function §@H§() : int
      {
         return this.§'!#§;
      }
      
      public function §^>§() : int
      {
         return this.§3!§;
      }
      
      public function §1§(param1:String) : §#o§
      {
         var _loc3_:§#o§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?`§.length)
         {
            _loc3_ = this.§?`§[_loc2_] as §#o§;
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
