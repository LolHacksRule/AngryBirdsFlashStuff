package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §,,§.b2PrismaticJoint;
   import §,,§.b2RevoluteJoint;
   import §,,§.b2WeldJoint;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §4!<§.§'!S§;
   import §4!<§.§;P§;
   import §4!<§.§>">§;
   import §4!<§.§^!Z§;
   import §6!^§.b2Vec2;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §<5§.Texture;
   import §<T§.§^"5§;
   import §`1§.§4";§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§>y§;
   import §super§.§?!F§;
   import §super§.§?5§;
   import §super§.§@!2§;
   
   public class §8"=§
   {
       
      
      protected var §@!Z§:Vector.<§[!8§>;
      
      protected var §""G§:int;
      
      public var mLevelMain:§'!S§;
      
      public var §,"D§:Vector.<§6!M§>;
      
      protected var §4!l§:Sprite;
      
      protected var §[u§:Sprite;
      
      private var §7!g§:Sprite;
      
      private var § l§:Sprite;
      
      private var §1M§:Sprite;
      
      protected var §,X§:Vector.<Texture>;
      
      protected var §>F§:Vector.<§?5§>;
      
      protected var §"k§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-!E§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §;Q§:Boolean = false;
      
      protected var §&;§:Number;
      
      protected var §#!F§:int;
      
      protected var §9"4§:Vector.<§@!2§>;
      
      protected var §@"0§:int = 0;
      
      private var §9!^§:int = 0;
      
      private var §^o§:int = 0;
      
      protected var §>"U§:int;
      
      private var §@!l§:Boolean = true;
      
      private var §8"2§:Boolean = true;
      
      public function §8"=§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         var _loc5_:§?5§ = null;
         var _loc6_:§>y§ = null;
         var _loc7_:§[!8§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§[!8§ = null;
         var _loc11_:§[!8§ = null;
         this.§@!Z§ = new Vector.<§[!8§>();
         this.§,"D§ = new Vector.<§6!M§>();
         this.§,X§ = new Vector.<Texture>();
         this.§&;§ = this.§^!Z§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§9"4§ = new Vector.<§@!2§>();
         super();
         this.mLevelMain = param1;
         this.§""G§ = 0;
         this.§[u§ = param3;
         this.§[u§.§^]§ = false;
         this.§8"2§ = true;
         this.§@!l§ = true;
         this.§4!l§ = new Sprite();
         this.§7!g§ = new Sprite();
         this.§ l§ = new Sprite();
         this.§1M§ = new Sprite();
         this.§[u§.addChild(this.§4!l§);
         this.§[u§.addChild(this.§7!g§);
         this.§[u§.addChild(this.§ l§);
         this.§[u§.addChild(this.§1M§);
         this.addObject(§4";§.§>"O§(param2.theme).§@R§,(this.mLevelMain.§-!z§.§;'§ + this.mLevelMain.§-!z§.§;!4§) / 2,this.mLevelMain.§-!z§.§]2§ + §>">§.§ m§);
         this.§>"U§ = this.§@!Z§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§-;§)
         {
            _loc6_ = param2.§,!§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§?"=§();
         this.§0Y§(true);
         this.§>F§ = new Vector.<§?5§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§"2§)
         {
            this.§>F§.push(§?5§.§4!J§(param2.§^"4§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§>F§)
         {
            _loc8_ = _loc5_.index1 + this.§>"U§;
            _loc9_ = _loc5_.index2 + this.§>"U§;
            if(_loc8_ < this.§@!Z§.length && _loc9_ < this.§@!Z§.length)
            {
               _loc10_ = this.§@!Z§[_loc8_];
               _loc11_ = this.§@!Z§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §?!F§.§8!B§)
               {
                  _loc5_.§"s§ = this.mLevelMain.mLevelEngine.mWorld.§]"&§(_loc5_.§7"S§(_loc10_,_loc11_));
               }
               else
               {
                  this.§9"4§.push(new §@!2§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§<3§));
               }
            }
         }
      }
      
      protected function get §^!Z§() : Class
      {
         return §^!Z§;
      }
      
      public function get §-!2§() : Sprite
      {
         return this.§1M§;
      }
      
      public function get mainSprite() : Sprite
      {
         return this.§[u§;
      }
      
      public function get §^!#§() : Sprite
      {
         return this.§ l§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§@!Z§.length > 0)
         {
            this.§8v§(0);
         }
         this.§@!Z§ = null;
         this.§9"4§ = null;
         if(this.§[u§)
         {
            this.§[u§.dispose();
            this.§[u§ = null;
            this.§4!l§ = null;
            this.§1M§ = null;
            this.§7!g§ = null;
            this.§ l§ = null;
         }
         while(this.§,X§.length > 0)
         {
            _loc1_ = this.§,X§.pop();
            this.mLevelMain.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §0Y§(param1:Boolean) : void
      {
         this.§4!l§.visible = param1;
      }
      
      private function §?"=§() : void
      {
         var _loc3_:§[!8§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§ "E§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[!8§> = new Vector.<§[!8§>();
         for each(_loc3_ in this.§@!Z§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§[u§);
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
            this.§9!u§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§^!1§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§,X§.push(_loc12_);
            (_loc13_ = new § "E§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§4!l§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §^!1§(param1:Vector.<§[!8§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§[!8§ = null;
         var _loc11_:§+"R§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§^!f§.shape).§4!1§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'!S§.§2"<§ * param6,_loc12_[0].y / §'!S§.§2"<§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'!S§.§2"<§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'!S§.§2"<§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§,!c§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §9!u§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§%"R§();
         var _loc5_:§^"5§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§#!L§(_loc4_))
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
      
      public function §[!%§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc10_:§9L§ = §8!<§.§3"[§(param2);
         return new §true §(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §#!Z§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc10_:§[!8§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §;i§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §7"R§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §@"7§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §%!D§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §%!L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §"!$§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,!g§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §&!5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §2"L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§@"0§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[!8§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§[!8§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§@!l§;
            this.§@!Z§[this.§@!Z§.length] = _loc11_;
         }
         else
         {
            this.§@!Z§[this.§@!Z§.length] = _loc11_;
         }
         if(_loc11_ is §2"L§ && !_loc11_.§8!1§())
         {
            this.§7!g§.addChild(_loc10_);
            ++this.§@"0§;
         }
         else if(_loc11_.front || param9)
         {
            this.§1M§.addChild(_loc10_);
         }
         else
         {
            this.§ l§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§1">§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §4!J§(param1:int, param2:§[!8§, param3:§[!8§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§?5§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§@!2§ = null;
         var _loc15_:int = this.§@!Z§.indexOf(param2) - this.§>"U§;
         var _loc16_:int = this.§@!Z§.indexOf(param3) - this.§>"U§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §?5§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§>F§.push(_loc17_);
            _loc17_.§<3§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §?!F§.§8!B§)
            {
               _loc17_.§"s§ = this.mLevelMain.mLevelEngine.mWorld.§]"&§(_loc17_.§7"S§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §@!2§(_loc18_,_loc19_,param12);
               this.§9"4§.push(_loc20_);
            }
         }
      }
      
      public function §,g§(param1:§?5§) : void
      {
         if(!(param1.§"s§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§[!8§ = this.§,!§(param1.index1 + this.§>"U§);
         var _loc3_:§[!8§ = this.§,!§(param1.index2 + this.§>"U§);
         this.mLevelMain.mLevelEngine.mWorld.§0§(param1.§"s§);
         param1.§"s§ = this.mLevelMain.mLevelEngine.mWorld.§]"&§(param1.§7"S§(_loc2_,_loc3_));
      }
      
      public function §>!]§(param1:§[!8§) : Vector.<§?5§>
      {
         var _loc4_:§?5§ = null;
         var _loc2_:Vector.<§?5§> = new Vector.<§?5§>();
         var _loc3_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§>F§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §9!s§() : Vector.<§?5§>
      {
         return this.§>F§;
      }
      
      public function §3!u§(param1:§[!8§) : void
      {
         var _loc2_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         var _loc3_:int = this.§>F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§>F§[_loc3_].index1 == _loc2_ || this.§>F§[_loc3_].index2 == _loc2_)
            {
               this.§>F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §6?§(param1:§[!8§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§9"4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§9"4§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§9"4§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §1!D§(param1:§[!8§, param2:§[!8§) : Boolean
      {
         var _loc3_:int = this.§@!Z§.indexOf(param1) - this.§>"U§;
         var _loc4_:int = this.§@!Z§.indexOf(param2) - this.§>"U§;
         var _loc5_:int = this.§>F§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§>F§[_loc5_].index1 == _loc3_ && this.§>F§[_loc5_].index2 == _loc4_ || this.§>F§[_loc5_].index1 == _loc4_ && this.§>F§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         var _loc10_:§[!8§ = null;
         var _loc11_:§9L§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§#!Z§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§^o§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§[!%§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §8!<§.§3"[§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §8!<§.§3"[§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§<!G§ == §9L§.§'!8§ || _loc11_.§<!G§ == §9L§.§+"W§)
            {
               _loc10_ = new §>o§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §[!8§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§""G§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§3"0§();
         return _loc10_;
      }
      
      protected function §3"0§() : String
      {
         var _loc3_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§@!Z§)
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
      
      public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc3_:§[!8§ = null;
         var _loc2_:int = this.§@!Z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
            if(_loc3_)
            {
               if(_loc3_.§ d§ <= 0)
               {
                  this.§8v§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§6!'§();
                  _loc3_.§=">§();
               }
            }
            _loc2_--;
         }
         this.§%=§(param1);
      }
      
      protected function §%=§(param1:Number) : void
      {
         this.§&p§(param1);
         this.§1!Q§();
      }
      
      private function §&p§(param1:Number) : void
      {
         var _loc4_:§@!2§ = null;
         var _loc5_:int = 0;
         var _loc6_:§[!8§ = null;
         if(this.§9"4§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§@!2§> = this.§9"4§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§2B§ && this.§9"4§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§+!#§("" + _loc5_))
                  {
                     this.§8`§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §1!Q§() : void
      {
         var _loc1_:§?5§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§>F§)
         {
            if(_loc1_.type == §?!F§.§5!b§ || _loc1_.type == §?!F§.§?<§ && _loc1_.§13§)
            {
               if(_loc1_.§"s§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§"s§ as b2PrismaticJoint).§-"<§();
                  _loc3_ = (_loc1_.§"s§ as b2PrismaticJoint).§+"E§();
               }
               else if(_loc1_.§"s§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§"s§ as b2RevoluteJoint).§6""§();
                  _loc3_ = (_loc1_.§"s§ as b2RevoluteJoint).§+"E§();
               }
               if(_loc5_ = _loc1_.§`^§ && _loc1_.§]!T§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§"s§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : void
      {
         this.§,"D§.push(§6!M§.createExplosion(param1,param2,param3,param4));
         §@"M§.§3"C§("TntExplosions","ChannelExplosions");
      }
      
      public function §'n§(param1:Number, param2:Number) : int
      {
         var _loc4_:§[!8§ = null;
         var _loc3_:int = this.§@!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!Z§[_loc3_])
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
      
      public function §?!#§(param1:Number, param2:Number) : §[!8§
      {
         var _loc4_:§[!8§ = null;
         var _loc3_:int = this.§@!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!Z§[_loc3_])
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
      
      public function §<"Z§(param1:Number, param2:Number) : Vector.<§[!8§>
      {
         var _loc5_:§[!8§ = null;
         var _loc3_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc4_:int = this.§@!Z§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§@!Z§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §,!§(param1:int) : §[!8§
      {
         return this.§@!Z§[param1];
      }
      
      public function §0P§(param1:Number, param2:Number) : void
      {
         var _loc4_:§[!8§ = null;
         var _loc3_:int = this.§@!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@!Z§[_loc3_] as §[!8§).§0P§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §#!6§(param1:§[!8§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§[!8§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§ d§ == param1.§^!2§)
         {
            if(this.§&;§ < this.§^!Z§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§&;§ += param2 * this.§^!Z§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§["$§(param2 * this.§&;§);
            this.§#!F§ = 0;
         }
         else if(this.§#!F§ == 0)
         {
            this.§#!F§ = this.mLevelMain.§&";§;
         }
         if(param1.§]!!§() || this.§-"7§(param1) || this.§#!F§ > 0 && this.mLevelMain.§&";§ > this.§#!F§ + this.§^!Z§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§^!Z§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§^!Z§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§^!Z§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §@"M§.§3"C§("Mighty_Eagle_Selected_1","ChannelBird");
                  §@"M§.§3"C§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§^!Z§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§^!Z§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§^!Z§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§^!Z§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§-"7§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§^!Z§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#!F§ = 0;
                  _loc7_.§2!8§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §1a§(param1:§[!8§, param2:Number) : Boolean
      {
         var _loc5_:§[!8§ = null;
         if(this.§^!Z§.MIGHTY_EAGLE_USE_SHADE && !this.§;Q§ && this.mMightyEagleTimer > this.§^!Z§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§;Q§ = true;
            this.mLevelMain.§<;§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§"!J§(§0i§.§#"D§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§0i§.getParticleMaterialFromEngineMaterial(param1.§@x§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§?"2§(this.§^!Z§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§-!E§)
            {
               this.§-!E§ = false;
               this.mLevelMain.§-_§();
               param1.§8X§(§[!J§.§`!r§);
               this.mSardineCanAdded = false;
               param1.§2!8§.§<!O§ = true;
               param1.§2!8§.§!!,§();
               for each(_loc5_ in this.§@!Z§)
               {
                  if(_loc5_ && _loc5_.§&!y§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§16§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§@!Z§)
               {
                  if(_loc5_ && _loc5_.§&!y§())
                  {
                     _loc5_.applyDamage(_loc5_.§^!2§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§-!E§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§;!&§(param2,new Point(this.§^!Z§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§^!Z§.MIGHTY_EAGLE_Y_CHANGE),this.§^!Z§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §5!f§() : void
      {
         var _loc1_:§6!M§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§[!8§ = null;
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
         while(this.§,"D§.length > 0)
         {
            _loc1_ = this.§,"D§.shift();
            _loc2_ = _loc1_.§0p§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§@!Z§)
            {
               if(!(_loc1_.§'b§ != null && _loc1_.§'b§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§0p§)
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
                        _loc6_.getBody().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§7!m§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.applyExplosionDamage(_loc6_,_loc14_);
                  }
               }
            }
            this.mLevelMain.particles.§"!J§(this.getMainExplosionCoreName(_loc1_.type),§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.§2L§,_loc3_,_loc4_,600,"",§0i§.§%r§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§"!J§(§0i§.§<!F§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc3_,_loc4_,_loc16_,"",§0i§.§%r§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function applyExplosionDamage(param1:§[!8§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §0i§.§^,§;
      }
      
      public function §,8§(param1:Number) : void
      {
         var _loc2_:§[!8§ = null;
         var _loc3_:int = this.§@!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc3_];
            if(_loc2_.§#b§())
            {
               if(this.§#!6§(_loc2_,param1))
               {
                  this.§8v§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§8!1§())
            {
               this.§1a§(_loc2_,param1);
            }
            else if(this.§-"7§(_loc2_))
            {
               _loc2_.§8X§(§[!J§.§2!M§);
               this.§8v§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§8X§(§[!J§.§2!M§);
               this.§8v§(_loc3_,false,true,true);
            }
            else if(_loc2_.§!!n§() || _loc2_.shouldUpdate())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§5!f§();
      }
      
      private function §16§() : void
      {
         var _loc1_:§?5§ = null;
         for each(_loc1_ in this.§>F§)
         {
            if(_loc1_.type != §?!F§.§8!B§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§0§(_loc1_.§"s§);
            }
         }
      }
      
      public function §`"K§() : Boolean
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!Z§.length)
         {
            _loc2_ = this.§@!Z§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-"7§(param1:§[!8§) : Boolean
      {
         if(param1 && param1.§^!f§.§`!§() != §@!M§.§?K§ && this.mLevelMain.§-!z§.§#D§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §8v§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§?5§ = null;
         var _loc7_:§@!2§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§[!8§;
         if((_loc5_ = this.§@!Z§[param1]).§&!y§())
         {
            ++this.§9!^§;
         }
         else if(_loc5_.§!!n§())
         {
            --this.§@"0§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2 && _loc5_.§^!f§.score > 0)
         {
            this.mLevelMain.addScore(_loc5_.§^!f§.score,§;P§.§6=§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§0i§.§7R§(_loc5_.§@x§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§5"K§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.removeChildFromMainSprite(_loc5_.sprite);
         this.§3!u§(_loc5_);
         this.§6?§(_loc5_);
         for each(_loc6_ in this.§>F§)
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
         for each(_loc7_ in this.§9"4§)
         {
            if(_loc7_.§!§ == param1)
            {
               _loc7_.§2B§ = true;
            }
            if(_loc7_.§!§ >= param1)
            {
               --_loc7_.§!§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§@!Z§[param1] = null;
         this.§@!Z§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§[!8§, param2:§6!O§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§ l§.contains(param1))
         {
            this.§ l§.removeChild(param1);
            return;
         }
         if(this.§7!g§.contains(param1))
         {
            this.§7!g§.removeChild(param1);
            return;
         }
         if(this.§4!l§.contains(param1))
         {
            this.§4!l§.removeChild(param1);
            return;
         }
         if(this.§1M§.contains(param1))
         {
            this.§1M§.removeChild(param1);
            return;
         }
      }
      
      protected function §5"K§(param1:§[!8§) : void
      {
         if(param1.§?"R§().toUpperCase() == "WHITE_EGG" || param1.§package§())
         {
            if(param1.§@x§.toUpperCase() == §%!D§.§'V§)
            {
               this.addExplosions(§6!M§.§#!M§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§6!M§.§+"7§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function §8`§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§8v§(this.§@!Z§.indexOf(param1),param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§[u§.x = -param1;
         this.§[u§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§[!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!Z§.length)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
            if(_loc3_ && _loc3_.§&!y§() && _loc3_.§ d§ > 0)
            {
               if(!param1 || _loc3_.§2!8§.mTryToBlink <= 0 && _loc3_.§2!8§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §5"V§(param1:Boolean = false) : int
      {
         var _loc4_:§[!8§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§@!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@!Z§[_loc3_] as §[!8§) && _loc4_.§&!y§() && _loc4_.§ d§ > 0)
            {
               if(!param1 || _loc4_.§2!8§.mTryToBlink <= 0 && _loc4_.§2!8§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §0E§() : int
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!Z§)
         {
            if(_loc2_ && (_loc2_.§]H§() || _loc2_.§^!;§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §2s§() : int
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!Z§)
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
         var _loc3_:§[!8§ = null;
         var _loc2_:int = this.§@!Z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!Z§[_loc2_];
            if(_loc3_ && _loc3_.§&!y§() && _loc3_.§ d§ > 0)
            {
               _loc3_.§2!8§.mTryToScream = §+T§.§<!t§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §0x§() : Boolean
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(_loc2_ && _loc2_.§!!n§() && _loc2_.§ d§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(_loc2_ && _loc2_.§ d§ > 0 && _loc2_.§<!G§ != §9L§.§7O§)
            {
               if(_loc2_.§`"4§() && !_loc2_.§]!!§())
               {
                  return false;
               }
               if(_loc2_.§!!n§() && _loc2_.§ d§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!!h§(param1:Boolean = false) : §[!8§
      {
         var _loc7_:§[!8§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§@!Z§.length;
         var _loc3_:int = this.§5"V§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§@!Z§[_loc6_] as §[!8§) && _loc7_.§&!y§() && _loc7_.§ d§ > 0)
            {
               if(!param1 || _loc7_.§2!8§.mTryToBlink <= 0 && _loc7_.§2!8§.mTryToScream <= 0)
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
      
      public function §@Z§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§@!Z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§@!Z§[_loc2_] as §[!8§).§^!f§.score;
            if((this.§@!Z§[_loc2_] as §[!8§).§`"4§())
            {
               _loc1_ += §'!S§.§3"2§.getValue() * int((this.§@!Z§[_loc2_] as §[!8§).§^!2§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§@Z§());
      }
      
      public function §+w§(param1:§[!8§, param2:§[!8§) : Boolean
      {
         if(param2 is §7"R§ && param1 is §7"R§)
         {
            return true;
         }
         if(!param1.§=b§() && !param2.§=b§())
         {
            return true;
         }
         return false;
      }
      
      public function §^!M§() : void
      {
         this.mSardineCanAdded = true;
         this.§@"0§ = 0;
      }
      
      public function objectCollision(param1:§[!8§, param2:§[!8§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§8!1§() || param2.§&!y§())
            {
               param2.applyDamage(param2.§^!2§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§8!1§() || param1.§&!y§())
            {
               param1.applyDamage(param1.§^!2§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§^!Z§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§#b§() || param2.§#b§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§+w§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§3"S§(param2.§?"R§());
         var _loc5_:Number = param1.§2!#§(param2.§?"R§());
         var _loc6_:Number = param2.§3"S§(param1.§?"R§());
         var _loc7_:Number = param2.§2!#§(param1.§?"R§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§ d§);
         var _loc14_:Number = Math.max(0,param2.§ d§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§!!n§(),_loc14_ == param2.§^!2§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§!!n§(),_loc13_ == param1.§^!2§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§4!+§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§4!+§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §&'§(param1:§[!8§, param2:§[!8§) : void
      {
      }
      
      public function §4I§() : void
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(_loc2_ != null && _loc2_.§&!y§())
            {
               this.§8v§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[!K§() : void
      {
         var _loc2_:§[!8§ = null;
         var _loc1_:int = this.§@!Z§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!Z§[_loc1_] as §[!8§;
            if(_loc2_ != null && _loc2_.§package§())
            {
               this.§8v§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §57§() : int
      {
         return this.§@!Z§.length;
      }
      
      public function §1o§(param1:§0"T§) : void
      {
         var _loc2_:§[!8§ = null;
         var _loc3_:§?5§ = null;
         var _loc4_:§>y§ = null;
         var _loc5_:§?!F§ = null;
         for each(_loc2_ in this.§@!Z§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §>y§()).angle = _loc2_.§,!c§();
               _loc4_.id = _loc2_.§@x§;
               _loc4_.x = _loc2_.getBody().GetPosition().x;
               _loc4_.y = _loc2_.getBody().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§>F§)
         {
            (_loc5_ = new §?!F§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§+k§,_loc3_.§`^§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§]!T§,_loc3_.motorSpeed,_loc3_.§13§,_loc3_.maxTorque)).§<3§ = _loc3_.§<3§;
            param1.§%!>§(_loc5_);
         }
      }
      
      public function §#!^§() : void
      {
         var _loc1_:int = 0;
         while(this.§@!Z§.length > _loc1_)
         {
            if(this.§@!Z§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§8`§(this.§@!Z§[_loc1_]);
            }
         }
      }
      
      public function §7!r§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§@!Z§.length)
         {
            if(this.§@!Z§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§@!Z§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§@!l§ = param1;
         this.§0Y§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@!Z§.length)
         {
            if(this.§@!Z§[_loc2_].isTexture())
            {
               this.§@!Z§[_loc2_].sprite.visible = !this.§@!l§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§8"2§ = param1;
      }
      
      public function §%!Q§() : Boolean
      {
         return this.§8"2§;
      }
      
      public function §+<§() : int
      {
         return this.§^o§;
      }
      
      public function §9!w§() : int
      {
         return this.§9!^§;
      }
      
      public function §+!#§(param1:String) : §[!8§
      {
         var _loc3_:§[!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!Z§.length)
         {
            _loc3_ = this.§@!Z§[_loc2_] as §[!8§;
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
