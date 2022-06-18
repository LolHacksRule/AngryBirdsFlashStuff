package §!!,§
{
   import § !'§.§,M§;
   import § !'§.§-m§;
   import § !'§.§6A§;
   import § !'§.§>v§;
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §1#§.Texture;
   import §5Y§.§=V§;
   import §6Z§.§"!;§;
   import §9s§.§%!L§;
   import §9s§.§;0§;
   import §9s§.§^9§;
   import §9s§.§^u§;
   import §;!'§.§'_§;
   import §;!'§.§3!6§;
   import §;!'§.§4&§;
   import §;!'§.§;l§;
   import §;!'§.§=j§;
   import §[v§.§'P§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!0§
   {
       
      
      protected var §[8§:Vector.<§`Q§>;
      
      protected var §7!4§:int;
      
      public var §4!I§:§^9§;
      
      public var §3! §:Vector.<§-n§>;
      
      protected var §1]§:Sprite;
      
      protected var §8j§:Sprite;
      
      private var §!!5§:Sprite;
      
      private var §;!+§:Sprite;
      
      private var §">§:Sprite;
      
      protected var §&!@§:Vector.<Texture>;
      
      protected var §[!5§:Vector.<§,M§>;
      
      protected var §%!A§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §&o§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`!+§:Boolean = false;
      
      protected var §8!8§:Number;
      
      protected var §]u§:int;
      
      protected var §6!C§:Vector.<§-m§>;
      
      protected var §9!$§:int = 0;
      
      private var §1!O§:int = 0;
      
      private var §%E§:int = 0;
      
      protected var §!h§:int;
      
      private var §#,§:Boolean = true;
      
      private var §21§:Boolean = true;
      
      public function §^!0§(param1:§^9§, param2:§"!;§, param3:Sprite)
      {
         var _loc5_:§,M§ = null;
         var _loc6_:§>v§ = null;
         var _loc7_:§`Q§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§`Q§ = null;
         var _loc11_:§`Q§ = null;
         this.§[8§ = new Vector.<§`Q§>();
         this.§3! § = new Vector.<§-n§>();
         this.§&!@§ = new Vector.<Texture>();
         this.§8!8§ = this.§^u§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§6!C§ = new Vector.<§-m§>();
         super();
         this.§4!I§ = param1;
         this.§7!4§ = 0;
         this.§8j§ = param3;
         this.§8j§.§2@§ = false;
         this.§21§ = true;
         this.§#,§ = true;
         this.§1]§ = new Sprite();
         this.§!!5§ = new Sprite();
         this.§;!+§ = new Sprite();
         this.§">§ = new Sprite();
         this.§8j§.addChild(this.§1]§);
         this.§8j§.addChild(this.§!!5§);
         this.§8j§.addChild(this.§;!+§);
         this.§8j§.addChild(this.§">§);
         this.addObject(§=V§.§59§(param2.theme).§'R§,(this.§4!I§.§5!=§.§2;§ + this.§4!I§.§5!=§.§-p§) / 2,this.§4!I§.§5!=§.§]!7§ + §;0§.§]_§);
         this.§!h§ = this.§[8§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8k§)
         {
            _loc6_ = param2.§]!G§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§`!?§();
         this.§0Q§(true);
         this.§[!5§ = new Vector.<§,M§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§`!§)
         {
            this.§[!5§.push(§,M§.§7H§(param2.§1&§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§[!5§)
         {
            _loc8_ = _loc5_.index1 + this.§!h§;
            _loc9_ = _loc5_.index2 + this.§!h§;
            if(_loc8_ < this.§[8§.length && _loc9_ < this.§[8§.length)
            {
               _loc10_ = this.§[8§[_loc8_];
               _loc11_ = this.§[8§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §6A§.§#!L§)
               {
                  _loc5_.§=W§ = this.§4!I§.mLevelEngine.mWorld.CreateJoint(_loc5_.§,!B§(_loc10_,_loc11_));
               }
               else
               {
                  this.§6!C§.push(new §-m§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§"A§));
               }
            }
         }
      }
      
      protected function get §^u§() : Class
      {
         return §^u§;
      }
      
      public function get §-!!§() : Sprite
      {
         return this.§">§;
      }
      
      public function get §,_§() : Sprite
      {
         return this.§8j§;
      }
      
      public function get §8;§() : Sprite
      {
         return this.§;!+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§[8§.length > 0)
         {
            this.§#=§(0);
         }
         this.§[8§ = null;
         this.§6!C§ = null;
         if(this.§8j§)
         {
            this.§8j§.dispose();
            this.§8j§ = null;
            this.§1]§ = null;
            this.§">§ = null;
            this.§!!5§ = null;
            this.§;!+§ = null;
         }
         while(this.§&!@§.length > 0)
         {
            _loc1_ = this.§&!@§.pop();
            this.§4!I§.textureManager.§=D§(_loc1_);
         }
      }
      
      private function §0Q§(param1:Boolean) : void
      {
         this.§1]§.visible = param1;
      }
      
      private function §`!?§() : void
      {
         var _loc3_:§`Q§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§0V§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`Q§> = new Vector.<§`Q§>();
         for each(_loc3_ in this.§[8§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§8j§);
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
            this.§6W§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§6o§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§4!I§.textureManager.§+! §(_loc10_);
            this.§&!@§.push(_loc12_);
            (_loc13_ = new §0V§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§1]§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §6o§(param1:Vector.<§`Q§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§`Q§ = null;
         var _loc11_:§'_§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§?!6§.shape).§]!<§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^9§.§5T§ * param6,_loc12_[0].y / §^9§.§5T§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^9§.§5T§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^9§.§5T§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§-c§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §6W§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§4!I§.background.§@!§();
         var _loc5_:§'P§;
         if(_loc5_ = this.§4!I§.backgroundTextureManager.§4`§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            _loc8_ = _loc6_.width;
            _loc9_ = _loc6_.height;
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
      
      public function §=!7§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`Q§
      {
         var _loc10_:§;l§ = §=j§.§=c§(param2);
         return new §;L§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §2C§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`Q§
      {
         var _loc10_:§`Q§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §!!J§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §2c§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §%v§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §"#§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §6O§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §9]§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §+c§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §6!&§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §0!E§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§9!$§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`Q§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§`Q§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§#,§;
            this.§[8§[this.§[8§.length] = _loc11_;
         }
         else
         {
            this.§[8§[this.§[8§.length] = _loc11_;
         }
         if(_loc11_ is §0!E§ && !_loc11_.§]!C§())
         {
            this.§!!5§.addChild(_loc10_);
            ++this.§9!$§;
         }
         else if(_loc11_.front || param9)
         {
            this.§">§.addChild(_loc10_);
         }
         else
         {
            this.§;!+§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§4!I§.§5!§(_loc11_);
         }
         if(param6)
         {
            this.§4!I§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §7H§(param1:int, param2:§`Q§, param3:§`Q§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§,M§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§-m§ = null;
         var _loc15_:int = this.§[8§.indexOf(param2) - this.§!h§;
         var _loc16_:int = this.§[8§.indexOf(param3) - this.§!h§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §,M§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§[!5§.push(_loc17_);
            _loc17_.§"A§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §6A§.§#!L§)
            {
               _loc17_.§=W§ = this.§4!I§.mLevelEngine.mWorld.CreateJoint(_loc17_.§,!B§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §-m§(_loc18_,_loc19_,param12);
               this.§6!C§.push(_loc20_);
            }
         }
      }
      
      public function §@'§(param1:§,M§) : void
      {
         if(!(param1.§=W§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§`Q§ = this.§]!G§(param1.index1 + this.§!h§);
         var _loc3_:§`Q§ = this.§]!G§(param1.index2 + this.§!h§);
         this.§4!I§.mLevelEngine.mWorld.DestroyJoint(param1.§=W§);
         param1.§=W§ = this.§4!I§.mLevelEngine.mWorld.CreateJoint(param1.§,!B§(_loc2_,_loc3_));
      }
      
      public function § !,§(param1:§`Q§) : Vector.<§,M§>
      {
         var _loc4_:§,M§ = null;
         var _loc2_:Vector.<§,M§> = new Vector.<§,M§>();
         var _loc3_:int = this.§[8§.indexOf(param1) - this.§!h§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§[!5§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §;!6§() : Vector.<§,M§>
      {
         return this.§[!5§;
      }
      
      public function §%!?§(param1:§`Q§) : void
      {
         var _loc2_:int = this.§[8§.indexOf(param1) - this.§!h§;
         var _loc3_:int = this.§[!5§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§[!5§[_loc3_].index1 == _loc2_ || this.§[!5§[_loc3_].index2 == _loc2_)
            {
               this.§[!5§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §;D§(param1:§`Q§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§6!C§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6!C§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§6!C§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?b§(param1:§`Q§, param2:§`Q§) : Boolean
      {
         var _loc3_:int = this.§[8§.indexOf(param1) - this.§!h§;
         var _loc4_:int = this.§[8§.indexOf(param2) - this.§!h§;
         var _loc5_:int = this.§[!5§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§[!5§[_loc5_].index1 == _loc3_ && this.§[!5§[_loc5_].index2 == _loc4_ || this.§[!5§[_loc5_].index1 == _loc4_ && this.§[!5§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`Q§
      {
         var _loc10_:§`Q§ = null;
         var _loc11_:§;l§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§2C§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§%E§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§=!7§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §=j§.§=c§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §=j§.§=c§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§3E§ == §;l§.§2$§ || _loc11_.§3E§ == §;l§.§!!<§)
            {
               _loc10_ = new §;!1§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §`Q§(this,param1,this.§4!I§.mLevelEngine.mWorld,this.§4!I§,this.§7!4§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§;x§();
         return _loc10_;
      }
      
      protected function §;x§() : String
      {
         var _loc3_:§`Q§ = null;
         var _loc1_:int = this.§[8§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§[8§)
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
      
      public function §"!5§(param1:Number) : void
      {
         var _loc3_:§`Q§ = null;
         var _loc2_:int = this.§[8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[8§[_loc2_] as §`Q§;
            if(_loc3_)
            {
               if(_loc3_.§;U§ <= 0)
               {
                  this.§#=§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§##§();
                  _loc3_.§-y§();
               }
            }
            _loc2_--;
         }
         this.§8,§(param1);
      }
      
      protected function §8,§(param1:Number) : void
      {
         this.§[d§(param1);
         this.§import§();
      }
      
      private function §[d§(param1:Number) : void
      {
         var _loc4_:§-m§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`Q§ = null;
         if(this.§6!C§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§-m§> = this.§6!C§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§=I§ && this.§6!C§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§0!F§("" + _loc5_))
                  {
                     this.§10§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §import§() : void
      {
         var _loc1_:§,M§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§[!5§)
         {
            if(_loc1_.type == §6A§.§,%§ || _loc1_.type == §6A§.§&!I§ && _loc1_.§&k§)
            {
               if(_loc1_.§=W§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§=W§ as b2PrismaticJoint).GetJointTranslation();
                  _loc3_ = (_loc1_.§=W§ as b2PrismaticJoint).GetMotorSpeed();
               }
               else if(_loc1_.§=W§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§=W§ as b2RevoluteJoint).GetJointAngle();
                  _loc3_ = (_loc1_.§=W§ as b2RevoluteJoint).GetMotorSpeed();
               }
               if(_loc5_ = _loc1_.§?y§ && _loc1_.§#!G§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§=W§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§`Q§> = null) : void
      {
         this.§3! §.push(§-n§.createExplosion(param1,param2,param3,param4));
         §]!2§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §3!,§(param1:Number, param2:Number) : int
      {
         var _loc4_:§`Q§ = null;
         var _loc3_:int = this.§[8§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§[8§[_loc3_])
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
      
      public function §5U§(param1:Number, param2:Number) : §`Q§
      {
         var _loc4_:§`Q§ = null;
         var _loc3_:int = this.§[8§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§[8§[_loc3_])
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
      
      public function §0!3§(param1:Number, param2:Number) : Vector.<§`Q§>
      {
         var _loc5_:§`Q§ = null;
         var _loc3_:Vector.<§`Q§> = new Vector.<§`Q§>();
         var _loc4_:int = this.§[8§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§[8§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §]!G§(param1:int) : §`Q§
      {
         return this.§[8§[param1];
      }
      
      public function §2K§(param1:Number, param2:Number) : void
      {
         var _loc4_:§`Q§ = null;
         var _loc3_:int = this.§[8§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§[8§[_loc3_] as §`Q§).§2K§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §@!2§(param1:§`Q§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§`Q§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§;U§ == param1.§!d§)
         {
            if(this.§8!8§ < this.§^u§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§8!8§ += param2 * this.§^u§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§ 7§().SetAngularVelocity(param2 * this.§8!8§);
            this.§]u§ = 0;
         }
         else if(this.§]u§ == 0)
         {
            this.§]u§ = this.§4!I§.§#S§;
         }
         if(param1.§;!"§() || this.§<[§(param1) || this.§]u§ > 0 && this.§4!I§.§#S§ > this.§]u§ + this.§^u§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§^u§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§^u§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§^u§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §]!2§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §]!2§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§^u§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§ 7§().GetPosition().x - this.§^u§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§ 7§().GetPosition().y - this.§^u§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§^u§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§<[§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§^u§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§]u§ = 0;
                  _loc7_.§!t§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §;!3§(param1:§`Q§, param2:Number) : Boolean
      {
         var _loc5_:§`Q§ = null;
         if(this.§^u§.MIGHTY_EAGLE_USE_SHADE && !this.§`!+§ && this.mMightyEagleTimer > this.§^u§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§`!+§ = true;
            this.§4!I§.§#!J§();
         }
         this.mMightyEagleTimer += param2;
         this.§4!I§.particles.§3S§(§7D§.§!W§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.§ 7§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§ 7§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§7D§.getParticleMaterialFromEngineMaterial(param1.§#+§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§?@§(this.§^u§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§&o§)
            {
               this.§&o§ = false;
               this.§4!I§.§[]§();
               param1.§<!I§(§4&§.§0!=§);
               this.mSardineCanAdded = false;
               param1.§!t§.§>!=§ = true;
               param1.§!t§.§+!7§();
               for each(_loc5_ in this.§[8§)
               {
                  if(_loc5_ && _loc5_.§,q§())
                  {
                     _loc5_.§ 7§().SetAwake(true);
                     _loc5_.§ 7§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§4!8§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§[8§)
               {
                  if(_loc5_ && _loc5_.§,q§())
                  {
                     _loc5_.applyDamage(_loc5_.§!d§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§ 7§().GetPosition().y >= -5.5;
            this.§&o§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!!>§(param2,new Point(this.§^u§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§^u§.MIGHTY_EAGLE_Y_CHANGE),this.§^u§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §%G§() : void
      {
         var _loc1_:§-n§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`Q§ = null;
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
         while(this.§3! §.length > 0)
         {
            _loc1_ = this.§3! §.shift();
            _loc2_ = _loc1_.§%!"§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§[8§)
            {
               if(!(_loc1_.§6x§ != null && _loc1_.§6x§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§ 7§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§ 7§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§%!"§)
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
                        _loc6_.§ 7§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§^!'§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§1G§(_loc6_,_loc14_);
                  }
               }
            }
            this.§4!I§.particles.§3S§(this.§8u§(_loc1_.type),§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.§5B§,_loc3_,_loc4_,600,"",§7D§.§ G§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§4!I§.particles.§3S§(§7D§.§&?§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc3_,_loc4_,_loc16_,"",§7D§.§ G§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §1G§(param1:§`Q§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §8u§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §7D§.§4K§;
      }
      
      public function §]E§(param1:Number) : void
      {
         var _loc2_:§`Q§ = null;
         var _loc3_:int = this.§[8§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§[8§[_loc3_];
            if(_loc2_.§9x§())
            {
               if(this.§@!2§(_loc2_,param1))
               {
                  this.§#=§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§]!C§())
            {
               this.§;!3§(_loc2_,param1);
            }
            else if(this.§<[§(_loc2_))
            {
               _loc2_.§<!I§(§4&§.§catch§);
               this.§#=§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§<!I§(§4&§.§catch§);
               this.§#=§(_loc3_,false,true,true);
            }
            else if(_loc2_.§ !A§() || _loc2_.shouldUpdate())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§%G§();
      }
      
      private function §4!8§() : void
      {
         var _loc1_:§,M§ = null;
         for each(_loc1_ in this.§[!5§)
         {
            if(_loc1_.type != §6A§.§#!L§)
            {
               this.§4!I§.mLevelEngine.mWorld.DestroyJoint(_loc1_.§=W§);
            }
         }
      }
      
      public function §3d§() : Boolean
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[8§.length)
         {
            _loc2_ = this.§[8§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §<[§(param1:§`Q§) : Boolean
      {
         if(param1 && param1.§?!6§.§8E§() != §3!6§.§+%§ && this.§4!I§.§5!=§.§>!$§(param1.§ 7§().GetPosition().x,param1.§ 7§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §#=§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§,M§ = null;
         var _loc7_:§-m§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§`Q§;
         if((_loc5_ = this.§[8§[param1]).§,q§())
         {
            ++this.§1!O§;
         }
         else if(_loc5_.§ !A§())
         {
            --this.§9!$§;
         }
         if(_loc5_ == this.§4!I§.activeObject)
         {
            this.§4!I§.activeObject = null;
         }
         if(param2 && _loc5_.§?!6§.score > 0)
         {
            this.§4!I§.addScore(_loc5_.§?!6§.score,§%!L§.§^,§,true,_loc5_.§ 7§().GetPosition().x,_loc5_.§ 7§().GetPosition().y - 3,§7D§.§&$§(_loc5_.§#+§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§4!I§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§4[§(_loc5_.sprite);
         this.§%!?§(_loc5_);
         this.§;D§(_loc5_);
         for each(_loc6_ in this.§[!5§)
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
         for each(_loc7_ in this.§6!C§)
         {
            if(_loc7_.§!#§ == param1)
            {
               _loc7_.§=I§ = true;
            }
            if(_loc7_.§!#§ >= param1)
            {
               --_loc7_.§!#§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§[8§[param1] = null;
         this.§[8§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§`Q§, param2:§5O§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §4[§(param1:Sprite) : void
      {
         if(this.§;!+§.contains(param1))
         {
            this.§;!+§.removeChild(param1);
            return;
         }
         if(this.§!!5§.contains(param1))
         {
            this.§!!5§.removeChild(param1);
            return;
         }
         if(this.§1]§.contains(param1))
         {
            this.§1]§.removeChild(param1);
            return;
         }
         if(this.§">§.contains(param1))
         {
            this.§">§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§`Q§) : void
      {
         if(param1.§%!&§().toUpperCase() == "WHITE_EGG" || param1.§`y§())
         {
            if(param1.§#+§.toUpperCase() == §"#§.§4!4§)
            {
               this.addExplosions(§-n§.§]3§,param1.§ 7§().GetPosition().x,param1.§ 7§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§-n§.§&C§,param1.§ 7§().GetPosition().x,param1.§ 7§().GetPosition().y);
            }
         }
      }
      
      public function §10§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§#=§(this.§[8§.indexOf(param1),param2,param3,param4);
      }
      
      public function §,P§(param1:Number, param2:Number) : void
      {
         this.§8j§.x = -param1;
         this.§8j§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§`Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[8§.length)
         {
            _loc3_ = this.§[8§[_loc2_] as §`Q§;
            if(_loc3_ && _loc3_.§,q§() && _loc3_.§;U§ > 0)
            {
               if(!param1 || _loc3_.§!t§.mTryToBlink <= 0 && _loc3_.§!t§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[!-§(param1:Boolean = false) : int
      {
         var _loc4_:§`Q§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§[8§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§[8§[_loc3_] as §`Q§) && _loc4_.§,q§() && _loc4_.§;U§ > 0)
            {
               if(!param1 || _loc4_.§!t§.mTryToBlink <= 0 && _loc4_.§!t§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §&!-§() : int
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[8§)
         {
            if(_loc2_ && (_loc2_.§2d§() || _loc2_.§;!-§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §?1§() : int
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[8§)
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
         var _loc3_:§`Q§ = null;
         var _loc2_:int = this.§[8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[8§[_loc2_];
            if(_loc3_ && _loc3_.§,q§() && _loc3_.§;U§ > 0)
            {
               _loc3_.§!t§.mTryToScream = §?q§.§26§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<!B§() : Boolean
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = this.§[8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[8§[_loc1_] as §`Q§;
            if(_loc2_ && _loc2_.§ !A§() && _loc2_.§;U§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = this.§[8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[8§[_loc1_] as §`Q§;
            if(_loc2_ && _loc2_.§;U§ > 0 && _loc2_.§3E§ != §;l§.§<I§)
            {
               if(_loc2_.§[1§() && !_loc2_.§;!"§())
               {
                  return false;
               }
               if(_loc2_.§ !A§() && _loc2_.§;U§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<!!§(param1:Boolean = false) : §`Q§
      {
         var _loc7_:§`Q§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§[8§.length;
         var _loc3_:int = this.§[!-§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§[8§[_loc6_] as §`Q§) && _loc7_.§,q§() && _loc7_.§;U§ > 0)
            {
               if(!param1 || _loc7_.§!t§.mTryToBlink <= 0 && _loc7_.§!t§.mTryToScream <= 0)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function §5!>§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§[8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§[8§[_loc2_] as §`Q§).§?!6§.score;
            if((this.§[8§[_loc2_] as §`Q§).§[1§())
            {
               _loc1_ += §^9§.§2!-§.getValue() * int((this.§[8§[_loc2_] as §`Q§).§!d§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§4!I§.slingshot.§5!>§());
      }
      
      public function §&D§(param1:§`Q§, param2:§`Q§) : Boolean
      {
         if(param2 is §2c§ && param1 is §2c§)
         {
            return true;
         }
         if(!param1.§%M§() && !param2.§%M§())
         {
            return true;
         }
         return false;
      }
      
      public function §;P§() : void
      {
         this.mSardineCanAdded = true;
         this.§9!$§ = 0;
      }
      
      public function objectCollision(param1:§`Q§, param2:§`Q§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§]!C§() || param2.§,q§())
            {
               param2.applyDamage(param2.§!d§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§]!C§() || param1.§,q§())
            {
               param1.applyDamage(param1.§!d§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§^u§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9x§() || param2.§9x§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§&D§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§40§(param2.§%!&§());
         var _loc5_:Number = param1.§5!"§(param2.§%!&§());
         var _loc6_:Number = param2.§40§(param1.§%!&§());
         var _loc7_:Number = param2.§5!"§(param1.§%!&§());
         var _loc8_:Number = param1.§ 7§().GetMass() * param1.§ 7§().GetLinearVelocity().x - param2.§ 7§().GetMass() * param2.§ 7§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§ 7§().GetMass() * param1.§ 7§().GetLinearVelocity().y - param2.§ 7§().GetMass() * param2.§ 7§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§;U§);
         var _loc14_:Number = Math.max(0,param2.§;U§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ !A§(),_loc14_ == param2.§!d§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ !A§(),_loc13_ == param1.§!d§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§]Z§(new b2Vec2(param2.§ 7§().GetLinearVelocity().x * _loc18_,param2.§ 7§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§]Z§(new b2Vec2(param1.§ 7§().GetLinearVelocity().x * _loc19_,param1.§ 7§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §,m§(param1:§`Q§, param2:§`Q§) : void
      {
      }
      
      public function §%m§() : void
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = this.§[8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[8§[_loc1_] as §`Q§;
            if(_loc2_ != null && _loc2_.§,q§())
            {
               this.§#=§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §,[§() : void
      {
         var _loc2_:§`Q§ = null;
         var _loc1_:int = this.§[8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[8§[_loc1_] as §`Q§;
            if(_loc2_ != null && _loc2_.§`y§())
            {
               this.§#=§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §5!!§() : int
      {
         return this.§[8§.length;
      }
      
      public function §";§(param1:§"!;§) : void
      {
         var _loc2_:§`Q§ = null;
         var _loc3_:§,M§ = null;
         var _loc4_:§>v§ = null;
         var _loc5_:§6A§ = null;
         for each(_loc2_ in this.§[8§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §>v§()).angle = _loc2_.§-c§();
               _loc4_.id = _loc2_.§#+§;
               _loc4_.x = _loc2_.§ 7§().GetPosition().x;
               _loc4_.y = _loc2_.§ 7§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§[!5§)
         {
            (_loc5_ = new §6A§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§?6§,_loc3_.§?y§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§#!G§,_loc3_.motorSpeed,_loc3_.§&k§,_loc3_.maxTorque)).§"A§ = _loc3_.§"A§;
            param1.§2F§(_loc5_);
         }
      }
      
      public function §6N§() : void
      {
         var _loc1_:int = 0;
         while(this.§[8§.length > _loc1_)
         {
            if(this.§[8§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§10§(this.§[8§[_loc1_]);
            }
         }
      }
      
      public function §6B§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§[8§.length)
         {
            if(this.§[8§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§[8§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§#,§ = param1;
         this.§0Q§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[8§.length)
         {
            if(this.§[8§[_loc2_].isTexture())
            {
               this.§[8§[_loc2_].sprite.visible = !this.§#,§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§21§ = param1;
      }
      
      public function § C§() : Boolean
      {
         return this.§21§;
      }
      
      public function § r§() : int
      {
         return this.§%E§;
      }
      
      public function §&!!§() : int
      {
         return this.§1!O§;
      }
      
      public function §0!F§(param1:String) : §`Q§
      {
         var _loc3_:§`Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[8§.length)
         {
            _loc3_ = this.§[8§[_loc2_] as §`Q§;
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
