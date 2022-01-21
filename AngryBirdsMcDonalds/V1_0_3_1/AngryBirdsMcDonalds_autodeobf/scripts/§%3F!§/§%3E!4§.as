package §?!§
{
   import § !%§.§0!U§;
   import § 6§.§^;§;
   import §!4§.b2PrismaticJoint;
   import §!4§.b2WeldJoint;
   import §"$§.§ !,§;
   import §"$§.§!t§;
   import §"$§.§5!k§;
   import §"$§.§@v§;
   import §%!n§.§"+§;
   import §%!n§.§%X§;
   import §%!n§.§,Y§;
   import §%!n§.§7!+§;
   import §%!n§.§;%§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import §0,§.b2Vec2;
   import §3!@§.§ s§;
   import §3!@§.§'!0§;
   import §3!@§.§<!X§;
   import §3!@§.§?4§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   import §?!g§.§ !d§;
   import §finally§.§@z§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!4§
   {
       
      
      protected var § !i§:Vector.<§%o§>;
      
      protected var §<J§:int;
      
      public var mLevelMain:§ s§;
      
      public var §6!J§:Vector.<§5!$§>;
      
      protected var §5!2§:Sprite;
      
      protected var §@w§:Sprite;
      
      private var §!E§:Sprite;
      
      private var §=2§:Sprite;
      
      private var §5_§:Sprite;
      
      protected var §3a§:Vector.<Texture>;
      
      protected var §1`§:Vector.<§5!k§>;
      
      protected var §2D§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §>!7§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9L§:Boolean = false;
      
      protected var §<!=§:Number;
      
      protected var §#2§:int;
      
      protected var §2!>§:Vector.<§@v§>;
      
      protected var §5Z§:int = 0;
      
      private var §?>§:int = 0;
      
      private var §6X§:int = 0;
      
      private var §&W§:int;
      
      private var §"g§:Boolean = true;
      
      private var §8!C§:Boolean = true;
      
      public function §>!4§(param1:§ s§, param2:§@z§, param3:Sprite)
      {
         var _loc5_:§5!k§ = null;
         var _loc6_:§ !,§ = null;
         var _loc7_:§%o§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§%o§ = null;
         var _loc11_:§%o§ = null;
         this.§ !i§ = new Vector.<§%o§>();
         this.§6!J§ = new Vector.<§5!$§>();
         this.§3a§ = new Vector.<Texture>();
         this.§<!=§ = this.§'!0§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§2!>§ = new Vector.<§@v§>();
         super();
         this.mLevelMain = param1;
         this.§<J§ = 0;
         this.§@w§ = param3;
         this.§@w§.§8m§ = false;
         this.§8!C§ = true;
         this.§"g§ = true;
         this.§5!2§ = new Sprite();
         this.§!E§ = new Sprite();
         this.§=2§ = new Sprite();
         this.§5_§ = new Sprite();
         this.§@w§.addChild(this.§5!2§);
         this.§@w§.addChild(this.§!E§);
         this.§@w§.addChild(this.§=2§);
         this.§@w§.addChild(this.§5_§);
         this.§else §(§^;§.§%!F§(param2.theme).§<<§,(this.mLevelMain.§1c§.§>!E§ + this.mLevelMain.§1c§.§7! §) / 2,this.mLevelMain.§1c§.§"Z§ + §?4§.§;L§);
         this.§&W§ = this.§ !i§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§]4§)
         {
            _loc6_ = param2.§2h§(_loc4_);
            if(_loc7_ = this.§else §(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§%>§();
         this.§8"§(true);
         this.§1`§ = new Vector.<§5!k§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§@!U§)
         {
            this.§1`§.push(§5!k§.§5<§(param2.§"8§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§1`§)
         {
            _loc8_ = _loc5_.index1 + this.§&W§;
            _loc9_ = _loc5_.index2 + this.§&W§;
            if(_loc8_ < this.§ !i§.length && _loc9_ < this.§ !i§.length)
            {
               _loc10_ = this.§ !i§[_loc8_];
               _loc11_ = this.§ !i§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §!t§.§;!H§)
               {
                  _loc5_.§"v§ = this.mLevelMain.mLevelEngine.mWorld.§0"§(_loc5_.§4!B§(_loc10_,_loc11_));
               }
               else
               {
                  this.§2!>§.push(new §@v§(_loc8_,_loc9_,_loc5_.§5m§));
               }
            }
         }
      }
      
      protected function get §'!0§() : Class
      {
         return §'!0§;
      }
      
      public function get §38§() : Sprite
      {
         return this.§5_§;
      }
      
      public function get §4!?§() : Sprite
      {
         return this.§@w§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ !i§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§ !i§ = null;
         this.§2!>§ = null;
         if(this.§@w§)
         {
            this.§@w§.dispose();
            this.§@w§ = null;
            this.§5!2§ = null;
            this.§5_§ = null;
            this.§!E§ = null;
            this.§=2§ = null;
         }
         while(this.§3a§.length > 0)
         {
            _loc1_ = this.§3a§.pop();
            this.mLevelMain.textureManager.§!Z§(_loc1_);
         }
      }
      
      private function §8"§(param1:Boolean) : void
      {
         this.§5!2§.visible = param1;
      }
      
      private function §%>§() : void
      {
         var _loc3_:§%o§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%!a§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§%o§> = new Vector.<§%o§>();
         for each(_loc3_ in this.§ !i§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§@w§);
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
            this.§`!n§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§=!L§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§3a§.push(_loc12_);
            (_loc13_ = new §%!a§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§5!2§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §=!L§(param1:Vector.<§%o§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§%o§ = null;
         var _loc11_:§%X§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§ use§.shape).§&!S§();
            _loc13_ = new Rectangle(_loc12_[0].x / § s§.§<!h§ * param6,_loc12_[0].y / § s§.§<!h§ * param6,(_loc12_[1].x - _loc12_[0].x) / § s§.§<!h§ * param6,(_loc12_[1].y - _loc12_[0].y) / § s§.§<!h§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§4!F§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §`!n§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§`!@§();
         var _loc5_:§0!U§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§1m§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%o§
      {
         var _loc10_:§%o§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §8!_§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §'!S§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §07§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §4Y§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §!p§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §>P§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,Q§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §]!%§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§5Z§ > 0;
      }
      
      public function §else §(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §%o§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§%o§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§"g§;
            this.§ !i§[this.§ !i§.length] = _loc11_;
         }
         else
         {
            this.§ !i§[this.§ !i§.length] = _loc11_;
         }
         if(_loc11_ is §]!%§ && !_loc11_.§9!]§())
         {
            this.§!E§.addChild(_loc10_);
            ++this.§5Z§;
         }
         else if(_loc11_.front || param9)
         {
            this.§5_§.addChild(_loc10_);
         }
         else
         {
            this.§=2§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§%5§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §5<§(param1:int, param2:§%o§, param3:§%o§) : §5!k§
      {
         var _loc6_:§5!k§ = null;
         var _loc4_:int = this.§ !i§.indexOf(param2) - this.§&W§;
         var _loc5_:int = this.§ !i§.indexOf(param3) - this.§&W§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §5!k§(§!t§.§][§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§"v§ = this.mLevelMain.mLevelEngine.mWorld.§0"§(_loc6_.§4!B§(param2,param3));
            this.§1`§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §]!g§(param1:§5!k§) : void
      {
         if(!(param1.§"v§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§%o§ = this.§2h§(param1.index1 + this.§&W§);
         var _loc3_:§%o§ = this.§2h§(param1.index2 + this.§&W§);
         this.mLevelMain.mLevelEngine.mWorld.§%G§(param1.§"v§);
         param1.§"v§ = this.mLevelMain.mLevelEngine.mWorld.§0"§(param1.§4!B§(_loc2_,_loc3_));
      }
      
      public function §6!<§(param1:§%o§) : Vector.<§5!k§>
      {
         var _loc4_:§5!k§ = null;
         var _loc2_:Vector.<§5!k§> = new Vector.<§5!k§>();
         var _loc3_:int = this.§ !i§.indexOf(param1) - this.§&W§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§1`§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §66§() : Vector.<§5!k§>
      {
         return this.§1`§;
      }
      
      public function §%!p§(param1:§%o§) : void
      {
         var _loc2_:int = this.§ !i§.indexOf(param1) - this.§&W§;
         var _loc3_:int = this.§1`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§1`§[_loc3_].index1 == _loc2_ || this.§1`§[_loc3_].index2 == _loc2_)
            {
               this.§1`§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §!!_§(param1:§%o§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§2!>§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2!>§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§2!>§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §!!G§(param1:§%o§, param2:§%o§) : Boolean
      {
         var _loc3_:int = this.§ !i§.indexOf(param1) - this.§&W§;
         var _loc4_:int = this.§ !i§.indexOf(param2) - this.§&W§;
         var _loc5_:int = this.§1`§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§1`§[_loc5_].index1 == _loc3_ && this.§1`§[_loc5_].index2 == _loc4_ || this.§1`§[_loc5_].index1 == _loc4_ && this.§1`§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%o§
      {
         var _loc10_:§%o§ = null;
         var _loc11_:§7!+§ = null;
         var _loc12_:§7!+§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§6X§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §"+§.§9Q§(param2);
            _loc10_ = new §+X§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §"+§.§9Q§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §"+§.§9Q§(param2);
            }
            if(_loc12_.§&F§ == §7!+§.§&!f§ || _loc12_.§&F§ == §7!+§.§2g§)
            {
               _loc10_ = new §-=§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §%o§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§<J§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§''§();
         return _loc10_;
      }
      
      protected function §''§() : String
      {
         var _loc3_:§%o§ = null;
         var _loc1_:int = this.§ !i§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§ !i§)
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
      
      public function §9!+§(param1:Number) : void
      {
         var _loc3_:§%o§ = null;
         var _loc2_:int = this.§ !i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !i§[_loc2_] as §%o§;
            if(_loc3_)
            {
               if(_loc3_.§-&§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§>X§();
                  _loc3_.§@7§();
               }
            }
            _loc2_--;
         }
         this.§6Q§(param1);
      }
      
      protected function §6Q§(param1:Number) : void
      {
         this.§9W§(param1);
         this.§%U§();
      }
      
      private function §9W§(param1:Number) : void
      {
         var _loc4_:§@v§ = null;
         var _loc5_:int = 0;
         var _loc6_:§%o§ = null;
         if(this.§2!>§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§@v§> = this.§2!>§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§<K§ && this.§2!>§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§3x§("" + _loc5_))
                  {
                     this.§##§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §%U§() : void
      {
         var _loc1_:§5!k§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§1`§)
         {
            if(_loc1_.type == §!t§.§!J§ && _loc1_.§=+§)
            {
               _loc2_ = (_loc1_.§"v§ as b2PrismaticJoint).§'!]§();
               _loc3_ = (_loc1_.§"v§ as b2PrismaticJoint).§6M§();
               if(_loc1_.§0X§ && _loc1_.§3!k§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§"v§ as b2PrismaticJoint).§5!+§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§6!J§.push(§5!$§.createExplosion(param1,param2,param3));
         § !d§.§-h§("TntExplosions","ChannelExplosions");
      }
      
      public function §3!L§(param1:Number, param2:Number) : int
      {
         var _loc4_:§%o§ = null;
         var _loc3_:int = this.§ !i§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !i§[_loc3_])
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
      
      public function §9!Y§(param1:Number, param2:Number) : §%o§
      {
         var _loc4_:§%o§ = null;
         var _loc3_:int = this.§ !i§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !i§[_loc3_])
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
      
      public function §#!Y§(param1:Number, param2:Number) : Vector.<§%o§>
      {
         var _loc5_:§%o§ = null;
         var _loc3_:Vector.<§%o§> = new Vector.<§%o§>();
         var _loc4_:int = this.§ !i§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§ !i§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §2h§(param1:int) : §%o§
      {
         return this.§ !i§[param1];
      }
      
      public function §=R§(param1:Number, param2:Number) : void
      {
         var _loc4_:§%o§ = null;
         var _loc3_:int = this.§ !i§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ !i§[_loc3_] as §%o§).§=R§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&g§(param1:§%o§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§%o§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§-&§ == param1.§5!]§)
         {
            if(this.§<!=§ < this.§'!0§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§<!=§ += param2 * this.§'!0§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§2!!§().§>!$§(param2 * this.§<!=§);
            this.§#2§ = 0;
         }
         else if(this.§#2§ == 0)
         {
            this.§#2§ = this.mLevelMain.§6§;
         }
         if(param1.§-!m§() || this.§]a§(param1) || this.§#2§ > 0 && this.mLevelMain.§6§ > this.§#2§ + this.§'!0§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§'!0§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§'!0§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§'!0§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  § !d§.§-h§("Mighty_Eagle_Selected_1","ChannelBird");
                  § !d§.§-h§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§'!0§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§2!!§().GetPosition().x - this.§'!0§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§2!!§().GetPosition().y - this.§'!0§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§'!0§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§]a§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§else §("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§'!0§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#2§ = 0;
                  _loc7_.§-s§.§4r§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §=x§(param1:§%o§, param2:Number) : Boolean
      {
         var _loc5_:§%o§ = null;
         if(this.§'!0§.MIGHTY_EAGLE_USE_SHADE && !this.§9L§ && this.mMightyEagleTimer > this.§'!0§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§9L§ = true;
            this.mLevelMain.§[T§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§ D§(§65§.§;!m§,§4!-§.§&#§,§65§.§ k§,param1.§2!!§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§2!!§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§65§.§"!o§(param1.§3!G§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§9!E§(this.§'!0§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§>!7§)
            {
               this.§>!7§ = false;
               this.mLevelMain.§88§();
               param1.§@3§(§,Y§.§"!A§);
               this.mSardineCanAdded = false;
               param1.§-s§.§"i§ = true;
               param1.§-s§.§0U§();
               for each(_loc5_ in this.§ !i§)
               {
                  if(_loc5_ && _loc5_.§4!I§())
                  {
                     _loc5_.§2!!§().SetAwake(true);
                     _loc5_.§2!!§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§1O§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§ !i§)
               {
                  if(_loc5_ && _loc5_.§4!I§())
                  {
                     _loc5_.applyDamage(_loc5_.§5!]§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§2!!§().GetPosition().y >= -5.5;
            this.§>!7§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§?!3§(param2,new Point(this.§'!0§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§'!0§.MIGHTY_EAGLE_Y_CHANGE),this.§'!0§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §>r§() : void
      {
         var _loc1_:§5!$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§%o§ = null;
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
         while(this.§6!J§.length > 0)
         {
            _loc1_ = this.§6!J§.shift();
            _loc2_ = _loc1_.§?!,§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§ !i§)
            {
               _loc8_ = _loc6_.§2!!§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§2!!§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§?!,§)
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
                     _loc6_.§2!!§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§55§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§9B§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§ D§(this.§<s§(_loc1_.type),§4!-§.§&#§,§65§.§"5§,_loc3_,_loc4_,600,"",§65§.§1-§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§ D§(§65§.§9!7§,§4!-§.§&#§,§65§.§ k§,_loc3_,_loc4_,_loc16_,"",§65§.§1-§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §9B§(param1:§%o§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §<s§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §65§.§;=§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§%o§ = null;
         var _loc3_:int = this.§ !i§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ !i§[_loc3_];
            if(_loc2_.§9]§())
            {
               if(this.§&g§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§9!]§())
            {
               this.§=x§(_loc2_,param1);
            }
            else if(this.§]a§(_loc2_))
            {
               _loc2_.§@3§(§,Y§.§+!I§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@3§(§,Y§.§+!I§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§9!a§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§>r§();
      }
      
      private function §1O§() : void
      {
         var _loc1_:§5!k§ = null;
         for each(_loc1_ in this.§1`§)
         {
            if(_loc1_.type != §!t§.§;!H§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§%G§(_loc1_.§"v§);
            }
         }
      }
      
      public function §6G§() : Boolean
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !i§.length)
         {
            _loc2_ = this.§ !i§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §]a§(param1:§%o§) : Boolean
      {
         if(param1 && param1.§ use§.§2[§() != §;%§.§?!F§ && this.mLevelMain.§1c§.§3`§(param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§5!k§ = null;
         var _loc7_:§@v§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§%o§;
         if((_loc5_ = this.§ !i§[param1]).§4!I§())
         {
            ++this.§?>§;
         }
         else if(_loc5_.§9!a§())
         {
            --this.§5Z§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§ use§.score,§<!X§.§]C§,true,_loc5_.§2!!§().GetPosition().x,_loc5_.§2!!§().GetPosition().y - 3,§65§.§ m§(_loc5_.§3!G§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§>n§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§06§(_loc5_.sprite);
         this.§%!p§(_loc5_);
         this.§!!_§(_loc5_);
         for each(_loc6_ in this.§1`§)
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
         for each(_loc7_ in this.§2!>§)
         {
            if(_loc7_.§[+§ == param1)
            {
               _loc7_.§<K§ = true;
            }
            if(_loc7_.§[+§ >= param1)
            {
               --_loc7_.§[+§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§ !i§[param1] = null;
         this.§ !i§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§%o§, param2:§4!-§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §06§(param1:Sprite) : void
      {
         if(this.§=2§.contains(param1))
         {
            this.§=2§.removeChild(param1);
            return;
         }
         if(this.§!E§.contains(param1))
         {
            this.§!E§.removeChild(param1);
            return;
         }
         if(this.§5!2§.contains(param1))
         {
            this.§5!2§.removeChild(param1);
            return;
         }
         if(this.§5_§.contains(param1))
         {
            this.§5_§.removeChild(param1);
            return;
         }
      }
      
      protected function §>n§(param1:§%o§) : void
      {
         if(param1.§]!a§().toUpperCase() == "WHITE_EGG" || param1.§`!,§())
         {
            if(param1.§3!G§.toUpperCase() == §4Y§.§8!7§)
            {
               this.addExplosions(§5!$§.§4_§,param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§5!$§.§1!7§,param1.§2!!§().GetPosition().x,param1.§2!!§().GetPosition().y);
            }
         }
      }
      
      public function §##§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§ !i§.indexOf(param1),param2,param3,param4);
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         this.§@w§.x = -param1;
         this.§@w§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§%o§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !i§.length)
         {
            _loc3_ = this.§ !i§[_loc2_] as §%o§;
            if(_loc3_ && _loc3_.§4!I§() && _loc3_.§-&§ > 0)
            {
               if(!param1 || _loc3_.§-s§.mTryToBlink <= 0 && _loc3_.§-s§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@!=§(param1:Boolean = false) : int
      {
         var _loc4_:§%o§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ !i§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !i§[_loc3_] as §%o§) && _loc4_.§4!I§() && _loc4_.§-&§ > 0)
            {
               if(!param1 || _loc4_.§-s§.mTryToBlink <= 0 && _loc4_.§-s§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §@J§() : int
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !i§)
         {
            if(_loc2_ && (_loc2_.§^!E§() || _loc2_.§@!A§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §`!a§() : int
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !i§)
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
         var _loc3_:§%o§ = null;
         var _loc2_:int = this.§ !i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !i§[_loc2_];
            if(_loc3_ && _loc3_.§4!I§() && _loc3_.§-&§ > 0)
            {
               _loc3_.§-s§.mTryToScream = §0!@§.§!s§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §6!D§() : Boolean
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = this.§ !i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !i§[_loc1_] as §%o§;
            if(_loc2_ && _loc2_.§9!a§() && _loc2_.§-&§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = this.§ !i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !i§[_loc1_] as §%o§;
            if(_loc2_ && _loc2_.§-&§ > 0 && _loc2_.§&F§ != §7!+§.§,"§)
            {
               if(_loc2_.§@e§() && !_loc2_.§-!m§())
               {
                  return false;
               }
               if(_loc2_.§9!a§() && _loc2_.§-&§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §4!T§(param1:Boolean = false) : §%o§
      {
         var _loc5_:int = 0;
         var _loc6_:§%o§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§ !i§.length;
         var _loc3_:int = 1 + Math.random() * this.§@!=§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§ !i§[_loc5_]) && _loc6_.§4!I§() && _loc6_.§-&§ > 0)
               {
                  if(!param1 || _loc6_.§-s§.mTryToBlink <= 0 && _loc6_.§-s§.mTryToScream <= 0)
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
      
      public function §^!V§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§ !i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§ !i§[_loc2_] as §%o§).§ use§.score;
            if((this.§ !i§[_loc2_] as §%o§).§@e§())
            {
               _loc1_ += § s§.§9!b§.getValue() * int((this.§ !i§[_loc2_] as §%o§).§5!]§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§^!V§());
      }
      
      public function §,6§(param1:§%o§, param2:§%o§) : Boolean
      {
         if(param1.§9!a§() && param2.§9!a§())
         {
            return true;
         }
         if(!param1.§2!+§() && !param2.§2!+§())
         {
            return true;
         }
         return false;
      }
      
      public function §&!=§() : void
      {
         this.mSardineCanAdded = true;
         this.§5Z§ = 0;
      }
      
      public function §3z§(param1:§%o§, param2:§%o§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§9!]§() || param2.§4!I§())
            {
               param2.applyDamage(param2.§5!]§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§9!]§() || param1.§4!I§())
            {
               param1.applyDamage(param1.§5!]§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§'!0§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9]§() || param2.§9]§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§,6§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§^!]§(param2.§]!a§());
         var _loc5_:Number = param1.§&!2§(param2.§]!a§());
         var _loc6_:Number = param2.§^!]§(param1.§]!a§());
         var _loc7_:Number = param2.§&!2§(param1.§]!a§());
         var _loc8_:Number = param1.§2!!§().GetMass() * param1.§2!!§().GetLinearVelocity().x - param2.§2!!§().GetMass() * param2.§2!!§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§2!!§().GetMass() * param1.§2!!§().GetLinearVelocity().y - param2.§2!!§().GetMass() * param2.§2!!§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§-&§);
         var _loc14_:Number = Math.max(0,param2.§-&§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§9!a§(),_loc14_ == param2.§5!]§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§9!a§(),_loc13_ == param1.§5!]§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§7d§(new b2Vec2(param2.§2!!§().GetLinearVelocity().x * _loc18_,param2.§2!!§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§7d§(new b2Vec2(param1.§2!!§().GetLinearVelocity().x * _loc19_,param1.§2!!§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=M§() : void
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = this.§ !i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !i§[_loc1_] as §%o§;
            if(_loc2_ != null && _loc2_.§4!I§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §!'§() : void
      {
         var _loc2_:§%o§ = null;
         var _loc1_:int = this.§ !i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !i§[_loc1_] as §%o§;
            if(_loc2_ != null && _loc2_.§`!,§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §?^§() : int
      {
         return this.§ !i§.length;
      }
      
      public function §#!g§(param1:§@z§) : void
      {
         var _loc4_:§%o§ = null;
         var _loc5_:§ !,§ = null;
         var _loc6_:§!t§ = null;
         var _loc7_:§5!k§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !i§.length)
         {
            if(!(_loc4_ = this.§ !i§[_loc2_]).isGround())
            {
               (_loc5_ = new § !,§()).angle = _loc4_.§4!F§();
               _loc5_.id = _loc4_.§3!G§;
               _loc5_.x = _loc4_.§2!!§().GetPosition().x;
               _loc5_.y = _loc4_.§2!!§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§else §(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§1`§.length)
         {
            _loc7_ = this.§1`§[_loc3_];
            _loc6_ = new §!t§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§"9§,_loc7_.§0X§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§3!k§,_loc7_.motorSpeed,_loc7_.§=+§,_loc7_.maxTorque);
            param1.§`!]§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §1+§() : void
      {
         var _loc1_:int = 0;
         while(this.§ !i§.length > _loc1_)
         {
            if(this.§ !i§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§##§(this.§ !i§[_loc1_]);
            }
         }
      }
      
      public function §3!m§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ !i§.length)
         {
            if(this.§ !i§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ !i§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§"g§ = param1;
         this.§8"§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !i§.length)
         {
            if(this.§ !i§[_loc2_].isTexture())
            {
               this.§ !i§[_loc2_].sprite.visible = !this.§"g§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§8!C§ = param1;
      }
      
      public function § !1§() : Boolean
      {
         return this.§8!C§;
      }
      
      public function §3&§() : int
      {
         return this.§6X§;
      }
      
      public function §!q§() : int
      {
         return this.§?>§;
      }
      
      public function §3x§(param1:String) : §%o§
      {
         var _loc3_:§%o§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !i§.length)
         {
            _loc3_ = this.§ !i§[_loc2_] as §%o§;
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
