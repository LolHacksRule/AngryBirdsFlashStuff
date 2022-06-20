package §'_§
{
   import §!"8§.b2Vec2;
   import §&g§.b2PrismaticJoint;
   import §&g§.b2WeldJoint;
   import §1k§.§%4§;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §3,§.§!" §;
   import §3,§.§+" §;
   import §3,§.§[!;§;
   import §3,§.§`a§;
   import §9!H§.§,;§;
   import §9!H§.§<!s§;
   import §9!H§.§`!f§;
   import §9!H§.§else§;
   import §<%§.§%;§;
   import §<%§.§9q§;
   import §<%§.§<`§;
   import §<%§.§=!D§;
   import §<%§.§[p§;
   import §<L§.Texture;
   import §?"<§.§?n§;
   import §[!z§.§!"=§;
   import §]&§.§-§;
   import §]&§.Sprite;
   import §`!$§.§?W§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!&§
   {
       
      
      protected var §,"!§:Vector.<§9V§>;
      
      protected var §+!1§:int;
      
      public var §0!J§:§[!;§;
      
      public var §"!3§:Vector.<§7!E§>;
      
      protected var §+!S§:Sprite;
      
      protected var §1N§:Sprite;
      
      private var §8"-§:Sprite;
      
      private var §'!E§:Sprite;
      
      private var §-i§:Sprite;
      
      protected var §@D§:Vector.<Texture>;
      
      protected var §!§:Vector.<§else§>;
      
      protected var §,!5§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §7j§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §^"3§:Boolean = false;
      
      protected var §-!>§:Number;
      
      protected var §@F§:int;
      
      protected var §6!F§:Vector.<§`!f§>;
      
      protected var §8""§:int = 0;
      
      private var §="+§:int = 0;
      
      private var §,!E§:int = 0;
      
      private var §`"0§:int;
      
      private var §0!%§:Boolean = true;
      
      private var §!"#§:Boolean = true;
      
      public function §=!&§(param1:§[!;§, param2:§!"=§, param3:Sprite)
      {
         var _loc5_:§else§ = null;
         var _loc6_:§<!s§ = null;
         var _loc7_:§9V§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§9V§ = null;
         var _loc11_:§9V§ = null;
         this.§,"!§ = new Vector.<§9V§>();
         this.§"!3§ = new Vector.<§7!E§>();
         this.§@D§ = new Vector.<Texture>();
         this.§-!>§ = this.§`a§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§6!F§ = new Vector.<§`!f§>();
         super();
         this.§0!J§ = param1;
         this.§+!1§ = 0;
         this.§1N§ = param3;
         this.§1N§.§3!5§ = false;
         this.§!"#§ = true;
         this.§0!%§ = true;
         this.§+!S§ = new Sprite();
         this.§8"-§ = new Sprite();
         this.§'!E§ = new Sprite();
         this.§-i§ = new Sprite();
         this.§1N§.addChild(this.§+!S§);
         this.§1N§.addChild(this.§8"-§);
         this.§1N§.addChild(this.§'!E§);
         this.§1N§.addChild(this.§-i§);
         this.addObject(§?W§.§=&§(param2.theme).§=!]§,(this.§0!J§.§1!>§.§2A§ + this.§0!J§.§1!>§.§-8§) / 2,this.§0!J§.§1!>§.§[_§ + §+" §.§9F§);
         this.§`"0§ = this.§,"!§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§%!o§)
         {
            _loc6_ = param2.§&J§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§%a§();
         this.§%!q§(true);
         this.§!§ = new Vector.<§else§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§,"4§)
         {
            this.§!§.push(§else§.§]!Y§(param2.§"";§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§!§)
         {
            _loc8_ = _loc5_.index1 + this.§`"0§;
            _loc9_ = _loc5_.index2 + this.§`"0§;
            if(_loc8_ < this.§,"!§.length && _loc9_ < this.§,"!§.length)
            {
               _loc10_ = this.§,"!§[_loc8_];
               _loc11_ = this.§,"!§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §,;§.§4f§)
               {
                  _loc5_.§["2§ = this.§0!J§.mLevelEngine.mWorld.§]"7§(_loc5_.§-e§(_loc10_,_loc11_));
               }
               else
               {
                  this.§6!F§.push(new §`!f§(_loc8_,_loc9_,_loc5_.§2o§));
               }
            }
         }
      }
      
      protected function get §`a§() : Class
      {
         return §`a§;
      }
      
      public function get §,!g§() : Sprite
      {
         return this.§-i§;
      }
      
      public function get §%!I§() : Sprite
      {
         return this.§1N§;
      }
      
      public function get §]J§() : Sprite
      {
         return this.§'!E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§,"!§.length > 0)
         {
            this.§5P§(0);
         }
         this.§,"!§ = null;
         this.§6!F§ = null;
         if(this.§1N§)
         {
            this.§1N§.dispose();
            this.§1N§ = null;
            this.§+!S§ = null;
            this.§-i§ = null;
            this.§8"-§ = null;
            this.§'!E§ = null;
         }
         while(this.§@D§.length > 0)
         {
            _loc1_ = this.§@D§.pop();
            this.§0!J§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §%!q§(param1:Boolean) : void
      {
         this.§+!S§.visible = param1;
      }
      
      private function §%a§() : void
      {
         var _loc3_:§9V§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§9V§> = new Vector.<§9V§>();
         for each(_loc3_ in this.§,"!§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§1N§);
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
            this.§6!a§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§2§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§0!J§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§@D§.push(_loc12_);
            (_loc13_ = new §-§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§+!S§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §2§(param1:Vector.<§9V§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§9V§ = null;
         var _loc11_:§=!D§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§98§.shape).§0e§();
            _loc13_ = new Rectangle(_loc12_[0].x / §[!;§.§4!O§ * param6,_loc12_[0].y / §[!;§.§4!O§ * param6,(_loc12_[1].x - _loc12_[0].x) / §[!;§.§4!O§ * param6,(_loc12_[1].y - _loc12_[0].y) / §[!;§.§4!O§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§8O§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §6!a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§0!J§.background.§,"8§();
         var _loc5_:§?n§;
         if(_loc5_ = this.§0!J§.backgroundTextureManager.§?!H§(_loc4_))
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
      
      public function §0!W§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9V§
      {
         var _loc10_:§<`§ = §%;§.§8!]§(param2);
         return new §<!3§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §`!Y§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9V§
      {
         var _loc10_:§9V§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §2j§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §"!;§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §<!4§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §,"=§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §8!a§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §',§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §@!P§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §0a§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §5!P§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§8""§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9V§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§9V§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§0!%§;
            this.§,"!§[this.§,"!§.length] = _loc11_;
         }
         else
         {
            this.§,"!§[this.§,"!§.length] = _loc11_;
         }
         if(_loc11_ is §5!P§ && !_loc11_.§!m§())
         {
            this.§8"-§.addChild(_loc10_);
            ++this.§8""§;
         }
         else if(_loc11_.front || param9)
         {
            this.§-i§.addChild(_loc10_);
         }
         else
         {
            this.§'!E§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§0!J§.§`s§(_loc11_);
         }
         if(param6)
         {
            this.§0!J§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §]!Y§(param1:int, param2:§9V§, param3:§9V§) : §else§
      {
         var _loc6_:§else§ = null;
         var _loc4_:int = this.§,"!§.indexOf(param2) - this.§`"0§;
         var _loc5_:int = this.§,"!§.indexOf(param3) - this.§`"0§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §else§(§,;§.§,!-§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§["2§ = this.§0!J§.mLevelEngine.mWorld.§]"7§(_loc6_.§-e§(param2,param3));
            this.§!§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §&f§(param1:§else§) : void
      {
         if(!(param1.§["2§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§9V§ = this.§&J§(param1.index1 + this.§`"0§);
         var _loc3_:§9V§ = this.§&J§(param1.index2 + this.§`"0§);
         this.§0!J§.mLevelEngine.mWorld.§5e§(param1.§["2§);
         param1.§["2§ = this.§0!J§.mLevelEngine.mWorld.§]"7§(param1.§-e§(_loc2_,_loc3_));
      }
      
      public function §^!L§(param1:§9V§) : Vector.<§else§>
      {
         var _loc4_:§else§ = null;
         var _loc2_:Vector.<§else§> = new Vector.<§else§>();
         var _loc3_:int = this.§,"!§.indexOf(param1) - this.§`"0§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§!§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §9!r§() : Vector.<§else§>
      {
         return this.§!§;
      }
      
      public function §4"A§(param1:§9V§) : void
      {
         var _loc2_:int = this.§,"!§.indexOf(param1) - this.§`"0§;
         var _loc3_:int = this.§!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§!§[_loc3_].index1 == _loc2_ || this.§!§[_loc3_].index2 == _loc2_)
            {
               this.§!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §6"0§(param1:§9V§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§6!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6!F§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§6!F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §8!C§(param1:§9V§, param2:§9V§) : Boolean
      {
         var _loc3_:int = this.§,"!§.indexOf(param1) - this.§`"0§;
         var _loc4_:int = this.§,"!§.indexOf(param2) - this.§`"0§;
         var _loc5_:int = this.§!§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§!§[_loc5_].index1 == _loc3_ && this.§!§[_loc5_].index2 == _loc4_ || this.§!§[_loc5_].index1 == _loc4_ && this.§!§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9V§
      {
         var _loc10_:§9V§ = null;
         var _loc11_:§<`§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§`!Y§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§,!E§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§0!W§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §%;§.§8!]§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §%;§.§8!]§(param2);
            }
            if(_loc11_.§;!D§ == §<`§.§+!l§ || _loc11_.§;!D§ == §<`§.§+!E§)
            {
               _loc10_ = new §+#§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §9V§(this,param1,this.§0!J§.mLevelEngine.mWorld,this.§0!J§,this.§+!1§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§ "-§();
         return _loc10_;
      }
      
      protected function § "-§() : String
      {
         var _loc3_:§9V§ = null;
         var _loc1_:int = this.§,"!§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§,"!§)
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
      
      public function §[!m§(param1:Number) : void
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = this.§,"!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,"!§[_loc2_] as §9V§;
            if(_loc3_)
            {
               if(_loc3_.§9"8§ <= 0)
               {
                  this.§5P§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§>"A§();
                  _loc3_.§""2§();
               }
            }
            _loc2_--;
         }
         this.§;!h§(param1);
      }
      
      protected function §;!h§(param1:Number) : void
      {
         this.§!!4§(param1);
         this.§^!!§();
      }
      
      private function §!!4§(param1:Number) : void
      {
         var _loc4_:§`!f§ = null;
         var _loc5_:int = 0;
         var _loc6_:§9V§ = null;
         if(this.§6!F§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§`!f§> = this.§6!F§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§<Q§ && this.§6!F§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§3!@§("" + _loc5_))
                  {
                     this.§%U§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §^!!§() : void
      {
         var _loc1_:§else§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§!§)
         {
            if(_loc1_.type == §,;§.§!<§ && _loc1_.§>!f§)
            {
               _loc2_ = (_loc1_.§["2§ as b2PrismaticJoint).§1"9§();
               _loc3_ = (_loc1_.§["2§ as b2PrismaticJoint).§<7§();
               if(_loc1_.§,]§ && _loc1_.§'"3§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§["2§ as b2PrismaticJoint).§1!?§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§"!3§.push(§7!E§.createExplosion(param1,param2,param3));
         §%4§.§>f§("TntExplosions","ChannelExplosions");
      }
      
      public function §6";§(param1:Number, param2:Number) : int
      {
         var _loc4_:§9V§ = null;
         var _loc3_:int = this.§,"!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,"!§[_loc3_])
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
      
      public function §9!;§(param1:Number, param2:Number) : §9V§
      {
         var _loc4_:§9V§ = null;
         var _loc3_:int = this.§,"!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,"!§[_loc3_])
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
      
      public function §-_§(param1:Number, param2:Number) : Vector.<§9V§>
      {
         var _loc5_:§9V§ = null;
         var _loc3_:Vector.<§9V§> = new Vector.<§9V§>();
         var _loc4_:int = this.§,"!§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§,"!§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §&J§(param1:int) : §9V§
      {
         return this.§,"!§[param1];
      }
      
      public function §-!z§(param1:Number, param2:Number) : void
      {
         var _loc4_:§9V§ = null;
         var _loc3_:int = this.§,"!§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§,"!§[_loc3_] as §9V§).§-!z§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §;!f§(param1:§9V§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§9V§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§9"8§ == param1.§ i§)
         {
            if(this.§-!>§ < this.§`a§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§-!>§ += param2 * this.§`a§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§2"7§().§ ! §(param2 * this.§-!>§);
            this.§@F§ = 0;
         }
         else if(this.§@F§ == 0)
         {
            this.§@F§ = this.§0!J§.§-!3§;
         }
         if(param1.§'1§() || this.§'!p§(param1) || this.§@F§ > 0 && this.§0!J§.§-!3§ > this.§@F§ + this.§`a§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§`a§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§`a§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§`a§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §%4§.§>f§("Mighty_Eagle_Selected_1","ChannelBird");
                  §%4§.§>f§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§`a§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§2"7§().GetPosition().x - this.§`a§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§2"7§().GetPosition().y - this.§`a§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§`a§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§'!p§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§`a§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§@F§ = 0;
                  _loc7_.§@!'§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §'L§(param1:§9V§, param2:Number) : Boolean
      {
         var _loc5_:§9V§ = null;
         if(this.§`a§.MIGHTY_EAGLE_USE_SHADE && !this.§^"3§ && this.mMightyEagleTimer > this.§`a§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§^"3§ = true;
            this.§0!J§.§8o§();
         }
         this.mMightyEagleTimer += param2;
         this.§0!J§.particles.§&!J§(§5!$§.§2M§,§,>§.§^!<§,§5!$§.§2!&§,param1.§2"7§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§2"7§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§5!$§.§9!Z§(param1.§+%§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§[!Q§(this.§`a§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§7j§)
            {
               this.§7j§ = false;
               this.§0!J§.§;!R§();
               param1.§-H§(§9q§.§9g§);
               this.mSardineCanAdded = false;
               param1.§@!'§.§9!>§ = true;
               param1.§@!'§.§;!e§();
               for each(_loc5_ in this.§,"!§)
               {
                  if(_loc5_ && _loc5_.§=!4§())
                  {
                     _loc5_.§2"7§().SetAwake(true);
                     _loc5_.§2"7§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§7"8§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§,"!§)
               {
                  if(_loc5_ && _loc5_.§=!4§())
                  {
                     _loc5_.applyDamage(_loc5_.§ i§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§2"7§().GetPosition().y >= -5.5;
            this.§7j§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§%"5§(param2,new Point(this.§`a§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§`a§.MIGHTY_EAGLE_Y_CHANGE),this.§`a§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §2!]§() : void
      {
         var _loc1_:§7!E§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§9V§ = null;
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
         while(this.§"!3§.length > 0)
         {
            _loc1_ = this.§"!3§.shift();
            _loc2_ = _loc1_.§&!E§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§,"!§)
            {
               _loc8_ = _loc6_.§2"7§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§2"7§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§&!E§)
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
                     _loc6_.§2"7§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§2"3§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.applyExplosionDamage(_loc6_,_loc14_);
               }
            }
            this.§0!J§.particles.§&!J§(this.§[&§(_loc1_.type),§,>§.§^!<§,§5!$§.§3!G§,_loc3_,_loc4_,600,"",§5!$§.§8&§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§0!J§.particles.§&!J§(§5!$§.§8@§,§,>§.§^!<§,§5!$§.§2!&§,_loc3_,_loc4_,_loc16_,"",§5!$§.§8&§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function applyExplosionDamage(param1:§9V§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §[&§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §5!$§.§'"B§;
      }
      
      public function §@!B§(param1:Number) : void
      {
         var _loc2_:§9V§ = null;
         var _loc3_:int = this.§,"!§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,"!§[_loc3_];
            if(_loc2_.§;Y§())
            {
               if(this.§;!f§(_loc2_,param1))
               {
                  this.§5P§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§!m§())
            {
               this.§'L§(_loc2_,param1);
            }
            else if(this.§'!p§(_loc2_))
            {
               _loc2_.§-H§(§9q§.§>!k§);
               this.§5P§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§-H§(§9q§.§>!k§);
               this.§5P§(_loc3_,false,true,true);
            }
            else if(_loc2_.§]"B§() || _loc2_.§@!J§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§2!]§();
      }
      
      private function §7"8§() : void
      {
         var _loc1_:§else§ = null;
         for each(_loc1_ in this.§!§)
         {
            if(_loc1_.type != §,;§.§4f§)
            {
               this.§0!J§.mLevelEngine.mWorld.§5e§(_loc1_.§["2§);
            }
         }
      }
      
      public function §%" §() : Boolean
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,"!§.length)
         {
            _loc2_ = this.§,"!§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §'!p§(param1:§9V§) : Boolean
      {
         if(param1 && param1.§98§.§?<§() != §[p§.§#w§ && this.§0!J§.§1!>§.§`R§(param1.§2"7§().GetPosition().x,param1.§2"7§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §5P§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§else§ = null;
         var _loc7_:§`!f§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9V§;
         if((_loc5_ = this.§,"!§[param1]).§=!4§())
         {
            ++this.§="+§;
         }
         else if(_loc5_.§]"B§())
         {
            --this.§8""§;
         }
         if(_loc5_ == this.§0!J§.activeObject)
         {
            this.§0!J§.activeObject = null;
         }
         if(param2)
         {
            this.§0!J§.addScore(_loc5_.§98§.score,§!" §.§99§,true,_loc5_.§2"7§().GetPosition().x,_loc5_.§2"7§().GetPosition().y - 3,§5!$§.§=!H§(_loc5_.§+%§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§0!J§.particles);
         }
         if(param4)
         {
            this.§6!Y§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§'M§(_loc5_.sprite);
         this.§4"A§(_loc5_);
         this.§6"0§(_loc5_);
         for each(_loc6_ in this.§!§)
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
         for each(_loc7_ in this.§6!F§)
         {
            if(_loc7_.§=!d§ == param1)
            {
               _loc7_.§<Q§ = true;
            }
            if(_loc7_.§=!d§ >= param1)
            {
               --_loc7_.§=!d§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§,"!§[param1] = null;
         this.§,"!§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§9V§, param2:§,>§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §'M§(param1:Sprite) : void
      {
         if(this.§'!E§.contains(param1))
         {
            this.§'!E§.removeChild(param1);
            return;
         }
         if(this.§8"-§.contains(param1))
         {
            this.§8"-§.removeChild(param1);
            return;
         }
         if(this.§+!S§.contains(param1))
         {
            this.§+!S§.removeChild(param1);
            return;
         }
         if(this.§-i§.contains(param1))
         {
            this.§-i§.removeChild(param1);
            return;
         }
      }
      
      protected function §6!Y§(param1:§9V§) : void
      {
         if(param1.§'!1§().toUpperCase() == "WHITE_EGG" || param1.§;!#§())
         {
            if(param1.§+%§.toUpperCase() == §,"=§.§2!d§)
            {
               this.addExplosions(§7!E§.§"!"§,param1.§2"7§().GetPosition().x,param1.§2"7§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§7!E§.§8d§,param1.§2"7§().GetPosition().x,param1.§2"7§().GetPosition().y);
            }
         }
      }
      
      public function §%U§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§5P§(this.§,"!§.indexOf(param1),param2,param3,param4);
      }
      
      public function §6!>§(param1:Number, param2:Number) : void
      {
         this.§1N§.x = -param1;
         this.§1N§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,"!§.length)
         {
            _loc3_ = this.§,"!§[_loc2_] as §9V§;
            if(_loc3_ && _loc3_.§=!4§() && _loc3_.§9"8§ > 0)
            {
               if(!param1 || _loc3_.§@!'§.mTryToBlink <= 0 && _loc3_.§@!'§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^"!§(param1:Boolean = false) : int
      {
         var _loc4_:§9V§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,"!§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,"!§[_loc3_] as §9V§) && _loc4_.§=!4§() && _loc4_.§9"8§ > 0)
            {
               if(!param1 || _loc4_.§@!'§.mTryToBlink <= 0 && _loc4_.§@!'§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §6!D§() : int
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,"!§)
         {
            if(_loc2_ && (_loc2_.§=J§() || _loc2_.§`!]§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §[!M§() : int
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,"!§)
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
         var _loc3_:§9V§ = null;
         var _loc2_:int = this.§,"!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,"!§[_loc2_];
            if(_loc3_ && _loc3_.§=!4§() && _loc3_.§9"8§ > 0)
            {
               _loc3_.§@!'§.mTryToScream = §5!;§.§9!8§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §[I§() : Boolean
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = this.§,"!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,"!§[_loc1_] as §9V§;
            if(_loc2_ && _loc2_.§]"B§() && _loc2_.§9"8§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = this.§,"!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,"!§[_loc1_] as §9V§;
            if(_loc2_ && _loc2_.§9"8§ > 0 && _loc2_.§;!D§ != §<`§.§+!5§)
            {
               if(_loc2_.§try§() && !_loc2_.§'1§())
               {
                  return false;
               }
               if(_loc2_.§]"B§() && _loc2_.§9"8§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §,!7§(param1:Boolean = false) : §9V§
      {
         var _loc5_:int = 0;
         var _loc6_:§9V§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§,"!§.length;
         var _loc3_:int = 1 + Math.random() * this.§^"!§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§,"!§[_loc5_]) && _loc6_.§=!4§() && _loc6_.§9"8§ > 0)
               {
                  if(!param1 || _loc6_.§@!'§.mTryToBlink <= 0 && _loc6_.§@!'§.mTryToScream <= 0)
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
      
      public function § J§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§,"!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§,"!§[_loc2_] as §9V§).§98§.score;
            if((this.§,"!§[_loc2_] as §9V§).§try§())
            {
               _loc1_ += §[!;§.§%"§.getValue() * int((this.§,"!§[_loc2_] as §9V§).§ i§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§0!J§.slingshot.§ J§());
      }
      
      public function §03§(param1:§9V§, param2:§9V§) : Boolean
      {
         if(param1.§]"B§() && param2.§]"B§())
         {
            return true;
         }
         if(!param1.§9!1§() && !param2.§9!1§())
         {
            return true;
         }
         return false;
      }
      
      public function §^W§() : void
      {
         this.mSardineCanAdded = true;
         this.§8""§ = 0;
      }
      
      public function §?x§(param1:§9V§, param2:§9V§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§!m§() || param2.§=!4§())
            {
               param2.applyDamage(param2.§ i§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§!m§() || param1.§=!4§())
            {
               param1.applyDamage(param1.§ i§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§`a§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§;Y§() || param2.§;Y§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§03§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§4!]§(param2.§'!1§());
         var _loc5_:Number = param1.§while§(param2.§'!1§());
         var _loc6_:Number = param2.§4!]§(param1.§'!1§());
         var _loc7_:Number = param2.§while§(param1.§'!1§());
         var _loc8_:Number = param1.§2"7§().GetMass() * param1.§2"7§().GetLinearVelocity().x - param2.§2"7§().GetMass() * param2.§2"7§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§2"7§().GetMass() * param1.§2"7§().GetLinearVelocity().y - param2.§2"7§().GetMass() * param2.§2"7§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§9"8§);
         var _loc14_:Number = Math.max(0,param2.§9"8§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§]"B§(),_loc14_ == param2.§ i§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§]"B§(),_loc13_ == param1.§ i§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§2!f§(new b2Vec2(param2.§2"7§().GetLinearVelocity().x * _loc18_,param2.§2"7§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§2!f§(new b2Vec2(param1.§2"7§().GetLinearVelocity().x * _loc19_,param1.§2"7§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=c§() : void
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = this.§,"!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,"!§[_loc1_] as §9V§;
            if(_loc2_ != null && _loc2_.§=!4§())
            {
               this.§5P§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §&!b§() : void
      {
         var _loc2_:§9V§ = null;
         var _loc1_:int = this.§,"!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,"!§[_loc1_] as §9V§;
            if(_loc2_ != null && _loc2_.§;!#§())
            {
               this.§5P§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §0!T§() : int
      {
         return this.§,"!§.length;
      }
      
      public function §5!k§(param1:§!"=§) : void
      {
         var _loc4_:§9V§ = null;
         var _loc5_:§<!s§ = null;
         var _loc6_:§,;§ = null;
         var _loc7_:§else§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,"!§.length)
         {
            if(!(_loc4_ = this.§,"!§[_loc2_]).isGround())
            {
               (_loc5_ = new §<!s§()).angle = _loc4_.§8O§();
               _loc5_.id = _loc4_.§+%§;
               _loc5_.x = _loc4_.§2"7§().GetPosition().x;
               _loc5_.y = _loc4_.§2"7§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!§.length)
         {
            _loc7_ = this.§!§[_loc3_];
            _loc6_ = new §,;§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§^'§,_loc7_.§,]§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§'"3§,_loc7_.motorSpeed,_loc7_.§>!f§,_loc7_.maxTorque);
            param1.§=!=§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §<J§() : void
      {
         var _loc1_:int = 0;
         while(this.§,"!§.length > _loc1_)
         {
            if(this.§,"!§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§%U§(this.§,"!§[_loc1_]);
            }
         }
      }
      
      public function §@k§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,"!§.length)
         {
            if(this.§,"!§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,"!§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§0!%§ = param1;
         this.§%!q§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,"!§.length)
         {
            if(this.§,"!§[_loc2_].isTexture())
            {
               this.§,"!§[_loc2_].sprite.visible = !this.§0!%§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§!"#§ = param1;
      }
      
      public function §!5§() : Boolean
      {
         return this.§!"#§;
      }
      
      public function §@q§() : int
      {
         return this.§,!E§;
      }
      
      public function §["-§() : int
      {
         return this.§="+§;
      }
      
      public function §3!@§(param1:String) : §9V§
      {
         var _loc3_:§9V§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,"!§.length)
         {
            _loc3_ = this.§,"!§[_loc2_] as §9V§;
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
