package §3F§
{
   import § !N§.§6!§;
   import §+!N§.§!9§;
   import §+!N§.§-!H§;
   import §+!N§.§1[§;
   import §+!N§.§=!2§;
   import §+!N§.§[8§;
   import §0l§.Texture;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §5=§.§8G§;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §>2§.§#!&§;
   import §>2§.§&L§;
   import §>2§.§4h§;
   import §>2§.Tuner;
   import §[N§.§9k§;
   import §^I§.§+=§;
   import §^I§.§7Z§;
   import §^I§.§>!?§;
   import §^I§.§@V§;
   import §`!&§.§]! §;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0z§
   {
       
      
      protected var §<o§:Vector.<§2!3§>;
      
      protected var §%f§:int;
      
      public var §@k§:§4h§;
      
      public var §>1§:Vector.<§>D§>;
      
      protected var §0#§:Sprite;
      
      protected var §^7§:Sprite;
      
      private var §?'§:Sprite;
      
      private var §3v§:Sprite;
      
      private var §,!-§:Sprite;
      
      protected var §@6§:Vector.<Texture>;
      
      protected var §'!=§:Vector.<§@V§>;
      
      protected var §'!@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-!"§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §&O§:Boolean = false;
      
      protected var §&!§:Number;
      
      protected var §@C§:int;
      
      protected var §3u§:Vector.<§+=§>;
      
      protected var §>!<§:int = 0;
      
      private var §1e§:int = 0;
      
      private var §-!8§:int = 0;
      
      private var §"!6§:int;
      
      private var §@[§:Boolean = true;
      
      private var §1!P§:Boolean = true;
      
      public function §0z§(param1:§4h§, param2:§8G§, param3:Sprite)
      {
         var _loc5_:§@V§ = null;
         var _loc6_:§7Z§ = null;
         var _loc7_:§2!3§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§2!3§ = null;
         var _loc11_:§2!3§ = null;
         this.§<o§ = new Vector.<§2!3§>();
         this.§>1§ = new Vector.<§>D§>();
         this.§@6§ = new Vector.<Texture>();
         this.§&!§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§3u§ = new Vector.<§+=§>();
         super();
         this.§@k§ = param1;
         this.§%f§ = 0;
         this.§^7§ = param3;
         this.§^7§.§6c§ = false;
         this.§1!P§ = true;
         this.§@[§ = true;
         this.§0#§ = new Sprite();
         this.§?'§ = new Sprite();
         this.§3v§ = new Sprite();
         this.§,!-§ = new Sprite();
         this.§^7§.addChild(this.§0#§);
         this.§^7§.addChild(this.§?'§);
         this.§^7§.addChild(this.§3v§);
         this.§^7§.addChild(this.§,!-§);
         this.addObject(§]! §.§@D§(param2.theme).§45§,(this.§@k§.§ !9§.§8!<§ + this.§@k§.§ !9§.§&G§) / 2,this.§@k§.§ !9§.§ h§ + §#!&§.§]s§);
         this.§"!6§ = this.§<o§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§^F§)
         {
            _loc6_ = param2.§8!F§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§^e§();
         this.§,!=§(true);
         this.§'!=§ = new Vector.<§@V§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§4-§)
         {
            this.§'!=§.push(§@V§.§=b§(param2.§3,§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§'!=§)
         {
            _loc8_ = _loc5_.index1 + this.§"!6§;
            _loc9_ = _loc5_.index2 + this.§"!6§;
            if(_loc8_ < this.§<o§.length && _loc9_ < this.§<o§.length)
            {
               _loc10_ = this.§<o§[_loc8_];
               _loc11_ = this.§<o§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §>!?§.§9!H§)
               {
                  _loc5_.§20§ = this.§@k§.§ x§.§7!J§.CreateJoint(_loc5_.§3c§(_loc10_,_loc11_));
               }
               else
               {
                  this.§3u§.push(new §+=§(_loc8_,_loc9_,_loc5_.§9!3§));
               }
            }
         }
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §default§() : Sprite
      {
         return this.§,!-§;
      }
      
      public function get §6§() : Sprite
      {
         return this.§^7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§<o§.length > 0)
         {
            this.§^q§(0);
         }
         this.§<o§ = null;
         this.§3u§ = null;
         if(this.§^7§)
         {
            this.§^7§.dispose();
            this.§^7§ = null;
            this.§0#§ = null;
            this.§,!-§ = null;
            this.§?'§ = null;
            this.§3v§ = null;
         }
         while(this.§@6§.length > 0)
         {
            _loc1_ = this.§@6§.pop();
            this.§@k§.textureManager.§0^§(_loc1_);
         }
      }
      
      private function §,!=§(param1:Boolean) : void
      {
         this.§0#§.visible = param1;
      }
      
      private function §^e§() : void
      {
         var _loc3_:§2!3§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§`!@§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§2!3§> = new Vector.<§2!3§>();
         for each(_loc3_ in this.§<o§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§^7§);
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
            this.§0!O§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§7k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§@k§.textureManager.§>!6§(_loc10_);
            this.§@6§.push(_loc12_);
            (_loc13_ = new §`!@§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§0#§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §7k§(param1:Vector.<§2!3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§2!3§ = null;
         var _loc11_:§-!H§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5k§.shape).§6x§();
            _loc13_ = new Rectangle(_loc12_[0].x / §4h§.§-9§ * param6,_loc12_[0].y / §4h§.§-9§ * param6,(_loc12_[1].x - _loc12_[0].x) / §4h§.§-9§ * param6,(_loc12_[1].y - _loc12_[0].y) / §4h§.§-9§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§;R§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §0!O§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§@k§.background.§0f§();
         var _loc5_:§6!§;
         if(_loc5_ = this.§@k§.backgroundTextureManager.§?2§(_loc4_))
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
      
      public function §=!F§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2!3§
      {
         var _loc10_:§2!3§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § 8§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §-w§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §;'§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §80§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §3S§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §1$§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §3!=§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §=4§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>!<§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2!3§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§2!3§;
         if((_loc11_ = this.§8]§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§@[§;
            this.§<o§[this.§<o§.length] = _loc11_;
         }
         else
         {
            this.§<o§[this.§<o§.length] = _loc11_;
         }
         if(_loc11_ is §=4§ && !_loc11_.§[-§())
         {
            this.§?'§.addChild(_loc10_);
            ++this.§>!<§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,!-§.addChild(_loc10_);
         }
         else
         {
            this.§3v§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§@k§.§!x§(_loc11_);
         }
         if(param6)
         {
            this.§@k§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §=b§(param1:int, param2:§2!3§, param3:§2!3§) : §@V§
      {
         var _loc6_:§@V§ = null;
         var _loc4_:int = this.§<o§.indexOf(param2) - this.§"!6§;
         var _loc5_:int = this.§<o§.indexOf(param3) - this.§"!6§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@V§(§>!?§.§ ^§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§20§ = this.§@k§.§ x§.§7!J§.CreateJoint(_loc6_.§3c§(param2,param3));
            this.§'!=§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §"!E§(param1:§@V§) : void
      {
         if(!(param1.§20§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§2!3§ = this.§8!F§(param1.index1 + this.§"!6§);
         var _loc3_:§2!3§ = this.§8!F§(param1.index2 + this.§"!6§);
         this.§@k§.§ x§.§7!J§.DestroyJoint(param1.§20§);
         param1.§20§ = this.§@k§.§ x§.§7!J§.CreateJoint(param1.§3c§(_loc2_,_loc3_));
      }
      
      public function §,?§(param1:§2!3§) : Vector.<§@V§>
      {
         var _loc4_:§@V§ = null;
         var _loc2_:Vector.<§@V§> = new Vector.<§@V§>();
         var _loc3_:int = this.§<o§.indexOf(param1) - this.§"!6§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§'!=§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §%4§() : Vector.<§@V§>
      {
         return this.§'!=§;
      }
      
      public function §%j§(param1:§2!3§) : void
      {
         var _loc2_:int = this.§<o§.indexOf(param1) - this.§"!6§;
         var _loc3_:int = this.§'!=§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§'!=§[_loc3_].index1 == _loc2_ || this.§'!=§[_loc3_].index2 == _loc2_)
            {
               this.§'!=§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?=§(param1:§2!3§, param2:§2!3§) : Boolean
      {
         var _loc3_:int = this.§<o§.indexOf(param1) - this.§"!6§;
         var _loc4_:int = this.§<o§.indexOf(param2) - this.§"!6§;
         var _loc5_:int = this.§'!=§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§'!=§[_loc5_].index1 == _loc3_ && this.§'!=§[_loc5_].index2 == _loc4_ || this.§'!=§[_loc5_].index1 == _loc4_ && this.§'!=§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §8]§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2!3§
      {
         var _loc10_:§2!3§ = null;
         var _loc11_:§!9§ = null;
         var _loc12_:§!9§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§=!F§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§-!8§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §1[§.§[Y§(param2);
            _loc10_ = new §5V§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §1[§.§[Y§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §1[§.§[Y§(param2);
            }
            if(_loc12_.§>!-§ == §!9§.§!!%§ || _loc12_.§>!-§ == §!9§.§3!H§)
            {
               _loc10_ = new §[!4§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §2!3§(this,param1,this.§@k§.§ x§.§7!J§,this.§@k§,this.§%f§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §+!,§(param1:Number) : void
      {
         var _loc3_:§2!3§ = null;
         var _loc2_:int = this.§<o§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<o§[_loc2_] as §2!3§;
            if(_loc3_)
            {
               if(_loc3_.§7^§ <= 0)
               {
                  this.§^q§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§,!C§();
                  _loc3_.§-!3§();
               }
            }
            _loc2_--;
         }
         this.§1!5§(param1);
      }
      
      protected function §1!5§(param1:Number) : void
      {
         var _loc3_:§@V§ = null;
         var _loc4_:§+=§ = null;
         var _loc5_:int = 0;
         var _loc6_:§2!3§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§3u§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§3u§[_loc2_]).§4!7§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§@!C§("block_" + _loc5_))
                  {
                     this.§%S§(_loc6_,true,true,true);
                  }
                  this.§3u§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§'!=§)
         {
            if(_loc3_.type == §>!?§.§;k§ && _loc3_.§1!1§)
            {
               _loc7_ = (_loc3_.§20§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§20§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§[!9§ && _loc3_.§&u§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§20§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§>1§.push(§>D§.createExplosion(param1,param2,param3));
         §9k§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §,+§(param1:Number, param2:Number) : int
      {
         var _loc4_:§2!3§ = null;
         var _loc3_:int = this.§<o§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<o§[_loc3_])
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
      
      public function §function§(param1:Number, param2:Number) : §2!3§
      {
         var _loc4_:§2!3§ = null;
         var _loc3_:int = this.§<o§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<o§[_loc3_])
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
      
      public function §8!F§(param1:int) : §2!3§
      {
         return this.§<o§[param1];
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc4_:§2!3§ = null;
         var _loc3_:int = this.§<o§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§<o§[_loc3_] as §2!3§).§2[§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §@!&§(param1:§2!3§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§2!3§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§7^§ == param1.§0-§)
         {
            if(this.§&!§ < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§&!§ += param2 * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§?!M§().SetAngularVelocity(param2 * this.§&!§);
            this.§@C§ = 0;
         }
         else if(this.§@C§ == 0)
         {
            this.§@C§ = this.§@k§.§`!K§;
         }
         if(param1.§88§() || this.§?p§(param1) || this.§@C§ > 0 && this.§@k§.§`!K§ > this.§@C§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §9k§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §9k§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§?!M§().GetPosition().x - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§?!M§().GetPosition().y - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§?p§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§@C§ = 0;
                  _loc7_.§^! §.§#!F§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §%!I§(param1:§2!3§, param2:Number) : Boolean
      {
         var _loc5_:§2!3§ = null;
         if(this.Tuner.MIGHTY_EAGLE_USE_SHADE && !this.§&O§ && this.mMightyEagleTimer > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§&O§ = true;
            this.§@k§.§`@§();
         }
         this.mMightyEagleTimer += param2;
         this.§@k§.particles.addParticle(§^A§.§1!B§,§@u§.§&&§,§^A§.§<!$§,param1.§?!M§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§?!M§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§^A§.§,_§(param1.§9E§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§,!&§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§-!"§)
            {
               this.§-!"§ = false;
               this.§@k§.§>!%§();
               param1.§7f§(§=!2§.§#c§);
               this.mSardineCanAdded = false;
               param1.§^! §.§`!§ = true;
               param1.§^! §.§;c§();
               for each(_loc5_ in this.§<o§)
               {
                  if(_loc5_ && _loc5_.§0e§())
                  {
                     _loc5_.§?!M§().SetAwake(true);
                     _loc5_.§?!M§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§?!1§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§<o§)
               {
                  if(_loc5_ && _loc5_.§0e§())
                  {
                     _loc5_.applyDamage(_loc5_.§0-§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§?!M§().GetPosition().y >= -5.5;
            this.§-!"§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§]!!§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function § !A§() : void
      {
         var _loc1_:§>D§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§2!3§ = null;
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
         while(this.§>1§.length > 0)
         {
            _loc1_ = this.§>1§.shift();
            _loc2_ = _loc1_.§-!-§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§<o§)
            {
               _loc8_ = _loc6_.§?!M§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§?!M§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§-!-§)
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
                     _loc6_.§?!M§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§3W§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§[!#§(_loc6_,_loc14_);
               }
            }
            this.§@k§.particles.addParticle(this.§76§(_loc1_.type),§@u§.§&&§,§^A§.§9!O§,_loc3_,_loc4_,600,"",§^A§.§'!§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§@k§.particles.addParticle(§^A§.§9<§,§@u§.§&&§,§^A§.§<!$§,_loc3_,_loc4_,_loc16_,"",§^A§.§'!§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §[!#§(param1:§2!3§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §76§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §^A§.§7!1§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§2!3§ = null;
         var _loc3_:int = this.§<o§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§<o§[_loc3_];
            if(_loc2_.§[f§())
            {
               if(this.§@!&§(_loc2_,param1))
               {
                  this.§^q§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§[-§())
            {
               this.§%!I§(_loc2_,param1);
            }
            else if(this.§?p§(_loc2_))
            {
               _loc2_.§7f§(§=!2§.§7p§);
               this.§^q§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§7f§(§=!2§.§7p§);
               this.§^q§(_loc3_,false,true,true);
            }
            else if(_loc2_.§6!?§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§ !A§();
      }
      
      private function §?!1§() : void
      {
         var _loc1_:§@V§ = null;
         for each(_loc1_ in this.§'!=§)
         {
            if(_loc1_.type != §>!?§.§9!H§)
            {
               this.§@k§.§ x§.§7!J§.DestroyJoint(_loc1_.§20§);
            }
         }
      }
      
      public function §,!I§() : Boolean
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<o§.length)
         {
            _loc2_ = this.§<o§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §?p§(param1:§2!3§) : Boolean
      {
         if(param1 && param1.§5k§.§?M§() != §[8§.§!F§ && this.§@k§.§ !9§.§#!@§(param1.§?!M§().GetPosition().x,param1.§?!M§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §^q§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@V§ = null;
         var _loc7_:§+=§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§2!3§;
         if((_loc5_ = this.§<o§[param1]).§0e§())
         {
            ++this.§1e§;
         }
         else if(_loc5_.§6!?§())
         {
            --this.§>!<§;
         }
         if(_loc5_ == this.§@k§.activeObject)
         {
            this.§@k§.activeObject = null;
         }
         if(param2)
         {
            this.§@k§.addScore(_loc5_.§5k§.score,§&L§.§8+§,true,_loc5_.§?!M§().GetPosition().x,_loc5_.§?!M§().GetPosition().y - 3,§^A§.§]!<§(_loc5_.§9E§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§@k§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§3#§(_loc5_.sprite);
         this.§%j§(_loc5_);
         for each(_loc6_ in this.§'!=§)
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
         for each(_loc7_ in this.§3u§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§4!7§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§<o§[param1] = null;
         this.§<o§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§2!3§, param2:§@u§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §3#§(param1:Sprite) : void
      {
         if(this.§3v§.contains(param1))
         {
            this.§3v§.removeChild(param1);
            return;
         }
         if(this.§?'§.contains(param1))
         {
            this.§?'§.removeChild(param1);
            return;
         }
         if(this.§0#§.contains(param1))
         {
            this.§0#§.removeChild(param1);
            return;
         }
         if(this.§,!-§.contains(param1))
         {
            this.§,!-§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§2!3§) : void
      {
         if(param1.§@!B§().toUpperCase() == "WHITE_EGG" || param1.§[!<§())
         {
            if(param1.§9E§.toUpperCase() == §80§.§86§)
            {
               this.addExplosions(§>D§.§!U§,param1.§?!M§().GetPosition().x,param1.§?!M§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§>D§.§0!4§,param1.§?!M§().GetPosition().x,param1.§?!M§().GetPosition().y);
            }
         }
      }
      
      public function §%S§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§^q§(this.§<o§.indexOf(param1),param2,param3,param4);
      }
      
      public function §!0§(param1:Number, param2:Number) : void
      {
         this.§^7§.x = -param1;
         this.§^7§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§2!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<o§.length)
         {
            _loc3_ = this.§<o§[_loc2_] as §2!3§;
            if(_loc3_ && _loc3_.§0e§() && _loc3_.§7^§ > 0)
            {
               if(!param1 || _loc3_.§^! §.mTryToBlink <= 0 && _loc3_.§^! §.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#3§(param1:Boolean = false) : int
      {
         var _loc4_:§2!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§<o§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<o§[_loc3_] as §2!3§) && _loc4_.§0e§() && _loc4_.§7^§ > 0)
            {
               if(!param1 || _loc4_.§^! §.mTryToBlink <= 0 && _loc4_.§^! §.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function include() : int
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<o§)
         {
            if(_loc2_ && (_loc2_.§-G§() || _loc2_.§<z§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>#§() : int
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<o§)
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
         var _loc3_:§2!3§ = null;
         var _loc2_:int = this.§<o§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<o§[_loc2_];
            if(_loc3_ && _loc3_.§0e§() && _loc3_.§7^§ > 0)
            {
               _loc3_.§^! §.mTryToScream = §0@§.§7!N§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §%!N§() : Boolean
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = this.§<o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<o§[_loc1_] as §2!3§;
            if(_loc2_ && _loc2_.§6!?§() && _loc2_.§7^§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = this.§<o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<o§[_loc1_] as §2!3§;
            if(_loc2_ && _loc2_.§7^§ > 0 && _loc2_.§>!-§ != §!9§.§%#§)
            {
               if(_loc2_.§7u§() && !_loc2_.§88§())
               {
                  return false;
               }
               if(_loc2_.§6!?§() && _loc2_.§7^§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §0!7§(param1:Boolean = false) : §2!3§
      {
         var _loc5_:int = 0;
         var _loc6_:§2!3§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§<o§.length;
         var _loc3_:int = 1 + Math.random() * this.§#3§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§<o§[_loc5_]) && _loc6_.§0e§() && _loc6_.§7^§ > 0)
               {
                  if(!param1 || _loc6_.§^! §.mTryToBlink <= 0 && _loc6_.§^! §.mTryToScream <= 0)
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
      
      public function §^N§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§<o§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§<o§[_loc2_] as §2!3§).§5k§.score;
            if((this.§<o§[_loc2_] as §2!3§).§7u§())
            {
               _loc1_ += §4h§.§27§.getValue() * int((this.§<o§[_loc2_] as §2!3§).§0-§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§@k§.slingshot.§^N§());
      }
      
      public function §,Z§(param1:§2!3§, param2:§2!3§) : Boolean
      {
         if(param1.§6!?§() && param2.§6!?§())
         {
            return true;
         }
         if(!param1.§'w§() && !param2.§'w§())
         {
            return true;
         }
         return false;
      }
      
      public function mightyEagleUsed() : void
      {
         this.mSardineCanAdded = true;
         this.§>!<§ = 0;
      }
      
      public function objectCollision(param1:§2!3§, param2:§2!3§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§[-§() || param2.§0e§())
            {
               param2.applyDamage(param2.§0-§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§[-§() || param1.§0e§())
            {
               param1.applyDamage(param1.§0-§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§[f§() || param2.§[f§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§,Z§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§'m§(param2.§@!B§());
         var _loc5_:Number = param1.§[!E§(param2.§@!B§());
         var _loc6_:Number = param2.§'m§(param1.§@!B§());
         var _loc7_:Number = param2.§[!E§(param1.§@!B§());
         var _loc8_:Number = param1.§?!M§().GetMass() * param1.§?!M§().GetLinearVelocity().x - param2.§?!M§().GetMass() * param2.§?!M§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§?!M§().GetMass() * param1.§?!M§().GetLinearVelocity().y - param2.§?!M§().GetMass() * param2.§?!M§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§7^§);
         var _loc14_:Number = Math.max(0,param2.§7^§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§6!?§(),_loc14_ == param2.§0-§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§6!?§(),_loc13_ == param1.§0-§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§1u§(new b2Vec2(param2.§?!M§().GetLinearVelocity().x * _loc18_,param2.§?!M§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§1u§(new b2Vec2(param1.§?!M§().GetLinearVelocity().x * _loc19_,param1.§?!M§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §^U§() : void
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = this.§<o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<o§[_loc1_] as §2!3§;
            if(_loc2_ != null && _loc2_.§0e§())
            {
               this.§^q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1R§() : void
      {
         var _loc2_:§2!3§ = null;
         var _loc1_:int = this.§<o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<o§[_loc1_] as §2!3§;
            if(_loc2_ != null && _loc2_.§[!<§())
            {
               this.§^q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#E§() : int
      {
         return this.§<o§.length;
      }
      
      public function §"%§(param1:§8G§) : void
      {
         var _loc4_:§2!3§ = null;
         var _loc5_:§7Z§ = null;
         var _loc6_:§>!?§ = null;
         var _loc7_:§@V§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<o§.length)
         {
            if((_loc4_ = this.§<o§[_loc2_]).§0=§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §7Z§()).angle = _loc4_.§;R§();
                  _loc5_.id = _loc4_.§9E§;
                  _loc5_.x = _loc4_.§?!M§().GetPosition().x;
                  _loc5_.y = _loc4_.§?!M§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!=§.length)
         {
            _loc7_ = this.§'!=§[_loc3_];
            _loc6_ = new §>!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§=`§,_loc7_.§[!9§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§&u§,_loc7_.motorSpeed,_loc7_.§1!1§,_loc7_.maxTorque);
            param1.§'!B§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §"2§() : void
      {
         var _loc1_:int = 0;
         while(this.§<o§.length > _loc1_)
         {
            if(this.§<o§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§%S§(this.§<o§[_loc1_]);
            }
         }
      }
      
      public function §^@§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<o§.length)
         {
            if(this.§<o§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<o§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§@[§ = param1;
         this.§,!=§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<o§.length)
         {
            if(this.§<o§[_loc2_].isTexture())
            {
               this.§<o§[_loc2_].sprite.visible = !this.§@[§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§1!P§ = param1;
      }
      
      public function §,w§() : Boolean
      {
         return this.§1!P§;
      }
      
      public function §5o§() : int
      {
         return this.§-!8§;
      }
      
      public function §6g§() : int
      {
         return this.§1e§;
      }
      
      public function §@!C§(param1:String) : §2!3§
      {
         var _loc3_:§2!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<o§.length)
         {
            _loc3_ = this.§<o§[_loc2_] as §2!3§;
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
