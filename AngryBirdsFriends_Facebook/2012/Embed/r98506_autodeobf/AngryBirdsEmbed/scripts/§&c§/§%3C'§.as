package §&c§
{
   import §"a§.§^>§;
   import §#+§.§61§;
   import §#;§.§+!>§;
   import §#;§.§4!8§;
   import §#;§.§<!+§;
   import §#;§.§?b§;
   import §2!+§.§%m§;
   import §2!+§.§'!G§;
   import §2!+§.§>!?§;
   import §2!+§.§@! §;
   import §3!A§.§9!0§;
   import §5@§.Texture;
   import §8!G§.§1w§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §^V§.§4a§;
   import §^V§.§9K§;
   import §^V§.§;n§;
   import §^V§.§<e§;
   import §^V§.§[H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<'§
   {
       
      
      protected var §&!7§:Vector.<§9h§>;
      
      protected var §1k§:int;
      
      public var §3!3§:§4!8§;
      
      public var §2j§:Vector.<§'$§>;
      
      protected var §15§:Sprite;
      
      protected var §-_§:Sprite;
      
      private var §!!@§:Sprite;
      
      private var §4,§:Sprite;
      
      private var static:Sprite;
      
      protected var §2J§:Vector.<Texture>;
      
      protected var §-h§:Vector.<§@! §>;
      
      protected var §-[§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §,Y§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §false§:Boolean = false;
      
      protected var §?!?§:Number;
      
      protected var §'!!§:int;
      
      protected var §[z§:Vector.<§%m§>;
      
      protected var §?h§:int = 0;
      
      private var §9n§:int = 0;
      
      private var §]!C§:int = 0;
      
      private var §<j§:int;
      
      private var §"!0§:Boolean = true;
      
      private var §2!F§:Boolean = true;
      
      public function §<'§(param1:§4!8§, param2:§1w§, param3:Sprite)
      {
         var _loc5_:§@! § = null;
         var _loc6_:§'!G§ = null;
         var _loc7_:§9h§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§9h§ = null;
         var _loc11_:§9h§ = null;
         this.§&!7§ = new Vector.<§9h§>();
         this.§2j§ = new Vector.<§'$§>();
         this.§2J§ = new Vector.<Texture>();
         this.§?!?§ = this.§<!+§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§[z§ = new Vector.<§%m§>();
         super();
         this.§3!3§ = param1;
         this.§1k§ = 0;
         this.§-_§ = param3;
         this.§-_§.§9$§ = false;
         this.§2!F§ = true;
         this.§"!0§ = true;
         this.§15§ = new Sprite();
         this.§!!@§ = new Sprite();
         this.§4,§ = new Sprite();
         this.static = new Sprite();
         this.§-_§.addChild(this.§15§);
         this.§-_§.addChild(this.§!!@§);
         this.§-_§.addChild(this.§4,§);
         this.§-_§.addChild(this.static);
         this.addObject(§61§.§5!7§(param2.theme).§ ,§,(this.§3!3§.§-x§.§2x§ + this.§3!3§.§-x§.§1y§) / 2,this.§3!3§.§-x§.§in § + §+!>§.§<J§);
         this.§<j§ = this.§&!7§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§!j§)
         {
            _loc6_ = param2.§9!#§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§=Z§();
         this.§7T§(true);
         this.§-h§ = new Vector.<§@! §>();
         _loc4_ = 0;
         while(_loc4_ < param2.§ use§)
         {
            this.§-h§.push(§@! §.§ @§(param2.§==§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§-h§)
         {
            _loc8_ = _loc5_.index1 + this.§<j§;
            _loc9_ = _loc5_.index2 + this.§<j§;
            if(_loc8_ < this.§&!7§.length && _loc9_ < this.§&!7§.length)
            {
               _loc10_ = this.§&!7§[_loc8_];
               _loc11_ = this.§&!7§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §>!?§.§@_§)
               {
                  _loc5_.§#Q§ = this.§3!3§.§9J§.§+!@§.CreateJoint(_loc5_.§6!0§(_loc10_,_loc11_));
               }
               else
               {
                  this.§[z§.push(new §%m§(_loc8_,_loc9_,_loc5_.§[8§));
               }
            }
         }
      }
      
      protected function get §<!+§() : Class
      {
         return §<!+§;
      }
      
      public function get §?!;§() : Sprite
      {
         return this.static;
      }
      
      public function get §[J§() : Sprite
      {
         return this.§-_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§&!7§.length > 0)
         {
            this.§6!!§(0);
         }
         this.§&!7§ = null;
         this.§[z§ = null;
         if(this.§-_§)
         {
            this.§-_§.dispose();
            this.§-_§ = null;
            this.§15§ = null;
            this.static = null;
            this.§!!@§ = null;
            this.§4,§ = null;
         }
         while(this.§2J§.length > 0)
         {
            _loc1_ = this.§2J§.pop();
            this.§3!3§.textureManager.§,t§(_loc1_);
         }
      }
      
      private function §7T§(param1:Boolean) : void
      {
         this.§15§.visible = param1;
      }
      
      private function §=Z§() : void
      {
         var _loc3_:§9h§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§[E§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§9h§> = new Vector.<§9h§>();
         for each(_loc3_ in this.§&!7§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§-_§);
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
            this.§<%§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§ !9§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§3!3§.textureManager.§4;§(_loc10_);
            this.§2J§.push(_loc12_);
            (_loc13_ = new §[E§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§15§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function § !9§(param1:Vector.<§9h§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§9h§ = null;
         var _loc11_:§4a§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§21§.shape).§%&§();
            _loc13_ = new Rectangle(_loc12_[0].x / §4!8§.§5+§ * param6,_loc12_[0].y / §4!8§.§5+§ * param6,(_loc12_[1].x - _loc12_[0].x) / §4!8§.§5+§ * param6,(_loc12_[1].y - _loc12_[0].y) / §4!8§.§5+§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§1o§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §<%§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§3!3§.background.§0!$§();
         var _loc5_:§^>§;
         if(_loc5_ = this.§3!3§.backgroundTextureManager.§>]§(_loc4_))
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
      
      public function §&!K§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9h§
      {
         var _loc10_:§9h§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §7h§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §+'§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §<R§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §!!1§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §1!E§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §!O§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §&G§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §1!$§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§?h§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9h§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§9h§;
         if((_loc11_ = this.§"O§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§"!0§;
            this.§&!7§[this.§&!7§.length] = _loc11_;
         }
         else
         {
            this.§&!7§[this.§&!7§.length] = _loc11_;
         }
         if(_loc11_ is §1!$§ && !_loc11_.§2<§())
         {
            this.§!!@§.addChild(_loc10_);
            ++this.§?h§;
         }
         else if(_loc11_.front || param9)
         {
            this.static.addChild(_loc10_);
         }
         else
         {
            this.§4,§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§3!3§.§+!#§(_loc11_);
         }
         if(param6)
         {
            this.§3!3§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function § @§(param1:int, param2:§9h§, param3:§9h§) : §@! §
      {
         var _loc6_:§@! § = null;
         var _loc4_:int = this.§&!7§.indexOf(param2) - this.§<j§;
         var _loc5_:int = this.§&!7§.indexOf(param3) - this.§<j§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@! §(§>!?§.§-7§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§#Q§ = this.§3!3§.§9J§.§+!@§.CreateJoint(_loc6_.§6!0§(param2,param3));
            this.§-h§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §1r§(param1:§@! §) : void
      {
         if(!(param1.§#Q§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§9h§ = this.§9!#§(param1.index1 + this.§<j§);
         var _loc3_:§9h§ = this.§9!#§(param1.index2 + this.§<j§);
         this.§3!3§.§9J§.§+!@§.DestroyJoint(param1.§#Q§);
         param1.§#Q§ = this.§3!3§.§9J§.§+!@§.CreateJoint(param1.§6!0§(_loc2_,_loc3_));
      }
      
      public function § ! §(param1:§9h§) : Vector.<§@! §>
      {
         var _loc4_:§@! § = null;
         var _loc2_:Vector.<§@! §> = new Vector.<§@! §>();
         var _loc3_:int = this.§&!7§.indexOf(param1) - this.§<j§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§-h§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §'8§() : Vector.<§@! §>
      {
         return this.§-h§;
      }
      
      public function §3=§(param1:§9h§) : void
      {
         var _loc2_:int = this.§&!7§.indexOf(param1) - this.§<j§;
         var _loc3_:int = this.§-h§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§-h§[_loc3_].index1 == _loc2_ || this.§-h§[_loc3_].index2 == _loc2_)
            {
               this.§-h§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'F§(param1:§9h§, param2:§9h§) : Boolean
      {
         var _loc3_:int = this.§&!7§.indexOf(param1) - this.§<j§;
         var _loc4_:int = this.§&!7§.indexOf(param2) - this.§<j§;
         var _loc5_:int = this.§-h§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§-h§[_loc5_].index1 == _loc3_ && this.§-h§[_loc5_].index2 == _loc4_ || this.§-h§[_loc5_].index1 == _loc4_ && this.§-h§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §"O§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9h§
      {
         var _loc10_:§9h§ = null;
         var _loc11_:§[H§ = null;
         var _loc12_:§[H§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§&!K§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§]!C§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §;n§.§@!G§(param2);
            _loc10_ = new §%M§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §;n§.§@!G§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §;n§.§@!G§(param2);
            }
            if(_loc12_.§,'§ == §[H§.§-@§ || _loc12_.§,'§ == §[H§.§97§)
            {
               _loc10_ = new §;P§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §9h§(this,param1,this.§3!3§.§9J§.§+!@§,this.§3!3§,this.§1k§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §<"§(param1:Number) : void
      {
         var _loc3_:§9h§ = null;
         var _loc2_:int = this.§&!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!7§[_loc2_] as §9h§;
            if(_loc3_)
            {
               if(_loc3_.§<Y§ <= 0)
               {
                  this.§6!!§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§`L§();
                  _loc3_.§'!J§();
               }
            }
            _loc2_--;
         }
         this.§>[§(param1);
      }
      
      protected function §>[§(param1:Number) : void
      {
         var _loc3_:§@! § = null;
         var _loc4_:§%m§ = null;
         var _loc5_:int = 0;
         var _loc6_:§9h§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§[z§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§[z§[_loc2_]).§7!5§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§ s§("block_" + _loc5_))
                  {
                     this.§]p§(_loc6_,true,true,true);
                  }
                  this.§[z§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§-h§)
         {
            if(_loc3_.type == §>!?§.§-s§ && _loc3_.§+!§)
            {
               _loc7_ = (_loc3_.§#Q§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§#Q§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§7M§ && _loc3_.§+!&§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§#Q§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§2j§.push(§'$§.createExplosion(param1,param2,param3));
         §9!0§.§-! §("TntExplosions","ChannelExplosions");
      }
      
      public function §96§(param1:Number, param2:Number) : int
      {
         var _loc4_:§9h§ = null;
         var _loc3_:int = this.§&!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§&!7§[_loc3_])
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
      
      public function §4T§(param1:Number, param2:Number) : §9h§
      {
         var _loc4_:§9h§ = null;
         var _loc3_:int = this.§&!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§&!7§[_loc3_])
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
      
      public function §9!#§(param1:int) : §9h§
      {
         return this.§&!7§[param1];
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         var _loc4_:§9h§ = null;
         var _loc3_:int = this.§&!7§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§&!7§[_loc3_] as §9h§).§-B§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §#!+§(param1:§9h§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§9h§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§<Y§ == param1.§;u§)
         {
            if(this.§?!?§ < this.§<!+§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§?!?§ += param2 * this.§<!+§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§68§().SetAngularVelocity(param2 * this.§?!?§);
            this.§'!!§ = 0;
         }
         else if(this.§'!!§ == 0)
         {
            this.§'!!§ = this.§3!3§.§0n§;
         }
         if(param1.§"! §() || this.§%K§(param1) || this.§'!!§ > 0 && this.§3!3§.§0n§ > this.§'!!§ + this.§<!+§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§<!+§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§<!+§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§<!+§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §9!0§.§-! §("Mighty_Eagle_Selected_1","ChannelBird");
                  §9!0§.§-! §("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§<!+§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§68§().GetPosition().x - this.§<!+§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§68§().GetPosition().y - this.§<!+§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§<!+§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§%K§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§<!+§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§'!!§ = 0;
                  _loc7_.§<!'§.§0'§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §>!3§(param1:§9h§, param2:Number) : Boolean
      {
         var _loc5_:§9h§ = null;
         if(this.§<!+§.MIGHTY_EAGLE_USE_SHADE && !this.§false§ && this.mMightyEagleTimer > this.§<!+§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§false§ = true;
            this.§3!3§.§93§();
         }
         this.mMightyEagleTimer += param2;
         this.§3!3§.particles.§[!5§(§<D§.§"W§,§"g§.§;$§,§<D§.§'K§,param1.§68§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§68§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§<D§.§;5§(param1.§+!!§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§2s§(this.§<!+§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§,Y§)
            {
               this.§,Y§ = false;
               this.§3!3§.§]!>§();
               param1.§@!"§(§<e§.§=]§);
               this.mSardineCanAdded = false;
               param1.§<!'§.§@!9§ = true;
               param1.§<!'§.§#D§();
               for each(_loc5_ in this.§&!7§)
               {
                  if(_loc5_ && _loc5_.§,-§())
                  {
                     _loc5_.§68§().SetAwake(true);
                     _loc5_.§68§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§<[§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§&!7§)
               {
                  if(_loc5_ && _loc5_.§,-§())
                  {
                     _loc5_.applyDamage(_loc5_.§;u§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§68§().GetPosition().y >= -5.5;
            this.§,Y§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§?V§(param2,new Point(this.§<!+§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§<!+§.MIGHTY_EAGLE_Y_CHANGE),this.§<!+§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §<O§() : void
      {
         var _loc1_:§'$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§9h§ = null;
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
         while(this.§2j§.length > 0)
         {
            _loc1_ = this.§2j§.shift();
            _loc2_ = _loc1_.§'p§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§&!7§)
            {
               _loc8_ = _loc6_.§68§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§68§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§'p§)
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
                     _loc6_.§68§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§8X§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§`O§(_loc6_,_loc14_);
               }
            }
            this.§3!3§.particles.§[!5§(this.§#!4§(_loc1_.type),§"g§.§;$§,§<D§.§"#§,_loc3_,_loc4_,600,"",§<D§.§#b§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§3!3§.particles.§[!5§(§<D§.§@!?§,§"g§.§;$§,§<D§.§'K§,_loc3_,_loc4_,_loc16_,"",§<D§.§#b§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §`O§(param1:§9h§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §#!4§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §<D§.§>F§;
      }
      
      public function §?!6§(param1:Number) : void
      {
         var _loc2_:§9h§ = null;
         var _loc3_:int = this.§&!7§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§&!7§[_loc3_];
            if(_loc2_.§&v§())
            {
               if(this.§#!+§(_loc2_,param1))
               {
                  this.§6!!§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§2<§())
            {
               this.§>!3§(_loc2_,param1);
            }
            else if(this.§%K§(_loc2_))
            {
               _loc2_.§@!"§(§<e§.§+!G§);
               this.§6!!§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@!"§(§<e§.§+!G§);
               this.§6!!§(_loc3_,false,true,true);
            }
            else if(_loc2_.§0"§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§<O§();
      }
      
      private function §<[§() : void
      {
         var _loc1_:§@! § = null;
         for each(_loc1_ in this.§-h§)
         {
            if(_loc1_.type != §>!?§.§@_§)
            {
               this.§3!3§.§9J§.§+!@§.DestroyJoint(_loc1_.§#Q§);
            }
         }
      }
      
      public function §@N§() : Boolean
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!7§.length)
         {
            _loc2_ = this.§&!7§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §%K§(param1:§9h§) : Boolean
      {
         if(param1 && param1.§21§.§32§() != §9K§.§3!5§ && this.§3!3§.§-x§.§8b§(param1.§68§().GetPosition().x,param1.§68§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §6!!§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@! § = null;
         var _loc7_:§%m§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9h§;
         if((_loc5_ = this.§&!7§[param1]).§,-§())
         {
            ++this.§9n§;
         }
         else if(_loc5_.§0"§())
         {
            --this.§?h§;
         }
         if(_loc5_ == this.§3!3§.activeObject)
         {
            this.§3!3§.activeObject = null;
         }
         if(param2)
         {
            this.§3!3§.addScore(_loc5_.§21§.score,§?b§.§6L§,true,_loc5_.§68§().GetPosition().x,_loc5_.§68§().GetPosition().y - 3,§<D§.§;L§(_loc5_.§+!!§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§3!3§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§6F§(_loc5_.sprite);
         this.§3=§(_loc5_);
         for each(_loc6_ in this.§-h§)
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
         for each(_loc7_ in this.§[z§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§7!5§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§&!7§[param1] = null;
         this.§&!7§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§9h§, param2:§"g§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §6F§(param1:Sprite) : void
      {
         if(this.§4,§.contains(param1))
         {
            this.§4,§.removeChild(param1);
            return;
         }
         if(this.§!!@§.contains(param1))
         {
            this.§!!@§.removeChild(param1);
            return;
         }
         if(this.§15§.contains(param1))
         {
            this.§15§.removeChild(param1);
            return;
         }
         if(this.static.contains(param1))
         {
            this.static.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§9h§) : void
      {
         if(param1.§!i§().toUpperCase() == "WHITE_EGG" || param1.§]0§())
         {
            if(param1.§+!!§.toUpperCase() == §!!1§.§9T§)
            {
               this.addExplosions(§'$§.§6;§,param1.§68§().GetPosition().x,param1.§68§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§'$§.dynamic,param1.§68§().GetPosition().x,param1.§68§().GetPosition().y);
            }
         }
      }
      
      public function §]p§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§6!!§(this.§&!7§.indexOf(param1),param2,param3,param4);
      }
      
      public function §4D§(param1:Number, param2:Number) : void
      {
         this.§-_§.x = -param1;
         this.§-_§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§9h§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!7§.length)
         {
            _loc3_ = this.§&!7§[_loc2_] as §9h§;
            if(_loc3_ && _loc3_.§,-§() && _loc3_.§<Y§ > 0)
            {
               if(!param1 || _loc3_.§<!'§.mTryToBlink <= 0 && _loc3_.§<!'§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §&X§(param1:Boolean = false) : int
      {
         var _loc4_:§9h§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§&!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§&!7§[_loc3_] as §9h§) && _loc4_.§,-§() && _loc4_.§<Y§ > 0)
            {
               if(!param1 || _loc4_.§<!'§.mTryToBlink <= 0 && _loc4_.§<!'§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §=a§() : int
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!7§)
         {
            if(_loc2_ && (_loc2_.§=!?§() || _loc2_.§%$§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §!!?§() : int
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§&!7§)
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
         var _loc3_:§9h§ = null;
         var _loc2_:int = this.§&!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!7§[_loc2_];
            if(_loc3_ && _loc3_.§,-§() && _loc3_.§<Y§ > 0)
            {
               _loc3_.§<!'§.mTryToScream = §+`§.§0;§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §'!"§() : Boolean
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = this.§&!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!7§[_loc1_] as §9h§;
            if(_loc2_ && _loc2_.§0"§() && _loc2_.§<Y§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = this.§&!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!7§[_loc1_] as §9h§;
            if(_loc2_ && _loc2_.§<Y§ > 0 && _loc2_.§,'§ != §[H§.§ >§)
            {
               if(_loc2_.§>,§() && !_loc2_.§"! §())
               {
                  return false;
               }
               if(_loc2_.§0"§() && _loc2_.§<Y§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §1!7§(param1:Boolean = false) : §9h§
      {
         var _loc5_:int = 0;
         var _loc6_:§9h§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§&!7§.length;
         var _loc3_:int = 1 + Math.random() * this.§&X§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§&!7§[_loc5_]) && _loc6_.§,-§() && _loc6_.§<Y§ > 0)
               {
                  if(!param1 || _loc6_.§<!'§.mTryToBlink <= 0 && _loc6_.§<!'§.mTryToScream <= 0)
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
      
      public function §=!1§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§&!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§&!7§[_loc2_] as §9h§).§21§.score;
            if((this.§&!7§[_loc2_] as §9h§).§>,§())
            {
               _loc1_ += §4!8§.§ ]§.getValue() * int((this.§&!7§[_loc2_] as §9h§).§;u§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§3!3§.slingshot.§=!1§());
      }
      
      public function §=!&§(param1:§9h§, param2:§9h§) : Boolean
      {
         if(param1.§0"§() && param2.§0"§())
         {
            return true;
         }
         if(!param1.§[j§() && !param2.§[j§())
         {
            return true;
         }
         return false;
      }
      
      public function §5E§() : void
      {
         this.mSardineCanAdded = true;
         this.§?h§ = 0;
      }
      
      public function objectCollision(param1:§9h§, param2:§9h§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§2<§() || param2.§,-§())
            {
               param2.applyDamage(param2.§;u§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§2<§() || param1.§,-§())
            {
               param1.applyDamage(param1.§;u§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§<!+§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§&v§() || param2.§&v§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§=!&§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§7R§(param2.§!i§());
         var _loc5_:Number = param1.§3K§(param2.§!i§());
         var _loc6_:Number = param2.§7R§(param1.§!i§());
         var _loc7_:Number = param2.§3K§(param1.§!i§());
         var _loc8_:Number = param1.§68§().GetMass() * param1.§68§().GetLinearVelocity().x - param2.§68§().GetMass() * param2.§68§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§68§().GetMass() * param1.§68§().GetLinearVelocity().y - param2.§68§().GetMass() * param2.§68§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§<Y§);
         var _loc14_:Number = Math.max(0,param2.§<Y§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§0"§(),_loc14_ == param2.§;u§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§0"§(),_loc13_ == param1.§;u§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§6K§(new b2Vec2(param2.§68§().GetLinearVelocity().x * _loc18_,param2.§68§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§6K§(new b2Vec2(param1.§68§().GetLinearVelocity().x * _loc19_,param1.§68§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §^!?§() : void
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = this.§&!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!7§[_loc1_] as §9h§;
            if(_loc2_ != null && _loc2_.§,-§())
            {
               this.§6!!§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1C§() : void
      {
         var _loc2_:§9h§ = null;
         var _loc1_:int = this.§&!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!7§[_loc1_] as §9h§;
            if(_loc2_ != null && _loc2_.§]0§())
            {
               this.§6!!§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §=T§() : int
      {
         return this.§&!7§.length;
      }
      
      public function §4k§(param1:§1w§) : void
      {
         var _loc4_:§9h§ = null;
         var _loc5_:§'!G§ = null;
         var _loc6_:§>!?§ = null;
         var _loc7_:§@! § = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!7§.length)
         {
            if((_loc4_ = this.§&!7§[_loc2_]).§#p§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §'!G§()).angle = _loc4_.§1o§();
                  _loc5_.id = _loc4_.§+!!§;
                  _loc5_.x = _loc4_.§68§().GetPosition().x;
                  _loc5_.y = _loc4_.§68§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-h§.length)
         {
            _loc7_ = this.§-h§[_loc3_];
            _loc6_ = new §>!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§+!7§,_loc7_.§7M§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§+!&§,_loc7_.motorSpeed,_loc7_.§+!§,_loc7_.maxTorque);
            param1.§#F§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §`g§() : void
      {
         var _loc1_:int = 0;
         while(this.§&!7§.length > _loc1_)
         {
            if(this.§&!7§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§]p§(this.§&!7§[_loc1_]);
            }
         }
      }
      
      public function §@+§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§&!7§.length)
         {
            if(this.§&!7§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§&!7§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§"!0§ = param1;
         this.§7T§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!7§.length)
         {
            if(this.§&!7§[_loc2_].isTexture())
            {
               this.§&!7§[_loc2_].sprite.visible = !this.§"!0§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2!F§ = param1;
      }
      
      public function §4E§() : Boolean
      {
         return this.§2!F§;
      }
      
      public function §"I§() : int
      {
         return this.§]!C§;
      }
      
      public function §1m§() : int
      {
         return this.§9n§;
      }
      
      public function § s§(param1:String) : §9h§
      {
         var _loc3_:§9h§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!7§.length)
         {
            _loc3_ = this.§&!7§[_loc2_] as §9h§;
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
