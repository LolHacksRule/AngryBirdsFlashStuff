package §5!G§
{
   import §!!e§.§,!§;
   import §!!e§.§5!%§;
   import §!!e§.§<!S§;
   import §!!e§.§]!S§;
   import §!!e§.§`!S§;
   import §!R§.b2Vec2;
   import §#N§.§-!J§;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §&[§.§,!"§;
   import §-!#§.§5!6§;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §;N§.b2PrismaticJoint;
   import §;N§.b2WeldJoint;
   import §@!b§.§#!5§;
   import §@!b§.§0]§;
   import §@!b§.§66§;
   import §@!b§.§@!k§;
   import §@j§.Texture;
   import §`!d§.§0%§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §for §.§-"§;
   import §for §.§0!i§;
   import §for §.§^N§;
   import §for §.§^x§;
   
   public class §8+§
   {
       
      
      protected var §+!B§:Vector.<§6!Y§>;
      
      protected var §#!4§:int;
      
      public var mLevelMain:§@!k§;
      
      public var §<!A§:Vector.<§ !a§>;
      
      protected var §5!S§:Sprite;
      
      protected var § 0§:Sprite;
      
      private var §"h§:Sprite;
      
      private var §7!K§:Sprite;
      
      private var §@z§:Sprite;
      
      protected var § -§:Vector.<Texture>;
      
      protected var §-U§:Vector.<§0!i§>;
      
      protected var §#L§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §=!I§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>!_§:Boolean = false;
      
      protected var §>_§:Number;
      
      protected var §"!Y§:int;
      
      protected var §0+§:Vector.<§^N§>;
      
      protected var §!=§:int = 0;
      
      private var §=!'§:int = 0;
      
      private var § s§:int = 0;
      
      private var §?0§:int;
      
      private var §"!k§:Boolean = true;
      
      private var § S§:Boolean = true;
      
      public function §8+§(param1:§@!k§, param2:§0%§, param3:Sprite)
      {
         var _loc5_:§0!i§ = null;
         var _loc6_:§-"§ = null;
         var _loc7_:§6!Y§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§6!Y§ = null;
         var _loc11_:§6!Y§ = null;
         this.§+!B§ = new Vector.<§6!Y§>();
         this.§<!A§ = new Vector.<§ !a§>();
         this.§ -§ = new Vector.<Texture>();
         this.§>_§ = this.§0]§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§0+§ = new Vector.<§^N§>();
         super();
         this.mLevelMain = param1;
         this.§#!4§ = 0;
         this.§ 0§ = param3;
         this.§ 0§.§=e§ = false;
         this.§ S§ = true;
         this.§"!k§ = true;
         this.§5!S§ = new Sprite();
         this.§"h§ = new Sprite();
         this.§7!K§ = new Sprite();
         this.§@z§ = new Sprite();
         this.§ 0§.addChild(this.§5!S§);
         this.§ 0§.addChild(this.§"h§);
         this.§ 0§.addChild(this.§7!K§);
         this.§ 0§.addChild(this.§@z§);
         this.§[E§(§-!J§.§case §(param2.theme).§<!i§,(this.mLevelMain.§5H§.§+q§ + this.mLevelMain.§5H§.§6V§) / 2,this.mLevelMain.§5H§.§4R§ + §#!5§.§1!n§);
         this.§?0§ = this.§+!B§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§4!?§)
         {
            _loc6_ = param2.§'r§(_loc4_);
            if(_loc7_ = this.§[E§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§4!@§();
         this.§]!3§(true);
         this.§-U§ = new Vector.<§0!i§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§>w§)
         {
            this.§-U§.push(§0!i§.§&,§(param2.§4!G§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§-U§)
         {
            _loc8_ = _loc5_.index1 + this.§?0§;
            _loc9_ = _loc5_.index2 + this.§?0§;
            if(_loc8_ < this.§+!B§.length && _loc9_ < this.§+!B§.length)
            {
               _loc10_ = this.§+!B§[_loc8_];
               _loc11_ = this.§+!B§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §^x§.§^U§)
               {
                  _loc5_.§2$§ = this.mLevelMain.mLevelEngine.mWorld.§<S§(_loc5_.§#!e§(_loc10_,_loc11_));
               }
               else
               {
                  this.§0+§.push(new §^N§(_loc8_,_loc9_,_loc5_.§>'§));
               }
            }
         }
      }
      
      protected function get §0]§() : Class
      {
         return §0]§;
      }
      
      public function get §^!X§() : Sprite
      {
         return this.§@z§;
      }
      
      public function get §92§() : Sprite
      {
         return this.§ 0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§+!B§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§+!B§ = null;
         this.§0+§ = null;
         if(this.§ 0§)
         {
            this.§ 0§.dispose();
            this.§ 0§ = null;
            this.§5!S§ = null;
            this.§@z§ = null;
            this.§"h§ = null;
            this.§7!K§ = null;
         }
         while(this.§ -§.length > 0)
         {
            _loc1_ = this.§ -§.pop();
            this.mLevelMain.textureManager.§2h§(_loc1_);
         }
      }
      
      private function §]!3§(param1:Boolean) : void
      {
         this.§5!S§.visible = param1;
      }
      
      private function §4!@§() : void
      {
         var _loc3_:§6!Y§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§<7§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§6!Y§> = new Vector.<§6!Y§>();
         for each(_loc3_ in this.§+!B§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§ 0§);
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
            this.§0!A§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§6!E§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§ -§.push(_loc12_);
            (_loc13_ = new §<7§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§5!S§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §6!E§(param1:Vector.<§6!Y§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§6!Y§ = null;
         var _loc11_:§5!%§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-e§.shape).§1!$§();
            _loc13_ = new Rectangle(_loc12_[0].x / §@!k§.§2!J§ * param6,_loc12_[0].y / §@!k§.§2!J§ * param6,(_loc12_[1].x - _loc12_[0].x) / §@!k§.§2!J§ * param6,(_loc12_[1].y - _loc12_[0].y) / §@!k§.§2!J§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§^c§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §0!A§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§'!a§();
         var _loc5_:§,!"§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§4!0§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §6!Y§
      {
         var _loc10_:§6!Y§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §3!9§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §!'§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §'5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §>5§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §?!T§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §^2§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8J§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §'!1§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§!=§ > 0;
      }
      
      public function §[E§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §6!Y§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§6!Y§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§"!k§;
            this.§+!B§[this.§+!B§.length] = _loc11_;
         }
         else
         {
            this.§+!B§[this.§+!B§.length] = _loc11_;
         }
         if(_loc11_ is §'!1§ && !_loc11_.§"!`§())
         {
            this.§"h§.addChild(_loc10_);
            ++this.§!=§;
         }
         else if(_loc11_.front || param9)
         {
            this.§@z§.addChild(_loc10_);
         }
         else
         {
            this.§7!K§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§[?§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §&,§(param1:int, param2:§6!Y§, param3:§6!Y§) : §0!i§
      {
         var _loc6_:§0!i§ = null;
         var _loc4_:int = this.§+!B§.indexOf(param2) - this.§?0§;
         var _loc5_:int = this.§+!B§.indexOf(param3) - this.§?0§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §0!i§(§^x§.§-S§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§2$§ = this.mLevelMain.mLevelEngine.mWorld.§<S§(_loc6_.§#!e§(param2,param3));
            this.§-U§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §9j§(param1:§0!i§) : void
      {
         if(!(param1.§2$§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§6!Y§ = this.§'r§(param1.index1 + this.§?0§);
         var _loc3_:§6!Y§ = this.§'r§(param1.index2 + this.§?0§);
         this.mLevelMain.mLevelEngine.mWorld.§^I§(param1.§2$§);
         param1.§2$§ = this.mLevelMain.mLevelEngine.mWorld.§<S§(param1.§#!e§(_loc2_,_loc3_));
      }
      
      public function §'<§(param1:§6!Y§) : Vector.<§0!i§>
      {
         var _loc4_:§0!i§ = null;
         var _loc2_:Vector.<§0!i§> = new Vector.<§0!i§>();
         var _loc3_:int = this.§+!B§.indexOf(param1) - this.§?0§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§-U§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §,!2§() : Vector.<§0!i§>
      {
         return this.§-U§;
      }
      
      public function §3!J§(param1:§6!Y§) : void
      {
         var _loc2_:int = this.§+!B§.indexOf(param1) - this.§?0§;
         var _loc3_:int = this.§-U§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§-U§[_loc3_].index1 == _loc2_ || this.§-U§[_loc3_].index2 == _loc2_)
            {
               this.§-U§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §>!%§(param1:§6!Y§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§0+§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§0+§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§0+§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2_§(param1:§6!Y§, param2:§6!Y§) : Boolean
      {
         var _loc3_:int = this.§+!B§.indexOf(param1) - this.§?0§;
         var _loc4_:int = this.§+!B§.indexOf(param2) - this.§?0§;
         var _loc5_:int = this.§-U§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§-U§[_loc5_].index1 == _loc3_ && this.§-U§[_loc5_].index2 == _loc4_ || this.§-U§[_loc5_].index1 == _loc4_ && this.§-U§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §6!Y§
      {
         var _loc10_:§6!Y§ = null;
         var _loc11_:§`!S§ = null;
         var _loc12_:§`!S§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§ s§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §<!S§.§<!l§(param2);
            _loc10_ = new §8L§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §<!S§.§<!l§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §<!S§.§<!l§(param2);
            }
            if(_loc12_.§]b§ == §`!S§.§3o§ || _loc12_.§]b§ == §`!S§.§?I§)
            {
               _loc10_ = new §;p§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §6!Y§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§#!4§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§]!f§();
         return _loc10_;
      }
      
      protected function §]!f§() : String
      {
         var _loc3_:§6!Y§ = null;
         var _loc1_:int = this.§+!B§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§+!B§)
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
      
      public function §#w§(param1:Number) : void
      {
         var _loc3_:§6!Y§ = null;
         var _loc2_:int = this.§+!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+!B§[_loc2_] as §6!Y§;
            if(_loc3_)
            {
               if(_loc3_.§%!C§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§#!,§();
                  _loc3_.§%!f§();
               }
            }
            _loc2_--;
         }
         this.§8!@§(param1);
      }
      
      protected function §8!@§(param1:Number) : void
      {
         var _loc3_:§0!i§ = null;
         var _loc4_:§^N§ = null;
         var _loc5_:int = 0;
         var _loc6_:§6!Y§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§0+§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§0+§[_loc2_]).§7e§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§7!J§("" + _loc5_))
                  {
                     this.§&9§(_loc6_,true,true,true);
                     if(_loc2_ > this.§0+§.length)
                     {
                        _loc2_ = this.§0+§.length;
                     }
                  }
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§-U§)
         {
            if(_loc3_.type == §^x§.§,!h§ && _loc3_.§[c§)
            {
               _loc7_ = (_loc3_.§2$§ as b2PrismaticJoint).§'! §();
               _loc8_ = (_loc3_.§2$§ as b2PrismaticJoint).§%$§();
               if(_loc3_.§#^§ && _loc3_.§+!e§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§2$§ as b2PrismaticJoint).§8D§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§<!A§.push(§ !a§.createExplosion(param1,param2,param3));
         §5!6§.§8!G§("TntExplosions","ChannelExplosions");
      }
      
      public function §;d§(param1:Number, param2:Number) : int
      {
         var _loc4_:§6!Y§ = null;
         var _loc3_:int = this.§+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+!B§[_loc3_])
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
      
      public function §<!<§(param1:Number, param2:Number) : §6!Y§
      {
         var _loc4_:§6!Y§ = null;
         var _loc3_:int = this.§+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+!B§[_loc3_])
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
      
      public function §'r§(param1:int) : §6!Y§
      {
         return this.§+!B§[param1];
      }
      
      public function §]!!§(param1:Number, param2:Number) : void
      {
         var _loc4_:§6!Y§ = null;
         var _loc3_:int = this.§+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§+!B§[_loc3_] as §6!Y§).§]!!§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §>x§(param1:§6!Y§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§6!Y§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§%!C§ == param1.§#!2§)
         {
            if(this.§>_§ < this.§0]§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§>_§ += param2 * this.§0]§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§>j§().§<!9§(param2 * this.§>_§);
            this.§"!Y§ = 0;
         }
         else if(this.§"!Y§ == 0)
         {
            this.§"!Y§ = this.mLevelMain.§<"§;
         }
         if(param1.§`=§() || this.§>r§(param1) || this.§"!Y§ > 0 && this.mLevelMain.§<"§ > this.§"!Y§ + this.§0]§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§0]§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§0]§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§0]§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §5!6§.§8!G§("Mighty_Eagle_Selected_1","ChannelBird");
                  §5!6§.§8!G§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§0]§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§>j§().GetPosition().x - this.§0]§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§>j§().GetPosition().y - this.§0]§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§0]§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§>r§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§[E§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§0]§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§"!Y§ = 0;
                  _loc7_.§8!J§.§?!R§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §!!^§(param1:§6!Y§, param2:Number) : Boolean
      {
         var _loc5_:§6!Y§ = null;
         if(this.§0]§.MIGHTY_EAGLE_USE_SHADE && !this.§>!_§ && this.mMightyEagleTimer > this.§0]§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>!_§ = true;
            this.mLevelMain.§=!-§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§"!S§(§^!3§.§!!d§,§3b§.§;-§,§^!3§.§@<§,param1.§>j§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§>j§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§^!3§.§ !N§(param1.§@!i§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§5T§(this.§0]§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§=!I§)
            {
               this.§=!I§ = false;
               this.mLevelMain.§`$§();
               param1.§"z§(§]!S§.§[!,§);
               this.mSardineCanAdded = false;
               param1.§8!J§.§^!]§ = true;
               param1.§8!J§.§[+§();
               for each(_loc5_ in this.§+!B§)
               {
                  if(_loc5_ && _loc5_.§0!-§())
                  {
                     _loc5_.§>j§().SetAwake(true);
                     _loc5_.§>j§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§67§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§+!B§)
               {
                  if(_loc5_ && _loc5_.§0!-§())
                  {
                     _loc5_.applyDamage(_loc5_.§#!2§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§>j§().GetPosition().y >= -5.5;
            this.§=!I§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§&@§(param2,new Point(this.§0]§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§0]§.MIGHTY_EAGLE_Y_CHANGE),this.§0]§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §[!;§() : void
      {
         var _loc1_:§ !a§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§6!Y§ = null;
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
         while(this.§<!A§.length > 0)
         {
            _loc1_ = this.§<!A§.shift();
            _loc2_ = _loc1_.§+!#§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§+!B§)
            {
               _loc8_ = _loc6_.§>j§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§>j§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§+!#§)
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
                     _loc6_.§>j§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§^&§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§`!C§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§"!S§(this.§4=§(_loc1_.type),§3b§.§;-§,§^!3§.§,Q§,_loc3_,_loc4_,600,"",§^!3§.§!l§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§"!S§(§^!3§.§,!Y§,§3b§.§;-§,§^!3§.§@<§,_loc3_,_loc4_,_loc16_,"",§^!3§.§!l§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §`!C§(param1:§6!Y§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §4=§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §^!3§.§<![§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§6!Y§ = null;
         var _loc3_:int = this.§+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§+!B§[_loc3_];
            if(_loc2_.§3!]§())
            {
               if(this.§>x§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§"!`§())
            {
               this.§!!^§(_loc2_,param1);
            }
            else if(this.§>r§(_loc2_))
            {
               _loc2_.§"z§(§]!S§.§7!V§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§"z§(§]!S§.§7!V§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§+!N§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§[!;§();
      }
      
      private function §67§() : void
      {
         var _loc1_:§0!i§ = null;
         for each(_loc1_ in this.§-U§)
         {
            if(_loc1_.type != §^x§.§^U§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§^I§(_loc1_.§2$§);
            }
         }
      }
      
      public function §;x§() : Boolean
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!B§.length)
         {
            _loc2_ = this.§+!B§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §>r§(param1:§6!Y§) : Boolean
      {
         if(param1 && param1.§-e§.§^!,§() != §,!§.§@!0§ && this.mLevelMain.§5H§.§>U§(param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§0!i§ = null;
         var _loc7_:§^N§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§6!Y§;
         if((_loc5_ = this.§+!B§[param1]).§0!-§())
         {
            ++this.§=!'§;
         }
         else if(_loc5_.§+!N§())
         {
            --this.§!=§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§-e§.score,§66§.§&8§,true,_loc5_.§>j§().GetPosition().x,_loc5_.§>j§().GetPosition().y - 3,§^!3§.§6O§(_loc5_.§@!i§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§8K§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§;!F§(_loc5_.sprite);
         this.§3!J§(_loc5_);
         this.§>!%§(_loc5_);
         for each(_loc6_ in this.§-U§)
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
         for each(_loc7_ in this.§0+§)
         {
            if(_loc7_.§;!V§ == param1)
            {
               _loc7_.§7e§ = true;
            }
            if(_loc7_.§;!V§ >= param1)
            {
               --_loc7_.§;!V§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§+!B§[param1] = null;
         this.§+!B§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§6!Y§, param2:§3b§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §;!F§(param1:Sprite) : void
      {
         if(this.§7!K§.contains(param1))
         {
            this.§7!K§.removeChild(param1);
            return;
         }
         if(this.§"h§.contains(param1))
         {
            this.§"h§.removeChild(param1);
            return;
         }
         if(this.§5!S§.contains(param1))
         {
            this.§5!S§.removeChild(param1);
            return;
         }
         if(this.§@z§.contains(param1))
         {
            this.§@z§.removeChild(param1);
            return;
         }
      }
      
      protected function §8K§(param1:§6!Y§) : void
      {
         if(param1.§4!V§().toUpperCase() == "WHITE_EGG" || param1.§2!%§())
         {
            if(param1.§@!i§.toUpperCase() == §>5§.§[!V§)
            {
               this.addExplosions(§ !a§.§&N§,param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§ !a§.§3!$§,param1.§>j§().GetPosition().x,param1.§>j§().GetPosition().y);
            }
         }
      }
      
      public function §&9§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§+!B§.indexOf(param1),param2,param3,param4);
      }
      
      public function §&f§(param1:Number, param2:Number) : void
      {
         this.§ 0§.x = -param1;
         this.§ 0§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§6!Y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!B§.length)
         {
            _loc3_ = this.§+!B§[_loc2_] as §6!Y§;
            if(_loc3_ && _loc3_.§0!-§() && _loc3_.§%!C§ > 0)
            {
               if(!param1 || _loc3_.§8!J§.mTryToBlink <= 0 && _loc3_.§8!J§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §"y§(param1:Boolean = false) : int
      {
         var _loc4_:§6!Y§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§+!B§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+!B§[_loc3_] as §6!Y§) && _loc4_.§0!-§() && _loc4_.§%!C§ > 0)
            {
               if(!param1 || _loc4_.§8!J§.mTryToBlink <= 0 && _loc4_.§8!J§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §6Z§() : int
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+!B§)
         {
            if(_loc2_ && (_loc2_.§`!g§() || _loc2_.§06§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §2!@§() : int
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+!B§)
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
         var _loc3_:§6!Y§ = null;
         var _loc2_:int = this.§+!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+!B§[_loc2_];
            if(_loc3_ && _loc3_.§0!-§() && _loc3_.§%!C§ > 0)
            {
               _loc3_.§8!J§.mTryToScream = §]^§.§@X§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<r§() : Boolean
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = this.§+!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!B§[_loc1_] as §6!Y§;
            if(_loc2_ && _loc2_.§+!N§() && _loc2_.§%!C§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = this.§+!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!B§[_loc1_] as §6!Y§;
            if(_loc2_ && _loc2_.§%!C§ > 0 && _loc2_.§]b§ != §`!S§.§ 1§)
            {
               if(_loc2_.§`!e§() && !_loc2_.§`=§())
               {
                  return false;
               }
               if(_loc2_.§+!N§() && _loc2_.§%!C§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §2G§(param1:Boolean = false) : §6!Y§
      {
         var _loc5_:int = 0;
         var _loc6_:§6!Y§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§+!B§.length;
         var _loc3_:int = 1 + Math.random() * this.§"y§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§+!B§[_loc5_]) && _loc6_.§0!-§() && _loc6_.§%!C§ > 0)
               {
                  if(!param1 || _loc6_.§8!J§.mTryToBlink <= 0 && _loc6_.§8!J§.mTryToScream <= 0)
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
      
      public function §4!C§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§+!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§+!B§[_loc2_] as §6!Y§).§-e§.score;
            if((this.§+!B§[_loc2_] as §6!Y§).§`!e§())
            {
               _loc1_ += §@!k§.§]!^§.getValue() * int((this.§+!B§[_loc2_] as §6!Y§).§#!2§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§4!C§());
      }
      
      public function §4!5§(param1:§6!Y§, param2:§6!Y§) : Boolean
      {
         if(param1.§+!N§() && param2.§+!N§())
         {
            return true;
         }
         if(!param1.§+A§() && !param2.§+A§())
         {
            return true;
         }
         return false;
      }
      
      public function §[!!§() : void
      {
         this.mSardineCanAdded = true;
         this.§!=§ = 0;
      }
      
      public function §,U§(param1:§6!Y§, param2:§6!Y§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§"!`§() || param2.§0!-§())
            {
               param2.applyDamage(param2.§#!2§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§"!`§() || param1.§0!-§())
            {
               param1.applyDamage(param1.§#!2§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§0]§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§3!]§() || param2.§3!]§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§4!5§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§'h§(param2.§4!V§());
         var _loc5_:Number = param1.§;§(param2.§4!V§());
         var _loc6_:Number = param2.§'h§(param1.§4!V§());
         var _loc7_:Number = param2.§;§(param1.§4!V§());
         var _loc8_:Number = param1.§>j§().GetMass() * param1.§>j§().GetLinearVelocity().x - param2.§>j§().GetMass() * param2.§>j§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§>j§().GetMass() * param1.§>j§().GetLinearVelocity().y - param2.§>j§().GetMass() * param2.§>j§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§%!C§);
         var _loc14_:Number = Math.max(0,param2.§%!C§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§+!N§(),_loc14_ == param2.§#!2§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§+!N§(),_loc13_ == param1.§#!2§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§^!2§(new b2Vec2(param2.§>j§().GetLinearVelocity().x * _loc18_,param2.§>j§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§^!2§(new b2Vec2(param1.§>j§().GetLinearVelocity().x * _loc19_,param1.§>j§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §7!R§() : void
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = this.§+!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!B§[_loc1_] as §6!Y§;
            if(_loc2_ != null && _loc2_.§0!-§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1$§() : void
      {
         var _loc2_:§6!Y§ = null;
         var _loc1_:int = this.§+!B§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!B§[_loc1_] as §6!Y§;
            if(_loc2_ != null && _loc2_.§2!%§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §9!]§() : int
      {
         return this.§+!B§.length;
      }
      
      public function § Y§(param1:§0%§) : void
      {
         var _loc4_:§6!Y§ = null;
         var _loc5_:§-"§ = null;
         var _loc6_:§^x§ = null;
         var _loc7_:§0!i§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+!B§.length)
         {
            if(!(_loc4_ = this.§+!B§[_loc2_]).isGround())
            {
               (_loc5_ = new §-"§()).angle = _loc4_.§^c§();
               _loc5_.id = _loc4_.§@!i§;
               _loc5_.x = _loc4_.§>j§().GetPosition().x;
               _loc5_.y = _loc4_.§>j§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§[E§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-U§.length)
         {
            _loc7_ = this.§-U§[_loc3_];
            _loc6_ = new §^x§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§3^§,_loc7_.§#^§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§+!e§,_loc7_.motorSpeed,_loc7_.§[c§,_loc7_.maxTorque);
            param1.§8&§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §4!2§() : void
      {
         var _loc1_:int = 0;
         while(this.§+!B§.length > _loc1_)
         {
            if(this.§+!B§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§&9§(this.§+!B§[_loc1_]);
            }
         }
      }
      
      public function § !%§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§+!B§.length)
         {
            if(this.§+!B§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§+!B§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§"!k§ = param1;
         this.§]!3§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+!B§.length)
         {
            if(this.§+!B§[_loc2_].isTexture())
            {
               this.§+!B§[_loc2_].sprite.visible = !this.§"!k§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§ S§ = param1;
      }
      
      public function §9K§() : Boolean
      {
         return this.§ S§;
      }
      
      public function §+!L§() : int
      {
         return this.§ s§;
      }
      
      public function §function§() : int
      {
         return this.§=!'§;
      }
      
      public function §7!J§(param1:String) : §6!Y§
      {
         var _loc3_:§6!Y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!B§.length)
         {
            _loc3_ = this.§+!B§[_loc2_] as §6!Y§;
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
