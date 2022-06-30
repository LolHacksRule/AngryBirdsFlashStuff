package §+!8§
{
   import § "§.§'9§;
   import § "§.§'s§;
   import § "§.§5!N§;
   import § "§.§>!e§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§ !;§;
   import §"!I§.§<!$§;
   import §"!I§.§^!2§;
   import §"!I§.§`@§;
   import §"d§.b2PrismaticJoint;
   import §"d§.b2WeldJoint;
   import §+"§.§'! §;
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §6A§.b2Vec2;
   import §=!<§.§8!!§;
   import §@0§.§ $§;
   import §@0§.§!k§;
   import §@0§.§3U§;
   import §@0§.§56§;
   import §@0§.§`>§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!N§
   {
       
      
      protected var §7@§:Vector.<§,_§>;
      
      protected var §9=§:int;
      
      public var §=!V§:§^!2§;
      
      public var §`!N§:Vector.<§2!5§>;
      
      protected var §@!G§:Sprite;
      
      protected var §+!Z§:Sprite;
      
      private var §=U§:Sprite;
      
      private var §4@§:Sprite;
      
      private var §5!X§:Sprite;
      
      protected var §8!B§:Vector.<Texture>;
      
      protected var §5f§:Vector.<§'9§>;
      
      protected var §34§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`n§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9!3§:Boolean = false;
      
      protected var §4n§:Number;
      
      protected var §0!^§:int;
      
      protected var §#§:Vector.<§>!e§>;
      
      protected var §`t§:int = 0;
      
      private var §+!S§:int = 0;
      
      private var § !<§:int = 0;
      
      private var §1=§:int;
      
      private var § !3§:Boolean = true;
      
      private var §7S§:Boolean = true;
      
      public function §-!N§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         var _loc5_:§'9§ = null;
         var _loc6_:§5!N§ = null;
         var _loc7_:§,_§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§,_§ = null;
         var _loc11_:§,_§ = null;
         this.§7@§ = new Vector.<§,_§>();
         this.§`!N§ = new Vector.<§2!5§>();
         this.§8!B§ = new Vector.<Texture>();
         this.§4n§ = this.§<!$§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§#§ = new Vector.<§>!e§>();
         super();
         this.§=!V§ = param1;
         this.§9=§ = 0;
         this.§+!Z§ = param3;
         this.§+!Z§.§0!3§ = false;
         this.§7S§ = true;
         this.§ !3§ = true;
         this.§@!G§ = new Sprite();
         this.§=U§ = new Sprite();
         this.§4@§ = new Sprite();
         this.§5!X§ = new Sprite();
         this.§+!Z§.addChild(this.§@!G§);
         this.§+!Z§.addChild(this.§=U§);
         this.§+!Z§.addChild(this.§4@§);
         this.§+!Z§.addChild(this.§5!X§);
         this.§@!,§(§'! §.§#n§(param2.theme).§@!W§,(this.§=!V§.§8z§.§88§ + this.§=!V§.§8z§.§>9§) / 2,this.§=!V§.§8z§.§"N§ + §`@§.§>!`§);
         this.§1=§ = this.§7@§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8!3§)
         {
            _loc6_ = param2.§@r§(_loc4_);
            if(_loc7_ = this.§@!,§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§<!V§();
         this.§!&§(true);
         this.§5f§ = new Vector.<§'9§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§`,§)
         {
            this.§5f§.push(§'9§.§]%§(param2.§0!e§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§5f§)
         {
            _loc8_ = _loc5_.index1 + this.§1=§;
            _loc9_ = _loc5_.index2 + this.§1=§;
            if(_loc8_ < this.§7@§.length && _loc9_ < this.§7@§.length)
            {
               _loc10_ = this.§7@§[_loc8_];
               _loc11_ = this.§7@§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §'s§.§>t§)
               {
                  _loc5_.§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(_loc5_.§7z§(_loc10_,_loc11_));
               }
               else
               {
                  this.§#§.push(new §>!e§(_loc8_,_loc9_,_loc5_.§07§));
               }
            }
         }
      }
      
      protected function get §<!$§() : Class
      {
         return §<!$§;
      }
      
      public function get §?s§() : Sprite
      {
         return this.§5!X§;
      }
      
      public function get §'<§() : Sprite
      {
         return this.§+!Z§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§7@§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§7@§ = null;
         this.§#§ = null;
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
            this.§+!Z§ = null;
            this.§@!G§ = null;
            this.§5!X§ = null;
            this.§=U§ = null;
            this.§4@§ = null;
         }
         while(this.§8!B§.length > 0)
         {
            _loc1_ = this.§8!B§.pop();
            this.§=!V§.textureManager.§=@§(_loc1_);
         }
      }
      
      private function §!&§(param1:Boolean) : void
      {
         this.§@!G§.visible = param1;
      }
      
      private function §<!V§() : void
      {
         var _loc3_:§,_§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7!f§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§,_§> = new Vector.<§,_§>();
         for each(_loc3_ in this.§7@§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§+!Z§);
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
            this.§"t§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§6! §(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§=!V§.textureManager.§=!Z§(_loc10_);
            this.§8!B§.push(_loc12_);
            (_loc13_ = new §7!f§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§@!G§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §6! §(param1:Vector.<§,_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§,_§ = null;
         var _loc11_:§3U§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-h§.shape).§6p§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^!2§.§3!S§ * param6,_loc12_[0].y / §^!2§.§3!S§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^!2§.§3!S§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^!2§.§3!S§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§4!W§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §"t§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§=!V§.background.§-!+§();
         var _loc5_:§8!!§;
         if(_loc5_ = this.§=!V§.backgroundTextureManager.§8t§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc10_:§,_§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §7Y§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §!!J§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §6D§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §-!O§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §,!K§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §'!;§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8d§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §`!O§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§`t§ > 0;
      }
      
      public function §@!,§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §,_§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§,_§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§ !3§;
            this.§7@§[this.§7@§.length] = _loc11_;
         }
         else
         {
            this.§7@§[this.§7@§.length] = _loc11_;
         }
         if(_loc11_ is §`!O§ && !_loc11_.§,h§())
         {
            this.§=U§.addChild(_loc10_);
            ++this.§`t§;
         }
         else if(_loc11_.front || param9)
         {
            this.§5!X§.addChild(_loc10_);
         }
         else
         {
            this.§4@§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§=!V§.§@!4§(_loc11_);
         }
         if(param6)
         {
            this.§=!V§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §]%§(param1:int, param2:§,_§, param3:§,_§) : §'9§
      {
         var _loc6_:§'9§ = null;
         var _loc4_:int = this.§7@§.indexOf(param2) - this.§1=§;
         var _loc5_:int = this.§7@§.indexOf(param3) - this.§1=§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §'9§(§'s§.§7!K§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(_loc6_.§7z§(param2,param3));
            this.§5f§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function § !>§(param1:§'9§) : void
      {
         if(!(param1.§5!O§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§,_§ = this.§@r§(param1.index1 + this.§1=§);
         var _loc3_:§,_§ = this.§@r§(param1.index2 + this.§1=§);
         this.§=!V§.mLevelEngine.mWorld.§#O§(param1.§5!O§);
         param1.§5!O§ = this.§=!V§.mLevelEngine.mWorld.§^8§(param1.§7z§(_loc2_,_loc3_));
      }
      
      public function §%!=§(param1:§,_§) : Vector.<§'9§>
      {
         var _loc4_:§'9§ = null;
         var _loc2_:Vector.<§'9§> = new Vector.<§'9§>();
         var _loc3_:int = this.§7@§.indexOf(param1) - this.§1=§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§5f§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §"!6§() : Vector.<§'9§>
      {
         return this.§5f§;
      }
      
      public function §4J§(param1:§,_§) : void
      {
         var _loc2_:int = this.§7@§.indexOf(param1) - this.§1=§;
         var _loc3_:int = this.§5f§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§5f§[_loc3_].index1 == _loc2_ || this.§5f§[_loc3_].index2 == _loc2_)
            {
               this.§5f§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §#-§(param1:§,_§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§#§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§#§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§#§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §=`§(param1:§,_§, param2:§,_§) : Boolean
      {
         var _loc3_:int = this.§7@§.indexOf(param1) - this.§1=§;
         var _loc4_:int = this.§7@§.indexOf(param2) - this.§1=§;
         var _loc5_:int = this.§5f§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§5f§[_loc5_].index1 == _loc3_ && this.§5f§[_loc5_].index2 == _loc4_ || this.§5f§[_loc5_].index1 == _loc4_ && this.§5f§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §,_§
      {
         var _loc10_:§,_§ = null;
         var _loc11_:§ $§ = null;
         var _loc12_:§ $§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§ !<§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §`>§.§<!>§(param2);
            _loc10_ = new §-!;§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §`>§.§<!>§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §`>§.§<!>§(param2);
            }
            if(_loc12_.§7!?§ == § $§.§2G§ || _loc12_.§7!?§ == § $§.§#J§)
            {
               _loc10_ = new §1!!§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §,_§(this,param1,this.§=!V§.mLevelEngine.mWorld,this.§=!V§,this.§9=§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§+I§();
         return _loc10_;
      }
      
      protected function §+I§() : String
      {
         var _loc3_:§,_§ = null;
         var _loc1_:int = this.§7@§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§7@§)
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
      
      public function §'2§(param1:Number) : void
      {
         var _loc3_:§,_§ = null;
         var _loc2_:int = this.§7@§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
            if(_loc3_)
            {
               if(_loc3_.§[h§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§0j§();
                  _loc3_.§4!2§();
               }
            }
            _loc2_--;
         }
         this.§&p§(param1);
      }
      
      protected function §&p§(param1:Number) : void
      {
         this.§0!a§(param1);
         this.§ !C§();
      }
      
      private function §0!a§(param1:Number) : void
      {
         var _loc4_:§>!e§ = null;
         var _loc5_:int = 0;
         var _loc6_:§,_§ = null;
         if(this.§#§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§>!e§> = this.§#§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§=!%§ && this.§#§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§9!X§("" + _loc5_))
                  {
                     this.§4!P§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function § !C§() : void
      {
         var _loc1_:§'9§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§5f§)
         {
            if(_loc1_.type == §'s§.§`!d§ && _loc1_.§%0§)
            {
               _loc2_ = (_loc1_.§5!O§ as b2PrismaticJoint).§%!]§();
               _loc3_ = (_loc1_.§5!O§ as b2PrismaticJoint).§^!f§();
               if(_loc1_.§2!;§ && _loc1_.§[z§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§5!O§ as b2PrismaticJoint).§2!K§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§`!N§.push(§2!5§.createExplosion(param1,param2,param3));
         §&M§.§6!#§("TntExplosions","ChannelExplosions");
      }
      
      public function §7J§(param1:Number, param2:Number) : int
      {
         var _loc4_:§,_§ = null;
         var _loc3_:int = this.§7@§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7@§[_loc3_])
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
      
      public function §=!B§(param1:Number, param2:Number) : §,_§
      {
         var _loc4_:§,_§ = null;
         var _loc3_:int = this.§7@§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7@§[_loc3_])
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
      
      public function §1C§(param1:Number, param2:Number) : Vector.<§,_§>
      {
         var _loc5_:§,_§ = null;
         var _loc3_:Vector.<§,_§> = new Vector.<§,_§>();
         var _loc4_:int = this.§7@§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§7@§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §@r§(param1:int) : §,_§
      {
         return this.§7@§[param1];
      }
      
      public function §&!G§(param1:Number, param2:Number) : void
      {
         var _loc4_:§,_§ = null;
         var _loc3_:int = this.§7@§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7@§[_loc3_] as §,_§).§&!G§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §=g§(param1:§,_§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§,_§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§[h§ == param1.§'!V§)
         {
            if(this.§4n§ < this.§<!$§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§4n§ += param2 * this.§<!$§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§0c§().§"l§(param2 * this.§4n§);
            this.§0!^§ = 0;
         }
         else if(this.§0!^§ == 0)
         {
            this.§0!^§ = this.§=!V§.§#!A§;
         }
         if(param1.§[b§() || this.§%!_§(param1) || this.§0!^§ > 0 && this.§=!V§.§#!A§ > this.§0!^§ + this.§<!$§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§<!$§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§<!$§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§<!$§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §&M§.§6!#§("Mighty_Eagle_Selected_1","ChannelBird");
                  §&M§.§6!#§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§<!$§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§0c§().GetPosition().x - this.§<!$§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§0c§().GetPosition().y - this.§<!$§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§<!$§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§%!_§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§@!,§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§<!$§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§0!^§ = 0;
                  _loc7_.§[r§.§-!b§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §;Q§(param1:§,_§, param2:Number) : Boolean
      {
         var _loc5_:§,_§ = null;
         if(this.§<!$§.MIGHTY_EAGLE_USE_SHADE && !this.§9!3§ && this.mMightyEagleTimer > this.§<!$§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§9!3§ = true;
            this.§=!V§.§"!C§();
         }
         this.mMightyEagleTimer += param2;
         this.§=!V§.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,param1.§0c§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§0c§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§!U§.§9Z§(param1.§>R§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§+!"§(this.§<!$§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§`n§)
            {
               this.§`n§ = false;
               this.§=!V§.§4'§();
               param1.§^!H§(§!k§.§[a§);
               this.mSardineCanAdded = false;
               param1.§[r§.§]!S§ = true;
               param1.§[r§.§8=§();
               for each(_loc5_ in this.§7@§)
               {
                  if(_loc5_ && _loc5_.§0T§())
                  {
                     _loc5_.§0c§().SetAwake(true);
                     _loc5_.§0c§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§'i§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§7@§)
               {
                  if(_loc5_ && _loc5_.§0T§())
                  {
                     _loc5_.applyDamage(_loc5_.§'!V§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§0c§().GetPosition().y >= -5.5;
            this.§`n§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§+,§(param2,new Point(this.§<!$§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§<!$§.MIGHTY_EAGLE_Y_CHANGE),this.§<!$§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §@z§() : void
      {
         var _loc1_:§2!5§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,_§ = null;
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
         while(this.§`!N§.length > 0)
         {
            _loc1_ = this.§`!N§.shift();
            _loc2_ = _loc1_.§%!B§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§7@§)
            {
               _loc8_ = _loc6_.§0c§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§0c§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§%!B§)
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
                     _loc6_.§0c§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§]!E§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§[!9§(_loc6_,_loc14_);
               }
            }
            this.§=!V§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§?F§.§<G§,§!U§.§8;§,_loc3_,_loc4_,600,"",§!U§.§]6§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§=!V§.particles.addParticle(§!U§.§2a§,§?F§.§<G§,§!U§.§"R§,_loc3_,_loc4_,_loc16_,"",§!U§.§]6§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §[!9§(param1:§,_§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §!U§.§each §;
      }
      
      public function §>!>§(param1:Number) : void
      {
         var _loc2_:§,_§ = null;
         var _loc3_:int = this.§7@§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7@§[_loc3_];
            if(_loc2_.§9!5§())
            {
               if(this.§=g§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§,h§())
            {
               this.§;Q§(_loc2_,param1);
            }
            else if(this.§%!_§(_loc2_))
            {
               _loc2_.§^!H§(§!k§.§]^§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§^!H§(§!k§.§]^§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§`P§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@z§();
      }
      
      private function §'i§() : void
      {
         var _loc1_:§'9§ = null;
         for each(_loc1_ in this.§5f§)
         {
            if(_loc1_.type != §'s§.§>t§)
            {
               this.§=!V§.mLevelEngine.mWorld.§#O§(_loc1_.§5!O§);
            }
         }
      }
      
      public function §>!F§() : Boolean
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7@§.length)
         {
            _loc2_ = this.§7@§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §%!_§(param1:§,_§) : Boolean
      {
         if(param1 && param1.§-h§.§`K§() != §56§.§&f§ && this.§=!V§.§8z§.§switch§(param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§'9§ = null;
         var _loc7_:§>!e§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§,_§;
         if((_loc5_ = this.§7@§[param1]).§0T§())
         {
            ++this.§+!S§;
         }
         else if(_loc5_.§`P§())
         {
            --this.§`t§;
         }
         if(_loc5_ == this.§=!V§.activeObject)
         {
            this.§=!V§.activeObject = null;
         }
         if(param2)
         {
            this.§=!V§.addScore(_loc5_.§-h§.score,§ !;§.§!9§,true,_loc5_.§0c§().GetPosition().x,_loc5_.§0c§().GetPosition().y - 3,§!U§.§03§(_loc5_.§>R§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§=!V§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+!M§(_loc5_.sprite);
         this.§4J§(_loc5_);
         this.§#-§(_loc5_);
         for each(_loc6_ in this.§5f§)
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
         for each(_loc7_ in this.§#§)
         {
            if(_loc7_.§'!!§ == param1)
            {
               _loc7_.§=!%§ = true;
            }
            if(_loc7_.§'!!§ >= param1)
            {
               --_loc7_.§'!!§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§7@§[param1] = null;
         this.§7@§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§,_§, param2:§?F§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+!M§(param1:Sprite) : void
      {
         if(this.§4@§.contains(param1))
         {
            this.§4@§.removeChild(param1);
            return;
         }
         if(this.§=U§.contains(param1))
         {
            this.§=U§.removeChild(param1);
            return;
         }
         if(this.§@!G§.contains(param1))
         {
            this.§@!G§.removeChild(param1);
            return;
         }
         if(this.§5!X§.contains(param1))
         {
            this.§5!X§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§,_§) : void
      {
         if(param1.§if §().toUpperCase() == "WHITE_EGG" || param1.§`!^§())
         {
            if(param1.§>R§.toUpperCase() == §-!O§.§@!d§)
            {
               this.addExplosions(§2!5§.§=!O§,param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§2!5§.§,!0§,param1.§0c§().GetPosition().x,param1.§0c§().GetPosition().y);
            }
         }
      }
      
      public function §4!P§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§7@§.indexOf(param1),param2,param3,param4);
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         this.§+!Z§.x = -param1;
         this.§+!Z§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§,_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7@§.length)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
            if(_loc3_ && _loc3_.§0T§() && _loc3_.§[h§ > 0)
            {
               if(!param1 || _loc3_.§[r§.mTryToBlink <= 0 && _loc3_.§[r§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[E§(param1:Boolean = false) : int
      {
         var _loc4_:§,_§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§7@§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7@§[_loc3_] as §,_§) && _loc4_.§0T§() && _loc4_.§[h§ > 0)
            {
               if(!param1 || _loc4_.§[r§.mTryToBlink <= 0 && _loc4_.§[r§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §`$§() : int
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7@§)
         {
            if(_loc2_ && (_loc2_.§^M§() || _loc2_.§%t§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §=^§() : int
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7@§)
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
         var _loc3_:§,_§ = null;
         var _loc2_:int = this.§7@§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7@§[_loc2_];
            if(_loc3_ && _loc3_.§0T§() && _loc3_.§[h§ > 0)
            {
               _loc3_.§[r§.mTryToScream = §&!_§.§6!c§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §?_§() : Boolean
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = this.§7@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc2_ && _loc2_.§`P§() && _loc2_.§[h§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = this.§7@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc2_ && _loc2_.§[h§ > 0 && _loc2_.§7!?§ != § $§.§[!W§)
            {
               if(_loc2_.§ !^§() && !_loc2_.§[b§())
               {
                  return false;
               }
               if(_loc2_.§`P§() && _loc2_.§[h§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §7h§(param1:Boolean = false) : §,_§
      {
         var _loc5_:int = 0;
         var _loc6_:§,_§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§7@§.length;
         var _loc3_:int = 1 + Math.random() * this.§[E§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§7@§[_loc5_]) && _loc6_.§0T§() && _loc6_.§[h§ > 0)
               {
                  if(!param1 || _loc6_.§[r§.mTryToBlink <= 0 && _loc6_.§[r§.mTryToScream <= 0)
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
      
      public function §`!_§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§7@§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§7@§[_loc2_] as §,_§).§-h§.score;
            if((this.§7@§[_loc2_] as §,_§).§ !^§())
            {
               _loc1_ += §^!2§.§&6§.getValue() * int((this.§7@§[_loc2_] as §,_§).§'!V§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§=!V§.slingshot.§`!_§());
      }
      
      public function §`!L§(param1:§,_§, param2:§,_§) : Boolean
      {
         if(param1.§`P§() && param2.§`P§())
         {
            return true;
         }
         if(!param1.§8j§() && !param2.§8j§())
         {
            return true;
         }
         return false;
      }
      
      public function §-,§() : void
      {
         this.mSardineCanAdded = true;
         this.§`t§ = 0;
      }
      
      public function §`o§(param1:§,_§, param2:§,_§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§,h§() || param2.§0T§())
            {
               param2.applyDamage(param2.§'!V§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§,h§() || param1.§0T§())
            {
               param1.applyDamage(param1.§'!V§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§<!$§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9!5§() || param2.§9!5§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§`!L§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§>T§(param2.§if §());
         var _loc5_:Number = param1.§8l§(param2.§if §());
         var _loc6_:Number = param2.§>T§(param1.§if §());
         var _loc7_:Number = param2.§8l§(param1.§if §());
         var _loc8_:Number = param1.§0c§().GetMass() * param1.§0c§().GetLinearVelocity().x - param2.§0c§().GetMass() * param2.§0c§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§0c§().GetMass() * param1.§0c§().GetLinearVelocity().y - param2.§0c§().GetMass() * param2.§0c§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§[h§);
         var _loc14_:Number = Math.max(0,param2.§[h§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§`P§(),_loc14_ == param2.§'!V§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§`P§(),_loc13_ == param1.§'!V§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§"!7§(new b2Vec2(param2.§0c§().GetLinearVelocity().x * _loc18_,param2.§0c§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§"!7§(new b2Vec2(param1.§0c§().GetLinearVelocity().x * _loc19_,param1.§0c§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §7!c§() : void
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = this.§7@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc2_ != null && _loc2_.§0T§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[!'§() : void
      {
         var _loc2_:§,_§ = null;
         var _loc1_:int = this.§7@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7@§[_loc1_] as §,_§;
            if(_loc2_ != null && _loc2_.§`!^§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §-?§() : int
      {
         return this.§7@§.length;
      }
      
      public function §]!`§(param1:§&!E§) : void
      {
         var _loc4_:§,_§ = null;
         var _loc5_:§5!N§ = null;
         var _loc6_:§'s§ = null;
         var _loc7_:§'9§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7@§.length)
         {
            if(!(_loc4_ = this.§7@§[_loc2_]).isGround())
            {
               (_loc5_ = new §5!N§()).angle = _loc4_.§4!W§();
               _loc5_.id = _loc4_.§>R§;
               _loc5_.x = _loc4_.§0c§().GetPosition().x;
               _loc5_.y = _loc4_.§0c§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§@!,§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5f§.length)
         {
            _loc7_ = this.§5f§[_loc3_];
            _loc6_ = new §'s§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§>!S§,_loc7_.§2!;§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§[z§,_loc7_.motorSpeed,_loc7_.§%0§,_loc7_.maxTorque);
            param1.§7!F§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §^=§() : void
      {
         var _loc1_:int = 0;
         while(this.§7@§.length > _loc1_)
         {
            if(this.§7@§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§4!P§(this.§7@§[_loc1_]);
            }
         }
      }
      
      public function §'g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7@§.length)
         {
            if(this.§7@§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7@§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§ !3§ = param1;
         this.§!&§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7@§.length)
         {
            if(this.§7@§[_loc2_].isTexture())
            {
               this.§7@§[_loc2_].sprite.visible = !this.§ !3§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§7S§ = param1;
      }
      
      public function §[m§() : Boolean
      {
         return this.§7S§;
      }
      
      public function §0!E§() : int
      {
         return this.§ !<§;
      }
      
      public function §>B§() : int
      {
         return this.§+!S§;
      }
      
      public function §9!X§(param1:String) : §,_§
      {
         var _loc3_:§,_§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7@§.length)
         {
            _loc3_ = this.§7@§[_loc2_] as §,_§;
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
