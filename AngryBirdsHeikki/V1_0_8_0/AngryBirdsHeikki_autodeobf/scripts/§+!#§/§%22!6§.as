package §+!#§
{
   import §#!6§.Texture;
   import §#;§.§42§;
   import §0!&§.§!'§;
   import §0!=§.b2Vec2;
   import §1!+§.§1![§;
   import §2z§.§2!U§;
   import §2z§.§6w§;
   import §2z§.§9!a§;
   import §2z§.§^!8§;
   import §4!e§.§ !'§;
   import §4!e§.§ !0§;
   import §4!e§.§+!Y§;
   import §4!e§.§-a§;
   import §4!e§.§[l§;
   import §8<§.b2PrismaticJoint;
   import §8<§.b2WeldJoint;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §?!R§.§,9§;
   import §?!R§.§2!L§;
   import §?!R§.§?k§;
   import §?!R§.§@$§;
   import §]!C§.§'!!§;
   import §^t§.§<;§;
   import §^t§.§[I§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!6§
   {
       
      
      protected var §59§:Vector.<§9!5§>;
      
      protected var §,X§:int;
      
      public var §7o§:§2!U§;
      
      public var §[!c§:Vector.<§8&§>;
      
      protected var §^I§:Sprite;
      
      protected var § D§:Sprite;
      
      private var §,!^§:Sprite;
      
      private var §%§:Sprite;
      
      private var § ,§:Sprite;
      
      protected var §>E§:Vector.<Texture>;
      
      protected var §;!K§:Vector.<§,9§>;
      
      protected var §,K§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §6F§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §!!+§:Boolean = false;
      
      protected var §`D§:Number;
      
      protected var §#m§:int;
      
      protected var §]B§:Vector.<§@$§>;
      
      protected var §-n§:int = 0;
      
      private var §"Y§:int = 0;
      
      private var §@!B§:int = 0;
      
      private var §+!>§:int;
      
      private var §-! §:Boolean = true;
      
      private var §4F§:Boolean = true;
      
      public function §"!6§(param1:§2!U§, param2:§!'§, param3:Sprite)
      {
         var _loc5_:§,9§ = null;
         var _loc6_:§?k§ = null;
         var _loc7_:§9!5§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§9!5§ = null;
         var _loc11_:§9!5§ = null;
         this.§59§ = new Vector.<§9!5§>();
         this.§[!c§ = new Vector.<§8&§>();
         this.§>E§ = new Vector.<Texture>();
         this.§`D§ = this.§9!a§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§]B§ = new Vector.<§@$§>();
         super();
         this.§7o§ = param1;
         this.§,X§ = 0;
         this.§ D§ = param3;
         this.§ D§.§@N§ = false;
         this.§4F§ = true;
         this.§-! § = true;
         this.§^I§ = new Sprite();
         this.§,!^§ = new Sprite();
         this.§%§ = new Sprite();
         this.§ ,§ = new Sprite();
         this.§ D§.addChild(this.§^I§);
         this.§ D§.addChild(this.§,!^§);
         this.§ D§.addChild(this.§%§);
         this.§ D§.addChild(this.§ ,§);
         this.§?W§(§1![§.§4r§(param2.theme).§!e§,(this.§7o§.§@!a§.§^+§ + this.§7o§.§@!a§.§>!L§) / 2,this.§7o§.§@!a§.§<k§ + §6w§.§?^§);
         this.§+!>§ = this.§59§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§1!D§)
         {
            _loc6_ = param2.§?j§(_loc4_);
            if(_loc7_ = this.§?W§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§>!^§();
         this.§ !H§(true);
         this.§;!K§ = new Vector.<§,9§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§4V§)
         {
            this.§;!K§.push(§,9§.§;s§(param2.§#L§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§;!K§)
         {
            _loc8_ = _loc5_.index1 + this.§+!>§;
            _loc9_ = _loc5_.index2 + this.§+!>§;
            if(_loc8_ < this.§59§.length && _loc9_ < this.§59§.length)
            {
               _loc10_ = this.§59§[_loc8_];
               _loc11_ = this.§59§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §2!L§.§+!6§)
               {
                  _loc5_.§&!^§ = this.§7o§.mLevelEngine.mWorld.§+w§(_loc5_.§,+§(_loc10_,_loc11_));
               }
               else
               {
                  this.§]B§.push(new §@$§(_loc8_,_loc9_,_loc5_.§1!S§));
               }
            }
         }
      }
      
      protected function get §9!a§() : Class
      {
         return §9!a§;
      }
      
      public function get §4!9§() : Sprite
      {
         return this.§ ,§;
      }
      
      public function get §&!'§() : Sprite
      {
         return this.§ D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§59§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§59§ = null;
         this.§]B§ = null;
         if(this.§ D§)
         {
            this.§ D§.dispose();
            this.§ D§ = null;
            this.§^I§ = null;
            this.§ ,§ = null;
            this.§,!^§ = null;
            this.§%§ = null;
         }
         while(this.§>E§.length > 0)
         {
            _loc1_ = this.§>E§.pop();
            this.§7o§.textureManager.§5l§(_loc1_);
         }
      }
      
      private function § !H§(param1:Boolean) : void
      {
         this.§^I§.visible = param1;
      }
      
      private function §>!^§() : void
      {
         var _loc3_:§9!5§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§try§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§9!5§> = new Vector.<§9!5§>();
         for each(_loc3_ in this.§59§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§ D§);
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
            this.§5o§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§=!,§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§7o§.textureManager.§ 2§(_loc10_);
            this.§>E§.push(_loc12_);
            (_loc13_ = new §try§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§^I§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §=!,§(param1:Vector.<§9!5§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§9!5§ = null;
         var _loc11_:§[l§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§"0§.shape).§!!?§();
            _loc13_ = new Rectangle(_loc12_[0].x / §2!U§.§&%§ * param6,_loc12_[0].y / §2!U§.§&%§ * param6,(_loc12_[1].x - _loc12_[0].x) / §2!U§.§&%§ * param6,(_loc12_[1].y - _loc12_[0].y) / §2!U§.§&%§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§;!7§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §5o§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§7o§.background.§#!P§();
         var _loc5_:§'!!§;
         if(_loc5_ = this.§7o§.backgroundTextureManager.§]!B§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!5§
      {
         var _loc10_:§9!5§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §3[§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §,!`§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §&!A§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §@0§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §6!0§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §]!I§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §73§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new § q§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-n§ > 0;
      }
      
      public function §?W§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9!5§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§9!5§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§-! §;
            this.§59§[this.§59§.length] = _loc11_;
         }
         else
         {
            this.§59§[this.§59§.length] = _loc11_;
         }
         if(_loc11_ is § q§ && !_loc11_.§'L§())
         {
            this.§,!^§.addChild(_loc10_);
            ++this.§-n§;
         }
         else if(_loc11_.front || param9)
         {
            this.§ ,§.addChild(_loc10_);
         }
         else
         {
            this.§%§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§7o§.§!!"§(_loc11_);
         }
         if(param6)
         {
            this.§7o§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §;s§(param1:int, param2:§9!5§, param3:§9!5§) : §,9§
      {
         var _loc6_:§,9§ = null;
         var _loc4_:int = this.§59§.indexOf(param2) - this.§+!>§;
         var _loc5_:int = this.§59§.indexOf(param3) - this.§+!>§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §,9§(§2!L§.§=!<§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§&!^§ = this.§7o§.mLevelEngine.mWorld.§+w§(_loc6_.§,+§(param2,param3));
            this.§;!K§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §!5§(param1:§,9§) : void
      {
         if(!(param1.§&!^§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§9!5§ = this.§?j§(param1.index1 + this.§+!>§);
         var _loc3_:§9!5§ = this.§?j§(param1.index2 + this.§+!>§);
         this.§7o§.mLevelEngine.mWorld.§[!%§(param1.§&!^§);
         param1.§&!^§ = this.§7o§.mLevelEngine.mWorld.§+w§(param1.§,+§(_loc2_,_loc3_));
      }
      
      public function §6!;§(param1:§9!5§) : Vector.<§,9§>
      {
         var _loc4_:§,9§ = null;
         var _loc2_:Vector.<§,9§> = new Vector.<§,9§>();
         var _loc3_:int = this.§59§.indexOf(param1) - this.§+!>§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§;!K§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §-`§() : Vector.<§,9§>
      {
         return this.§;!K§;
      }
      
      public function §=!W§(param1:§9!5§) : void
      {
         var _loc2_:int = this.§59§.indexOf(param1) - this.§+!>§;
         var _loc3_:int = this.§;!K§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§;!K§[_loc3_].index1 == _loc2_ || this.§;!K§[_loc3_].index2 == _loc2_)
            {
               this.§;!K§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §,!2§(param1:§9!5§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§]B§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§]B§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§]B§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §7!U§(param1:§9!5§, param2:§9!5§) : Boolean
      {
         var _loc3_:int = this.§59§.indexOf(param1) - this.§+!>§;
         var _loc4_:int = this.§59§.indexOf(param2) - this.§+!>§;
         var _loc5_:int = this.§;!K§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§;!K§[_loc5_].index1 == _loc3_ && this.§;!K§[_loc5_].index2 == _loc4_ || this.§;!K§[_loc5_].index1 == _loc4_ && this.§;!K§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!5§
      {
         var _loc10_:§9!5§ = null;
         var _loc11_:§-a§ = null;
         var _loc12_:§-a§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§@!B§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §+!Y§.§#o§(param2);
            _loc10_ = new §0G§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §+!Y§.§#o§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §+!Y§.§#o§(param2);
            }
            if(_loc12_.§@i§ == §-a§.§&!@§ || _loc12_.§@i§ == §-a§.§-!R§)
            {
               _loc10_ = new §]!,§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §9!5§(this,param1,this.§7o§.mLevelEngine.mWorld,this.§7o§,this.§,X§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§8Z§();
         return _loc10_;
      }
      
      protected function §8Z§() : String
      {
         var _loc3_:§9!5§ = null;
         var _loc1_:int = this.§59§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§59§)
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
      
      public function §`6§(param1:Number) : void
      {
         var _loc3_:§9!5§ = null;
         var _loc2_:int = this.§59§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§59§[_loc2_] as §9!5§;
            if(_loc3_)
            {
               if(_loc3_.§7!M§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§`!'§();
                  _loc3_.§0g§();
               }
            }
            _loc2_--;
         }
         this.§ ![§(param1);
      }
      
      protected function § ![§(param1:Number) : void
      {
         this.§2!`§(param1);
         this.§?!U§();
      }
      
      private function §2!`§(param1:Number) : void
      {
         var _loc4_:§@$§ = null;
         var _loc5_:int = 0;
         var _loc6_:§9!5§ = null;
         if(this.§]B§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§@$§> = this.§]B§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§5![§ && this.§]B§.indexOf(_loc4_) != 1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§=!`§("" + _loc5_))
                  {
                     this.§@,§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §?!U§() : void
      {
         var _loc1_:§,9§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§;!K§)
         {
            if(_loc1_.type == §2!L§.§<!G§ && _loc1_.§<!>§)
            {
               _loc2_ = (_loc1_.§&!^§ as b2PrismaticJoint).§4!=§();
               _loc3_ = (_loc1_.§&!^§ as b2PrismaticJoint).§>Y§();
               if(_loc1_.§&!V§ && _loc1_.§"J§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§&!^§ as b2PrismaticJoint).§#!;§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§[!c§.push(§8&§.createExplosion(param1,param2,param3));
         §42§.§;!`§("TntExplosions","ChannelExplosions");
      }
      
      public function §^M§(param1:Number, param2:Number) : int
      {
         var _loc4_:§9!5§ = null;
         var _loc3_:int = this.§59§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§59§[_loc3_])
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
      
      public function §>+§(param1:Number, param2:Number) : §9!5§
      {
         var _loc4_:§9!5§ = null;
         var _loc3_:int = this.§59§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§59§[_loc3_])
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
      
      public function §-!H§(param1:Number, param2:Number) : Vector.<§9!5§>
      {
         var _loc5_:§9!5§ = null;
         var _loc3_:Vector.<§9!5§> = new Vector.<§9!5§>();
         var _loc4_:int = this.§59§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§59§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §?j§(param1:int) : §9!5§
      {
         return this.§59§[param1];
      }
      
      public function §;G§(param1:Number, param2:Number) : void
      {
         var _loc4_:§9!5§ = null;
         var _loc3_:int = this.§59§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§59§[_loc3_] as §9!5§).§;G§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §4T§(param1:§9!5§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§9!5§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§7!M§ == param1.§+z§)
         {
            if(this.§`D§ < this.§9!a§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§`D§ += param2 * this.§9!a§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§[!H§().§?O§(param2 * this.§`D§);
            this.§#m§ = 0;
         }
         else if(this.§#m§ == 0)
         {
            this.§#m§ = this.§7o§.§?!!§;
         }
         if(param1.§1!'§() || this.§9!U§(param1) || this.§#m§ > 0 && this.§7o§.§?!!§ > this.§#m§ + this.§9!a§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§9!a§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§9!a§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§9!a§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §42§.§;!`§("Mighty_Eagle_Selected_1","ChannelBird");
                  §42§.§;!`§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§9!a§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§[!H§().GetPosition().x - this.§9!a§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§[!H§().GetPosition().y - this.§9!a§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§9!a§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§9!U§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§?W§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§9!a§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#m§ = 0;
                  _loc7_.§8!E§.§"u§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §>!P§(param1:§9!5§, param2:Number) : Boolean
      {
         var _loc5_:§9!5§ = null;
         if(this.§9!a§.MIGHTY_EAGLE_USE_SHADE && !this.§!!+§ && this.mMightyEagleTimer > this.§9!a§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§!!+§ = true;
            this.§7o§.§+!B§();
         }
         this.mMightyEagleTimer += param2;
         this.§7o§.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,param1.§[!H§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§[!H§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§[I§.§6]§(param1.§@c§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§#!X§(this.§9!a§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§6F§)
            {
               this.§6F§ = false;
               this.§7o§.§!!I§();
               param1.§^!Y§(§ !0§.§22§);
               this.mSardineCanAdded = false;
               param1.§8!E§.§;J§ = true;
               param1.§8!E§.§=d§();
               for each(_loc5_ in this.§59§)
               {
                  if(_loc5_ && _loc5_.§8P§())
                  {
                     _loc5_.§[!H§().SetAwake(true);
                     _loc5_.§[!H§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§^!`§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§59§)
               {
                  if(_loc5_ && _loc5_.§8P§())
                  {
                     _loc5_.applyDamage(_loc5_.§+z§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§[!H§().GetPosition().y >= -5.5;
            this.§6F§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§2!;§(param2,new Point(this.§9!a§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§9!a§.MIGHTY_EAGLE_Y_CHANGE),this.§9!a§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §<!7§() : void
      {
         var _loc1_:§8&§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§9!5§ = null;
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
         while(this.§[!c§.length > 0)
         {
            _loc1_ = this.§[!c§.shift();
            _loc2_ = _loc1_.§"!<§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§59§)
            {
               _loc8_ = _loc6_.§[!H§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§[!H§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§"!<§)
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
                     _loc6_.§[!H§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§@w§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§,G§(_loc6_,_loc14_);
               }
            }
            this.§7o§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§<;§.§&!=§,§[I§.§@! §,_loc3_,_loc4_,600,"",§[I§.§6+§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§7o§.particles.addParticle(§[I§.§-R§,§<;§.§&!=§,§[I§.§6G§,_loc3_,_loc4_,_loc16_,"",§[I§.§6+§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §,G§(param1:§9!5§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §[I§.§<l§;
      }
      
      public function §71§(param1:Number) : void
      {
         var _loc2_:§9!5§ = null;
         var _loc3_:int = this.§59§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§59§[_loc3_];
            if(_loc2_.§;d§())
            {
               if(this.§4T§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§'L§())
            {
               this.§>!P§(_loc2_,param1);
            }
            else if(this.§9!U§(_loc2_))
            {
               _loc2_.§^!Y§(§ !0§.§0!N§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§^!Y§(§ !0§.§0!N§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§;j§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§<!7§();
      }
      
      private function §^!`§() : void
      {
         var _loc1_:§,9§ = null;
         for each(_loc1_ in this.§;!K§)
         {
            if(_loc1_.type != §2!L§.§+!6§)
            {
               this.§7o§.mLevelEngine.mWorld.§[!%§(_loc1_.§&!^§);
            }
         }
      }
      
      public function § !4§() : Boolean
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§59§.length)
         {
            _loc2_ = this.§59§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §9!U§(param1:§9!5§) : Boolean
      {
         if(param1 && param1.§"0§.§]!=§() != § !'§.§?d§ && this.§7o§.§@!a§.§<#§(param1.§[!H§().GetPosition().x,param1.§[!H§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§,9§ = null;
         var _loc7_:§@$§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9!5§;
         if((_loc5_ = this.§59§[param1]).§8P§())
         {
            ++this.§"Y§;
         }
         else if(_loc5_.§;j§())
         {
            --this.§-n§;
         }
         if(_loc5_ == this.§7o§.activeObject)
         {
            this.§7o§.activeObject = null;
         }
         if(param2)
         {
            this.§7o§.addScore(_loc5_.§"0§.score,§^!8§.§8K§,true,_loc5_.§[!H§().GetPosition().x,_loc5_.§[!H§().GetPosition().y - 3,§[I§.§&Y§(_loc5_.§@c§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§7o§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§'!%§(_loc5_.sprite);
         this.§=!W§(_loc5_);
         this.§,!2§(_loc5_);
         for each(_loc6_ in this.§;!K§)
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
         for each(_loc7_ in this.§]B§)
         {
            if(_loc7_.§'-§ == param1)
            {
               _loc7_.§5![§ = true;
            }
            if(_loc7_.§'-§ >= param1)
            {
               --_loc7_.§'-§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§59§[param1] = null;
         this.§59§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§9!5§, param2:§<;§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §'!%§(param1:Sprite) : void
      {
         if(this.§%§.contains(param1))
         {
            this.§%§.removeChild(param1);
            return;
         }
         if(this.§,!^§.contains(param1))
         {
            this.§,!^§.removeChild(param1);
            return;
         }
         if(this.§^I§.contains(param1))
         {
            this.§^I§.removeChild(param1);
            return;
         }
         if(this.§ ,§.contains(param1))
         {
            this.§ ,§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§9!5§) : void
      {
         if(param1.§^j§().toUpperCase() == "WHITE_EGG" || param1.§3+§())
         {
            if(param1.§@c§.toUpperCase() == §@0§.§0!V§)
            {
               this.addExplosions(§8&§.§`! §,param1.§[!H§().GetPosition().x,param1.§[!H§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§8&§.§"!E§,param1.§[!H§().GetPosition().x,param1.§[!H§().GetPosition().y);
            }
         }
      }
      
      public function §@,§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§59§.indexOf(param1),param2,param3,param4);
      }
      
      public function §5r§(param1:Number, param2:Number) : void
      {
         this.§ D§.x = -param1;
         this.§ D§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§9!5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§59§.length)
         {
            _loc3_ = this.§59§[_loc2_] as §9!5§;
            if(_loc3_ && _loc3_.§8P§() && _loc3_.§7!M§ > 0)
            {
               if(!param1 || _loc3_.§8!E§.mTryToBlink <= 0 && _loc3_.§8!E§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9W§(param1:Boolean = false) : int
      {
         var _loc4_:§9!5§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§59§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§59§[_loc3_] as §9!5§) && _loc4_.§8P§() && _loc4_.§7!M§ > 0)
            {
               if(!param1 || _loc4_.§8!E§.mTryToBlink <= 0 && _loc4_.§8!E§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §18§() : int
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§59§)
         {
            if(_loc2_ && (_loc2_.§25§() || _loc2_.§]!<§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §8!8§() : int
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§59§)
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
         var _loc3_:§9!5§ = null;
         var _loc2_:int = this.§59§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§59§[_loc2_];
            if(_loc3_ && _loc3_.§8P§() && _loc3_.§7!M§ > 0)
            {
               _loc3_.§8!E§.mTryToScream = §@!!§.§#1§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §+8§() : Boolean
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = this.§59§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§59§[_loc1_] as §9!5§;
            if(_loc2_ && _loc2_.§;j§() && _loc2_.§7!M§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = this.§59§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§59§[_loc1_] as §9!5§;
            if(_loc2_ && _loc2_.§7!M§ > 0 && _loc2_.§@i§ != §-a§.§+H§)
            {
               if(_loc2_.§,!0§() && !_loc2_.§1!'§())
               {
                  return false;
               }
               if(_loc2_.§;j§() && _loc2_.§7!M§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §?3§(param1:Boolean = false) : §9!5§
      {
         var _loc5_:int = 0;
         var _loc6_:§9!5§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§59§.length;
         var _loc3_:int = 1 + Math.random() * this.§9W§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§59§[_loc5_]) && _loc6_.§8P§() && _loc6_.§7!M§ > 0)
               {
                  if(!param1 || _loc6_.§8!E§.mTryToBlink <= 0 && _loc6_.§8!E§.mTryToScream <= 0)
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
      
      public function §=F§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§59§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§59§[_loc2_] as §9!5§).§"0§.score;
            if((this.§59§[_loc2_] as §9!5§).§,!0§())
            {
               _loc1_ += §2!U§.§2m§.getValue() * int((this.§59§[_loc2_] as §9!5§).§+z§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§7o§.slingshot.§=F§());
      }
      
      public function §]v§(param1:§9!5§, param2:§9!5§) : Boolean
      {
         if(param1.§;j§() && param2.§;j§())
         {
            return true;
         }
         if(!param1.§8x§() && !param2.§8x§())
         {
            return true;
         }
         return false;
      }
      
      public function § !"§() : void
      {
         this.mSardineCanAdded = true;
         this.§-n§ = 0;
      }
      
      public function §;q§(param1:§9!5§, param2:§9!5§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§'L§() || param2.§8P§())
            {
               param2.applyDamage(param2.§+z§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§'L§() || param1.§8P§())
            {
               param1.applyDamage(param1.§+z§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§9!a§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§;d§() || param2.§;d§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§]v§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§!z§(param2.§^j§());
         var _loc5_:Number = param1.§;k§(param2.§^j§());
         var _loc6_:Number = param2.§!z§(param1.§^j§());
         var _loc7_:Number = param2.§;k§(param1.§^j§());
         var _loc8_:Number = param1.§[!H§().GetMass() * param1.§[!H§().GetLinearVelocity().x - param2.§[!H§().GetMass() * param2.§[!H§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§[!H§().GetMass() * param1.§[!H§().GetLinearVelocity().y - param2.§[!H§().GetMass() * param2.§[!H§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§7!M§);
         var _loc14_:Number = Math.max(0,param2.§7!M§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§;j§(),_loc14_ == param2.§+z§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§;j§(),_loc13_ == param1.§+z§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§null§(new b2Vec2(param2.§[!H§().GetLinearVelocity().x * _loc18_,param2.§[!H§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§null§(new b2Vec2(param1.§[!H§().GetLinearVelocity().x * _loc19_,param1.§[!H§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §8-§() : void
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = this.§59§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§59§[_loc1_] as §9!5§;
            if(_loc2_ != null && _loc2_.§8P§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §5a§() : void
      {
         var _loc2_:§9!5§ = null;
         var _loc1_:int = this.§59§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§59§[_loc1_] as §9!5§;
            if(_loc2_ != null && _loc2_.§3+§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §-!G§() : int
      {
         return this.§59§.length;
      }
      
      public function §@G§(param1:§!'§) : void
      {
         var _loc4_:§9!5§ = null;
         var _loc5_:§?k§ = null;
         var _loc6_:§2!L§ = null;
         var _loc7_:§,9§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§59§.length)
         {
            if(!(_loc4_ = this.§59§[_loc2_]).isGround())
            {
               (_loc5_ = new §?k§()).angle = _loc4_.§;!7§();
               _loc5_.id = _loc4_.§@c§;
               _loc5_.x = _loc4_.§[!H§().GetPosition().x;
               _loc5_.y = _loc4_.§[!H§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§?W§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;!K§.length)
         {
            _loc7_ = this.§;!K§[_loc3_];
            _loc6_ = new §2!L§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!!§,_loc7_.§&!V§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§"J§,_loc7_.motorSpeed,_loc7_.§<!>§,_loc7_.maxTorque);
            param1.§ ;§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §6c§() : void
      {
         var _loc1_:int = 0;
         while(this.§59§.length > _loc1_)
         {
            if(this.§59§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§@,§(this.§59§[_loc1_]);
            }
         }
      }
      
      public function §>L§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§59§.length)
         {
            if(this.§59§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§59§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-! § = param1;
         this.§ !H§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§59§.length)
         {
            if(this.§59§[_loc2_].isTexture())
            {
               this.§59§[_loc2_].sprite.visible = !this.§-! §;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§4F§ = param1;
      }
      
      public function §6!N§() : Boolean
      {
         return this.§4F§;
      }
      
      public function §=!]§() : int
      {
         return this.§@!B§;
      }
      
      public function §%!'§() : int
      {
         return this.§"Y§;
      }
      
      public function §=!`§(param1:String) : §9!5§
      {
         var _loc3_:§9!5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§59§.length)
         {
            _loc3_ = this.§59§[_loc2_] as §9!5§;
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
