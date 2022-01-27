package §'R§
{
   import §%"§.§ do§;
   import §%"§.§&h§;
   import §%"§.Tuner;
   import §%"§.§^!J§;
   import §+y§.§3V§;
   import §,!O§.§?9§;
   import §3M§.§-!?§;
   import §3M§.§5E§;
   import §3M§.§;v§;
   import §3M§.§`!3§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §?!;§.§;!,§;
   import §@M§.Texture;
   import §^'§.§!!M§;
   import §`=§.§"R§;
   import §`=§.§%!'§;
   import §`=§.§24§;
   import §`=§.§?!E§;
   import §`=§.§`P§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!m§
   {
       
      
      protected var §@L§:Vector.<§&r§>;
      
      protected var §+Z§:int;
      
      public var §-H§:§ do§;
      
      public var § f§:Vector.<§<l§>;
      
      protected var §0!'§:Sprite;
      
      protected var §;!"§:Sprite;
      
      private var §7v§:Sprite;
      
      private var §+!-§:Sprite;
      
      private var §8k§:Sprite;
      
      protected var §&!%§:Vector.<Texture>;
      
      protected var §0T§:Vector.<§5E§>;
      
      protected var §^K§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §1t§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §2G§:Boolean = false;
      
      protected var §`]§:Number;
      
      protected var §8d§:int;
      
      protected var §+i§:Vector.<§`!3§>;
      
      protected var §0Q§:int = 0;
      
      private var §6Y§:int = 0;
      
      private var §;f§:int = 0;
      
      private var §;m§:int;
      
      private var §6!M§:Boolean = true;
      
      private var §0m§:Boolean = true;
      
      public function §!m§(param1:§ do§, param2:§;!,§, param3:Sprite)
      {
         var _loc5_:§5E§ = null;
         var _loc6_:§;v§ = null;
         var _loc7_:§&r§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§&r§ = null;
         var _loc11_:§&r§ = null;
         this.§@L§ = new Vector.<§&r§>();
         this.§ f§ = new Vector.<§<l§>();
         this.§&!%§ = new Vector.<Texture>();
         this.§`]§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§+i§ = new Vector.<§`!3§>();
         super();
         this.§-H§ = param1;
         this.§+Z§ = 0;
         this.§;!"§ = param3;
         this.§;!"§.§0!-§ = false;
         this.§0m§ = true;
         this.§6!M§ = true;
         this.§0!'§ = new Sprite();
         this.§7v§ = new Sprite();
         this.§+!-§ = new Sprite();
         this.§8k§ = new Sprite();
         this.§;!"§.addChild(this.§0!'§);
         this.§;!"§.addChild(this.§7v§);
         this.§;!"§.addChild(this.§+!-§);
         this.§;!"§.addChild(this.§8k§);
         this.addObject(§?9§.§9!N§(param2.theme).§&%§,(this.§-H§.§#z§.§^N§ + this.§-H§.§#z§.§6!+§) / 2,this.§-H§.§#z§.§=a§ + §&h§.§3J§);
         this.§;m§ = this.§@L§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§>&§)
         {
            _loc6_ = param2.§99§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§[1§();
         this.§5!8§(true);
         this.§0T§ = new Vector.<§5E§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§+k§)
         {
            this.§0T§.push(§5E§.§,M§(param2.§!!3§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§0T§)
         {
            _loc8_ = _loc5_.index1 + this.§;m§;
            _loc9_ = _loc5_.index2 + this.§;m§;
            if(_loc8_ < this.§@L§.length && _loc9_ < this.§@L§.length)
            {
               _loc10_ = this.§@L§[_loc8_];
               _loc11_ = this.§@L§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-!?§.§,K§)
               {
                  _loc5_.§1L§ = this.§-H§.§]u§.§``§.CreateJoint(_loc5_.§7!?§(_loc10_,_loc11_));
               }
               else
               {
                  this.§+i§.push(new §`!3§(_loc8_,_loc9_,_loc5_.§19§));
               }
            }
         }
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §1!9§() : Sprite
      {
         return this.§8k§;
      }
      
      public function get §7!%§() : Sprite
      {
         return this.§;!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§@L§.length > 0)
         {
            this.§ c§(0);
         }
         this.§@L§ = null;
         this.§+i§ = null;
         if(this.§;!"§)
         {
            this.§;!"§.dispose();
            this.§;!"§ = null;
            this.§0!'§ = null;
            this.§8k§ = null;
            this.§7v§ = null;
            this.§+!-§ = null;
         }
         while(this.§&!%§.length > 0)
         {
            _loc1_ = this.§&!%§.pop();
            this.§-H§.textureManager.§[!O§(_loc1_);
         }
      }
      
      private function §5!8§(param1:Boolean) : void
      {
         this.§0!'§.visible = param1;
      }
      
      private function §[1§() : void
      {
         var _loc3_:§&r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§&M§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&r§> = new Vector.<§&r§>();
         for each(_loc3_ in this.§@L§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§;!"§);
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
            this.§!V§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§]!;§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§-H§.textureManager.§7d§(_loc10_);
            this.§&!%§.push(_loc12_);
            (_loc13_ = new §&M§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§0!'§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §]!;§(param1:Vector.<§&r§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§&r§ = null;
         var _loc11_:§24§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§@j§.shape).§!o§();
            _loc13_ = new Rectangle(_loc12_[0].x / § do§.§^!I§ * param6,_loc12_[0].y / § do§.§^!I§ * param6,(_loc12_[1].x - _loc12_[0].x) / § do§.§^!I§ * param6,(_loc12_[1].y - _loc12_[0].y) / § do§.§^!I§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§@!G§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §!V§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§-H§.background.§+M§();
         var _loc5_:§!!M§;
         if(_loc5_ = this.§-H§.backgroundTextureManager.§@h§(_loc4_))
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
      
      public function §##§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&r§
      {
         var _loc10_:§&r§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §4k§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §`!§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §<y§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §`@§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §-0§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §'!H§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §0!=§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §7!0§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§0Q§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&r§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§&r§;
         if((_loc11_ = this.§ X§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§6!M§;
            this.§@L§[this.§@L§.length] = _loc11_;
         }
         else
         {
            this.§@L§[this.§@L§.length] = _loc11_;
         }
         if(_loc11_ is §7!0§ && !_loc11_.§]!G§())
         {
            this.§7v§.addChild(_loc10_);
            ++this.§0Q§;
         }
         else if(_loc11_.front || param9)
         {
            this.§8k§.addChild(_loc10_);
         }
         else
         {
            this.§+!-§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§-H§.§3T§(_loc11_);
         }
         if(param6)
         {
            this.§-H§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §,M§(param1:int, param2:§&r§, param3:§&r§) : §5E§
      {
         var _loc6_:§5E§ = null;
         var _loc4_:int = this.§@L§.indexOf(param2) - this.§;m§;
         var _loc5_:int = this.§@L§.indexOf(param3) - this.§;m§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §5E§(§-!?§.§0!K§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§1L§ = this.§-H§.§]u§.§``§.CreateJoint(_loc6_.§7!?§(param2,param3));
            this.§0T§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §68§(param1:§5E§) : void
      {
         if(!(param1.§1L§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§&r§ = this.§99§(param1.index1 + this.§;m§);
         var _loc3_:§&r§ = this.§99§(param1.index2 + this.§;m§);
         this.§-H§.§]u§.§``§.DestroyJoint(param1.§1L§);
         param1.§1L§ = this.§-H§.§]u§.§``§.CreateJoint(param1.§7!?§(_loc2_,_loc3_));
      }
      
      public function §5A§(param1:§&r§) : Vector.<§5E§>
      {
         var _loc4_:§5E§ = null;
         var _loc2_:Vector.<§5E§> = new Vector.<§5E§>();
         var _loc3_:int = this.§@L§.indexOf(param1) - this.§;m§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§0T§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §,G§() : Vector.<§5E§>
      {
         return this.§0T§;
      }
      
      public function §'!K§(param1:§&r§) : void
      {
         var _loc2_:int = this.§@L§.indexOf(param1) - this.§;m§;
         var _loc3_:int = this.§0T§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§0T§[_loc3_].index1 == _loc2_ || this.§0T§[_loc3_].index2 == _loc2_)
            {
               this.§0T§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-V§(param1:§&r§, param2:§&r§) : Boolean
      {
         var _loc3_:int = this.§@L§.indexOf(param1) - this.§;m§;
         var _loc4_:int = this.§@L§.indexOf(param2) - this.§;m§;
         var _loc5_:int = this.§0T§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§0T§[_loc5_].index1 == _loc3_ && this.§0T§[_loc5_].index2 == _loc4_ || this.§0T§[_loc5_].index1 == _loc4_ && this.§0T§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function § X§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&r§
      {
         var _loc10_:§&r§ = null;
         var _loc11_:§%!'§ = null;
         var _loc12_:§%!'§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§##§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§;f§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §"R§.§^!'§(param2);
            _loc10_ = new §-^§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §"R§.§^!'§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §"R§.§^!'§(param2);
            }
            if(_loc12_.§>!L§ == §%!'§.§`!4§ || _loc12_.§>!L§ == §%!'§.§=4§)
            {
               _loc10_ = new §=j§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §&r§(this,param1,this.§-H§.§]u§.§``§,this.§-H§,this.§+Z§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §^!E§(param1:Number) : void
      {
         var _loc3_:§&r§ = null;
         var _loc2_:int = this.§@L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@L§[_loc2_] as §&r§;
            if(_loc3_)
            {
               if(_loc3_.§3! § <= 0)
               {
                  this.§ c§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§7"§();
                  _loc3_.§--§();
               }
            }
            _loc2_--;
         }
         this.§@!O§(param1);
      }
      
      protected function §@!O§(param1:Number) : void
      {
         var _loc3_:§5E§ = null;
         var _loc4_:§`!3§ = null;
         var _loc5_:int = 0;
         var _loc6_:§&r§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§+i§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§+i§[_loc2_]).§#H§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§0!7§("block_" + _loc5_))
                  {
                     this.§"H§(_loc6_,true,true,true);
                  }
                  this.§+i§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§0T§)
         {
            if(!(_loc3_.type == §-!?§.§+!5§ && _loc3_.§6I§))
            {
               continue;
            }
            _loc7_ = (_loc3_.§1L§ as b2PrismaticJoint).GetJointTranslation();
            _loc8_ = (_loc3_.§1L§ as b2PrismaticJoint).GetMotorSpeed();
            §§push(_loc3_.§2E§ && _loc3_.§^l§);
            if(_loc3_.§2E§ && _loc3_.§^l§)
            {
               §§pop();
               §§push(_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit);
               if(!(_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit))
               {
                  §§pop();
                  if(_loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit)
                  {
                     (_loc3_.§1L§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
                  }
                  continue;
               }
            }
            §§goto(addr137);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§ f§.push(§<l§.createExplosion(param1,param2,param3));
         §3V§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §[!D§(param1:Number, param2:Number) : int
      {
         var _loc4_:§&r§ = null;
         var _loc3_:int = this.§@L§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@L§[_loc3_])
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
      
      public function §@k§(param1:Number, param2:Number) : §&r§
      {
         var _loc4_:§&r§ = null;
         var _loc3_:int = this.§@L§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@L§[_loc3_])
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
      
      public function §99§(param1:int) : §&r§
      {
         return this.§@L§[param1];
      }
      
      public function §,A§(param1:Number, param2:Number) : void
      {
         var _loc4_:§&r§ = null;
         var _loc3_:int = this.§@L§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@L§[_loc3_] as §&r§).§,A§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §`r§(param1:§&r§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§&r§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§3! § == param1.§`!O§)
         {
            if(this.§`]§ < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§`]§ += param2 * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§<!I§().SetAngularVelocity(param2 * this.§`]§);
            this.§8d§ = 0;
         }
         else if(this.§8d§ == 0)
         {
            this.§8d§ = this.§-H§.§&!?§;
         }
         if(param1.§8@§() || this.§?P§(param1) || this.§8d§ > 0 && this.§-H§.§&!?§ > this.§8d§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §3V§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §3V§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§<!I§().GetPosition().x - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§<!I§().GetPosition().y - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§?P§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§8d§ = 0;
                  _loc7_.§,q§.§[n§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §1!O§(param1:§&r§, param2:Number) : Boolean
      {
         var _loc5_:§&r§ = null;
         if(this.Tuner.MIGHTY_EAGLE_USE_SHADE && !this.§2G§ && this.mMightyEagleTimer > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§2G§ = true;
            this.§-H§.§"8§();
         }
         this.mMightyEagleTimer += param2;
         this.§-H§.particles.addParticle(§"!E§.§!!7§,§9"§.§`z§,§"!E§.§!b§,param1.§<!I§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§<!I§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§"!E§.§3H§(param1.§8!I§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§3!I§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§1t§)
            {
               this.§1t§ = false;
               this.§-H§.§[!M§();
               param1.§@!E§(§?!E§.§&!+§);
               this.mSardineCanAdded = false;
               param1.§,q§.§@!N§ = true;
               param1.§,q§.§8_§();
               for each(_loc5_ in this.§@L§)
               {
                  if(_loc5_ && _loc5_.§ !M§())
                  {
                     _loc5_.§<!I§().SetAwake(true);
                     _loc5_.§<!I§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+X§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§@L§)
               {
                  if(_loc5_ && _loc5_.§ !M§())
                  {
                     _loc5_.applyDamage(_loc5_.§`!O§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§<!I§().GetPosition().y >= -5.5;
            this.§1t§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§9l§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §8!F§() : void
      {
         var _loc1_:§<l§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§&r§ = null;
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
         while(this.§ f§.length > 0)
         {
            _loc1_ = this.§ f§.shift();
            _loc2_ = _loc1_.§;w§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§@L§)
            {
               _loc8_ = _loc6_.§<!I§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§<!I§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§;w§)
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
                     _loc6_.§<!I§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§7!8§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§[!C§(_loc6_,_loc14_);
               }
            }
            this.§-H§.particles.addParticle(this.§]W§(_loc1_.type),§9"§.§`z§,§"!E§.§2N§,_loc3_,_loc4_,600,"",§"!E§.§2[§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§-H§.particles.addParticle(§"!E§.§1I§,§9"§.§`z§,§"!E§.§!b§,_loc3_,_loc4_,_loc16_,"",§"!E§.§2[§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §[!C§(param1:§&r§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §]W§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §"!E§.§6!$§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§&r§ = null;
         var _loc3_:int = this.§@L§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@L§[_loc3_];
            if(_loc2_.§'!A§())
            {
               if(this.§`r§(_loc2_,param1))
               {
                  this.§ c§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§]!G§())
            {
               this.§1!O§(_loc2_,param1);
            }
            else if(this.§?P§(_loc2_))
            {
               _loc2_.§@!E§(§?!E§.§1h§);
               this.§ c§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@!E§(§?!E§.§1h§);
               this.§ c§(_loc3_,false,true,true);
            }
            else if(_loc2_.§>j§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§8!F§();
      }
      
      private function §+X§() : void
      {
         var _loc1_:§5E§ = null;
         for each(_loc1_ in this.§0T§)
         {
            if(_loc1_.type != §-!?§.§,K§)
            {
               this.§-H§.§]u§.§``§.DestroyJoint(_loc1_.§1L§);
            }
         }
      }
      
      public function §-u§() : Boolean
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@L§.length)
         {
            _loc2_ = this.§@L§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §?P§(param1:§&r§) : Boolean
      {
         if(param1 && param1.§@j§.§-!F§() != §`P§.§@e§ && this.§-H§.§#z§.§ o§(param1.§<!I§().GetPosition().x,param1.§<!I§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function § c§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§5E§ = null;
         var _loc7_:§`!3§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§&r§;
         if((_loc5_ = this.§@L§[param1]).§ !M§())
         {
            ++this.§6Y§;
         }
         else if(_loc5_.§>j§())
         {
            --this.§0Q§;
         }
         if(_loc5_ == this.§-H§.activeObject)
         {
            this.§-H§.activeObject = null;
         }
         if(param2)
         {
            this.§-H§.addScore(_loc5_.§@j§.score,§^!J§.§+!?§,true,_loc5_.§<!I§().GetPosition().x,_loc5_.§<!I§().GetPosition().y - 3,§"!E§.§^2§(_loc5_.§8!I§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§-H§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§#!K§(_loc5_.sprite);
         this.§'!K§(_loc5_);
         for each(_loc6_ in this.§0T§)
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
         for each(_loc7_ in this.§+i§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§#H§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§@L§[param1] = null;
         this.§@L§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§&r§, param2:§9"§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §#!K§(param1:Sprite) : void
      {
         if(this.§+!-§.contains(param1))
         {
            this.§+!-§.removeChild(param1);
            return;
         }
         if(this.§7v§.contains(param1))
         {
            this.§7v§.removeChild(param1);
            return;
         }
         if(this.§0!'§.contains(param1))
         {
            this.§0!'§.removeChild(param1);
            return;
         }
         if(this.§8k§.contains(param1))
         {
            this.§8k§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§&r§) : void
      {
         if(param1.§&E§().toUpperCase() == "WHITE_EGG" || param1.§%k§())
         {
            if(param1.§8!I§.toUpperCase() == §`@§.§-i§)
            {
               this.addExplosions(§<l§.§`l§,param1.§<!I§().GetPosition().x,param1.§<!I§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§<l§.§!W§,param1.§<!I§().GetPosition().x,param1.§<!I§().GetPosition().y);
            }
         }
      }
      
      public function §"H§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§ c§(this.§@L§.indexOf(param1),param2,param3,param4);
      }
      
      public function §%!H§(param1:Number, param2:Number) : void
      {
         this.§;!"§.x = -param1;
         this.§;!"§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§&r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@L§.length)
         {
            _loc3_ = this.§@L§[_loc2_] as §&r§;
            if(_loc3_ && _loc3_.§ !M§() && _loc3_.§3! § > 0)
            {
               if(!param1 || _loc3_.§,q§.mTryToBlink <= 0 && _loc3_.§,q§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2!!§(param1:Boolean = false) : int
      {
         var _loc4_:§&r§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§@L§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@L§[_loc3_] as §&r§) && _loc4_.§ !M§() && _loc4_.§3! § > 0)
            {
               if(!param1 || _loc4_.§,q§.mTryToBlink <= 0 && _loc4_.§,q§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §#!5§() : int
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@L§)
         {
            if(_loc2_ && (_loc2_.§4!N§() || _loc2_.§4B§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §%t§() : int
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@L§)
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
         var _loc3_:§&r§ = null;
         var _loc2_:int = this.§@L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@L§[_loc2_];
            if(_loc3_ && _loc3_.§ !M§() && _loc3_.§3! § > 0)
            {
               _loc3_.§,q§.mTryToScream = §-$§.§`!,§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §'S§() : Boolean
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = this.§@L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@L§[_loc1_] as §&r§;
            if(_loc2_ && _loc2_.§>j§() && _loc2_.§3! § > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = this.§@L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@L§[_loc1_] as §&r§;
            if(_loc2_ && _loc2_.§3! § > 0 && _loc2_.§>!L§ != §%!'§.§^!+§)
            {
               if(_loc2_.§&P§() && !_loc2_.§8@§())
               {
                  return false;
               }
               if(_loc2_.§>j§() && _loc2_.§3! § > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §";§(param1:Boolean = false) : §&r§
      {
         var _loc5_:int = 0;
         var _loc6_:§&r§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§@L§.length;
         var _loc3_:int = 1 + Math.random() * this.§2!!§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§@L§[_loc5_]) && _loc6_.§ !M§() && _loc6_.§3! § > 0)
               {
                  if(!param1 || _loc6_.§,q§.mTryToBlink <= 0 && _loc6_.§,q§.mTryToScream <= 0)
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
      
      public function §?§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§@L§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§@L§[_loc2_] as §&r§).§@j§.score;
            if((this.§@L§[_loc2_] as §&r§).§&P§())
            {
               _loc1_ += § do§.§9b§.getValue() * int((this.§@L§[_loc2_] as §&r§).§`!O§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§-H§.slingshot.§?§());
      }
      
      public function §6g§(param1:§&r§, param2:§&r§) : Boolean
      {
         if(param1.§>j§() && param2.§>j§())
         {
            return true;
         }
         if(!param1.§;y§() && !param2.§;y§())
         {
            return true;
         }
         return false;
      }
      
      public function mightyEagleUsed() : void
      {
         this.mSardineCanAdded = true;
         this.§0Q§ = 0;
      }
      
      public function objectCollision(param1:§&r§, param2:§&r§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§]!G§() || param2.§ !M§())
            {
               param2.applyDamage(param2.§`!O§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§]!G§() || param1.§ !M§())
            {
               param1.applyDamage(param1.§`!O§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§'!A§() || param2.§'!A§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§6g§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%!G§(param2.§&E§());
         var _loc5_:Number = param1.§7Y§(param2.§&E§());
         var _loc6_:Number = param2.§%!G§(param1.§&E§());
         var _loc7_:Number = param2.§7Y§(param1.§&E§());
         var _loc8_:Number = param1.§<!I§().GetMass() * param1.§<!I§().GetLinearVelocity().x - param2.§<!I§().GetMass() * param2.§<!I§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§<!I§().GetMass() * param1.§<!I§().GetLinearVelocity().y - param2.§<!I§().GetMass() * param2.§<!I§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§3! §);
         var _loc14_:Number = Math.max(0,param2.§3! §);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§>j§(),_loc14_ == param2.§`!O§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§>j§(),_loc13_ == param1.§`!O§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§1!2§(new b2Vec2(param2.§<!I§().GetLinearVelocity().x * _loc18_,param2.§<!I§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§1!2§(new b2Vec2(param1.§<!I§().GetLinearVelocity().x * _loc19_,param1.§<!I§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §'!&§() : void
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = this.§@L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@L§[_loc1_] as §&r§;
            if(_loc2_ != null && _loc2_.§ !M§())
            {
               this.§ c§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §'V§() : void
      {
         var _loc2_:§&r§ = null;
         var _loc1_:int = this.§@L§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@L§[_loc1_] as §&r§;
            if(_loc2_ != null && _loc2_.§%k§())
            {
               this.§ c§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §6a§() : int
      {
         return this.§@L§.length;
      }
      
      public function §=!N§(param1:§;!,§) : void
      {
         var _loc4_:§&r§ = null;
         var _loc5_:§;v§ = null;
         var _loc6_:§-!?§ = null;
         var _loc7_:§5E§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@L§.length)
         {
            if((_loc4_ = this.§@L§[_loc2_]).§`u§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §;v§()).angle = _loc4_.§@!G§();
                  _loc5_.id = _loc4_.§8!I§;
                  _loc5_.x = _loc4_.§<!I§().GetPosition().x;
                  _loc5_.y = _loc4_.§<!I§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§0T§.length)
         {
            _loc7_ = this.§0T§[_loc3_];
            _loc6_ = new §-!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§3!1§,_loc7_.§2E§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§^l§,_loc7_.motorSpeed,_loc7_.§6I§,_loc7_.maxTorque);
            param1.§=9§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §?!2§() : void
      {
         var _loc1_:int = 0;
         while(this.§@L§.length > _loc1_)
         {
            if(this.§@L§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§"H§(this.§@L§[_loc1_]);
            }
         }
      }
      
      public function §1X§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§@L§.length)
         {
            if(this.§@L§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§@L§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§6!M§ = param1;
         this.§5!8§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@L§.length)
         {
            if(this.§@L§[_loc2_].isTexture())
            {
               this.§@L§[_loc2_].sprite.visible = !this.§6!M§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§0m§ = param1;
      }
      
      public function §`W§() : Boolean
      {
         return this.§0m§;
      }
      
      public function §,!N§() : int
      {
         return this.§;f§;
      }
      
      public function §-! §() : int
      {
         return this.§6Y§;
      }
      
      public function §0!7§(param1:String) : §&r§
      {
         var _loc3_:§&r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@L§.length)
         {
            _loc3_ = this.§@L§[_loc2_] as §&r§;
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
