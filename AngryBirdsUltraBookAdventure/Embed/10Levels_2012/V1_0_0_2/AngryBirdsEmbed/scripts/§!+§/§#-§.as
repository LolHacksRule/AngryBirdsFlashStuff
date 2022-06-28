package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §'!E§.§2@§;
   import §'!E§.§9!§;
   import §'!E§.§=E§;
   import §'!E§.§]g§;
   import §'k§.§2v§;
   import §5!%§.§%p§;
   import §5!@§.Texture;
   import §6J§.§&!;§;
   import §7!0§.§6Z§;
   import §7!0§.§9!0§;
   import §7!0§.§9!;§;
   import §7!0§.§<$§;
   import §7!0§.§^!%§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import §?b§.§&z§;
   import §?b§.§3$§;
   import §?b§.§7!,§;
   import §?b§.§9H§;
   import §@D§.§6I§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#-§
   {
       
      
      protected var § ! §:Vector.<§>G§>;
      
      protected var §?!-§:int;
      
      public var §4!%§:§7!,§;
      
      public var §+!%§:Vector.<§%!=§>;
      
      protected var §2M§:Sprite;
      
      protected var §?5§:Sprite;
      
      private var §<S§:Sprite;
      
      private var §!$§:Sprite;
      
      private var §0!'§:Sprite;
      
      protected var §5P§:Vector.<Texture>;
      
      protected var §@i§:Vector.<§2@§>;
      
      protected var §9C§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §"T§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §;<§:Boolean = false;
      
      protected var §>b§:Number;
      
      protected var §#T§:int;
      
      protected var §4=§:Vector.<§=E§>;
      
      protected var §4d§:int = 0;
      
      private var §>!G§:int = 0;
      
      private var §&n§:int = 0;
      
      private var §[2§:int;
      
      private var §#H§:Boolean = true;
      
      private var §&T§:Boolean = true;
      
      public function §#-§(param1:§7!,§, param2:§&!;§, param3:Sprite)
      {
         var _loc5_:§2@§ = null;
         var _loc6_:§]g§ = null;
         var _loc7_:§>G§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§>G§ = null;
         var _loc11_:§>G§ = null;
         this.§ ! § = new Vector.<§>G§>();
         this.§+!%§ = new Vector.<§%!=§>();
         this.§5P§ = new Vector.<Texture>();
         this.§>b§ = this.§&z§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§4=§ = new Vector.<§=E§>();
         super();
         this.§4!%§ = param1;
         this.§?!-§ = 0;
         this.§?5§ = param3;
         this.§?5§.§=O§ = false;
         this.§&T§ = true;
         this.§#H§ = true;
         this.§2M§ = new Sprite();
         this.§<S§ = new Sprite();
         this.§!$§ = new Sprite();
         this.§0!'§ = new Sprite();
         this.§?5§.addChild(this.§2M§);
         this.§?5§.addChild(this.§<S§);
         this.§?5§.addChild(this.§!$§);
         this.§?5§.addChild(this.§0!'§);
         this.addObject(§%p§.§9F§(param2.theme).§>#§,(this.§4!%§.§+4§.§73§ + this.§4!%§.§+4§.§#X§) / 2,this.§4!%§.§+4§.§6o§ + §9H§.§?U§);
         this.§[2§ = this.§ ! §.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§=^§)
         {
            _loc6_ = param2.§"0§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§2!4§();
         this.§;a§(true);
         this.§@i§ = new Vector.<§2@§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§<'§)
         {
            this.§@i§.push(§2@§.§'M§(param2.§@l§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§@i§)
         {
            _loc8_ = _loc5_.index1 + this.§[2§;
            _loc9_ = _loc5_.index2 + this.§[2§;
            if(_loc8_ < this.§ ! §.length && _loc9_ < this.§ ! §.length)
            {
               _loc10_ = this.§ ! §[_loc8_];
               _loc11_ = this.§ ! §[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §9!§.§3=§)
               {
                  _loc5_.§8!6§ = this.§4!%§.§^<§.§-I§.CreateJoint(_loc5_.§ !=§(_loc10_,_loc11_));
               }
               else
               {
                  this.§4=§.push(new §=E§(_loc8_,_loc9_,_loc5_.§=w§));
               }
            }
         }
      }
      
      protected function get §&z§() : Class
      {
         return §&z§;
      }
      
      public function get §3!H§() : Sprite
      {
         return this.§0!'§;
      }
      
      public function get §[t§() : Sprite
      {
         return this.§?5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ ! §.length > 0)
         {
            this.§"q§(0);
         }
         this.§ ! § = null;
         this.§4=§ = null;
         if(this.§?5§)
         {
            this.§?5§.dispose();
            this.§?5§ = null;
            this.§2M§ = null;
            this.§0!'§ = null;
            this.§<S§ = null;
            this.§!$§ = null;
         }
         while(this.§5P§.length > 0)
         {
            _loc1_ = this.§5P§.pop();
            this.§4!%§.textureManager.§1c§(_loc1_);
         }
      }
      
      private function §;a§(param1:Boolean) : void
      {
         this.§2M§.visible = param1;
      }
      
      private function §2!4§() : void
      {
         var _loc3_:§>G§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§6!0§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§>G§> = new Vector.<§>G§>();
         for each(_loc3_ in this.§ ! §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§?5§);
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
            this.§6!-§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§-k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§4!%§.textureManager.§3B§(_loc10_);
            this.§5P§.push(_loc12_);
            (_loc13_ = new §6!0§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§2M§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §-k§(param1:Vector.<§>G§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§>G§ = null;
         var _loc11_:§<$§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§9O§.shape).§&R§();
            _loc13_ = new Rectangle(_loc12_[0].x / §7!,§.§ '§ * param6,_loc12_[0].y / §7!,§.§ '§ * param6,(_loc12_[1].x - _loc12_[0].x) / §7!,§.§ '§ * param6,(_loc12_[1].y - _loc12_[0].y) / §7!,§.§ '§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§5>§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §6!-§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§4!%§.background.§8!#§();
         var _loc5_:§2v§;
         if(_loc5_ = this.§4!%§.backgroundTextureManager.§8!<§(_loc4_))
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
      
      public function §=B§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>G§
      {
         var _loc10_:§>G§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §5w§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §"I§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §8g§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new § !1§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §9D§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §=P§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §5!E§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §=H§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4d§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>G§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§>G§;
         if((_loc11_ = this.§8?§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§#H§;
            this.§ ! §[this.§ ! §.length] = _loc11_;
         }
         else
         {
            this.§ ! §[this.§ ! §.length] = _loc11_;
         }
         if(_loc11_ is §=H§ && !_loc11_.§0y§())
         {
            this.§<S§.addChild(_loc10_);
            ++this.§4d§;
         }
         else if(_loc11_.front || param9)
         {
            this.§0!'§.addChild(_loc10_);
         }
         else
         {
            this.§!$§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§4!%§.§+r§(_loc11_);
         }
         if(param6)
         {
            this.§4!%§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §'M§(param1:int, param2:§>G§, param3:§>G§) : §2@§
      {
         var _loc6_:§2@§ = null;
         var _loc4_:int = this.§ ! §.indexOf(param2) - this.§[2§;
         var _loc5_:int = this.§ ! §.indexOf(param3) - this.§[2§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §2@§(§9!§.§83§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§8!6§ = this.§4!%§.§^<§.§-I§.CreateJoint(_loc6_.§ !=§(param2,param3));
            this.§@i§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §5L§(param1:§2@§) : void
      {
         if(!(param1.§8!6§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§>G§ = this.§"0§(param1.index1 + this.§[2§);
         var _loc3_:§>G§ = this.§"0§(param1.index2 + this.§[2§);
         this.§4!%§.§^<§.§-I§.DestroyJoint(param1.§8!6§);
         param1.§8!6§ = this.§4!%§.§^<§.§-I§.CreateJoint(param1.§ !=§(_loc2_,_loc3_));
      }
      
      public function §`<§(param1:§>G§) : Vector.<§2@§>
      {
         var _loc4_:§2@§ = null;
         var _loc2_:Vector.<§2@§> = new Vector.<§2@§>();
         var _loc3_:int = this.§ ! §.indexOf(param1) - this.§[2§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§@i§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §,!H§() : Vector.<§2@§>
      {
         return this.§@i§;
      }
      
      public function §-!3§(param1:§>G§) : void
      {
         var _loc2_:int = this.§ ! §.indexOf(param1) - this.§[2§;
         var _loc3_:int = this.§@i§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§@i§[_loc3_].index1 == _loc2_ || this.§@i§[_loc3_].index2 == _loc2_)
            {
               this.§@i§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §09§(param1:§>G§, param2:§>G§) : Boolean
      {
         var _loc3_:int = this.§ ! §.indexOf(param1) - this.§[2§;
         var _loc4_:int = this.§ ! §.indexOf(param2) - this.§[2§;
         var _loc5_:int = this.§@i§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§@i§[_loc5_].index1 == _loc3_ && this.§@i§[_loc5_].index2 == _loc4_ || this.§@i§[_loc5_].index1 == _loc4_ && this.§@i§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §8?§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>G§
      {
         var _loc10_:§>G§ = null;
         var _loc11_:§9!;§ = null;
         var _loc12_:§9!;§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§=B§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§&n§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §9!0§.§&!<§(param2);
            _loc10_ = new §6>§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §9!0§.§&!<§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §9!0§.§&!<§(param2);
            }
            if(_loc12_.§>O§ == §9!;§.§9S§ || _loc12_.§>O§ == §9!;§.§=!5§)
            {
               _loc10_ = new §-!?§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §>G§(this,param1,this.§4!%§.§^<§.§-I§,this.§4!%§,this.§?!-§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §69§(param1:Number) : void
      {
         var _loc3_:§>G§ = null;
         var _loc2_:int = this.§ ! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ ! §[_loc2_] as §>G§;
            if(_loc3_)
            {
               if(_loc3_.§`0§ <= 0)
               {
                  this.§"q§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§"D§();
                  _loc3_.§"W§();
               }
            }
            _loc2_--;
         }
         this.§2G§(param1);
      }
      
      protected function §2G§(param1:Number) : void
      {
         var _loc3_:§2@§ = null;
         var _loc4_:§=E§ = null;
         var _loc5_:int = 0;
         var _loc6_:§>G§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§4=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§4=§[_loc2_]).§3d§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§-%§("block_" + _loc5_))
                  {
                     this.§^2§(_loc6_,true,true,true);
                  }
                  this.§4=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§@i§)
         {
            if(_loc3_.type == §9!§.§8J§ && _loc3_.§0Z§)
            {
               _loc7_ = (_loc3_.§8!6§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§8!6§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§true§ && _loc3_.§<d§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§8!6§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§+!%§.push(§%!=§.createExplosion(param1,param2,param3));
         §6I§.§ ;§("TntExplosions","ChannelExplosions");
      }
      
      public function §&!7§(param1:Number, param2:Number) : int
      {
         var _loc4_:§>G§ = null;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ ! §[_loc3_])
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
      
      public function §"c§(param1:Number, param2:Number) : §>G§
      {
         var _loc4_:§>G§ = null;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ ! §[_loc3_])
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
      
      public function §"0§(param1:int) : §>G§
      {
         return this.§ ! §[param1];
      }
      
      public function §=u§(param1:Number, param2:Number) : void
      {
         var _loc4_:§>G§ = null;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ ! §[_loc3_] as §>G§).§=u§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §6`§(param1:§>G§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§>G§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§`0§ == param1.§ !,§)
         {
            if(this.§>b§ < this.§&z§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§>b§ += param2 * this.§&z§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§`t§().SetAngularVelocity(param2 * this.§>b§);
            this.§#T§ = 0;
         }
         else if(this.§#T§ == 0)
         {
            this.§#T§ = this.§4!%§.§2!,§;
         }
         if(param1.§%f§() || this.§1?§(param1) || this.§#T§ > 0 && this.§4!%§.§2!,§ > this.§#T§ + this.§&z§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§&z§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§&z§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§&z§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §6I§.§ ;§("Mighty_Eagle_Selected_1","ChannelBird");
                  §6I§.§ ;§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§&z§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§`t§().GetPosition().x - this.§&z§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§`t§().GetPosition().y - this.§&z§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&z§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§1?§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&z§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#T§ = 0;
                  _loc7_.§'j§.§9X§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §=<§(param1:§>G§, param2:Number) : Boolean
      {
         var _loc5_:§>G§ = null;
         if(this.§&z§.MIGHTY_EAGLE_USE_SHADE && !this.§;<§ && this.mMightyEagleTimer > this.§&z§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§;<§ = true;
            this.§4!%§.§1!,§();
         }
         this.mMightyEagleTimer += param2;
         this.§4!%§.particles.§'!;§(§!8§.dynamic,§#C§.§#!'§,§!8§.§3!'§,param1.§`t§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§`t§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§!8§.§3^§(param1.§2Z§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§8!F§(this.§&z§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§"T§)
            {
               this.§"T§ = false;
               this.§4!%§.§-z§();
               param1.§+!&§(§6Z§.§-H§);
               this.mSardineCanAdded = false;
               param1.§'j§.§9+§ = true;
               param1.§'j§.§@3§();
               for each(_loc5_ in this.§ ! §)
               {
                  if(_loc5_ && _loc5_.§?!@§())
                  {
                     _loc5_.§`t§().SetAwake(true);
                     _loc5_.§`t§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§;3§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§ ! §)
               {
                  if(_loc5_ && _loc5_.§?!@§())
                  {
                     _loc5_.applyDamage(_loc5_.§ !,§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§`t§().GetPosition().y >= -5.5;
            this.§"T§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§0I§(param2,new Point(this.§&z§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&z§.MIGHTY_EAGLE_Y_CHANGE),this.§&z§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §9§() : void
      {
         var _loc1_:§%!=§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>G§ = null;
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
         while(this.§+!%§.length > 0)
         {
            _loc1_ = this.§+!%§.shift();
            _loc2_ = _loc1_.§?>§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§ ! §)
            {
               _loc8_ = _loc6_.§`t§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§`t§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§?>§)
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
                     _loc6_.§`t§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§'b§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§4!%§.particles.§'!;§(this.§%!>§(_loc1_.type),§#C§.§#!'§,§!8§.§0!H§,_loc3_,_loc4_,600,"",§!8§.§true §,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§4!%§.particles.§'!;§(§!8§.§+U§,§#C§.§#!'§,§!8§.§3!'§,_loc3_,_loc4_,_loc16_,"",§!8§.§true §,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §%!>§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §!8§.§`[§;
      }
      
      public function §#+§(param1:Number) : void
      {
         var _loc2_:§>G§ = null;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ ! §[_loc3_];
            if(_loc2_.§@v§())
            {
               if(this.§6`§(_loc2_,param1))
               {
                  this.§"q§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§0y§())
            {
               this.§=<§(_loc2_,param1);
            }
            else if(this.§1?§(_loc2_))
            {
               _loc2_.§+!&§(§6Z§.§;K§);
               this.§"q§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§+!&§(§6Z§.§;K§);
               this.§"q§(_loc3_,false,true,true);
            }
            else if(_loc2_.§6!3§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§9§();
      }
      
      private function §;3§() : void
      {
         var _loc1_:§2@§ = null;
         for each(_loc1_ in this.§@i§)
         {
            this.§4!%§.§^<§.§-I§.DestroyJoint(_loc1_.§8!6§);
         }
      }
      
      public function §93§() : Boolean
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ ! §.length)
         {
            _loc2_ = this.§ ! §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §1?§(param1:§>G§) : Boolean
      {
         if(param1 && param1.§9O§.§!N§() != §^!%§.§@`§ && this.§4!%§.§+4§.§>W§(param1.§`t§().GetPosition().x,param1.§`t§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §"q§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§2@§ = null;
         var _loc7_:§=E§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§>G§;
         if((_loc5_ = this.§ ! §[param1]).§?!@§())
         {
            ++this.§>!G§;
         }
         else if(_loc5_.§6!3§())
         {
            --this.§4d§;
         }
         if(_loc5_ == this.§4!%§.activeObject)
         {
            this.§4!%§.activeObject = null;
         }
         if(param2)
         {
            this.§4!%§.addScore(_loc5_.§9O§.score,§3$§.§;V§,true,_loc5_.§`t§().GetPosition().x,_loc5_.§`t§().GetPosition().y - 3,§!8§.§>n§(_loc5_.§2Z§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§4!%§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§"!3§(_loc5_.sprite);
         this.§-!3§(_loc5_);
         for each(_loc6_ in this.§@i§)
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
         for each(_loc7_ in this.§4=§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§3d§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§ ! §[param1] = null;
         this.§ ! §.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§>G§, param2:§#C§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §"!3§(param1:Sprite) : void
      {
         if(this.§!$§.contains(param1))
         {
            this.§!$§.removeChild(param1);
            return;
         }
         if(this.§<S§.contains(param1))
         {
            this.§<S§.removeChild(param1);
            return;
         }
         if(this.§2M§.contains(param1))
         {
            this.§2M§.removeChild(param1);
            return;
         }
         if(this.§0!'§.contains(param1))
         {
            this.§0!'§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§>G§) : void
      {
         if(param1.§,!6§().toUpperCase() == "WHITE_EGG" || param1.§8!E§())
         {
            if(param1.§2Z§.toUpperCase() == § !1§.§-n§)
            {
               this.addExplosions(§%!=§.§`z§,param1.§`t§().GetPosition().x,param1.§`t§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§%!=§.§-q§,param1.§`t§().GetPosition().x,param1.§`t§().GetPosition().y);
            }
         }
      }
      
      public function §^2§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§"q§(this.§ ! §.indexOf(param1),param2,param3,param4);
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         this.§?5§.x = -param1;
         this.§?5§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§>G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ ! §.length)
         {
            _loc3_ = this.§ ! §[_loc2_] as §>G§;
            if(_loc3_ && _loc3_.§?!@§() && _loc3_.§`0§ > 0)
            {
               if(!param1 || _loc3_.§'j§.mTryToBlink <= 0 && _loc3_.§'j§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §3G§(param1:Boolean = false) : int
      {
         var _loc4_:§>G§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ ! §.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ ! §[_loc3_] as §>G§) && _loc4_.§?!@§() && _loc4_.§`0§ > 0)
            {
               if(!param1 || _loc4_.§'j§.mTryToBlink <= 0 && _loc4_.§'j§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §[f§() : int
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ ! §)
         {
            if(_loc2_ && (_loc2_.§]!+§() || _loc2_.§5=§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §-m§() : int
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ ! §)
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
         var _loc3_:§>G§ = null;
         var _loc2_:int = this.§ ! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ ! §[_loc2_];
            if(_loc3_ && _loc3_.§?!@§() && _loc3_.§`0§ > 0)
            {
               _loc3_.§'j§.mTryToScream = override.§`=§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<g§() : Boolean
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = this.§ ! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ ! §[_loc1_] as §>G§;
            if(_loc2_ && _loc2_.§6!3§() && _loc2_.§`0§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = this.§ ! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ ! §[_loc1_] as §>G§;
            if(_loc2_ && _loc2_.§`0§ > 0 && _loc2_.§>O§ != §9!;§.§7k§)
            {
               if(_loc2_.§^G§() && !_loc2_.§%f§())
               {
                  return false;
               }
               if(_loc2_.§6!3§() && _loc2_.§`0§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §;#§(param1:Boolean = false) : §>G§
      {
         var _loc5_:int = 0;
         var _loc6_:§>G§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§ ! §.length;
         var _loc3_:int = 1 + Math.random() * this.§3G§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§ ! §[_loc5_]) && _loc6_.§?!@§() && _loc6_.§`0§ > 0)
               {
                  if(!param1 || _loc6_.§'j§.mTryToBlink <= 0 && _loc6_.§'j§.mTryToScream <= 0)
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
      
      public function §="§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§ ! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§ ! §[_loc2_] as §>G§).§9O§.score;
            if((this.§ ! §[_loc2_] as §>G§).§^G§())
            {
               _loc1_ += §7!,§.§6s§.getValue() * int((this.§ ! §[_loc2_] as §>G§).§ !,§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§4!%§.slingshot.§="§());
      }
      
      public function §@g§(param1:§>G§, param2:§>G§) : Boolean
      {
         if(param1.§6!3§() && param2.§6!3§())
         {
            return true;
         }
         if(!param1.§-e§() && !param2.§-e§())
         {
            return true;
         }
         return false;
      }
      
      public function §][§() : void
      {
         this.mSardineCanAdded = true;
         this.§4d§ = 0;
      }
      
      public function objectCollision(param1:§>G§, param2:§>G§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§0y§() || param2.§?!@§())
            {
               param2.applyDamage(param2.§ !,§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§0y§() || param1.§?!@§())
            {
               param1.applyDamage(param1.§ !,§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§&z§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§@v§() || param2.§@v§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§@g§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§'!3§(param2.§,!6§());
         var _loc5_:Number = param1.§!e§(param2.§,!6§());
         var _loc6_:Number = param2.§'!3§(param1.§,!6§());
         var _loc7_:Number = param2.§!e§(param1.§,!6§());
         var _loc8_:Number = param1.§`t§().GetMass() * param1.§`t§().GetLinearVelocity().x - param2.§`t§().GetMass() * param2.§`t§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§`t§().GetMass() * param1.§`t§().GetLinearVelocity().y - param2.§`t§().GetMass() * param2.§`t§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§`0§);
         var _loc14_:Number = Math.max(0,param2.§`0§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§6!3§(),_loc14_ == param2.§ !,§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§6!3§(),_loc13_ == param1.§ !,§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§]C§(new b2Vec2(param2.§`t§().GetLinearVelocity().x * _loc18_,param2.§`t§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§]C§(new b2Vec2(param1.§`t§().GetLinearVelocity().x * _loc19_,param1.§`t§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §1_§() : void
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = this.§ ! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ ! §[_loc1_] as §>G§;
            if(_loc2_ != null && _loc2_.§?!@§())
            {
               this.§"q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §^U§() : void
      {
         var _loc2_:§>G§ = null;
         var _loc1_:int = this.§ ! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ ! §[_loc1_] as §>G§;
            if(_loc2_ != null && _loc2_.§8!E§())
            {
               this.§"q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §&O§() : int
      {
         return this.§ ! §.length;
      }
      
      public function §"!!§(param1:§&!;§) : void
      {
         var _loc4_:§>G§ = null;
         var _loc5_:§]g§ = null;
         var _loc6_:§9!§ = null;
         var _loc7_:§2@§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ ! §.length)
         {
            if((_loc4_ = this.§ ! §[_loc2_]).§;P§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §]g§()).angle = _loc4_.§5>§();
                  _loc5_.id = _loc4_.§2Z§;
                  _loc5_.x = _loc4_.§`t§().GetPosition().x;
                  _loc5_.y = _loc4_.§`t§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@i§.length)
         {
            _loc7_ = this.§@i§[_loc3_];
            _loc6_ = new §9!§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§5!?§,_loc7_.§true§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§<d§,_loc7_.motorSpeed,_loc7_.§0Z§,_loc7_.maxTorque);
            param1.§18§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §22§() : void
      {
         var _loc1_:int = 0;
         while(this.§ ! §.length > _loc1_)
         {
            if(this.§ ! §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§^2§(this.§ ! §[_loc1_]);
            }
         }
      }
      
      public function §]V§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ ! §.length)
         {
            if(this.§ ! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ ! §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§#H§ = param1;
         this.§;a§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ ! §.length)
         {
            if(this.§ ! §[_loc2_].isTexture())
            {
               this.§ ! §[_loc2_].sprite.visible = !this.§#H§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§&T§ = param1;
      }
      
      public function §#J§() : Boolean
      {
         return this.§&T§;
      }
      
      public function §]!"§() : int
      {
         return this.§&n§;
      }
      
      public function §^R§() : int
      {
         return this.§>!G§;
      }
      
      public function §-%§(param1:String) : §>G§
      {
         var _loc3_:§>G§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ ! §.length)
         {
            _loc3_ = this.§ ! §[_loc2_] as §>G§;
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
