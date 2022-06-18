package §3d§
{
   import §!$§.§!!O§;
   import §&C§.§![§;
   import §&C§.§3!!§;
   import §&C§.§7!1§;
   import §&C§.§[b§;
   import §&C§.§`=§;
   import §+![§.Texture;
   import §0V§.§6d§;
   import §0V§.§;9§;
   import §0V§.§?0§;
   import §0V§.§`!O§;
   import §1!"§.§3!>§;
   import §3§.§4!!§;
   import §3§.Sprite;
   import §39§.§=R§;
   import §=!P§.b2PrismaticJoint;
   import §=!P§.b2WeldJoint;
   import §=?§.§-u§;
   import §=?§.§6!L§;
   import §=?§.§9n§;
   import §=?§.§>?§;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §^q§.b2Vec2;
   import §`n§.§6o§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@?§
   {
       
      
      protected var §;1§:Vector.<§20§>;
      
      protected var §+_§:int;
      
      public var §!q§:§`!O§;
      
      public var §+!!§:Vector.<§6!9§>;
      
      protected var §+h§:Sprite;
      
      protected var §`! §:Sprite;
      
      private var §9%§:Sprite;
      
      private var §+!b§:Sprite;
      
      private var §9!Z§:Sprite;
      
      protected var §1'§:Vector.<Texture>;
      
      protected var §1!%§:Vector.<§9n§>;
      
      protected var §!!A§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §=Q§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §#! §:Boolean = false;
      
      protected var §7!5§:Number;
      
      protected var §-U§:int;
      
      protected var §^!^§:Vector.<§6!L§>;
      
      protected var §?!V§:int = 0;
      
      private var §6Y§:int = 0;
      
      private var §8!F§:int = 0;
      
      private var §?!,§:int;
      
      private var §<!M§:Boolean = true;
      
      private var §8!U§:Boolean = true;
      
      public function §@?§(param1:§`!O§, param2:§=R§, param3:Sprite)
      {
         var _loc5_:§9n§ = null;
         var _loc6_:§>?§ = null;
         var _loc7_:§20§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§20§ = null;
         var _loc11_:§20§ = null;
         this.§;1§ = new Vector.<§20§>();
         this.§+!!§ = new Vector.<§6!9§>();
         this.§1'§ = new Vector.<Texture>();
         this.§7!5§ = this.§6d§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§^!^§ = new Vector.<§6!L§>();
         super();
         this.§!q§ = param1;
         this.§+_§ = 0;
         this.§`! § = param3;
         this.§`! §.§#U§ = false;
         this.§8!U§ = true;
         this.§<!M§ = true;
         this.§+h§ = new Sprite();
         this.§9%§ = new Sprite();
         this.§+!b§ = new Sprite();
         this.§9!Z§ = new Sprite();
         this.§`! §.addChild(this.§+h§);
         this.§`! §.addChild(this.§9%§);
         this.§`! §.addChild(this.§+!b§);
         this.§`! §.addChild(this.§9!Z§);
         this.addObject(§3!>§.§?!&§(param2.theme).§#i§,(this.§!q§.§-6§.§=V§ + this.§!q§.§-6§.§;R§) / 2,this.§!q§.§-6§.§+!Z§ + §?0§.§ !X§);
         this.§?!,§ = this.§;1§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§-5§)
         {
            _loc6_ = param2.§^i§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§'!1§();
         this.§[6§(true);
         this.§1!%§ = new Vector.<§9n§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§;6§)
         {
            this.§1!%§.push(§9n§.§%G§(param2.§6!C§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§1!%§)
         {
            _loc8_ = _loc5_.index1 + this.§?!,§;
            _loc9_ = _loc5_.index2 + this.§?!,§;
            if(_loc8_ < this.§;1§.length && _loc9_ < this.§;1§.length)
            {
               _loc10_ = this.§;1§[_loc8_];
               _loc11_ = this.§;1§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-u§.§'D§)
               {
                  _loc5_.§?o§ = this.§!q§.mLevelEngine.mWorld.§&u§(_loc5_.§[G§(_loc10_,_loc11_));
               }
               else
               {
                  this.§^!^§.push(new §6!L§(_loc8_,_loc9_,_loc5_.§;;§));
               }
            }
         }
      }
      
      protected function get §6d§() : Class
      {
         return §6d§;
      }
      
      public function get §8?§() : Sprite
      {
         return this.§9!Z§;
      }
      
      public function get §"b§() : Sprite
      {
         return this.§`! §;
      }
      
      public function get §=y§() : Sprite
      {
         return this.§+!b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§;1§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§;1§ = null;
         this.§^!^§ = null;
         if(this.§`! §)
         {
            this.§`! §.dispose();
            this.§`! § = null;
            this.§+h§ = null;
            this.§9!Z§ = null;
            this.§9%§ = null;
            this.§+!b§ = null;
         }
         while(this.§1'§.length > 0)
         {
            _loc1_ = this.§1'§.pop();
            this.§!q§.§1S§.§"r§(_loc1_);
         }
      }
      
      private function §[6§(param1:Boolean) : void
      {
         this.§+h§.visible = param1;
      }
      
      private function §'!1§() : void
      {
         var _loc3_:§20§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§4!!§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§20§> = new Vector.<§20§>();
         for each(_loc3_ in this.§;1§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§`! §);
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
            this.§"!^§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§<f§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§!q§.§1S§.§^X§(_loc10_);
            this.§1'§.push(_loc12_);
            (_loc13_ = new §4!!§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§+h§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §<f§(param1:Vector.<§20§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§20§ = null;
         var _loc11_:§![§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§+k§.shape).§'K§();
            _loc13_ = new Rectangle(_loc12_[0].x / §`!O§.§?!O§ * param6,_loc12_[0].y / §`!O§.§?!O§ * param6,(_loc12_[1].x - _loc12_[0].x) / §`!O§.§?!O§ * param6,(_loc12_[1].y - _loc12_[0].y) / §`!O§.§?!O§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§%"§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §"!^§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§!q§.background.§`!L§();
         var _loc5_:§6o§;
         if(_loc5_ = this.§!q§.§8D§.§&3§(_loc4_))
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
      
      public function §+!J§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §20§
      {
         var _loc10_:§3!!§ = §[b§.§9R§(param2);
         return new § 1§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §20§
      {
         var _loc10_:§20§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §>H§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §]!X§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §%!Y§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §>-§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §%!?§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §=!2§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §<!P§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §>!V§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §6!7§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§?!V§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §20§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§20§;
         if((_loc11_ = this.§<!#§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§<!M§;
            this.§;1§[this.§;1§.length] = _loc11_;
         }
         else
         {
            this.§;1§[this.§;1§.length] = _loc11_;
         }
         if(_loc11_ is §6!7§ && !_loc11_.§@^§())
         {
            this.§9%§.addChild(_loc10_);
            ++this.§?!V§;
         }
         else if(_loc11_.front || param9)
         {
            this.§9!Z§.addChild(_loc10_);
         }
         else
         {
            this.§+!b§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§!q§.§7!J§(_loc11_);
         }
         if(param6)
         {
            this.§!q§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §%G§(param1:int, param2:§20§, param3:§20§) : §9n§
      {
         var _loc6_:§9n§ = null;
         var _loc4_:int = this.§;1§.indexOf(param2) - this.§?!,§;
         var _loc5_:int = this.§;1§.indexOf(param3) - this.§?!,§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §9n§(§-u§.§9K§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§?o§ = this.§!q§.mLevelEngine.mWorld.§&u§(_loc6_.§[G§(param2,param3));
            this.§1!%§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §7]§(param1:§9n§) : void
      {
         if(!(param1.§?o§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§20§ = this.§^i§(param1.index1 + this.§?!,§);
         var _loc3_:§20§ = this.§^i§(param1.index2 + this.§?!,§);
         this.§!q§.mLevelEngine.mWorld.§55§(param1.§?o§);
         param1.§?o§ = this.§!q§.mLevelEngine.mWorld.§&u§(param1.§[G§(_loc2_,_loc3_));
      }
      
      public function §2H§(param1:§20§) : Vector.<§9n§>
      {
         var _loc4_:§9n§ = null;
         var _loc2_:Vector.<§9n§> = new Vector.<§9n§>();
         var _loc3_:int = this.§;1§.indexOf(param1) - this.§?!,§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§1!%§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §?l§() : Vector.<§9n§>
      {
         return this.§1!%§;
      }
      
      public function §9x§(param1:§20§) : void
      {
         var _loc2_:int = this.§;1§.indexOf(param1) - this.§?!,§;
         var _loc3_:int = this.§1!%§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§1!%§[_loc3_].index1 == _loc2_ || this.§1!%§[_loc3_].index2 == _loc2_)
            {
               this.§1!%§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §&D§(param1:§20§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§^!^§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§^!^§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§^!^§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"o§(param1:§20§, param2:§20§) : Boolean
      {
         var _loc3_:int = this.§;1§.indexOf(param1) - this.§?!,§;
         var _loc4_:int = this.§;1§.indexOf(param2) - this.§?!,§;
         var _loc5_:int = this.§1!%§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§1!%§[_loc5_].index1 == _loc3_ && this.§1!%§[_loc5_].index2 == _loc4_ || this.§1!%§[_loc5_].index1 == _loc4_ && this.§1!%§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §<!#§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §20§
      {
         var _loc10_:§20§ = null;
         var _loc11_:§3!!§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§8!F§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§+!J§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §[b§.§9R§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §[b§.§9R§(param2);
            }
            if(_loc11_.§,$§ == §3!!§.§'2§ || _loc11_.§,$§ == §3!!§.§,M§)
            {
               _loc10_ = new §8!=§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §20§(this,param1,this.§!q§.mLevelEngine.mWorld,this.§!q§,this.§+_§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§>G§();
         return _loc10_;
      }
      
      protected function §>G§() : String
      {
         var _loc3_:§20§ = null;
         var _loc1_:int = this.§;1§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§;1§)
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
      
      public function §6T§(param1:Number) : void
      {
         var _loc3_:§20§ = null;
         var _loc2_:int = this.§;1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;1§[_loc2_] as §20§;
            if(_loc3_)
            {
               if(_loc3_.§2>§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§&,§();
                  _loc3_.§0z§();
               }
            }
            _loc2_--;
         }
         this.§<q§(param1);
      }
      
      protected function §<q§(param1:Number) : void
      {
         this.§=!Y§(param1);
         this.§`8§();
      }
      
      private function §=!Y§(param1:Number) : void
      {
         var _loc4_:§6!L§ = null;
         var _loc5_:int = 0;
         var _loc6_:§20§ = null;
         if(this.§^!^§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§6!L§> = this.§^!^§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§#8§ && this.§^!^§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§do §("" + _loc5_))
                  {
                     this.§#z§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §`8§() : void
      {
         var _loc1_:§9n§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§1!%§)
         {
            if(_loc1_.type == §-u§.§@1§ && _loc1_.§"2§)
            {
               _loc2_ = (_loc1_.§?o§ as b2PrismaticJoint).§[,§();
               _loc3_ = (_loc1_.§?o§ as b2PrismaticJoint).§2!V§();
               if(_loc1_.§6!D§ && _loc1_.§1;§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§?o§ as b2PrismaticJoint).§==§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§20§> = null) : void
      {
         this.§+!!§.push(§6!9§.§"K§(param1,param2,param3,param4));
         §!!O§.§<D§("TntExplosions","ChannelExplosions");
      }
      
      public function §!![§(param1:Number, param2:Number) : int
      {
         var _loc4_:§20§ = null;
         var _loc3_:int = this.§;1§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;1§[_loc3_])
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
      
      public function §>C§(param1:Number, param2:Number) : §20§
      {
         var _loc4_:§20§ = null;
         var _loc3_:int = this.§;1§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;1§[_loc3_])
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
      
      public function §[D§(param1:Number, param2:Number) : Vector.<§20§>
      {
         var _loc5_:§20§ = null;
         var _loc3_:Vector.<§20§> = new Vector.<§20§>();
         var _loc4_:int = this.§;1§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§;1§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §^i§(param1:int) : §20§
      {
         return this.§;1§[param1];
      }
      
      public function §?w§(param1:Number, param2:Number) : void
      {
         var _loc4_:§20§ = null;
         var _loc3_:int = this.§;1§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§;1§[_loc3_] as §20§).§?w§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §+!+§(param1:§20§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§20§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§2>§ == param1.§,!,§)
         {
            if(this.§7!5§ < this.§6d§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§7!5§ += param2 * this.§6d§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§=!,§().§`0§(param2 * this.§7!5§);
            this.§-U§ = 0;
         }
         else if(this.§-U§ == 0)
         {
            this.§-U§ = this.§!q§.§-!a§;
         }
         if(param1.§9!<§() || this.§+B§(param1) || this.§-U§ > 0 && this.§!q§.§-!a§ > this.§-U§ + this.§6d§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§6d§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§6d§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§6d§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §!!O§.§<D§("Mighty_Eagle_Selected_1","ChannelBird");
                  §!!O§.§<D§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§6d§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§=!,§().GetPosition().x - this.§6d§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§=!,§().GetPosition().y - this.§6d§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§6d§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§+B§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§6d§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§-U§ = 0;
                  _loc7_.§5!@§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §%!4§(param1:§20§, param2:Number) : Boolean
      {
         var _loc5_:§20§ = null;
         if(this.§6d§.MIGHTY_EAGLE_USE_SHADE && !this.§#! § && this.mMightyEagleTimer > this.§6d§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§#! § = true;
            this.§!q§.§@$§();
         }
         this.mMightyEagleTimer += param2;
         this.§!q§.particles.addParticle(§7!%§.§7,§,§"^§.§<!L§,§7!%§.§!w§,param1.§=!,§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§=!,§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§7!%§.§8k§(param1.§6O§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§1!-§(this.§6d§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§=Q§)
            {
               this.§=Q§ = false;
               this.§!q§.§'!H§();
               param1.§96§(§7!1§.§2!3§);
               this.mSardineCanAdded = false;
               param1.§5!@§.§0!A§ = true;
               param1.§5!@§.§?E§();
               for each(_loc5_ in this.§;1§)
               {
                  if(_loc5_ && _loc5_.§8! §())
                  {
                     _loc5_.§=!,§().SetAwake(true);
                     _loc5_.§=!,§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§]Y§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§;1§)
               {
                  if(_loc5_ && _loc5_.§8! §())
                  {
                     _loc5_.applyDamage(_loc5_.§,!,§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§=!,§().GetPosition().y >= -5.5;
            this.§=Q§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§5,§(param2,new Point(this.§6d§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§6d§.MIGHTY_EAGLE_Y_CHANGE),this.§6d§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §#!M§() : void
      {
         var _loc1_:§6!9§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§20§ = null;
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
         while(this.§+!!§.length > 0)
         {
            _loc1_ = this.§+!!§.shift();
            _loc2_ = _loc1_.§"!F§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§;1§)
            {
               if(!(_loc1_.§-v§ != null && _loc1_.§-v§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§=!,§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§=!,§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§"!F§)
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
                        _loc6_.§=!,§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§"J§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§1!Q§(_loc6_,_loc14_);
                  }
               }
            }
            this.§!q§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§"^§.§<!L§,§7!%§.§%<§,_loc3_,_loc4_,600,"",§7!%§.§%!§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§!q§.particles.addParticle(§7!%§.§<=§,§"^§.§<!L§,§7!%§.§!w§,_loc3_,_loc4_,_loc16_,"",§7!%§.§%!§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §1!Q§(param1:§20§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §7!%§.§9! §;
      }
      
      public function §`!7§(param1:Number) : void
      {
         var _loc2_:§20§ = null;
         var _loc3_:int = this.§;1§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§;1§[_loc3_];
            if(_loc2_.§[!7§())
            {
               if(this.§+!+§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§@^§())
            {
               this.§%!4§(_loc2_,param1);
            }
            else if(this.§+B§(_loc2_))
            {
               _loc2_.§96§(§7!1§.§=S§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§96§(§7!1§.§=S§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§#P§() || _loc2_.§ !L§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§#!M§();
      }
      
      private function §]Y§() : void
      {
         var _loc1_:§9n§ = null;
         for each(_loc1_ in this.§1!%§)
         {
            if(_loc1_.type != §-u§.§'D§)
            {
               this.§!q§.mLevelEngine.mWorld.§55§(_loc1_.§?o§);
            }
         }
      }
      
      public function §;!L§() : Boolean
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;1§.length)
         {
            _loc2_ = this.§;1§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §+B§(param1:§20§) : Boolean
      {
         if(param1 && param1.§+k§.§01§() != §`=§.§`!&§ && this.§!q§.§-6§.§3r§(param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§9n§ = null;
         var _loc7_:§6!L§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§20§;
         if((_loc5_ = this.§;1§[param1]).§8! §())
         {
            ++this.§6Y§;
         }
         else if(_loc5_.§#P§())
         {
            --this.§?!V§;
         }
         if(_loc5_ == this.§!q§.activeObject)
         {
            this.§!q§.activeObject = null;
         }
         if(param2)
         {
            this.§!q§.addScore(_loc5_.§+k§.score,§;9§.§1!8§,true,_loc5_.§=!,§().GetPosition().x,_loc5_.§=!,§().GetPosition().y - 3,§7!%§.§4B§(_loc5_.§6O§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§!q§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§`G§(_loc5_.sprite);
         this.§9x§(_loc5_);
         this.§&D§(_loc5_);
         for each(_loc6_ in this.§1!%§)
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
         for each(_loc7_ in this.§^!^§)
         {
            if(_loc7_.§&!Q§ == param1)
            {
               _loc7_.§#8§ = true;
            }
            if(_loc7_.§&!Q§ >= param1)
            {
               --_loc7_.§&!Q§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§;1§[param1] = null;
         this.§;1§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§20§, param2:§"^§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §`G§(param1:Sprite) : void
      {
         if(this.§+!b§.contains(param1))
         {
            this.§+!b§.removeChild(param1);
            return;
         }
         if(this.§9%§.contains(param1))
         {
            this.§9%§.removeChild(param1);
            return;
         }
         if(this.§+h§.contains(param1))
         {
            this.§+h§.removeChild(param1);
            return;
         }
         if(this.§9!Z§.contains(param1))
         {
            this.§9!Z§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§20§) : void
      {
         if(param1.§&!@§().toUpperCase() == "WHITE_EGG" || param1.§=4§())
         {
            if(param1.§6O§.toUpperCase() == §>-§.§>!H§)
            {
               this.addExplosions(§6!9§.§ !?§,param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§6!9§.§3!#§,param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y);
            }
         }
      }
      
      public function §#z§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§;1§.indexOf(param1),param2,param3,param4);
      }
      
      public function §0F§(param1:Number, param2:Number) : void
      {
         this.§`! §.x = -param1;
         this.§`! §.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§20§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;1§.length)
         {
            _loc3_ = this.§;1§[_loc2_] as §20§;
            if(_loc3_ && _loc3_.§8! §() && _loc3_.§2>§ > 0)
            {
               if(!param1 || _loc3_.§5!@§.mTryToBlink <= 0 && _loc3_.§5!@§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@!`§(param1:Boolean = false) : int
      {
         var _loc4_:§20§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§;1§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;1§[_loc3_] as §20§) && _loc4_.§8! §() && _loc4_.§2>§ > 0)
            {
               if(!param1 || _loc4_.§5!@§.mTryToBlink <= 0 && _loc4_.§5!@§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §+[§() : int
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;1§)
         {
            if(_loc2_ && (_loc2_.§"!7§() || _loc2_.§0!;§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §?Y§() : int
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;1§)
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
         var _loc3_:§20§ = null;
         var _loc2_:int = this.§;1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;1§[_loc2_];
            if(_loc3_ && _loc3_.§8! §() && _loc3_.§2>§ > 0)
            {
               _loc3_.§5!@§.mTryToScream = §,Q§.§<!&§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §1B§() : Boolean
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = this.§;1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;1§[_loc1_] as §20§;
            if(_loc2_ && _loc2_.§#P§() && _loc2_.§2>§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = this.§;1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;1§[_loc1_] as §20§;
            if(_loc2_ && _loc2_.§2>§ > 0 && _loc2_.§,$§ != §3!!§.§0!Y§)
            {
               if(_loc2_.§[!,§() && !_loc2_.§9!<§())
               {
                  return false;
               }
               if(_loc2_.§#P§() && _loc2_.§2>§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!y§(param1:Boolean = false) : §20§
      {
         var _loc5_:int = 0;
         var _loc6_:§20§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§;1§.length;
         var _loc3_:int = 1 + Math.random() * this.§@!`§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§;1§[_loc5_]) && _loc6_.§8! §() && _loc6_.§2>§ > 0)
               {
                  if(!param1 || _loc6_.§5!@§.mTryToBlink <= 0 && _loc6_.§5!@§.mTryToScream <= 0)
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
      
      public function §^!&§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§;1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§;1§[_loc2_] as §20§).§+k§.score;
            if((this.§;1§[_loc2_] as §20§).§[!,§())
            {
               _loc1_ += §`!O§.§50§.getValue() * int((this.§;1§[_loc2_] as §20§).§,!,§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§!q§.slingshot.§^!&§());
      }
      
      public function §,,§(param1:§20§, param2:§20§) : Boolean
      {
         if(param1.§#P§() && param2.§#P§())
         {
            return true;
         }
         if(!param1.§+!0§() && !param2.§+!0§())
         {
            return true;
         }
         return false;
      }
      
      public function §?!N§() : void
      {
         this.mSardineCanAdded = true;
         this.§?!V§ = 0;
      }
      
      public function objectCollision(param1:§20§, param2:§20§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§@^§() || param2.§8! §())
            {
               param2.applyDamage(param2.§,!,§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§@^§() || param1.§8! §())
            {
               param1.applyDamage(param1.§,!,§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§6d§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§[!7§() || param2.§[!7§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§,,§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§-M§(param2.§&!@§());
         var _loc5_:Number = param1.§%!=§(param2.§&!@§());
         var _loc6_:Number = param2.§-M§(param1.§&!@§());
         var _loc7_:Number = param2.§%!=§(param1.§&!@§());
         var _loc8_:Number = param1.§=!,§().GetMass() * param1.§=!,§().GetLinearVelocity().x - param2.§=!,§().GetMass() * param2.§=!,§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§=!,§().GetMass() * param1.§=!,§().GetLinearVelocity().y - param2.§=!,§().GetMass() * param2.§=!,§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§2>§);
         var _loc14_:Number = Math.max(0,param2.§2>§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§#P§(),_loc14_ == param2.§,!,§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§#P§(),_loc13_ == param1.§,!,§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§#!$§(new b2Vec2(param2.§=!,§().GetLinearVelocity().x * _loc18_,param2.§=!,§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§#!$§(new b2Vec2(param1.§=!,§().GetLinearVelocity().x * _loc19_,param1.§=!,§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §-y§() : void
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = this.§;1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;1§[_loc1_] as §20§;
            if(_loc2_ != null && _loc2_.§8! §())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2!%§() : void
      {
         var _loc2_:§20§ = null;
         var _loc1_:int = this.§;1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;1§[_loc1_] as §20§;
            if(_loc2_ != null && _loc2_.§=4§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §8>§() : int
      {
         return this.§;1§.length;
      }
      
      public function §>!B§(param1:§=R§) : void
      {
         var _loc4_:§20§ = null;
         var _loc5_:§>?§ = null;
         var _loc6_:§-u§ = null;
         var _loc7_:§9n§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;1§.length)
         {
            if(!(_loc4_ = this.§;1§[_loc2_]).isGround())
            {
               (_loc5_ = new §>?§()).angle = _loc4_.§%"§();
               _loc5_.id = _loc4_.§6O§;
               _loc5_.x = _loc4_.§=!,§().GetPosition().x;
               _loc5_.y = _loc4_.§=!,§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§1!%§.length)
         {
            _loc7_ = this.§1!%§[_loc3_];
            _loc6_ = new §-u§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!&§,_loc7_.§6!D§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§1;§,_loc7_.motorSpeed,_loc7_.§"2§,_loc7_.maxTorque);
            param1.§7C§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §;!#§() : void
      {
         var _loc1_:int = 0;
         while(this.§;1§.length > _loc1_)
         {
            if(this.§;1§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§#z§(this.§;1§[_loc1_]);
            }
         }
      }
      
      public function §4k§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§;1§.length)
         {
            if(this.§;1§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§;1§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§<!M§ = param1;
         this.§[6§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;1§.length)
         {
            if(this.§;1§[_loc2_].isTexture())
            {
               this.§;1§[_loc2_].sprite.visible = !this.§<!M§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§8!U§ = param1;
      }
      
      public function §<N§() : Boolean
      {
         return this.§8!U§;
      }
      
      public function §>R§() : int
      {
         return this.§8!F§;
      }
      
      public function §`S§() : int
      {
         return this.§6Y§;
      }
      
      public function §do §(param1:String) : §20§
      {
         var _loc3_:§20§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;1§.length)
         {
            _loc3_ = this.§;1§[_loc2_] as §20§;
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
