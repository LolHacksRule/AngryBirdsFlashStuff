package §5!L§
{
   import § !^§.Texture;
   import §!!7§.b2PrismaticJoint;
   import §!!7§.b2WeldJoint;
   import §&!!§.§7N§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §7_§.§]![§;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §9§.§67§;
   import §9§.§7L§;
   import §9§.§[H§;
   import §9§.§`!"§;
   import §<L§.§!!G§;
   import §<L§.§%t§;
   import §<L§.§4S§;
   import §<L§.§6H§;
   import §?!'§.§ 8§;
   import §?!'§.§-M§;
   import §?!'§.§0!g§;
   import §?!'§.§3!^§;
   import §?!'§.§[!S§;
   import §@![§.b2Vec2;
   import §]k§.§[!L§;
   import §^!K§.§ !$§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?8§
   {
       
      
      protected var §?D§:Vector.<§,!&§>;
      
      protected var §5I§:int;
      
      public var mLevelMain:§!!G§;
      
      public var §]!T§:Vector.<§6c§>;
      
      protected var §`!c§:Sprite;
      
      protected var §`o§:Sprite;
      
      private var §implements§:Sprite;
      
      private var §[!Z§:Sprite;
      
      private var § u§:Sprite;
      
      protected var §,!W§:Vector.<Texture>;
      
      protected var §5c§:Vector.<§[H§>;
      
      protected var §5;§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §3I§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §2G§:Boolean = false;
      
      protected var §break§:Number;
      
      protected var §<!]§:int;
      
      protected var §=U§:Vector.<§7L§>;
      
      protected var §?!X§:int = 0;
      
      private var §=!R§:int = 0;
      
      private var §?!`§:int = 0;
      
      private var §^F§:int;
      
      private var §-!`§:Boolean = true;
      
      private var §?K§:Boolean = true;
      
      public function §?8§(param1:§!!G§, param2:§]![§, param3:Sprite)
      {
         var _loc5_:§[H§ = null;
         var _loc6_:§`!"§ = null;
         var _loc7_:§,!&§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§,!&§ = null;
         var _loc11_:§,!&§ = null;
         this.§?D§ = new Vector.<§,!&§>();
         this.§]!T§ = new Vector.<§6c§>();
         this.§,!W§ = new Vector.<Texture>();
         this.§break§ = this.§6H§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§=U§ = new Vector.<§7L§>();
         super();
         this.mLevelMain = param1;
         this.§5I§ = 0;
         this.§`o§ = param3;
         this.§`o§.§,!c§ = false;
         this.§?K§ = true;
         this.§-!`§ = true;
         this.§`!c§ = new Sprite();
         this.§implements§ = new Sprite();
         this.§[!Z§ = new Sprite();
         this.§ u§ = new Sprite();
         this.§`o§.addChild(this.§`!c§);
         this.§`o§.addChild(this.§implements§);
         this.§`o§.addChild(this.§[!Z§);
         this.§`o§.addChild(this.§ u§);
         this.§'e§(§[!L§.§4!7§(param2.theme).§]W§,(this.mLevelMain.§9!R§.§!!J§ + this.mLevelMain.§9!R§.§`;§) / 2,this.mLevelMain.§9!R§.§@Y§ + §%t§.§8@§);
         this.§^F§ = this.§?D§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8s§)
         {
            _loc6_ = param2.§8K§(_loc4_);
            if(_loc7_ = this.§'e§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§2!f§();
         this.§try§(true);
         this.§5c§ = new Vector.<§[H§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§8>§)
         {
            this.§5c§.push(§[H§.§!!;§(param2.§8t§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§5c§)
         {
            _loc8_ = _loc5_.index1 + this.§^F§;
            _loc9_ = _loc5_.index2 + this.§^F§;
            if(_loc8_ < this.§?D§.length && _loc9_ < this.§?D§.length)
            {
               _loc10_ = this.§?D§[_loc8_];
               _loc11_ = this.§?D§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §67§.§3!9§)
               {
                  _loc5_.§[3§ = this.mLevelMain.mLevelEngine.mWorld.§;!0§(_loc5_.§@!W§(_loc10_,_loc11_));
               }
               else
               {
                  this.§=U§.push(new §7L§(_loc8_,_loc9_,_loc5_.§?!O§));
               }
            }
         }
      }
      
      protected function get §6H§() : Class
      {
         return §6H§;
      }
      
      public function get §3!o§() : Sprite
      {
         return this.§ u§;
      }
      
      public function get §7!l§() : Sprite
      {
         return this.§`o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§?D§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§?D§ = null;
         this.§=U§ = null;
         if(this.§`o§)
         {
            this.§`o§.dispose();
            this.§`o§ = null;
            this.§`!c§ = null;
            this.§ u§ = null;
            this.§implements§ = null;
            this.§[!Z§ = null;
         }
         while(this.§,!W§.length > 0)
         {
            _loc1_ = this.§,!W§.pop();
            this.mLevelMain.textureManager.§4V§(_loc1_);
         }
      }
      
      private function §try§(param1:Boolean) : void
      {
         this.§`!c§.visible = param1;
      }
      
      private function §2!f§() : void
      {
         var _loc3_:§,!&§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§[!U§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§,!&§> = new Vector.<§,!&§>();
         for each(_loc3_ in this.§?D§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§`o§);
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
            this.§`p§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§%s§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§,!W§.push(_loc12_);
            (_loc13_ = new §[!U§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§`!c§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §%s§(param1:Vector.<§,!&§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§,!&§ = null;
         var _loc11_:§-M§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§<M§.shape).§%Y§();
            _loc13_ = new Rectangle(_loc12_[0].x / §!!G§.§ !E§ * param6,_loc12_[0].y / §!!G§.§ !E§ * param6,(_loc12_[1].x - _loc12_[0].x) / §!!G§.§ !E§ * param6,(_loc12_[1].y - _loc12_[0].y) / §!!G§.§ !E§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§3E§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §`p§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§?-§();
         var _loc5_:§7N§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§^!C§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,!&§
      {
         var _loc10_:§,!&§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §@!%§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §#!X§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §]G§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §%c§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §%!8§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §2!E§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,4§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §1L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§?!X§ > 0;
      }
      
      public function §'e§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §,!&§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§,!&§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-!`§;
            this.§?D§[this.§?D§.length] = _loc11_;
         }
         else
         {
            this.§?D§[this.§?D§.length] = _loc11_;
         }
         if(_loc11_ is §1L§ && !_loc11_.§!p§())
         {
            this.§implements§.addChild(_loc10_);
            ++this.§?!X§;
         }
         else if(_loc11_.front || param9)
         {
            this.§ u§.addChild(_loc10_);
         }
         else
         {
            this.§[!Z§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§'!V§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §!!;§(param1:int, param2:§,!&§, param3:§,!&§) : §[H§
      {
         var _loc6_:§[H§ = null;
         var _loc4_:int = this.§?D§.indexOf(param2) - this.§^F§;
         var _loc5_:int = this.§?D§.indexOf(param3) - this.§^F§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §[H§(§67§.§2-§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§[3§ = this.mLevelMain.mLevelEngine.mWorld.§;!0§(_loc6_.§@!W§(param2,param3));
            this.§5c§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §`t§(param1:§[H§) : void
      {
         if(!(param1.§[3§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§,!&§ = this.§8K§(param1.index1 + this.§^F§);
         var _loc3_:§,!&§ = this.§8K§(param1.index2 + this.§^F§);
         this.mLevelMain.mLevelEngine.mWorld.§,z§(param1.§[3§);
         param1.§[3§ = this.mLevelMain.mLevelEngine.mWorld.§;!0§(param1.§@!W§(_loc2_,_loc3_));
      }
      
      public function §>o§(param1:§,!&§) : Vector.<§[H§>
      {
         var _loc4_:§[H§ = null;
         var _loc2_:Vector.<§[H§> = new Vector.<§[H§>();
         var _loc3_:int = this.§?D§.indexOf(param1) - this.§^F§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§5c§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §8!5§() : Vector.<§[H§>
      {
         return this.§5c§;
      }
      
      public function §&!0§(param1:§,!&§) : void
      {
         var _loc2_:int = this.§?D§.indexOf(param1) - this.§^F§;
         var _loc3_:int = this.§5c§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§5c§[_loc3_].index1 == _loc2_ || this.§5c§[_loc3_].index2 == _loc2_)
            {
               this.§5c§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §5s§(param1:§,!&§, param2:§,!&§) : Boolean
      {
         var _loc3_:int = this.§?D§.indexOf(param1) - this.§^F§;
         var _loc4_:int = this.§?D§.indexOf(param2) - this.§^F§;
         var _loc5_:int = this.§5c§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§5c§[_loc5_].index1 == _loc3_ && this.§5c§[_loc5_].index2 == _loc4_ || this.§5c§[_loc5_].index1 == _loc4_ && this.§5c§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,!&§
      {
         var _loc10_:§,!&§ = null;
         var _loc11_:§0!g§ = null;
         var _loc12_:§0!g§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§?!`§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §[!S§.§;Z§(param2);
            _loc10_ = new §-!2§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §[!S§.§;Z§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §[!S§.§;Z§(param2);
            }
            if(_loc12_.§4x§ == §0!g§.§'0§ || _loc12_.§4x§ == §0!g§.§9!h§)
            {
               _loc10_ = new §"!T§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §,!&§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5I§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§ #§();
         return _loc10_;
      }
      
      private function § #§() : String
      {
         var _loc3_:§,!&§ = null;
         var _loc1_:int = this.§?D§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§?D§)
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
      
      public function §#!T§(param1:Number) : void
      {
         var _loc3_:§,!&§ = null;
         var _loc2_:int = this.§?D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?D§[_loc2_] as §,!&§;
            if(_loc3_)
            {
               if(_loc3_.§3o§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§1!9§();
                  _loc3_.§?!E§();
               }
            }
            _loc2_--;
         }
         this.§1!R§(param1);
      }
      
      protected function §1!R§(param1:Number) : void
      {
         var _loc3_:§[H§ = null;
         var _loc4_:§7L§ = null;
         var _loc5_:int = 0;
         var _loc6_:§,!&§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§=U§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§=U§[_loc2_]).§4E§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§]!g§("" + _loc5_))
                  {
                     this.§;1§(_loc6_,true,true,true);
                  }
                  this.§=U§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§5c§)
         {
            if(_loc3_.type == §67§.§;!n§ && _loc3_.§'R§)
            {
               _loc7_ = (_loc3_.§[3§ as b2PrismaticJoint).§ !e§();
               _loc8_ = (_loc3_.§[3§ as b2PrismaticJoint).§7w§();
               if(_loc3_.§&n§ && _loc3_.§8$§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§[3§ as b2PrismaticJoint).§!9§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§]!T§.push(§6c§.createExplosion(param1,param2,param3));
         § !$§.§-N§("TntExplosions","ChannelExplosions");
      }
      
      public function §7T§(param1:Number, param2:Number) : int
      {
         var _loc4_:§,!&§ = null;
         var _loc3_:int = this.§?D§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§?D§[_loc3_])
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
      
      public function §&O§(param1:Number, param2:Number) : §,!&§
      {
         var _loc4_:§,!&§ = null;
         var _loc3_:int = this.§?D§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§?D§[_loc3_])
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
      
      public function §8K§(param1:int) : §,!&§
      {
         return this.§?D§[param1];
      }
      
      public function §4Q§(param1:Number, param2:Number) : void
      {
         var _loc4_:§,!&§ = null;
         var _loc3_:int = this.§?D§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§?D§[_loc3_] as §,!&§).§4Q§(param2,param1);
            _loc3_--;
         }
      }
      
      private function § !h§(param1:§,!&§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§,!&§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§3o§ == param1.§'6§)
         {
            if(this.§break§ < this.§6H§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§break§ += param2 * this.§6H§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§;G§().§^!c§(param2 * this.§break§);
            this.§<!]§ = 0;
         }
         else if(this.§<!]§ == 0)
         {
            this.§<!]§ = this.mLevelMain.§=!N§;
         }
         if(param1.§?E§() || this.§`!0§(param1) || this.§<!]§ > 0 && this.mLevelMain.§=!N§ > this.§<!]§ + this.§6H§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§6H§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§6H§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§6H§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  § !$§.§-N§("Mighty_Eagle_Selected_1","ChannelBird");
                  § !$§.§-N§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§6H§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§;G§().GetPosition().x - this.§6H§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§;G§().GetPosition().y - this.§6H§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§6H§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§`!0§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§'e§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§6H§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§<!]§ = 0;
                  _loc7_.§<i§.§+L§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §5u§(param1:§,!&§, param2:Number) : Boolean
      {
         var _loc5_:§,!&§ = null;
         if(this.§6H§.MIGHTY_EAGLE_USE_SHADE && !this.§2G§ && this.mMightyEagleTimer > this.§6H§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§2G§ = true;
            this.mLevelMain.§<I§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§]!5§(§9!-§.§`!f§,§'F§.§8e§,§9!-§.§7=§,param1.§;G§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§;G§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§9!-§.§4!^§(param1.§%!O§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§]!8§(this.§6H§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§3I§)
            {
               this.§3I§ = false;
               this.mLevelMain.§-U§();
               param1.§=W§(§3!^§.§ h§);
               this.mSardineCanAdded = false;
               param1.§<i§.§9$§ = true;
               param1.§<i§.§'Z§();
               for each(_loc5_ in this.§?D§)
               {
                  if(_loc5_ && _loc5_.§@F§())
                  {
                     _loc5_.§;G§().SetAwake(true);
                     _loc5_.§;G§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§2j§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§?D§)
               {
                  if(_loc5_ && _loc5_.§@F§())
                  {
                     _loc5_.applyDamage(_loc5_.§'6§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§;G§().GetPosition().y >= -5.5;
            this.§3I§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§%!]§(param2,new Point(this.§6H§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§6H§.MIGHTY_EAGLE_Y_CHANGE),this.§6H§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §2+§() : void
      {
         var _loc1_:§6c§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,!&§ = null;
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
         while(this.§]!T§.length > 0)
         {
            _loc1_ = this.§]!T§.shift();
            _loc2_ = _loc1_.§@!o§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§?D§)
            {
               _loc8_ = _loc6_.§;G§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§;G§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§@!o§)
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
                     _loc6_.§;G§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§3!U§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§3z§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§]!5§(this.§!z§(_loc1_.type),§'F§.§8e§,§9!-§.§2q§,_loc3_,_loc4_,600,"",§9!-§.§ !7§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§]!5§(§9!-§.§ +§,§'F§.§8e§,§9!-§.§7=§,_loc3_,_loc4_,_loc16_,"",§9!-§.§ !7§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §3z§(param1:§,!&§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §!z§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §9!-§.§-D§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§,!&§ = null;
         var _loc3_:int = this.§?D§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§?D§[_loc3_];
            if(_loc2_.§]!+§())
            {
               if(this.§ !h§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§!p§())
            {
               this.§5u§(_loc2_,param1);
            }
            else if(this.§`!0§(_loc2_))
            {
               _loc2_.§=W§(§3!^§.§,!<§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§=W§(§3!^§.§,!<§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§>!U§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§2+§();
      }
      
      private function §2j§() : void
      {
         var _loc1_:§[H§ = null;
         for each(_loc1_ in this.§5c§)
         {
            if(_loc1_.type != §67§.§3!9§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§,z§(_loc1_.§[3§);
            }
         }
      }
      
      public function §<f§() : Boolean
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?D§.length)
         {
            _loc2_ = this.§?D§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §`!0§(param1:§,!&§) : Boolean
      {
         if(param1 && param1.§<M§.§=9§() != § 8§.§=<§ && this.mLevelMain.§9!R§.§'!$§(param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§[H§ = null;
         var _loc7_:§7L§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§,!&§;
         if((_loc5_ = this.§?D§[param1]).§@F§())
         {
            ++this.§=!R§;
         }
         else if(_loc5_.§>!U§())
         {
            --this.§?!X§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§<M§.score,§4S§.§;$§,true,_loc5_.§;G§().GetPosition().x,_loc5_.§;G§().GetPosition().y - 3,§9!-§.§'r§(_loc5_.§%!O§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§^<§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§4,§(_loc5_.sprite);
         this.§&!0§(_loc5_);
         for each(_loc6_ in this.§5c§)
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
         for each(_loc7_ in this.§=U§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§4E§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§?D§[param1] = null;
         this.§?D§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§,!&§, param2:§'F§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §4,§(param1:Sprite) : void
      {
         if(this.§[!Z§.contains(param1))
         {
            this.§[!Z§.removeChild(param1);
            return;
         }
         if(this.§implements§.contains(param1))
         {
            this.§implements§.removeChild(param1);
            return;
         }
         if(this.§`!c§.contains(param1))
         {
            this.§`!c§.removeChild(param1);
            return;
         }
         if(this.§ u§.contains(param1))
         {
            this.§ u§.removeChild(param1);
            return;
         }
      }
      
      protected function §^<§(param1:§,!&§) : void
      {
         if(param1.§'!j§().toUpperCase() == "WHITE_EGG" || param1.§]!§())
         {
            if(param1.§%!O§.toUpperCase() == §%c§.§]>§)
            {
               this.addExplosions(§6c§.§,!V§,param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§6c§.§@!a§,param1.§;G§().GetPosition().x,param1.§;G§().GetPosition().y);
            }
         }
      }
      
      public function §;1§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§?D§.indexOf(param1),param2,param3,param4);
      }
      
      public function §=6§(param1:Number, param2:Number) : void
      {
         this.§`o§.x = -param1;
         this.§`o§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§,!&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?D§.length)
         {
            _loc3_ = this.§?D§[_loc2_] as §,!&§;
            if(_loc3_ && _loc3_.§@F§() && _loc3_.§3o§ > 0)
            {
               if(!param1 || _loc3_.§<i§.mTryToBlink <= 0 && _loc3_.§<i§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,S§(param1:Boolean = false) : int
      {
         var _loc4_:§,!&§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§?D§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§?D§[_loc3_] as §,!&§) && _loc4_.§@F§() && _loc4_.§3o§ > 0)
            {
               if(!param1 || _loc4_.§<i§.mTryToBlink <= 0 && _loc4_.§<i§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §4e§() : int
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?D§)
         {
            if(_loc2_ && (_loc2_.§#!P§() || _loc2_.§%b§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §0!%§() : int
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?D§)
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
         var _loc3_:§,!&§ = null;
         var _loc2_:int = this.§?D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?D§[_loc2_];
            if(_loc3_ && _loc3_.§@F§() && _loc3_.§3o§ > 0)
            {
               _loc3_.§<i§.mTryToScream = §+!+§.§'!0§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §&!Q§() : Boolean
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = this.§?D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?D§[_loc1_] as §,!&§;
            if(_loc2_ && _loc2_.§>!U§() && _loc2_.§3o§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = this.§?D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?D§[_loc1_] as §,!&§;
            if(_loc2_ && _loc2_.§3o§ > 0 && _loc2_.§4x§ != §0!g§.§>!P§)
            {
               if(_loc2_.§<F§() && !_loc2_.§?E§())
               {
                  return false;
               }
               if(_loc2_.§>!U§() && _loc2_.§3o§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<!o§(param1:Boolean = false) : §,!&§
      {
         var _loc5_:int = 0;
         var _loc6_:§,!&§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§?D§.length;
         var _loc3_:int = 1 + Math.random() * this.§,S§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§?D§[_loc5_]) && _loc6_.§@F§() && _loc6_.§3o§ > 0)
               {
                  if(!param1 || _loc6_.§<i§.mTryToBlink <= 0 && _loc6_.§<i§.mTryToScream <= 0)
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
      
      public function §5![§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§?D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§?D§[_loc2_] as §,!&§).§<M§.score;
            if((this.§?D§[_loc2_] as §,!&§).§<F§())
            {
               _loc1_ += §!!G§.§-!b§.getValue() * int((this.§?D§[_loc2_] as §,!&§).§'6§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§5![§());
      }
      
      public function § §(param1:§,!&§, param2:§,!&§) : Boolean
      {
         if(param1.§>!U§() && param2.§>!U§())
         {
            return true;
         }
         if(!param1.§^-§() && !param2.§^-§())
         {
            return true;
         }
         return false;
      }
      
      public function §var §() : void
      {
         this.mSardineCanAdded = true;
         this.§?!X§ = 0;
      }
      
      public function §!!=§(param1:§,!&§, param2:§,!&§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§!p§() || param2.§@F§())
            {
               param2.applyDamage(param2.§'6§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§!p§() || param1.§@F§())
            {
               param1.applyDamage(param1.§'6§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§6H§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§]!+§() || param2.§]!+§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§ §(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§=z§(param2.§'!j§());
         var _loc5_:Number = param1.§>!&§(param2.§'!j§());
         var _loc6_:Number = param2.§=z§(param1.§'!j§());
         var _loc7_:Number = param2.§>!&§(param1.§'!j§());
         var _loc8_:Number = param1.§;G§().GetMass() * param1.§;G§().GetLinearVelocity().x - param2.§;G§().GetMass() * param2.§;G§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§;G§().GetMass() * param1.§;G§().GetLinearVelocity().y - param2.§;G§().GetMass() * param2.§;G§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§3o§);
         var _loc14_:Number = Math.max(0,param2.§3o§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§>!U§(),_loc14_ == param2.§'6§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§>!U§(),_loc13_ == param1.§'6§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ S§(new b2Vec2(param2.§;G§().GetLinearVelocity().x * _loc18_,param2.§;G§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ S§(new b2Vec2(param1.§;G§().GetLinearVelocity().x * _loc19_,param1.§;G§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=T§() : void
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = this.§?D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?D§[_loc1_] as §,!&§;
            if(_loc2_ != null && _loc2_.§@F§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §'s§() : void
      {
         var _loc2_:§,!&§ = null;
         var _loc1_:int = this.§?D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?D§[_loc1_] as §,!&§;
            if(_loc2_ != null && _loc2_.§]!§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §=p§() : int
      {
         return this.§?D§.length;
      }
      
      public function §=!]§(param1:§]![§) : void
      {
         var _loc4_:§,!&§ = null;
         var _loc5_:§`!"§ = null;
         var _loc6_:§67§ = null;
         var _loc7_:§[H§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?D§.length)
         {
            if(!(_loc4_ = this.§?D§[_loc2_]).isGround())
            {
               (_loc5_ = new §`!"§()).angle = _loc4_.§3E§();
               _loc5_.id = _loc4_.§%!O§;
               _loc5_.x = _loc4_.§;G§().GetPosition().x;
               _loc5_.y = _loc4_.§;G§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§'e§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5c§.length)
         {
            _loc7_ = this.§5c§[_loc3_];
            _loc6_ = new §67§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>F§,_loc7_.§&n§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§8$§,_loc7_.motorSpeed,_loc7_.§'R§,_loc7_.maxTorque);
            param1.§;!b§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §'!d§() : void
      {
         var _loc1_:int = 0;
         while(this.§?D§.length > _loc1_)
         {
            if(this.§?D§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§;1§(this.§?D§[_loc1_]);
            }
         }
      }
      
      public function §;3§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§?D§.length)
         {
            if(this.§?D§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§?D§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-!`§ = param1;
         this.§try§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§?D§.length)
         {
            if(this.§?D§[_loc2_].isTexture())
            {
               this.§?D§[_loc2_].sprite.visible = !this.§-!`§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§?K§ = param1;
      }
      
      public function §,V§() : Boolean
      {
         return this.§?K§;
      }
      
      public function §1c§() : int
      {
         return this.§?!`§;
      }
      
      public function §+!,§() : int
      {
         return this.§=!R§;
      }
      
      public function §]!g§(param1:String) : §,!&§
      {
         var _loc3_:§,!&§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?D§.length)
         {
            _loc3_ = this.§?D§[_loc2_] as §,!&§;
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
