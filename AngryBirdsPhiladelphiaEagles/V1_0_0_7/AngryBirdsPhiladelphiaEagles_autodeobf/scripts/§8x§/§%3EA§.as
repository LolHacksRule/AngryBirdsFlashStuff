package §8x§
{
   import §"`§.Texture;
   import §%y§.§+y§;
   import §%y§.§-c§;
   import §%y§.§@Q§;
   import §%y§.§^!D§;
   import §'d§.§,_§;
   import §'d§.§4v§;
   import §'d§.§;"§;
   import §'d§.§>N§;
   import §'d§.§?+§;
   import §+f§.§=3§;
   import §,!F§.§#§;
   import §,!F§.§7!I§;
   import §,!F§.Tuner;
   import §,!F§.§`"§;
   import §3!%§.§#!K§;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §<!4§.§25§;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import get.§ v§;
   
   public class §>A§
   {
       
      
      protected var §3!F§:Vector.<§8C§>;
      
      protected var §-U§:int;
      
      public var §&§:§#§;
      
      public var §[!4§:Vector.<§>+§>;
      
      protected var §if§:Sprite;
      
      protected var §]p§:Sprite;
      
      private var §^C§:Sprite;
      
      private var §`b§:Sprite;
      
      private var §`Y§:Sprite;
      
      protected var §7x§:Vector.<Texture>;
      
      protected var §^!§:Vector.<§-c§>;
      
      protected var §-E§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §0^§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §%p§:Boolean = false;
      
      protected var §&!8§:Number;
      
      protected var §@_§:int;
      
      protected var §^Q§:Vector.<§+y§>;
      
      protected var §;d§:int = 0;
      
      private var §83§:int = 0;
      
      private var §>!;§:int = 0;
      
      private var §[S§:int;
      
      private var §0`§:Boolean = true;
      
      private var §&E§:Boolean = true;
      
      public function §>A§(param1:§#§, param2:§#!K§, param3:Sprite)
      {
         var _loc5_:§-c§ = null;
         var _loc6_:§^!D§ = null;
         var _loc7_:§8C§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§8C§ = null;
         var _loc11_:§8C§ = null;
         this.§3!F§ = new Vector.<§8C§>();
         this.§[!4§ = new Vector.<§>+§>();
         this.§7x§ = new Vector.<Texture>();
         this.§&!8§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§^Q§ = new Vector.<§+y§>();
         super();
         this.§&§ = param1;
         this.§-U§ = 0;
         this.§]p§ = param3;
         this.§]p§.§]1§ = false;
         this.§&E§ = true;
         this.§0`§ = true;
         this.§if§ = new Sprite();
         this.§^C§ = new Sprite();
         this.§`b§ = new Sprite();
         this.§`Y§ = new Sprite();
         this.§]p§.addChild(this.§if§);
         this.§]p§.addChild(this.§^C§);
         this.§]p§.addChild(this.§`b§);
         this.§]p§.addChild(this.§`Y§);
         this.addObject(§ v§.§"!4§(param2.theme).§!!C§,(this.§&§.§6!2§.§?>§ + this.§&§.§6!2§.§2M§) / 2,this.§&§.§6!2§.§-u§ + §`"§.§?!K§);
         this.§[S§ = this.§3!F§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§`!;§)
         {
            _loc6_ = param2.§7r§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§ B§();
         this.§&!O§(true);
         this.§^!§ = new Vector.<§-c§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§&Y§)
         {
            this.§^!§.push(§-c§.§[8§(param2.§[!?§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§^!§)
         {
            _loc8_ = _loc5_.index1 + this.§[S§;
            _loc9_ = _loc5_.index2 + this.§[S§;
            if(_loc8_ < this.§3!F§.length && _loc9_ < this.§3!F§.length)
            {
               _loc10_ = this.§3!F§[_loc8_];
               _loc11_ = this.§3!F§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §@Q§.§57§)
               {
                  _loc5_.§@U§ = this.§&§.§9!4§.§@!1§.CreateJoint(_loc5_.§&!7§(_loc10_,_loc11_));
               }
               else
               {
                  this.§^Q§.push(new §+y§(_loc8_,_loc9_,_loc5_.§^L§));
               }
            }
         }
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §"!B§() : Sprite
      {
         return this.§`Y§;
      }
      
      public function get §@M§() : Sprite
      {
         return this.§]p§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§3!F§.length > 0)
         {
            this.§8q§(0);
         }
         this.§3!F§ = null;
         this.§^Q§ = null;
         if(this.§]p§)
         {
            this.§]p§.dispose();
            this.§]p§ = null;
            this.§if§ = null;
            this.§`Y§ = null;
            this.§^C§ = null;
            this.§`b§ = null;
         }
         while(this.§7x§.length > 0)
         {
            _loc1_ = this.§7x§.pop();
            this.§&§.textureManager.§null§(_loc1_);
         }
      }
      
      private function §&!O§(param1:Boolean) : void
      {
         this.§if§.visible = param1;
      }
      
      private function § B§() : void
      {
         var _loc3_:§8C§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§`l§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§8C§> = new Vector.<§8C§>();
         for each(_loc3_ in this.§3!F§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§]p§);
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
            this.§[r§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§-S§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§&§.textureManager.§5l§(_loc10_);
            this.§7x§.push(_loc12_);
            (_loc13_ = new §`l§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§if§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §-S§(param1:Vector.<§8C§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§8C§ = null;
         var _loc11_:§?+§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§"S§.shape).§<O§();
            _loc13_ = new Rectangle(_loc12_[0].x / §#§.§67§ * param6,_loc12_[0].y / §#§.§67§ * param6,(_loc12_[1].x - _loc12_[0].x) / §#§.§67§ * param6,(_loc12_[1].y - _loc12_[0].y) / §#§.§67§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§'!I§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §[r§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§&§.background.§;6§();
         var _loc5_:§=3§;
         if(_loc5_ = this.§&§.backgroundTextureManager.§=&§(_loc4_))
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
      
      public function §'U§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §8C§
      {
         var _loc10_:§8C§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §64§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §>_§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §?!§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §;G§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §;!1§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §=!1§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8&§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new § %§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§;d§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §8C§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§8C§;
         if((_loc11_ = this.§48§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§0`§;
            this.§3!F§[this.§3!F§.length] = _loc11_;
         }
         else
         {
            this.§3!F§[this.§3!F§.length] = _loc11_;
         }
         if(_loc11_ is § %§ && !_loc11_.§5;§())
         {
            this.§^C§.addChild(_loc10_);
            ++this.§;d§;
         }
         else if(_loc11_.front || param9)
         {
            this.§`Y§.addChild(_loc10_);
         }
         else
         {
            this.§`b§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§&§.§`T§(_loc11_);
         }
         if(param6)
         {
            this.§&§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §[8§(param1:int, param2:§8C§, param3:§8C§) : §-c§
      {
         var _loc6_:§-c§ = null;
         var _loc4_:int = this.§3!F§.indexOf(param2) - this.§[S§;
         var _loc5_:int = this.§3!F§.indexOf(param3) - this.§[S§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §-c§(§@Q§.§2!@§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§@U§ = this.§&§.§9!4§.§@!1§.CreateJoint(_loc6_.§&!7§(param2,param3));
            this.§^!§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §"!J§(param1:§-c§) : void
      {
         if(!(param1.§@U§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§8C§ = this.§7r§(param1.index1 + this.§[S§);
         var _loc3_:§8C§ = this.§7r§(param1.index2 + this.§[S§);
         this.§&§.§9!4§.§@!1§.DestroyJoint(param1.§@U§);
         param1.§@U§ = this.§&§.§9!4§.§@!1§.CreateJoint(param1.§&!7§(_loc2_,_loc3_));
      }
      
      public function §%!J§(param1:§8C§) : Vector.<§-c§>
      {
         var _loc4_:§-c§ = null;
         var _loc2_:Vector.<§-c§> = new Vector.<§-c§>();
         var _loc3_:int = this.§3!F§.indexOf(param1) - this.§[S§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§^!§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §@D§() : Vector.<§-c§>
      {
         return this.§^!§;
      }
      
      public function §^d§(param1:§8C§) : void
      {
         var _loc2_:int = this.§3!F§.indexOf(param1) - this.§[S§;
         var _loc3_:int = this.§^!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§^!§[_loc3_].index1 == _loc2_ || this.§^!§[_loc3_].index2 == _loc2_)
            {
               this.§^!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function § get§(param1:§8C§, param2:§8C§) : Boolean
      {
         var _loc3_:int = this.§3!F§.indexOf(param1) - this.§[S§;
         var _loc4_:int = this.§3!F§.indexOf(param2) - this.§[S§;
         var _loc5_:int = this.§^!§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§^!§[_loc5_].index1 == _loc3_ && this.§^!§[_loc5_].index2 == _loc4_ || this.§^!§[_loc5_].index1 == _loc4_ && this.§^!§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §48§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §8C§
      {
         var _loc10_:§8C§ = null;
         var _loc11_:§;"§ = null;
         var _loc12_:§;"§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§'U§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§>!;§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §,_§.§89§(param2);
            _loc10_ = new §5]§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §,_§.§89§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §,_§.§89§(param2);
            }
            if(_loc12_.§5a§ == §;"§.§9!C§ || _loc12_.§5a§ == §;"§.§78§)
            {
               _loc10_ = new §=W§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §8C§(this,param1,this.§&§.§9!4§.§@!1§,this.§&§,this.§-U§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §]Q§(param1:Number) : void
      {
         var _loc3_:§8C§ = null;
         var _loc2_:int = this.§3!F§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!F§[_loc2_] as §8C§;
            if(_loc3_)
            {
               if(_loc3_.§<5§ <= 0)
               {
                  this.§8q§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4D§();
                  _loc3_.§?F§();
               }
            }
            _loc2_--;
         }
         this.§@!"§(param1);
      }
      
      protected function §@!"§(param1:Number) : void
      {
         var _loc3_:§-c§ = null;
         var _loc4_:§+y§ = null;
         var _loc5_:int = 0;
         var _loc6_:§8C§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§^Q§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§^Q§[_loc2_]).§;9§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§0C§("block_" + _loc5_))
                  {
                     this.§,W§(_loc6_,true,true,true);
                  }
                  this.§^Q§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§^!§)
         {
            if(_loc3_.type == §@Q§.§+-§ && _loc3_.§ -§)
            {
               _loc7_ = (_loc3_.§@U§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§@U§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§`f§ && _loc3_.§!r§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§@U§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§[!4§.push(§>+§.createExplosion(param1,param2,param3));
         §25§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §-<§(param1:Number, param2:Number) : int
      {
         var _loc4_:§8C§ = null;
         var _loc3_:int = this.§3!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3!F§[_loc3_])
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
      
      public function §>Q§(param1:Number, param2:Number) : §8C§
      {
         var _loc4_:§8C§ = null;
         var _loc3_:int = this.§3!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3!F§[_loc3_])
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
      
      public function §7r§(param1:int) : §8C§
      {
         return this.§3!F§[param1];
      }
      
      public function §,q§(param1:Number, param2:Number) : void
      {
         var _loc4_:§8C§ = null;
         var _loc3_:int = this.§3!F§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§3!F§[_loc3_] as §8C§).§,q§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §?!F§(param1:§8C§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§8C§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§<5§ == param1.§`t§)
         {
            if(this.§&!8§ < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§&!8§ += param2 * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§]!7§().SetAngularVelocity(param2 * this.§&!8§);
            this.§@_§ = 0;
         }
         else if(this.§@_§ == 0)
         {
            this.§@_§ = this.§&§.§&8§;
         }
         if(param1.§4!&§() || this.§'k§(param1) || this.§@_§ > 0 && this.§&§.§&8§ > this.§@_§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §25§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §25§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§]!7§().GetPosition().x - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§]!7§().GetPosition().y - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§'k§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§@_§ = 0;
                  _loc7_.§5!O§.§0O§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §-!P§(param1:§8C§, param2:Number) : Boolean
      {
         var _loc5_:§8C§ = null;
         if(this.Tuner.MIGHTY_EAGLE_USE_SHADE && !this.§%p§ && this.mMightyEagleTimer > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§%p§ = true;
            this.§&§.§&W§();
         }
         this.mMightyEagleTimer += param2;
         this.§&§.particles.addParticle(§ J§.§7!0§,§,!'§.§=8§,§ J§.§"H§,param1.§]!7§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§]!7§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§ J§.§]S§(param1.§!Z§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§@i§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§0^§)
            {
               this.§0^§ = false;
               this.§&§.§+<§();
               param1.§[I§(§>N§.§'H§);
               this.mSardineCanAdded = false;
               param1.§5!O§.§2!B§ = true;
               param1.§5!O§.§#y§();
               for each(_loc5_ in this.§3!F§)
               {
                  if(_loc5_ && _loc5_.§-!G§())
                  {
                     _loc5_.§]!7§().SetAwake(true);
                     _loc5_.§]!7§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§2C§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§3!F§)
               {
                  if(_loc5_ && _loc5_.§-!G§())
                  {
                     _loc5_.applyDamage(_loc5_.§`t§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§]!7§().GetPosition().y >= -5.5;
            this.§0^§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§'f§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §^3§() : void
      {
         var _loc1_:§>+§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§8C§ = null;
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
         while(this.§[!4§.length > 0)
         {
            _loc1_ = this.§[!4§.shift();
            _loc2_ = _loc1_.§?d§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§3!F§)
            {
               _loc8_ = _loc6_.§]!7§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§]!7§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§?d§)
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
                     _loc6_.§]!7§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§9g§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§7!'§(_loc6_,_loc14_);
               }
            }
            this.§&§.particles.addParticle(this.§7c§(_loc1_.type),§,!'§.§=8§,§ J§.§%!A§,_loc3_,_loc4_,600,"",§ J§.§ @§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§&§.particles.addParticle(§ J§.§#j§,§,!'§.§=8§,§ J§.§"H§,_loc3_,_loc4_,_loc16_,"",§ J§.§ @§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §7!'§(param1:§8C§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §7c§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return § J§.§9K§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§8C§ = null;
         var _loc3_:int = this.§3!F§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3!F§[_loc3_];
            if(_loc2_.§2v§())
            {
               if(this.§?!F§(_loc2_,param1))
               {
                  this.§8q§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§5;§())
            {
               this.§-!P§(_loc2_,param1);
            }
            else if(this.§'k§(_loc2_))
            {
               _loc2_.§[I§(§>N§.§%c§);
               this.§8q§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§[I§(§>N§.§%c§);
               this.§8q§(_loc3_,false,true,true);
            }
            else if(_loc2_.§<!&§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§^3§();
      }
      
      private function §2C§() : void
      {
         var _loc1_:§-c§ = null;
         for each(_loc1_ in this.§^!§)
         {
            if(_loc1_.type != §@Q§.§57§)
            {
               this.§&§.§9!4§.§@!1§.DestroyJoint(_loc1_.§@U§);
            }
         }
      }
      
      public function §=l§() : Boolean
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!F§.length)
         {
            _loc2_ = this.§3!F§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §'k§(param1:§8C§) : Boolean
      {
         if(param1 && param1.§"S§.§^h§() != §4v§.§3%§ && this.§&§.§6!2§.§%^§(param1.§]!7§().GetPosition().x,param1.§]!7§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §8q§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§-c§ = null;
         var _loc7_:§+y§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§8C§;
         if((_loc5_ = this.§3!F§[param1]).§-!G§())
         {
            ++this.§83§;
         }
         else if(_loc5_.§<!&§())
         {
            --this.§;d§;
         }
         if(_loc5_ == this.§&§.activeObject)
         {
            this.§&§.activeObject = null;
         }
         if(param2)
         {
            this.§&§.addScore(_loc5_.§"S§.score,§7!I§.§9B§,true,_loc5_.§]!7§().GetPosition().x,_loc5_.§]!7§().GetPosition().y - 3,§ J§.§^5§(_loc5_.§!Z§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§&§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§^t§(_loc5_.sprite);
         this.§^d§(_loc5_);
         for each(_loc6_ in this.§^!§)
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
         for each(_loc7_ in this.§^Q§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§;9§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§3!F§[param1] = null;
         this.§3!F§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§8C§, param2:§,!'§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §^t§(param1:Sprite) : void
      {
         if(this.§`b§.contains(param1))
         {
            this.§`b§.removeChild(param1);
            return;
         }
         if(this.§^C§.contains(param1))
         {
            this.§^C§.removeChild(param1);
            return;
         }
         if(this.§if§.contains(param1))
         {
            this.§if§.removeChild(param1);
            return;
         }
         if(this.§`Y§.contains(param1))
         {
            this.§`Y§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§8C§) : void
      {
         if(param1.§4X§().toUpperCase() == "WHITE_EGG" || param1.§&u§())
         {
            if(param1.§!Z§.toUpperCase() == §;G§.§!%§)
            {
               this.addExplosions(§>+§.§]y§,param1.§]!7§().GetPosition().x,param1.§]!7§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§>+§.§default§,param1.§]!7§().GetPosition().x,param1.§]!7§().GetPosition().y);
            }
         }
      }
      
      public function §,W§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§8q§(this.§3!F§.indexOf(param1),param2,param3,param4);
      }
      
      public function §3]§(param1:Number, param2:Number) : void
      {
         this.§]p§.x = -param1;
         this.§]p§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§8C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!F§.length)
         {
            _loc3_ = this.§3!F§[_loc2_] as §8C§;
            if(_loc3_ && _loc3_.§-!G§() && _loc3_.§<5§ > 0)
            {
               if(!param1 || _loc3_.§5!O§.mTryToBlink <= 0 && _loc3_.§5!O§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!,§(param1:Boolean = false) : int
      {
         var _loc4_:§8C§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§3!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!F§[_loc3_] as §8C§) && _loc4_.§-!G§() && _loc4_.§<5§ > 0)
            {
               if(!param1 || _loc4_.§5!O§.mTryToBlink <= 0 && _loc4_.§5!O§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §5n§() : int
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!F§)
         {
            if(_loc2_ && (_loc2_.§@v§() || _loc2_.§]!I§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §9%§() : int
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!F§)
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
         var _loc3_:§8C§ = null;
         var _loc2_:int = this.§3!F§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!F§[_loc2_];
            if(_loc3_ && _loc3_.§-!G§() && _loc3_.§<5§ > 0)
            {
               _loc3_.§5!O§.mTryToScream = §5^§.§'v§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §"!<§() : Boolean
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = this.§3!F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!F§[_loc1_] as §8C§;
            if(_loc2_ && _loc2_.§<!&§() && _loc2_.§<5§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = this.§3!F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!F§[_loc1_] as §8C§;
            if(_loc2_ && _loc2_.§<5§ > 0 && _loc2_.§5a§ != §;"§.§7!O§)
            {
               if(_loc2_.§+r§() && !_loc2_.§4!&§())
               {
                  return false;
               }
               if(_loc2_.§<!&§() && _loc2_.§<5§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §8!N§(param1:Boolean = false) : §8C§
      {
         var _loc5_:int = 0;
         var _loc6_:§8C§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§3!F§.length;
         var _loc3_:int = 1 + Math.random() * this.§?!,§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§3!F§[_loc5_]) && _loc6_.§-!G§() && _loc6_.§<5§ > 0)
               {
                  if(!param1 || _loc6_.§5!O§.mTryToBlink <= 0 && _loc6_.§5!O§.mTryToScream <= 0)
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
      
      public function §%!P§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§3!F§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§3!F§[_loc2_] as §8C§).§"S§.score;
            if((this.§3!F§[_loc2_] as §8C§).§+r§())
            {
               _loc1_ += §#§.§'0§.getValue() * int((this.§3!F§[_loc2_] as §8C§).§`t§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§&§.slingshot.§%!P§());
      }
      
      public function §;K§(param1:§8C§, param2:§8C§) : Boolean
      {
         if(param1.§<!&§() && param2.§<!&§())
         {
            return true;
         }
         if(!param1.§&A§() && !param2.§&A§())
         {
            return true;
         }
         return false;
      }
      
      public function mightyEagleUsed() : void
      {
         this.mSardineCanAdded = true;
         this.§;d§ = 0;
      }
      
      public function objectCollision(param1:§8C§, param2:§8C§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§5;§() || param2.§-!G§())
            {
               param2.applyDamage(param2.§`t§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§5;§() || param1.§-!G§())
            {
               param1.applyDamage(param1.§`t§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§2v§() || param2.§2v§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;K§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§5!;§(param2.§4X§());
         var _loc5_:Number = param1.§@4§(param2.§4X§());
         var _loc6_:Number = param2.§5!;§(param1.§4X§());
         var _loc7_:Number = param2.§@4§(param1.§4X§());
         var _loc8_:Number = param1.§]!7§().GetMass() * param1.§]!7§().GetLinearVelocity().x - param2.§]!7§().GetMass() * param2.§]!7§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§]!7§().GetMass() * param1.§]!7§().GetLinearVelocity().y - param2.§]!7§().GetMass() * param2.§]!7§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§<5§);
         var _loc14_:Number = Math.max(0,param2.§<5§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§<!&§(),_loc14_ == param2.§`t§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§<!&§(),_loc13_ == param1.§`t§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§1d§(new b2Vec2(param2.§]!7§().GetLinearVelocity().x * _loc18_,param2.§]!7§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§1d§(new b2Vec2(param1.§]!7§().GetLinearVelocity().x * _loc19_,param1.§]!7§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §[1§() : void
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = this.§3!F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!F§[_loc1_] as §8C§;
            if(_loc2_ != null && _loc2_.§-!G§())
            {
               this.§8q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#!#§() : void
      {
         var _loc2_:§8C§ = null;
         var _loc1_:int = this.§3!F§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!F§[_loc1_] as §8C§;
            if(_loc2_ != null && _loc2_.§&u§())
            {
               this.§8q§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §@!K§() : int
      {
         return this.§3!F§.length;
      }
      
      public function §<!-§(param1:§#!K§) : void
      {
         var _loc4_:§8C§ = null;
         var _loc5_:§^!D§ = null;
         var _loc6_:§@Q§ = null;
         var _loc7_:§-c§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!F§.length)
         {
            if((_loc4_ = this.§3!F§[_loc2_]).§2!G§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §^!D§()).angle = _loc4_.§'!I§();
                  _loc5_.id = _loc4_.§!Z§;
                  _loc5_.x = _loc4_.§]!7§().GetPosition().x;
                  _loc5_.y = _loc4_.§]!7§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§^!§.length)
         {
            _loc7_ = this.§^!§[_loc3_];
            _loc6_ = new §@Q§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§3?§,_loc7_.§`f§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§!r§,_loc7_.motorSpeed,_loc7_.§ -§,_loc7_.maxTorque);
            param1.§9!%§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §%z§() : void
      {
         var _loc1_:int = 0;
         while(this.§3!F§.length > _loc1_)
         {
            if(this.§3!F§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§,W§(this.§3!F§[_loc1_]);
            }
         }
      }
      
      public function §3I§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!F§.length)
         {
            if(this.§3!F§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!F§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§0`§ = param1;
         this.§&!O§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!F§.length)
         {
            if(this.§3!F§[_loc2_].isTexture())
            {
               this.§3!F§[_loc2_].sprite.visible = !this.§0`§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§&E§ = param1;
      }
      
      public function §]X§() : Boolean
      {
         return this.§&E§;
      }
      
      public function §"G§() : int
      {
         return this.§>!;§;
      }
      
      public function §<!=§() : int
      {
         return this.§83§;
      }
      
      public function §0C§(param1:String) : §8C§
      {
         var _loc3_:§8C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!F§.length)
         {
            _loc3_ = this.§3!F§[_loc2_] as §8C§;
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
