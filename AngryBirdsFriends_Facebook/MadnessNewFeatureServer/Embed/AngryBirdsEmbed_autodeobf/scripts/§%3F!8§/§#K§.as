package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §#?§.§^@§;
   import §+[§.§%G§;
   import §1!K§.§==§;
   import §21§.Texture;
   import §2E§.§%-§;
   import §2E§.§5!8§;
   import §2E§.§96§;
   import §2E§.§]B§;
   import §2E§.§`u§;
   import §46§.§!!N§;
   import §46§.§&"§;
   import §46§.§+!$§;
   import §46§.§5!N§;
   import §90§.§8S§;
   import §90§.Sprite;
   import §?j§.§9?§;
   import §`!4§.§6l§;
   import §`!4§.§=Z§;
   import §`!4§.§[O§;
   import §`!4§.§[o§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#K§
   {
       
      
      protected var §!%§:Vector.<§]f§>;
      
      protected var §+5§:int;
      
      public var §#J§:§6l§;
      
      public var §"[§:Vector.<§2-§>;
      
      protected var §0]§:Sprite;
      
      protected var §,o§:Sprite;
      
      private var §-!M§:Sprite;
      
      private var §`,§:Sprite;
      
      private var §&p§:Sprite;
      
      protected var §>!K§:Vector.<Texture>;
      
      protected var §0=§:Vector.<§&"§>;
      
      protected var §'n§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §2L§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §'h§:Boolean = false;
      
      protected var §0J§:Number;
      
      protected var §7W§:int;
      
      protected var §%§:Vector.<§!!N§>;
      
      protected var §`!N§:int = 0;
      
      private var §,'§:int = 0;
      
      private var §0!%§:int = 0;
      
      protected var §>!-§:int;
      
      private var §!O§:Boolean = true;
      
      private var §3l§:Boolean = true;
      
      public function §#K§(param1:§6l§, param2:§9?§, param3:Sprite)
      {
         var _loc5_:§&"§ = null;
         var _loc6_:§5!N§ = null;
         var _loc7_:§]f§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§]f§ = null;
         var _loc11_:§]f§ = null;
         this.§!%§ = new Vector.<§]f§>();
         this.§"[§ = new Vector.<§2-§>();
         this.§>!K§ = new Vector.<Texture>();
         this.§0J§ = this.§=Z§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§%§ = new Vector.<§!!N§>();
         super();
         this.§#J§ = param1;
         this.§+5§ = 0;
         this.§,o§ = param3;
         this.§,o§.§]u§ = false;
         this.§3l§ = true;
         this.§!O§ = true;
         this.§0]§ = new Sprite();
         this.§-!M§ = new Sprite();
         this.§`,§ = new Sprite();
         this.§&p§ = new Sprite();
         this.§,o§.addChild(this.§0]§);
         this.§,o§.addChild(this.§-!M§);
         this.§,o§.addChild(this.§`,§);
         this.§,o§.addChild(this.§&p§);
         this.addObject(§==§.§]R§(param2.theme).§8u§,(this.§#J§.§;f§.§&!0§ + this.§#J§.§;f§.§2!5§) / 2,this.§#J§.§;f§.§%!1§ + §[O§.§,!C§);
         this.§>!-§ = this.§!%§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§`!5§)
         {
            _loc6_ = param2.§?!N§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§return§();
         this.§9R§(true);
         this.§0=§ = new Vector.<§&"§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§&!K§)
         {
            this.§0=§.push(§&"§.§=!>§(param2.§-!!§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§0=§)
         {
            _loc8_ = _loc5_.index1 + this.§>!-§;
            _loc9_ = _loc5_.index2 + this.§>!-§;
            if(_loc8_ < this.§!%§.length && _loc9_ < this.§!%§.length)
            {
               _loc10_ = this.§!%§[_loc8_];
               _loc11_ = this.§!%§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §+!$§.§?!O§)
               {
                  _loc5_.§1V§ = this.§#J§.mLevelEngine.mWorld.CreateJoint(_loc5_.§4!B§(_loc10_,_loc11_));
               }
               else
               {
                  this.§%§.push(new §!!N§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§8X§));
               }
            }
         }
      }
      
      protected function get §=Z§() : Class
      {
         return §=Z§;
      }
      
      public function get §`X§() : Sprite
      {
         return this.§&p§;
      }
      
      public function get §-a§() : Sprite
      {
         return this.§,o§;
      }
      
      public function get §var§() : Sprite
      {
         return this.§`,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§!%§.length > 0)
         {
            this.§%!C§(0);
         }
         this.§!%§ = null;
         this.§%§ = null;
         if(this.§,o§)
         {
            this.§,o§.dispose();
            this.§,o§ = null;
            this.§0]§ = null;
            this.§&p§ = null;
            this.§-!M§ = null;
            this.§`,§ = null;
         }
         while(this.§>!K§.length > 0)
         {
            _loc1_ = this.§>!K§.pop();
            this.§#J§.textureManager.§;6§(_loc1_);
         }
      }
      
      private function §9R§(param1:Boolean) : void
      {
         this.§0]§.visible = param1;
      }
      
      private function §return§() : void
      {
         var _loc3_:§]f§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§8S§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§]f§> = new Vector.<§]f§>();
         for each(_loc3_ in this.§!%§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§,o§);
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
            this.§8_§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§8q§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§#J§.textureManager.§1!+§(_loc10_);
            this.§>!K§.push(_loc12_);
            (_loc13_ = new §8S§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§0]§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §8q§(param1:Vector.<§]f§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§]f§ = null;
         var _loc11_:§`u§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§7!#§.shape).§9;§();
            _loc13_ = new Rectangle(_loc12_[0].x / §6l§.§%!<§ * param6,_loc12_[0].y / §6l§.§%!<§ * param6,(_loc12_[1].x - _loc12_[0].x) / §6l§.§%!<§ * param6,(_loc12_[1].y - _loc12_[0].y) / §6l§.§%!<§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§+%§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §8_§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§#J§.background.§,7§();
         var _loc5_:§^@§;
         if(_loc5_ = this.§#J§.backgroundTextureManager.§>]§(_loc4_))
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
      
      public function §8L§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]f§
      {
         var _loc10_:§%-§ = §]B§.§1l§(param2);
         return new § !E§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §#C§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]f§
      {
         var _loc10_:§]f§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §3<§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §;W§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §4F§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §2@§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §0!4§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §+Z§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §+!?§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §>U§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §-!1§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§`!N§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §]f§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§]f§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§!O§;
            this.§!%§[this.§!%§.length] = _loc11_;
         }
         else
         {
            this.§!%§[this.§!%§.length] = _loc11_;
         }
         if(_loc11_ is §-!1§ && !_loc11_.§[!@§())
         {
            this.§-!M§.addChild(_loc10_);
            ++this.§`!N§;
         }
         else if(_loc11_.front || param9)
         {
            this.§&p§.addChild(_loc10_);
         }
         else
         {
            this.§`,§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§#J§.§98§(_loc11_);
         }
         if(param6)
         {
            this.§#J§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §=!>§(param1:int, param2:§]f§, param3:§]f§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§&"§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§!!N§ = null;
         var _loc15_:int = this.§!%§.indexOf(param2) - this.§>!-§;
         var _loc16_:int = this.§!%§.indexOf(param3) - this.§>!-§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §&"§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§0=§.push(_loc17_);
            _loc17_.§8X§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §+!$§.§?!O§)
            {
               _loc17_.§1V§ = this.§#J§.mLevelEngine.mWorld.CreateJoint(_loc17_.§4!B§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §!!N§(_loc18_,_loc19_,param12);
               this.§%§.push(_loc20_);
            }
         }
      }
      
      public function §=1§(param1:§&"§) : void
      {
         if(!(param1.§1V§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§]f§ = this.§?!N§(param1.index1 + this.§>!-§);
         var _loc3_:§]f§ = this.§?!N§(param1.index2 + this.§>!-§);
         this.§#J§.mLevelEngine.mWorld.DestroyJoint(param1.§1V§);
         param1.§1V§ = this.§#J§.mLevelEngine.mWorld.CreateJoint(param1.§4!B§(_loc2_,_loc3_));
      }
      
      public function §1L§(param1:§]f§) : Vector.<§&"§>
      {
         var _loc4_:§&"§ = null;
         var _loc2_:Vector.<§&"§> = new Vector.<§&"§>();
         var _loc3_:int = this.§!%§.indexOf(param1) - this.§>!-§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§0=§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §?1§() : Vector.<§&"§>
      {
         return this.§0=§;
      }
      
      public function §9X§(param1:§]f§) : void
      {
         var _loc2_:int = this.§!%§.indexOf(param1) - this.§>!-§;
         var _loc3_:int = this.§0=§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§0=§[_loc3_].index1 == _loc2_ || this.§0=§[_loc3_].index2 == _loc2_)
            {
               this.§0=§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §^c§(param1:§]f§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§%§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§%§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§%§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §3H§(param1:§]f§, param2:§]f§) : Boolean
      {
         var _loc3_:int = this.§!%§.indexOf(param1) - this.§>!-§;
         var _loc4_:int = this.§!%§.indexOf(param2) - this.§>!-§;
         var _loc5_:int = this.§0=§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§0=§[_loc5_].index1 == _loc3_ && this.§0=§[_loc5_].index2 == _loc4_ || this.§0=§[_loc5_].index1 == _loc4_ && this.§0=§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]f§
      {
         var _loc10_:§]f§ = null;
         var _loc11_:§%-§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§#C§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§0!%§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§8L§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §]B§.§1l§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §]B§.§1l§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§^s§ == §%-§.§^!9§ || _loc11_.§^s§ == §%-§.§6!5§)
            {
               _loc10_ = new §85§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §]f§(this,param1,this.§#J§.mLevelEngine.mWorld,this.§#J§,this.§+5§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§@C§();
         return _loc10_;
      }
      
      protected function §@C§() : String
      {
         var _loc3_:§]f§ = null;
         var _loc1_:int = this.§!%§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§!%§)
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
      
      public function §3^§(param1:Number) : void
      {
         var _loc3_:§]f§ = null;
         var _loc2_:int = this.§!%§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!%§[_loc2_] as §]f§;
            if(_loc3_)
            {
               if(_loc3_.§`]§ <= 0)
               {
                  this.§%!C§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4!@§();
                  _loc3_.§&R§();
               }
            }
            _loc2_--;
         }
         this.§9r§(param1);
      }
      
      protected function §9r§(param1:Number) : void
      {
         this.§]c§(param1);
         this.§0O§();
      }
      
      private function §]c§(param1:Number) : void
      {
         var _loc4_:§!!N§ = null;
         var _loc5_:int = 0;
         var _loc6_:§]f§ = null;
         if(this.§%§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§!!N§> = this.§%§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§>7§ && this.§%§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§%!@§("" + _loc5_))
                  {
                     this.§`d§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §0O§() : void
      {
         var _loc1_:§&"§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§0=§)
         {
            if(_loc1_.type == §+!$§.§2$§ || _loc1_.type == §+!$§.§`!D§ && _loc1_.§2K§)
            {
               if(_loc1_.§1V§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§1V§ as b2PrismaticJoint).GetJointTranslation();
                  _loc3_ = (_loc1_.§1V§ as b2PrismaticJoint).GetMotorSpeed();
               }
               else if(_loc1_.§1V§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§1V§ as b2RevoluteJoint).GetJointAngle();
                  _loc3_ = (_loc1_.§1V§ as b2RevoluteJoint).GetMotorSpeed();
               }
               if(_loc5_ = _loc1_.§+!A§ && _loc1_.§@!N§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§1V§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§]f§> = null) : void
      {
         this.§"[§.push(§2-§.createExplosion(param1,param2,param3,param4));
         §%G§.§48§("TntExplosions","ChannelExplosions");
      }
      
      public function §%y§(param1:Number, param2:Number) : int
      {
         var _loc4_:§]f§ = null;
         var _loc3_:int = this.§!%§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!%§[_loc3_])
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
      
      public function §!s§(param1:Number, param2:Number) : §]f§
      {
         var _loc4_:§]f§ = null;
         var _loc3_:int = this.§!%§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!%§[_loc3_])
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
      
      public function §37§(param1:Number, param2:Number) : Vector.<§]f§>
      {
         var _loc5_:§]f§ = null;
         var _loc3_:Vector.<§]f§> = new Vector.<§]f§>();
         var _loc4_:int = this.§!%§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§!%§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §?!N§(param1:int) : §]f§
      {
         return this.§!%§[param1];
      }
      
      public function §!!L§(param1:Number, param2:Number) : void
      {
         var _loc4_:§]f§ = null;
         var _loc3_:int = this.§!%§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§!%§[_loc3_] as §]f§).§!!L§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §3!O§(param1:§]f§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§]f§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§`]§ == param1.§+D§)
         {
            if(this.§0J§ < this.§=Z§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§0J§ += param2 * this.§=Z§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§<!9§().SetAngularVelocity(param2 * this.§0J§);
            this.§7W§ = 0;
         }
         else if(this.§7W§ == 0)
         {
            this.§7W§ = this.§#J§.§ 6§;
         }
         if(param1.§<!@§() || this.§ m§(param1) || this.§7W§ > 0 && this.§#J§.§ 6§ > this.§7W§ + this.§=Z§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§=Z§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§=Z§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§=Z§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §%G§.§48§("Mighty_Eagle_Selected_1","ChannelBird");
                  §%G§.§48§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§=Z§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§<!9§().GetPosition().x - this.§=Z§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§<!9§().GetPosition().y - this.§=Z§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§=Z§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§ m§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§=Z§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§7W§ = 0;
                  _loc7_.§2W§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §45§(param1:§]f§, param2:Number) : Boolean
      {
         var _loc5_:§]f§ = null;
         if(this.§=Z§.MIGHTY_EAGLE_USE_SHADE && !this.§'h§ && this.mMightyEagleTimer > this.§=Z§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§'h§ = true;
            this.§#J§.§>!D§();
         }
         this.mMightyEagleTimer += param2;
         this.§#J§.particles.§-!$§(§@!<§.§!;§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.§<!9§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§<!9§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§@!<§.getParticleMaterialFromEngineMaterial(param1.§4h§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§=!1§(this.§=Z§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§2L§)
            {
               this.§2L§ = false;
               this.§#J§.§ !C§();
               param1.§;o§(§96§.§'e§);
               this.mSardineCanAdded = false;
               param1.§2W§.§#!7§ = true;
               param1.§2W§.§+!;§();
               for each(_loc5_ in this.§!%§)
               {
                  if(_loc5_ && _loc5_.§%$§())
                  {
                     _loc5_.§<!9§().SetAwake(true);
                     _loc5_.§<!9§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+E§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§!%§)
               {
                  if(_loc5_ && _loc5_.§%$§())
                  {
                     _loc5_.applyDamage(_loc5_.§+D§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§<!9§().GetPosition().y >= -5.5;
            this.§2L§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§@-§(param2,new Point(this.§=Z§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§=Z§.MIGHTY_EAGLE_Y_CHANGE),this.§=Z§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §+-§() : void
      {
         var _loc1_:§2-§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§]f§ = null;
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
         while(this.§"[§.length > 0)
         {
            _loc1_ = this.§"[§.shift();
            _loc2_ = _loc1_.§`!>§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§!%§)
            {
               if(!(_loc1_.§!+§ != null && _loc1_.§!+§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§<!9§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§<!9§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§`!>§)
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
                        _loc6_.§<!9§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§super§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§'!9§(_loc6_,_loc14_);
                  }
               }
            }
            this.§#J§.particles.§-!$§(this.§3s§(_loc1_.type),§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.§5!,§,_loc3_,_loc4_,600,"",§@!<§.§=8§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§#J§.particles.§-!$§(§@!<§.§-5§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc3_,_loc4_,_loc16_,"",§@!<§.§=8§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §'!9§(param1:§]f§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §3s§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §@!<§.§;%§;
      }
      
      public function §!p§(param1:Number) : void
      {
         var _loc2_:§]f§ = null;
         var _loc3_:int = this.§!%§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!%§[_loc3_];
            if(_loc2_.§4B§())
            {
               if(this.§3!O§(_loc2_,param1))
               {
                  this.§%!C§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§[!@§())
            {
               this.§45§(_loc2_,param1);
            }
            else if(this.§ m§(_loc2_))
            {
               _loc2_.§;o§(§96§.§7l§);
               this.§%!C§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;o§(§96§.§7l§);
               this.§%!C§(_loc3_,false,true,true);
            }
            else if(_loc2_.§4!F§() || _loc2_.shouldUpdate())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§+-§();
      }
      
      private function §+E§() : void
      {
         var _loc1_:§&"§ = null;
         for each(_loc1_ in this.§0=§)
         {
            if(_loc1_.type != §+!$§.§?!O§)
            {
               this.§#J§.mLevelEngine.mWorld.DestroyJoint(_loc1_.§1V§);
            }
         }
      }
      
      public function §^!M§() : Boolean
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!%§.length)
         {
            _loc2_ = this.§!%§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function § m§(param1:§]f§) : Boolean
      {
         if(param1 && param1.§7!#§.get() != §5!8§.§&-§ && this.§#J§.§;f§.§^!N§(param1.§<!9§().GetPosition().x,param1.§<!9§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §%!C§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§&"§ = null;
         var _loc7_:§!!N§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§]f§;
         if((_loc5_ = this.§!%§[param1]).§%$§())
         {
            ++this.§,'§;
         }
         else if(_loc5_.§4!F§())
         {
            --this.§`!N§;
         }
         if(_loc5_ == this.§#J§.activeObject)
         {
            this.§#J§.activeObject = null;
         }
         if(param2 && _loc5_.§7!#§.score > 0)
         {
            this.§#J§.addScore(_loc5_.§7!#§.score,§[o§.§&8§,true,_loc5_.§<!9§().GetPosition().x,_loc5_.§<!9§().GetPosition().y - 3,§@!<§.§?§(_loc5_.§4h§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§#J§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§]!I§(_loc5_.sprite);
         this.§9X§(_loc5_);
         this.§^c§(_loc5_);
         for each(_loc6_ in this.§0=§)
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
         for each(_loc7_ in this.§%§)
         {
            if(_loc7_.§+N§ == param1)
            {
               _loc7_.§>7§ = true;
            }
            if(_loc7_.§+N§ >= param1)
            {
               --_loc7_.§+N§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§!%§[param1] = null;
         this.§!%§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§]f§, param2:§6!C§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §]!I§(param1:Sprite) : void
      {
         if(this.§`,§.contains(param1))
         {
            this.§`,§.removeChild(param1);
            return;
         }
         if(this.§-!M§.contains(param1))
         {
            this.§-!M§.removeChild(param1);
            return;
         }
         if(this.§0]§.contains(param1))
         {
            this.§0]§.removeChild(param1);
            return;
         }
         if(this.§&p§.contains(param1))
         {
            this.§&p§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§]f§) : void
      {
         if(param1.§?w§().toUpperCase() == "WHITE_EGG" || param1.§`!L§())
         {
            if(param1.§4h§.toUpperCase() == §2@§.§4! §)
            {
               this.addExplosions(§2-§.§9!K§,param1.§<!9§().GetPosition().x,param1.§<!9§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§2-§.§[^§,param1.§<!9§().GetPosition().x,param1.§<!9§().GetPosition().y);
            }
         }
      }
      
      public function §`d§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§%!C§(this.§!%§.indexOf(param1),param2,param3,param4);
      }
      
      public function §!!9§(param1:Number, param2:Number) : void
      {
         this.§,o§.x = -param1;
         this.§,o§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§]f§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!%§.length)
         {
            _loc3_ = this.§!%§[_loc2_] as §]f§;
            if(_loc3_ && _loc3_.§%$§() && _loc3_.§`]§ > 0)
            {
               if(!param1 || _loc3_.§2W§.mTryToBlink <= 0 && _loc3_.§2W§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9$§(param1:Boolean = false) : int
      {
         var _loc4_:§]f§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§!%§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!%§[_loc3_] as §]f§) && _loc4_.§%$§() && _loc4_.§`]§ > 0)
            {
               if(!param1 || _loc4_.§2W§.mTryToBlink <= 0 && _loc4_.§2W§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §=!J§() : int
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!%§)
         {
            if(_loc2_ && (_loc2_.§9'§() || _loc2_.§;! §()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function § !,§() : int
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!%§)
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
         var _loc3_:§]f§ = null;
         var _loc2_:int = this.§!%§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!%§[_loc2_];
            if(_loc3_ && _loc3_.§%$§() && _loc3_.§`]§ > 0)
            {
               _loc3_.§2W§.mTryToScream = §=0§.§<`§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §&!E§() : Boolean
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = this.§!%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!%§[_loc1_] as §]f§;
            if(_loc2_ && _loc2_.§4!F§() && _loc2_.§`]§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = this.§!%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!%§[_loc1_] as §]f§;
            if(_loc2_ && _loc2_.§`]§ > 0 && _loc2_.§^s§ != §%-§.§'8§)
            {
               if(_loc2_.§]!0§() && !_loc2_.§<!@§())
               {
                  return false;
               }
               if(_loc2_.§4!F§() && _loc2_.§`]§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §=$§(param1:Boolean = false) : §]f§
      {
         var _loc7_:§]f§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§!%§.length;
         var _loc3_:int = this.§9$§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§!%§[_loc6_] as §]f§) && _loc7_.§%$§() && _loc7_.§`]§ > 0)
            {
               if(!param1 || _loc7_.§2W§.mTryToBlink <= 0 && _loc7_.§2W§.mTryToScream <= 0)
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
      
      public function §+V§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§!%§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§!%§[_loc2_] as §]f§).§7!#§.score;
            if((this.§!%§[_loc2_] as §]f§).§]!0§())
            {
               _loc1_ += §6l§.§4!!§.getValue() * int((this.§!%§[_loc2_] as §]f§).§+D§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§#J§.slingshot.§+V§());
      }
      
      public function §%!L§(param1:§]f§, param2:§]f§) : Boolean
      {
         if(param2 is §;W§ && param1 is §;W§)
         {
            return true;
         }
         if(!param1.§4L§() && !param2.§4L§())
         {
            return true;
         }
         return false;
      }
      
      public function §6-§() : void
      {
         this.mSardineCanAdded = true;
         this.§`!N§ = 0;
      }
      
      public function objectCollision(param1:§]f§, param2:§]f§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§[!@§() || param2.§%$§())
            {
               param2.applyDamage(param2.§+D§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§[!@§() || param1.§%$§())
            {
               param1.applyDamage(param1.§+D§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§=Z§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§4B§() || param2.§4B§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§%!L§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§;§(param2.§?w§());
         var _loc5_:Number = param1.§!§(param2.§?w§());
         var _loc6_:Number = param2.§;§(param1.§?w§());
         var _loc7_:Number = param2.§!§(param1.§?w§());
         var _loc8_:Number = param1.§<!9§().GetMass() * param1.§<!9§().GetLinearVelocity().x - param2.§<!9§().GetMass() * param2.§<!9§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§<!9§().GetMass() * param1.§<!9§().GetLinearVelocity().y - param2.§<!9§().GetMass() * param2.§<!9§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§`]§);
         var _loc14_:Number = Math.max(0,param2.§`]§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§4!F§(),_loc14_ == param2.§+D§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§4!F§(),_loc13_ == param1.§+D§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§]Q§(new b2Vec2(param2.§<!9§().GetLinearVelocity().x * _loc18_,param2.§<!9§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§]Q§(new b2Vec2(param1.§<!9§().GetLinearVelocity().x * _loc19_,param1.§<!9§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §;[§(param1:§]f§, param2:§]f§) : void
      {
      }
      
      public function §^r§() : void
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = this.§!%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!%§[_loc1_] as §]f§;
            if(_loc2_ != null && _loc2_.§%$§())
            {
               this.§%!C§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §7!9§() : void
      {
         var _loc2_:§]f§ = null;
         var _loc1_:int = this.§!%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!%§[_loc1_] as §]f§;
            if(_loc2_ != null && _loc2_.§`!L§())
            {
               this.§%!C§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §+q§() : int
      {
         return this.§!%§.length;
      }
      
      public function §?o§(param1:§9?§) : void
      {
         var _loc2_:§]f§ = null;
         var _loc3_:§&"§ = null;
         var _loc4_:§5!N§ = null;
         var _loc5_:§+!$§ = null;
         for each(_loc2_ in this.§!%§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §5!N§()).angle = _loc2_.§+%§();
               _loc4_.id = _loc2_.§4h§;
               _loc4_.x = _loc2_.§<!9§().GetPosition().x;
               _loc4_.y = _loc2_.§<!9§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§0=§)
         {
            (_loc5_ = new §+!$§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§%K§,_loc3_.§+!A§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§@!N§,_loc3_.motorSpeed,_loc3_.§2K§,_loc3_.maxTorque)).§8X§ = _loc3_.§8X§;
            param1.§>!,§(_loc5_);
         }
      }
      
      public function §#!3§() : void
      {
         var _loc1_:int = 0;
         while(this.§!%§.length > _loc1_)
         {
            if(this.§!%§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§`d§(this.§!%§[_loc1_]);
            }
         }
      }
      
      public function §0-§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!%§.length)
         {
            if(this.§!%§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!%§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§!O§ = param1;
         this.§9R§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!%§.length)
         {
            if(this.§!%§[_loc2_].isTexture())
            {
               this.§!%§[_loc2_].sprite.visible = !this.§!O§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§3l§ = param1;
      }
      
      public function §[!;§() : Boolean
      {
         return this.§3l§;
      }
      
      public function §[y§() : int
      {
         return this.§0!%§;
      }
      
      public function §7!L§() : int
      {
         return this.§,'§;
      }
      
      public function §%!@§(param1:String) : §]f§
      {
         var _loc3_:§]f§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!%§.length)
         {
            _loc3_ = this.§!%§[_loc2_] as §]f§;
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
