package §'!`§
{
   import §#!K§.b2PrismaticJoint;
   import §#!K§.b2WeldJoint;
   import §&!9§.Texture;
   import §&C§.§1?§;
   import §-!F§.§`+§;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §3G§.§!C§;
   import §3G§.§-s§;
   import §3G§.§9! §;
   import §3G§.§9!S§;
   import §3G§.§9!g§;
   import §55§.§1!g§;
   import §55§.§7!k§;
   import §55§.§>![§;
   import §55§.§^!O§;
   import §7! §.§%!h§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §]^§.§7G§;
   import §^!%§.b2Vec2;
   import §`i§.§#p§;
   import §`i§.§4!l§;
   import §`i§.§7Y§;
   import §`i§.§[!n§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §for§
   {
       
      
      protected var §4]§:Vector.<§%!H§>;
      
      protected var §0!X§:int;
      
      public var mLevelMain:§>![§;
      
      public var §1K§:Vector.<§6!5§>;
      
      protected var §&!7§:Sprite;
      
      protected var §^I§:Sprite;
      
      private var §>t§:Sprite;
      
      private var §7a§:Sprite;
      
      private var §,N§:Sprite;
      
      protected var §+M§:Vector.<Texture>;
      
      protected var §72§:Vector.<§4!l§>;
      
      protected var §#!1§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §#R§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,k§:Boolean = false;
      
      protected var §8!#§:Number;
      
      protected var §>Q§:int;
      
      protected var §7!Y§:Vector.<§#p§>;
      
      protected var §#L§:int = 0;
      
      private var §8!b§:int = 0;
      
      private var §&!8§:int = 0;
      
      private var §[#§:int;
      
      private var §5j§:Boolean = true;
      
      private var § !O§:Boolean = true;
      
      public function §for§(param1:§>![§, param2:§`+§, param3:Sprite)
      {
         var _loc5_:§4!l§ = null;
         var _loc6_:§[!n§ = null;
         var _loc7_:§%!H§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§%!H§ = null;
         var _loc11_:§%!H§ = null;
         this.§4]§ = new Vector.<§%!H§>();
         this.§1K§ = new Vector.<§6!5§>();
         this.§+M§ = new Vector.<Texture>();
         this.§8!#§ = this.§7!k§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§7!Y§ = new Vector.<§#p§>();
         super();
         this.mLevelMain = param1;
         this.§0!X§ = 0;
         this.§^I§ = param3;
         this.§^I§.§;Y§ = false;
         this.§ !O§ = true;
         this.§5j§ = true;
         this.§&!7§ = new Sprite();
         this.§>t§ = new Sprite();
         this.§7a§ = new Sprite();
         this.§,N§ = new Sprite();
         this.§^I§.addChild(this.§&!7§);
         this.§^I§.addChild(this.§>t§);
         this.§^I§.addChild(this.§7a§);
         this.§^I§.addChild(this.§,N§);
         this.§]!>§(§1?§.§"i§(param2.theme).§'E§,(this.mLevelMain.§<+§.§0M§ + this.mLevelMain.§<+§.§8!+§) / 2,this.mLevelMain.§<+§.§,!Y§ + §^!O§.§;3§);
         this.§[#§ = this.§4]§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§?v§)
         {
            _loc6_ = param2.§3$§(_loc4_);
            if(_loc7_ = this.§]!>§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§4!1§();
         this.§,U§(true);
         this.§72§ = new Vector.<§4!l§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§+!§)
         {
            this.§72§.push(§4!l§.§6k§(param2.§,'§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§72§)
         {
            _loc8_ = _loc5_.index1 + this.§[#§;
            _loc9_ = _loc5_.index2 + this.§[#§;
            if(_loc8_ < this.§4]§.length && _loc9_ < this.§4]§.length)
            {
               _loc10_ = this.§4]§[_loc8_];
               _loc11_ = this.§4]§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §7Y§.§=!;§)
               {
                  _loc5_.§2!g§ = this.mLevelMain.mLevelEngine.mWorld.§=!,§(_loc5_.§%!S§(_loc10_,_loc11_));
               }
               else
               {
                  this.§7!Y§.push(new §#p§(_loc8_,_loc9_,_loc5_.§+!i§));
               }
            }
         }
      }
      
      protected function get §7!k§() : Class
      {
         return §7!k§;
      }
      
      public function get §2!N§() : Sprite
      {
         return this.§,N§;
      }
      
      public function get §`r§() : Sprite
      {
         return this.§^I§;
      }
      
      public function get §;-§() : Sprite
      {
         return this.§7a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§4]§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§4]§ = null;
         this.§7!Y§ = null;
         if(this.§^I§)
         {
            this.§^I§.dispose();
            this.§^I§ = null;
            this.§&!7§ = null;
            this.§,N§ = null;
            this.§>t§ = null;
            this.§7a§ = null;
         }
         while(this.§+M§.length > 0)
         {
            _loc1_ = this.§+M§.pop();
            this.mLevelMain.textureManager.§=!#§(_loc1_);
         }
      }
      
      private function §,U§(param1:Boolean) : void
      {
         this.§&!7§.visible = param1;
      }
      
      private function §4!1§() : void
      {
         var _loc3_:§%!H§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§1]§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§%!H§> = new Vector.<§%!H§>();
         for each(_loc3_ in this.§4]§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§^I§);
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
            this.§8!3§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§0[§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§+M§.push(_loc12_);
            (_loc13_ = new §1]§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§&!7§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §0[§(param1:Vector.<§%!H§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§%!H§ = null;
         var _loc11_:§9!g§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§<!&§.shape).§4H§();
            _loc13_ = new Rectangle(_loc12_[0].x / §>![§.§%!k§ * param6,_loc12_[0].y / §>![§.§%!k§ * param6,(_loc12_[1].x - _loc12_[0].x) / §>![§.§%!k§ * param6,(_loc12_[1].y - _loc12_[0].y) / §>![§.§%!k§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§#!$§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §8!3§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§-p§();
         var _loc5_:§%!h§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§-f§(_loc4_))
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
      
      public function §4!L§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!H§
      {
         var _loc10_:§!C§ = §-s§.§[!G§(param2);
         return new §%C§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!H§
      {
         var _loc10_:§%!H§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §9m§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §catch§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §3!@§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §?;§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §"!W§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §%P§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new § !q§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §4!k§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §3C§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#L§ > 0;
      }
      
      public function §]!>§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §%!H§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§%!H§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§5j§;
            this.§4]§[this.§4]§.length] = _loc11_;
         }
         else
         {
            this.§4]§[this.§4]§.length] = _loc11_;
         }
         if(_loc11_ is §3C§ && !_loc11_.§3!!§())
         {
            this.§>t§.addChild(_loc10_);
            ++this.§#L§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,N§.addChild(_loc10_);
         }
         else
         {
            this.§7a§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§%!3§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §6k§(param1:int, param2:§%!H§, param3:§%!H§) : §4!l§
      {
         var _loc6_:§4!l§ = null;
         var _loc4_:int = this.§4]§.indexOf(param2) - this.§[#§;
         var _loc5_:int = this.§4]§.indexOf(param3) - this.§[#§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §4!l§(§7Y§.§`!3§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§2!g§ = this.mLevelMain.mLevelEngine.mWorld.§=!,§(_loc6_.§%!S§(param2,param3));
            this.§72§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §?j§(param1:§4!l§) : void
      {
         if(!(param1.§2!g§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§%!H§ = this.§3$§(param1.index1 + this.§[#§);
         var _loc3_:§%!H§ = this.§3$§(param1.index2 + this.§[#§);
         this.mLevelMain.mLevelEngine.mWorld.§]!i§(param1.§2!g§);
         param1.§2!g§ = this.mLevelMain.mLevelEngine.mWorld.§=!,§(param1.§%!S§(_loc2_,_loc3_));
      }
      
      public function §@§(param1:§%!H§) : Vector.<§4!l§>
      {
         var _loc4_:§4!l§ = null;
         var _loc2_:Vector.<§4!l§> = new Vector.<§4!l§>();
         var _loc3_:int = this.§4]§.indexOf(param1) - this.§[#§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§72§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §%!-§() : Vector.<§4!l§>
      {
         return this.§72§;
      }
      
      public function §?!=§(param1:§%!H§) : void
      {
         var _loc2_:int = this.§4]§.indexOf(param1) - this.§[#§;
         var _loc3_:int = this.§72§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§72§[_loc3_].index1 == _loc2_ || this.§72§[_loc3_].index2 == _loc2_)
            {
               this.§72§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §%=§(param1:§%!H§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§7!Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§7!Y§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§7!Y§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §`!&§(param1:§%!H§, param2:§%!H§) : Boolean
      {
         var _loc3_:int = this.§4]§.indexOf(param1) - this.§[#§;
         var _loc4_:int = this.§4]§.indexOf(param2) - this.§[#§;
         var _loc5_:int = this.§72§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§72§[_loc5_].index1 == _loc3_ && this.§72§[_loc5_].index2 == _loc4_ || this.§72§[_loc5_].index1 == _loc4_ && this.§72§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §%!H§
      {
         var _loc10_:§%!H§ = null;
         var _loc11_:§!C§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§&!8§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§4!L§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §-s§.§[!G§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §-s§.§[!G§(param2);
            }
            if(_loc11_.§=4§ == §!C§.§ W§ || _loc11_.§=4§ == §!C§.§%!8§)
            {
               _loc10_ = new §;!§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §%!H§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§0!X§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§6K§();
         return _loc10_;
      }
      
      protected function §6K§() : String
      {
         var _loc3_:§%!H§ = null;
         var _loc1_:int = this.§4]§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§4]§)
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
      
      public function §>!b§(param1:Number) : void
      {
         var _loc3_:§%!H§ = null;
         var _loc2_:int = this.§4]§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4]§[_loc2_] as §%!H§;
            if(_loc3_)
            {
               if(_loc3_.§0!8§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§!!V§();
                  _loc3_.§0!M§();
               }
            }
            _loc2_--;
         }
         this.§ ,§(param1);
      }
      
      protected function § ,§(param1:Number) : void
      {
         this.§"u§(param1);
         this.§0!o§();
      }
      
      private function §"u§(param1:Number) : void
      {
         var _loc4_:§#p§ = null;
         var _loc5_:int = 0;
         var _loc6_:§%!H§ = null;
         if(this.§7!Y§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§#p§> = this.§7!Y§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§4§ && this.§7!Y§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§^!j§("" + _loc5_))
                  {
                     this.§5!0§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §0!o§() : void
      {
         var _loc1_:§4!l§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§72§)
         {
            if(_loc1_.type == §7Y§.§"h§ && _loc1_.§finally§)
            {
               _loc2_ = (_loc1_.§2!g§ as b2PrismaticJoint).§1x§();
               _loc3_ = (_loc1_.§2!g§ as b2PrismaticJoint).§<!`§();
               if(_loc1_.§8m§ && _loc1_.§&m§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§2!g§ as b2PrismaticJoint).§@O§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§1K§.push(§6!5§.createExplosion(param1,param2,param3));
         §7G§.§4W§("TntExplosions","ChannelExplosions");
      }
      
      public function §89§(param1:Number, param2:Number) : int
      {
         var _loc4_:§%!H§ = null;
         var _loc3_:int = this.§4]§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§4]§[_loc3_])
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
      
      public function §2R§(param1:Number, param2:Number) : §%!H§
      {
         var _loc4_:§%!H§ = null;
         var _loc3_:int = this.§4]§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§4]§[_loc3_])
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
      
      public function §>Y§(param1:Number, param2:Number) : Vector.<§%!H§>
      {
         var _loc5_:§%!H§ = null;
         var _loc3_:Vector.<§%!H§> = new Vector.<§%!H§>();
         var _loc4_:int = this.§4]§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§4]§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §3$§(param1:int) : §%!H§
      {
         return this.§4]§[param1];
      }
      
      public function §;y§(param1:Number, param2:Number) : void
      {
         var _loc4_:§%!H§ = null;
         var _loc3_:int = this.§4]§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§4]§[_loc3_] as §%!H§).§;y§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §3!5§(param1:§%!H§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§%!H§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§0!8§ == param1.§6w§)
         {
            if(this.§8!#§ < this.§7!k§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§8!#§ += param2 * this.§7!k§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§&!p§().§&!'§(param2 * this.§8!#§);
            this.§>Q§ = 0;
         }
         else if(this.§>Q§ == 0)
         {
            this.§>Q§ = this.mLevelMain.§,!V§;
         }
         if(param1.§1-§() || this.§6E§(param1) || this.§>Q§ > 0 && this.mLevelMain.§,!V§ > this.§>Q§ + this.§7!k§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§7!k§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§7!k§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§7!k§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §7G§.§4W§("Mighty_Eagle_Selected_1","ChannelBird");
                  §7G§.§4W§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§7!k§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§&!p§().GetPosition().x - this.§7!k§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§&!p§().GetPosition().y - this.§7!k§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§7!k§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§6E§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§]!>§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§7!k§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§>Q§ = 0;
                  _loc7_.§@!5§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §8$§(param1:§%!H§, param2:Number) : Boolean
      {
         var _loc5_:§%!H§ = null;
         if(this.§7!k§.MIGHTY_EAGLE_USE_SHADE && !this.§,k§ && this.mMightyEagleTimer > this.§7!k§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§,k§ = true;
            this.mLevelMain.§2@§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§4!2§(§3!f§.§1w§,§,!j§.§++§,§3!f§.§"!&§,param1.§&!p§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§&!p§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§3!f§.§-!Z§(param1.§8+§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§"D§(this.§7!k§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§#R§)
            {
               this.§#R§ = false;
               this.mLevelMain.§'! §();
               param1.§0!"§(§9! §.§1!o§);
               this.mSardineCanAdded = false;
               param1.§@!5§.§>!o§ = true;
               param1.§@!5§.§0%§();
               for each(_loc5_ in this.§4]§)
               {
                  if(_loc5_ && _loc5_.§=!M§())
                  {
                     _loc5_.§&!p§().SetAwake(true);
                     _loc5_.§&!p§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§[!%§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§4]§)
               {
                  if(_loc5_ && _loc5_.§=!M§())
                  {
                     _loc5_.applyDamage(_loc5_.§6w§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§&!p§().GetPosition().y >= -5.5;
            this.§#R§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§?!W§(param2,new Point(this.§7!k§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§7!k§.MIGHTY_EAGLE_Y_CHANGE),this.§7!k§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §5!H§() : void
      {
         var _loc1_:§6!5§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§%!H§ = null;
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
         while(this.§1K§.length > 0)
         {
            _loc1_ = this.§1K§.shift();
            _loc2_ = _loc1_.§@!C§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§4]§)
            {
               _loc8_ = _loc6_.§&!p§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§&!p§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§@!C§)
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
                     _loc6_.§&!p§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§^!T§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§=!-§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§4!2§(this.§9l§(_loc1_.type),§,!j§.§++§,§3!f§.§"![§,_loc3_,_loc4_,600,"",§3!f§.§'!J§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§4!2§(§3!f§.§6p§,§,!j§.§++§,§3!f§.§"!&§,_loc3_,_loc4_,_loc16_,"",§3!f§.§'!J§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §=!-§(param1:§%!H§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §9l§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §3!f§.§[>§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§%!H§ = null;
         var _loc3_:int = this.§4]§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§4]§[_loc3_];
            if(_loc2_.§=B§())
            {
               if(this.§3!5§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§3!!§())
            {
               this.§8$§(_loc2_,param1);
            }
            else if(this.§6E§(_loc2_))
            {
               _loc2_.§0!"§(§9! §.§%!A§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§0!"§(§9! §.§%!A§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§^G§() || _loc2_.§#!&§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§5!H§();
      }
      
      private function §[!%§() : void
      {
         var _loc1_:§4!l§ = null;
         for each(_loc1_ in this.§72§)
         {
            if(_loc1_.type != §7Y§.§=!;§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§]!i§(_loc1_.§2!g§);
            }
         }
      }
      
      public function §#j§() : Boolean
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4]§.length)
         {
            _loc2_ = this.§4]§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §6E§(param1:§%!H§) : Boolean
      {
         if(param1 && param1.§<!&§.§8Q§() != §9!S§.§&!i§ && this.mLevelMain.§<+§.§[T§(param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§4!l§ = null;
         var _loc7_:§#p§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§%!H§;
         if((_loc5_ = this.§4]§[param1]).§=!M§())
         {
            ++this.§8!b§;
         }
         else if(_loc5_.§^G§())
         {
            --this.§#L§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§<!&§.score,§1!g§.§7H§,true,_loc5_.§&!p§().GetPosition().x,_loc5_.§&!p§().GetPosition().y - 3,§3!f§.§?0§(_loc5_.§8+§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§2!E§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§!!B§(_loc5_.sprite);
         this.§?!=§(_loc5_);
         this.§%=§(_loc5_);
         for each(_loc6_ in this.§72§)
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
         for each(_loc7_ in this.§7!Y§)
         {
            if(_loc7_.§+Q§ == param1)
            {
               _loc7_.§4§ = true;
            }
            if(_loc7_.§+Q§ >= param1)
            {
               --_loc7_.§+Q§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§4]§[param1] = null;
         this.§4]§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§%!H§, param2:§,!j§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §!!B§(param1:Sprite) : void
      {
         if(this.§7a§.contains(param1))
         {
            this.§7a§.removeChild(param1);
            return;
         }
         if(this.§>t§.contains(param1))
         {
            this.§>t§.removeChild(param1);
            return;
         }
         if(this.§&!7§.contains(param1))
         {
            this.§&!7§.removeChild(param1);
            return;
         }
         if(this.§,N§.contains(param1))
         {
            this.§,N§.removeChild(param1);
            return;
         }
      }
      
      protected function §2!E§(param1:§%!H§) : void
      {
         if(param1.§9O§().toUpperCase() == "WHITE_EGG" || param1.§@!3§())
         {
            if(param1.§8+§.toUpperCase() == §?;§.§'?§)
            {
               this.addExplosions(§6!5§.§=!5§,param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§6!5§.§@E§,param1.§&!p§().GetPosition().x,param1.§&!p§().GetPosition().y);
            }
         }
      }
      
      public function §5!0§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§4]§.indexOf(param1),param2,param3,param4);
      }
      
      public function § !l§(param1:Number, param2:Number) : void
      {
         this.§^I§.x = -param1;
         this.§^I§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§%!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4]§.length)
         {
            _loc3_ = this.§4]§[_loc2_] as §%!H§;
            if(_loc3_ && _loc3_.§=!M§() && _loc3_.§0!8§ > 0)
            {
               if(!param1 || _loc3_.§@!5§.mTryToBlink <= 0 && _loc3_.§@!5§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2n§(param1:Boolean = false) : int
      {
         var _loc4_:§%!H§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§4]§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§4]§[_loc3_] as §%!H§) && _loc4_.§=!M§() && _loc4_.§0!8§ > 0)
            {
               if(!param1 || _loc4_.§@!5§.mTryToBlink <= 0 && _loc4_.§@!5§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §,!8§() : int
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4]§)
         {
            if(_loc2_ && (_loc2_.§3!C§() || _loc2_.§-x§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §@1§() : int
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4]§)
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
         var _loc3_:§%!H§ = null;
         var _loc2_:int = this.§4]§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4]§[_loc2_];
            if(_loc3_ && _loc3_.§=!M§() && _loc3_.§0!8§ > 0)
            {
               _loc3_.§@!5§.mTryToScream = §-!W§.§3!]§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §&!-§() : Boolean
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = this.§4]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4]§[_loc1_] as §%!H§;
            if(_loc2_ && _loc2_.§^G§() && _loc2_.§0!8§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = this.§4]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4]§[_loc1_] as §%!H§;
            if(_loc2_ && _loc2_.§0!8§ > 0 && _loc2_.§=4§ != §!C§.§]X§)
            {
               if(_loc2_.§]§() && !_loc2_.§1-§())
               {
                  return false;
               }
               if(_loc2_.§^G§() && _loc2_.§0!8§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[!Q§(param1:Boolean = false) : §%!H§
      {
         var _loc5_:int = 0;
         var _loc6_:§%!H§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§4]§.length;
         var _loc3_:int = 1 + Math.random() * this.§2n§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§4]§[_loc5_]) && _loc6_.§=!M§() && _loc6_.§0!8§ > 0)
               {
                  if(!param1 || _loc6_.§@!5§.mTryToBlink <= 0 && _loc6_.§@!5§.mTryToScream <= 0)
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
      
      public function §0!U§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§4]§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§4]§[_loc2_] as §%!H§).§<!&§.score;
            if((this.§4]§[_loc2_] as §%!H§).§]§())
            {
               _loc1_ += §>![§.§[]§.getValue() * int((this.§4]§[_loc2_] as §%!H§).§6w§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§0!U§());
      }
      
      public function §^i§(param1:§%!H§, param2:§%!H§) : Boolean
      {
         if(param1.§^G§() && param2.§^G§())
         {
            return true;
         }
         if(!param1.§?!S§() && !param2.§?!S§())
         {
            return true;
         }
         return false;
      }
      
      public function §1!H§() : void
      {
         this.mSardineCanAdded = true;
         this.§#L§ = 0;
      }
      
      public function §3X§(param1:§%!H§, param2:§%!H§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§3!!§() || param2.§=!M§())
            {
               param2.applyDamage(param2.§6w§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§3!!§() || param1.§=!M§())
            {
               param1.applyDamage(param1.§6w§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§7!k§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§=B§() || param2.§=B§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§^i§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§3!8§(param2.§9O§());
         var _loc5_:Number = param1.§8X§(param2.§9O§());
         var _loc6_:Number = param2.§3!8§(param1.§9O§());
         var _loc7_:Number = param2.§8X§(param1.§9O§());
         var _loc8_:Number = param1.§&!p§().GetMass() * param1.§&!p§().GetLinearVelocity().x - param2.§&!p§().GetMass() * param2.§&!p§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§&!p§().GetMass() * param1.§&!p§().GetLinearVelocity().y - param2.§&!p§().GetMass() * param2.§&!p§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§0!8§);
         var _loc14_:Number = Math.max(0,param2.§0!8§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§^G§(),_loc14_ == param2.§6w§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§^G§(),_loc13_ == param1.§6w§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§,M§(new b2Vec2(param2.§&!p§().GetLinearVelocity().x * _loc18_,param2.§&!p§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§,M§(new b2Vec2(param1.§&!p§().GetLinearVelocity().x * _loc19_,param1.§&!p§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=!N§() : void
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = this.§4]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4]§[_loc1_] as §%!H§;
            if(_loc2_ != null && _loc2_.§=!M§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function § !f§() : void
      {
         var _loc2_:§%!H§ = null;
         var _loc1_:int = this.§4]§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4]§[_loc1_] as §%!H§;
            if(_loc2_ != null && _loc2_.§@!3§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1A§() : int
      {
         return this.§4]§.length;
      }
      
      public function §?!L§(param1:§`+§) : void
      {
         var _loc4_:§%!H§ = null;
         var _loc5_:§[!n§ = null;
         var _loc6_:§7Y§ = null;
         var _loc7_:§4!l§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4]§.length)
         {
            if(!(_loc4_ = this.§4]§[_loc2_]).isGround())
            {
               (_loc5_ = new §[!n§()).angle = _loc4_.§#!$§();
               _loc5_.id = _loc4_.§8+§;
               _loc5_.x = _loc4_.§&!p§().GetPosition().x;
               _loc5_.y = _loc4_.§&!p§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§]!>§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§72§.length)
         {
            _loc7_ = this.§72§[_loc3_];
            _loc6_ = new §7Y§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§!!-§,_loc7_.§8m§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§&m§,_loc7_.motorSpeed,_loc7_.§finally§,_loc7_.maxTorque);
            param1.§9i§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §@!K§() : void
      {
         var _loc1_:int = 0;
         while(this.§4]§.length > _loc1_)
         {
            if(this.§4]§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§5!0§(this.§4]§[_loc1_]);
            }
         }
      }
      
      public function §6P§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§4]§.length)
         {
            if(this.§4]§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§4]§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§5j§ = param1;
         this.§,U§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4]§.length)
         {
            if(this.§4]§[_loc2_].isTexture())
            {
               this.§4]§[_loc2_].sprite.visible = !this.§5j§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§ !O§ = param1;
      }
      
      public function §>!@§() : Boolean
      {
         return this.§ !O§;
      }
      
      public function §0!d§() : int
      {
         return this.§&!8§;
      }
      
      public function §7m§() : int
      {
         return this.§8!b§;
      }
      
      public function §^!j§(param1:String) : §%!H§
      {
         var _loc3_:§%!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4]§.length)
         {
            _loc3_ = this.§4]§[_loc2_] as §%!H§;
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
