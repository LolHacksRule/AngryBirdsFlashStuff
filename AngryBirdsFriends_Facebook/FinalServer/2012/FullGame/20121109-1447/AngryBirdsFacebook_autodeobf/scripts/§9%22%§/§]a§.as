package §9"%§
{
   import §#!e§.§1"B§;
   import §#]§.b2Vec2;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§3!K§;
   import §8g§.§3"6§;
   import §8g§.§3";§;
   import §8g§.§;!@§;
   import §8g§.§?!V§;
   import §8k§.b2PrismaticJoint;
   import §8k§.b2WeldJoint;
   import §9"!§.§4"F§;
   import §9"!§.§9!Z§;
   import §9"!§.§9"3§;
   import §9"!§.§?E§;
   import §<u§.§8,§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]a§
   {
       
      
      protected var §=",§:Vector.<§&!r§>;
      
      protected var §5!b§:int;
      
      public var §@O§:§9"3§;
      
      public var § '§:Vector.<§^!x§>;
      
      protected var §#"3§:Sprite;
      
      protected var §6"-§:Sprite;
      
      private var §,!&§:Sprite;
      
      private var §7"C§:Sprite;
      
      private var §]Q§:Sprite;
      
      protected var §3O§:Vector.<Texture>;
      
      protected var §6'§:Vector.<§3";§>;
      
      protected var §0n§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §@s§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §3!q§:Boolean = false;
      
      protected var §1"&§:Number;
      
      protected var §^c§:int;
      
      protected var §[+§:Vector.<§;!@§>;
      
      protected var §&D§:int = 0;
      
      private var get:int = 0;
      
      private var § !U§:int = 0;
      
      protected var §+I§:int;
      
      private var §3!e§:Boolean = true;
      
      private var §^R§:Boolean = true;
      
      public function §]a§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         var _loc5_:§3";§ = null;
         var _loc6_:§3"6§ = null;
         var _loc7_:§&!r§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§&!r§ = null;
         var _loc11_:§&!r§ = null;
         this.§=",§ = new Vector.<§&!r§>();
         this.§ '§ = new Vector.<§^!x§>();
         this.§3O§ = new Vector.<Texture>();
         this.§1"&§ = this.§4"F§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§[+§ = new Vector.<§;!@§>();
         super();
         this.§@O§ = param1;
         this.§5!b§ = 0;
         this.§6"-§ = param3;
         this.§6"-§.§`!u§ = false;
         this.§^R§ = true;
         this.§3!e§ = true;
         this.§#"3§ = new Sprite();
         this.§,!&§ = new Sprite();
         this.§7"C§ = new Sprite();
         this.§]Q§ = new Sprite();
         this.§6"-§.addChild(this.§#"3§);
         this.§6"-§.addChild(this.§,!&§);
         this.§6"-§.addChild(this.§7"C§);
         this.§6"-§.addChild(this.§]Q§);
         this.addObject(§8,§.§0>§(param2.theme).§-?§,(this.§@O§.§?l§.§7T§ + this.§@O§.§?l§.§3!5§) / 2,this.§@O§.§?l§.§'I§ + §9!Z§.§5"$§);
         this.§+I§ = this.§=",§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§-!e§)
         {
            _loc6_ = param2.§!!A§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§+@§();
         this.§ !C§(true);
         this.§6'§ = new Vector.<§3";§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§2D§)
         {
            this.§6'§.push(§3";§.§<N§(param2.§#f§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§6'§)
         {
            _loc8_ = _loc5_.index1 + this.§+I§;
            _loc9_ = _loc5_.index2 + this.§+I§;
            if(_loc8_ < this.§=",§.length && _loc9_ < this.§=",§.length)
            {
               _loc10_ = this.§=",§[_loc8_];
               _loc11_ = this.§=",§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §?!V§.§3!x§)
               {
                  _loc5_.§0!i§ = this.§@O§.mLevelEngine.mWorld.§?[§(_loc5_.§]0§(_loc10_,_loc11_));
               }
               else
               {
                  this.§[+§.push(new §;!@§(_loc8_,_loc9_,_loc5_.§]A§));
               }
            }
         }
      }
      
      protected function get §4"F§() : Class
      {
         return §4"F§;
      }
      
      public function get §9" §() : Sprite
      {
         return this.§]Q§;
      }
      
      public function get mainSprite() : Sprite
      {
         return this.§6"-§;
      }
      
      public function get §'!!§() : Sprite
      {
         return this.§7"C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§=",§.length > 0)
         {
            this.§^U§(0);
         }
         this.§=",§ = null;
         this.§[+§ = null;
         if(this.§6"-§)
         {
            this.§6"-§.dispose();
            this.§6"-§ = null;
            this.§#"3§ = null;
            this.§]Q§ = null;
            this.§,!&§ = null;
            this.§7"C§ = null;
         }
         while(this.§3O§.length > 0)
         {
            _loc1_ = this.§3O§.pop();
            this.§@O§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function § !C§(param1:Boolean) : void
      {
         this.§#"3§.visible = param1;
      }
      
      private function §+@§() : void
      {
         var _loc3_:§&!r§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§0!N§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&!r§> = new Vector.<§&!r§>();
         for each(_loc3_ in this.§=",§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§6"-§);
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
            this.§2"2§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§!y§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§@O§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§3O§.push(_loc12_);
            (_loc13_ = new §0!N§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§#"3§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §!y§(param1:Vector.<§&!r§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§&!r§ = null;
         var _loc11_:§@d§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§3!4§.shape).§8!b§();
            _loc13_ = new Rectangle(_loc12_[0].x / §9"3§.§'"F§ * param6,_loc12_[0].y / §9"3§.§'"F§ * param6,(_loc12_[1].x - _loc12_[0].x) / §9"3§.§'"F§ * param6,(_loc12_[1].y - _loc12_[0].y) / §9"3§.§'"F§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§,!G§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §2"2§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§@O§.background.§+!L§();
         var _loc5_:§3!K§;
         if(_loc5_ = this.§@O§.backgroundTextureManager.§>s§(_loc4_))
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
      
      public function addObjectParsePigs(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc10_:§4u§ = §6G§.§1!P§(param2);
         return new §="$§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §`P§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc10_:§&!r§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §`!'§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §2"$§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §'!L§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §7!j§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §-!E§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §'5§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §;!l§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §,!8§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new § H§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&D§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&!r§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§&!r§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§3!e§;
            this.§=",§[this.§=",§.length] = _loc11_;
         }
         else
         {
            this.§=",§[this.§=",§.length] = _loc11_;
         }
         if(_loc11_ is § H§ && !_loc11_.§9"7§())
         {
            this.§,!&§.addChild(_loc10_);
            ++this.§&D§;
         }
         else if(_loc11_.front || param9)
         {
            this.§]Q§.addChild(_loc10_);
         }
         else
         {
            this.§7"C§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§@O§.§<!1§(_loc11_);
         }
         if(param6)
         {
            this.§@O§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §<N§(param1:int, param2:§&!r§, param3:§&!r§) : §3";§
      {
         var _loc6_:§3";§ = null;
         var _loc4_:int = this.§=",§.indexOf(param2) - this.§+I§;
         var _loc5_:int = this.§=",§.indexOf(param3) - this.§+I§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §3";§(§?!V§.§6P§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0!i§ = this.§@O§.mLevelEngine.mWorld.§?[§(_loc6_.§]0§(param2,param3));
            this.§6'§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §do §(param1:§3";§) : void
      {
         if(!(param1.§0!i§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§&!r§ = this.§!!A§(param1.index1 + this.§+I§);
         var _loc3_:§&!r§ = this.§!!A§(param1.index2 + this.§+I§);
         this.§@O§.mLevelEngine.mWorld.§7! §(param1.§0!i§);
         param1.§0!i§ = this.§@O§.mLevelEngine.mWorld.§?[§(param1.§]0§(_loc2_,_loc3_));
      }
      
      public function §&r§(param1:§&!r§) : Vector.<§3";§>
      {
         var _loc4_:§3";§ = null;
         var _loc2_:Vector.<§3";§> = new Vector.<§3";§>();
         var _loc3_:int = this.§=",§.indexOf(param1) - this.§+I§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§6'§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §`v§() : Vector.<§3";§>
      {
         return this.§6'§;
      }
      
      public function §7!2§(param1:§&!r§) : void
      {
         var _loc2_:int = this.§=",§.indexOf(param1) - this.§+I§;
         var _loc3_:int = this.§6'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6'§[_loc3_].index1 == _loc2_ || this.§6'§[_loc3_].index2 == _loc2_)
            {
               this.§6'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §9!o§(param1:§&!r§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§[+§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§[+§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§[+§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §>m§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         var _loc3_:int = this.§=",§.indexOf(param1) - this.§+I§;
         var _loc4_:int = this.§=",§.indexOf(param2) - this.§+I§;
         var _loc5_:int = this.§6'§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§6'§[_loc5_].index1 == _loc3_ && this.§6'§[_loc5_].index2 == _loc4_ || this.§6'§[_loc5_].index1 == _loc4_ && this.§6'§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc10_:§&!r§ = null;
         var _loc11_:§4u§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§`P§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§ !U§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.addObjectParsePigs(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §6G§.§1!P§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §6G§.§1!P§(param2);
            }
            if(_loc11_.§7[§ == §4u§.§[!`§ || _loc11_.§7[§ == §4u§.§<!q§)
            {
               _loc10_ = new §&!g§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §&!r§(this,param1,this.§@O§.mLevelEngine.mWorld,this.§@O§,this.§5!b§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§5D§();
         return _loc10_;
      }
      
      protected function §5D§() : String
      {
         var _loc3_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§=",§)
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
         var _loc3_:§&!r§ = null;
         var _loc2_:int = this.§=",§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
            if(_loc3_)
            {
               if(_loc3_.§[" § <= 0)
               {
                  this.§^U§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§[!§();
                  _loc3_.§2e§();
               }
            }
            _loc2_--;
         }
         this.§4E§(param1);
      }
      
      protected function §4E§(param1:Number) : void
      {
         this.§>4§(param1);
         this.§6!Q§();
      }
      
      private function §>4§(param1:Number) : void
      {
         var _loc4_:§;!@§ = null;
         var _loc5_:int = 0;
         var _loc6_:§&!r§ = null;
         if(this.§[+§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§;!@§> = this.§[+§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§>Z§ && this.§[+§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§%"%§("" + _loc5_))
                  {
                     this.§-!,§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §6!Q§() : void
      {
         var _loc1_:§3";§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§6'§)
         {
            if(_loc1_.type == §?!V§.§+&§ && _loc1_.§3U§)
            {
               _loc2_ = (_loc1_.§0!i§ as b2PrismaticJoint).§`z§();
               _loc3_ = (_loc1_.§0!i§ as b2PrismaticJoint).§6<§();
               if(_loc1_.§2!&§ && _loc1_.§!!F§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§0!i§ as b2PrismaticJoint).§3C§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : void
      {
         this.§ '§.push(§^!x§.createExplosion(param1,param2,param3,param4));
         §>!E§.§7N§("TntExplosions","ChannelExplosions");
      }
      
      public function §!"F§(param1:Number, param2:Number) : int
      {
         var _loc4_:§&!r§ = null;
         var _loc3_:int = this.§=",§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=",§[_loc3_])
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
      
      public function §%7§(param1:Number, param2:Number) : §&!r§
      {
         var _loc4_:§&!r§ = null;
         var _loc3_:int = this.§=",§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=",§[_loc3_])
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
      
      public function §>"0§(param1:Number, param2:Number) : Vector.<§&!r§>
      {
         var _loc5_:§&!r§ = null;
         var _loc3_:Vector.<§&!r§> = new Vector.<§&!r§>();
         var _loc4_:int = this.§=",§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§=",§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §!!A§(param1:int) : §&!r§
      {
         return this.§=",§[param1];
      }
      
      public function §="'§(param1:Number, param2:Number) : void
      {
         var _loc4_:§&!r§ = null;
         var _loc3_:int = this.§=",§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=",§[_loc3_] as §&!r§).§="'§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §^!<§(param1:§&!r§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§&!r§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§[" § == param1.§@!h§)
         {
            if(this.§1"&§ < this.§4"F§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§1"&§ += param2 * this.§4"F§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§=!y§().§=!Q§(param2 * this.§1"&§);
            this.§^c§ = 0;
         }
         else if(this.§^c§ == 0)
         {
            this.§^c§ = this.§@O§.§,"<§;
         }
         if(param1.§>"?§() || this.§6B§(param1) || this.§^c§ > 0 && this.§@O§.§,"<§ > this.§^c§ + this.§4"F§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§4"F§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§4"F§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§4"F§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §>!E§.§7N§("Mighty_Eagle_Selected_1","ChannelBird");
                  §>!E§.§7N§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§4"F§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§=!y§().GetPosition().x - this.§4"F§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§=!y§().GetPosition().y - this.§4"F§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§4"F§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§6B§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§4"F§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§^c§ = 0;
                  _loc7_.§"!&§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §,=§(param1:§&!r§, param2:Number) : Boolean
      {
         var _loc5_:§&!r§ = null;
         if(this.§4"F§.MIGHTY_EAGLE_USE_SHADE && !this.§3!q§ && this.mMightyEagleTimer > this.§4"F§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§3!q§ = true;
            this.§@O§.§?v§();
         }
         this.mMightyEagleTimer += param2;
         this.§@O§.particles.§;!u§(§'G§.§`!O§,§^!f§.§>"F§,§'G§.§+";§,param1.§=!y§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§=!y§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§'G§.§,">§(param1.§2!>§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§<!!§(this.§4"F§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§@s§)
            {
               this.§@s§ = false;
               this.§@O§.§`K§();
               param1.§&x§(§;!y§.§#!w§);
               this.mSardineCanAdded = false;
               param1.§"!&§.§&!u§ = true;
               param1.§"!&§.§[!k§();
               for each(_loc5_ in this.§=",§)
               {
                  if(_loc5_ && _loc5_.§^6§())
                  {
                     _loc5_.§=!y§().SetAwake(true);
                     _loc5_.§=!y§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+!T§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§=",§)
               {
                  if(_loc5_ && _loc5_.§^6§())
                  {
                     _loc5_.applyDamage(_loc5_.§@!h§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§=!y§().GetPosition().y >= -5.5;
            this.§@s§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§^!M§(param2,new Point(this.§4"F§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§4"F§.MIGHTY_EAGLE_Y_CHANGE),this.§4"F§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §0M§() : void
      {
         var _loc1_:§^!x§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§&!r§ = null;
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
         while(this.§ '§.length > 0)
         {
            _loc1_ = this.§ '§.shift();
            _loc2_ = _loc1_.§2!q§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§=",§)
            {
               if(!(_loc1_.§<"F§ != null && _loc1_.§<"F§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§=!y§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§=!y§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§2!q§)
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
                        _loc6_.§=!y§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§[!F§)
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
            this.§@O§.particles.§;!u§(this.§in §(_loc1_.type),§^!f§.§>"F§,§'G§.§5!l§,_loc3_,_loc4_,600,"",§'G§.§4!Q§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§@O§.particles.§;!u§(§'G§.§34§,§^!f§.§>"F§,§'G§.§+";§,_loc3_,_loc4_,_loc16_,"",§'G§.§4!Q§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function applyExplosionDamage(param1:§&!r§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §in §(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §'G§.§,W§;
      }
      
      public function §6!5§(param1:Number) : void
      {
         var _loc2_:§&!r§ = null;
         var _loc3_:int = this.§=",§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=",§[_loc3_];
            if(_loc2_.§[`§())
            {
               if(this.§^!<§(_loc2_,param1))
               {
                  this.§^U§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§9"7§())
            {
               this.§,=§(_loc2_,param1);
            }
            else if(this.§6B§(_loc2_))
            {
               _loc2_.§&x§(§;!y§.§@v§);
               this.§^U§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§&x§(§;!y§.§@v§);
               this.§^U§(_loc3_,false,true,true);
            }
            else if(_loc2_.§ !c§() || _loc2_.shouldUpdate())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§0M§();
      }
      
      private function §+!T§() : void
      {
         var _loc1_:§3";§ = null;
         for each(_loc1_ in this.§6'§)
         {
            if(_loc1_.type != §?!V§.§3!x§)
            {
               this.§@O§.mLevelEngine.mWorld.§7! §(_loc1_.§0!i§);
            }
         }
      }
      
      public function §!"7§() : Boolean
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=",§.length)
         {
            _loc2_ = this.§=",§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §6B§(param1:§&!r§) : Boolean
      {
         if(param1 && param1.§3!4§.§^"9§() != §9!n§.§'f§ && this.§@O§.§?l§.§#!=§(param1.§=!y§().GetPosition().x,param1.§=!y§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §^U§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§3";§ = null;
         var _loc7_:§;!@§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§&!r§;
         if((_loc5_ = this.§=",§[param1]).§^6§())
         {
            ++this.get;
         }
         else if(_loc5_.§ !c§())
         {
            --this.§&D§;
         }
         if(_loc5_ == this.§@O§.activeObject)
         {
            this.§@O§.activeObject = null;
         }
         if(param2)
         {
            this.§@O§.addScore(_loc5_.§3!4§.score,§?E§.§4!k§,true,_loc5_.§=!y§().GetPosition().x,_loc5_.§=!y§().GetPosition().y - 3,§'G§.§>!&§(_loc5_.§2!>§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§@O§.particles);
         }
         if(param4)
         {
            this.§`!I§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.removeChildFromMainSprite(_loc5_.sprite);
         this.§7!2§(_loc5_);
         this.§9!o§(_loc5_);
         for each(_loc6_ in this.§6'§)
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
         for each(_loc7_ in this.§[+§)
         {
            if(_loc7_.§6>§ == param1)
            {
               _loc7_.§>Z§ = true;
            }
            if(_loc7_.§6>§ >= param1)
            {
               --_loc7_.§6>§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§=",§[param1] = null;
         this.§=",§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§&!r§, param2:§^!f§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§7"C§.contains(param1))
         {
            this.§7"C§.removeChild(param1);
            return;
         }
         if(this.§,!&§.contains(param1))
         {
            this.§,!&§.removeChild(param1);
            return;
         }
         if(this.§#"3§.contains(param1))
         {
            this.§#"3§.removeChild(param1);
            return;
         }
         if(this.§]Q§.contains(param1))
         {
            this.§]Q§.removeChild(param1);
            return;
         }
      }
      
      protected function §`!I§(param1:§&!r§) : void
      {
         if(param1.§0!'§().toUpperCase() == "WHITE_EGG" || param1.§5!P§())
         {
            if(param1.§2!>§.toUpperCase() == §7!j§.§`!<§)
            {
               this.addExplosions(§^!x§.§7"A§,param1.§=!y§().GetPosition().x,param1.§=!y§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§^!x§.§`y§,param1.§=!y§().GetPosition().x,param1.§=!y§().GetPosition().y);
            }
         }
      }
      
      public function §-!,§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§^U§(this.§=",§.indexOf(param1),param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§6"-§.x = -param1;
         this.§6"-§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§&!r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=",§.length)
         {
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
            if(_loc3_ && _loc3_.§^6§() && _loc3_.§[" § > 0)
            {
               if(!param1 || _loc3_.§"!&§.mTryToBlink <= 0 && _loc3_.§"!&§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§&!r§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=",§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=",§[_loc3_] as §&!r§) && _loc4_.§^6§() && _loc4_.§[" § > 0)
            {
               if(!param1 || _loc4_.§"!&§.mTryToBlink <= 0 && _loc4_.§"!&§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §<"9§() : int
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=",§)
         {
            if(_loc2_ && (_loc2_.§<!r§() || _loc2_.§@!8§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §+!r§() : int
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=",§)
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
         var _loc3_:§&!r§ = null;
         var _loc2_:int = this.§=",§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=",§[_loc2_];
            if(_loc3_ && _loc3_.§^6§() && _loc3_.§[" § > 0)
            {
               _loc3_.§"!&§.mTryToScream = §#!D§.§%"$§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §[o§() : Boolean
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(_loc2_ && _loc2_.§ !c§() && _loc2_.§[" § > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(_loc2_ && _loc2_.§[" § > 0 && _loc2_.§7[§ != §4u§.§1!B§)
            {
               if(_loc2_.§<! §() && !_loc2_.§>"?§())
               {
                  return false;
               }
               if(_loc2_.§ !c§() && _loc2_.§[" § > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §;R§(param1:Boolean = false) : §&!r§
      {
         var _loc7_:§="$§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§=",§.length;
         var _loc3_:int = this.getPigCount(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§=",§[_loc6_] as §="$§) && _loc7_.§^6§() && _loc7_.§[" § > 0)
            {
               if(!param1 || _loc7_.§"!&§.mTryToBlink <= 0 && _loc7_.§"!&§.mTryToScream <= 0)
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
      
      public function §@!F§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§=",§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§=",§[_loc2_] as §&!r§).§3!4§.score;
            if((this.§=",§[_loc2_] as §&!r§).§<! §())
            {
               _loc1_ += §9"3§.§0!Q§.getValue() * int((this.§=",§[_loc2_] as §&!r§).§@!h§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§@O§.slingshot.§@!F§());
      }
      
      public function §;T§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         if(param2 is §2"$§ && param1 is §2"$§)
         {
            return true;
         }
         if(!param1.§,l§() && !param2.§,l§())
         {
            return true;
         }
         return false;
      }
      
      public function §"s§() : void
      {
         this.mSardineCanAdded = true;
         this.§&D§ = 0;
      }
      
      public function §7!d§(param1:§&!r§, param2:§&!r§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§9"7§() || param2.§^6§())
            {
               param2.applyDamage(param2.§@!h§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§9"7§() || param1.§^6§())
            {
               param1.applyDamage(param1.§@!h§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§4"F§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§[`§() || param2.§[`§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;T§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§;"1§(param2.§0!'§());
         var _loc5_:Number = param1.§5!S§(param2.§0!'§());
         var _loc6_:Number = param2.§;"1§(param1.§0!'§());
         var _loc7_:Number = param2.§5!S§(param1.§0!'§());
         var _loc8_:Number = param1.§=!y§().GetMass() * param1.§=!y§().GetLinearVelocity().x - param2.§=!y§().GetMass() * param2.§=!y§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§=!y§().GetMass() * param1.§=!y§().GetLinearVelocity().y - param2.§=!y§().GetMass() * param2.§=!y§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§[" §);
         var _loc14_:Number = Math.max(0,param2.§[" §);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ !c§(),_loc14_ == param2.§@!h§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ !c§(),_loc13_ == param1.§@!h§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§#!k§(new b2Vec2(param2.§=!y§().GetLinearVelocity().x * _loc18_,param2.§=!y§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§#!k§(new b2Vec2(param1.§=!y§().GetLinearVelocity().x * _loc19_,param1.§=!y§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §>"B§(param1:§&!r§, param2:§&!r§) : void
      {
      }
      
      public function §<<§() : void
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(_loc2_ != null && _loc2_.§^6§())
            {
               this.§^U§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §3!V§() : void
      {
         var _loc2_:§&!r§ = null;
         var _loc1_:int = this.§=",§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=",§[_loc1_] as §&!r§;
            if(_loc2_ != null && _loc2_.§5!P§())
            {
               this.§^U§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §'1§() : int
      {
         return this.§=",§.length;
      }
      
      public function §>"<§(param1:§1"B§) : void
      {
         var _loc4_:§&!r§ = null;
         var _loc5_:§3"6§ = null;
         var _loc6_:§?!V§ = null;
         var _loc7_:§3";§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=",§.length)
         {
            if(!(_loc4_ = this.§=",§[_loc2_]).isGround())
            {
               (_loc5_ = new §3"6§()).angle = _loc4_.§,!G§();
               _loc5_.id = _loc4_.§2!>§;
               _loc5_.x = _loc4_.§=!y§().GetPosition().x;
               _loc5_.y = _loc4_.§=!y§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§6'§.length)
         {
            _loc7_ = this.§6'§[_loc3_];
            _loc6_ = new §?!V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§;i§,_loc7_.§2!&§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§!!F§,_loc7_.motorSpeed,_loc7_.§3U§,_loc7_.maxTorque);
            param1.§#v§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §,!<§() : void
      {
         var _loc1_:int = 0;
         while(this.§=",§.length > _loc1_)
         {
            if(this.§=",§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§-!,§(this.§=",§[_loc1_]);
            }
         }
      }
      
      public function static(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=",§.length)
         {
            if(this.§=",§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=",§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§3!e§ = param1;
         this.§ !C§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=",§.length)
         {
            if(this.§=",§[_loc2_].isTexture())
            {
               this.§=",§[_loc2_].sprite.visible = !this.§3!e§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§^R§ = param1;
      }
      
      public function §0!?§() : Boolean
      {
         return this.§^R§;
      }
      
      public function §!V§() : int
      {
         return this.§ !U§;
      }
      
      public function §=!8§() : int
      {
         return this.get;
      }
      
      public function §%"%§(param1:String) : §&!r§
      {
         var _loc3_:§&!r§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=",§.length)
         {
            _loc3_ = this.§=",§[_loc2_] as §&!r§;
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
