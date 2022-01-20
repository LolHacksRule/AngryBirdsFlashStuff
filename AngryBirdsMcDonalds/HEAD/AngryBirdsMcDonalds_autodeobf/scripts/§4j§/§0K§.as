package §4j§
{
   import § !J§.§%M§;
   import § !J§.§,![§;
   import § !J§.§0!!§;
   import § !J§.§[m§;
   import §!!M§.b2PrismaticJoint;
   import §!!M§.b2WeldJoint;
   import §!_§.§7!m§;
   import §&7§.Texture;
   import §+S§.b2Vec2;
   import §,4§.§0B§;
   import §9!§.§']§;
   import §9!§.§,!l§;
   import §9!§.§4!j§;
   import §9!§.§9'§;
   import §9!§.§?g§;
   import §9`§.§8!P§;
   import §=!9§.§%W§;
   import §=!9§.§,[§;
   import §=!9§.§=g§;
   import §=!9§.§?4§;
   import §[!4§.§-#§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0K§
   {
       
      
      protected var §@'§:Vector.<§9M§>;
      
      protected var §5?§:int;
      
      public var mLevelMain:§%M§;
      
      public var §,V§:Vector.<§%!?§>;
      
      protected var §^i§:Sprite;
      
      protected var §?q§:Sprite;
      
      private var §[U§:Sprite;
      
      private var §4x§:Sprite;
      
      private var §8G§:Sprite;
      
      protected var §!q§:Vector.<Texture>;
      
      protected var §5q§:Vector.<§%W§>;
      
      protected var §9G§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var § Z§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §[]§:Boolean = false;
      
      protected var §#'§:Number;
      
      protected var §7!I§:int;
      
      protected var §`$§:Vector.<§,[§>;
      
      protected var §try §:int = 0;
      
      private var §!!%§:int = 0;
      
      private var §#!§:int = 0;
      
      protected var §3I§:int;
      
      private var §<2§:Boolean = true;
      
      private var §"!C§:Boolean = true;
      
      public function §0K§(param1:§%M§, param2:§0B§, param3:Sprite)
      {
         var _loc5_:§%W§ = null;
         var _loc6_:§?4§ = null;
         var _loc7_:§9M§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§9M§ = null;
         var _loc11_:§9M§ = null;
         this.§@'§ = new Vector.<§9M§>();
         this.§,V§ = new Vector.<§%!?§>();
         this.§!q§ = new Vector.<Texture>();
         this.§#'§ = this.§,![§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§`$§ = new Vector.<§,[§>();
         super();
         this.mLevelMain = param1;
         this.§5?§ = 0;
         this.§?q§ = param3;
         this.§?q§.§77§ = false;
         this.§"!C§ = true;
         this.§<2§ = true;
         this.§^i§ = new Sprite();
         this.§[U§ = new Sprite();
         this.§4x§ = new Sprite();
         this.§8G§ = new Sprite();
         this.§?q§.addChild(this.§^i§);
         this.§?q§.addChild(this.§[U§);
         this.§?q§.addChild(this.§4x§);
         this.§?q§.addChild(this.§8G§);
         this.§+"§(§7!m§.§;]§(param2.theme).§0O§,(this.mLevelMain.§"6§.§&8§ + this.mLevelMain.§"6§.§!!K§) / 2,this.mLevelMain.§"6§.§[! § + §0!!§.§ !%§);
         this.§3I§ = this.§@'§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§%b§)
         {
            _loc6_ = param2.§=!&§(_loc4_);
            if(_loc7_ = this.§+"§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§^!B§();
         this.§%!k§(true);
         this.§5q§ = new Vector.<§%W§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§^$§)
         {
            this.§5q§.push(§%W§.§%q§(param2.§%!m§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§5q§)
         {
            _loc8_ = _loc5_.index1 + this.§3I§;
            _loc9_ = _loc5_.index2 + this.§3I§;
            if(_loc8_ < this.§@'§.length && _loc9_ < this.§@'§.length)
            {
               _loc10_ = this.§@'§[_loc8_];
               _loc11_ = this.§@'§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §=g§.§ ![§)
               {
                  _loc5_.§#%§ = this.mLevelMain.mLevelEngine.mWorld.§'!"§(_loc5_.§,!I§(_loc10_,_loc11_));
               }
               else
               {
                  this.§`$§.push(new §,[§(_loc8_,_loc9_,_loc5_.§>!B§));
               }
            }
         }
      }
      
      protected function get §,![§() : Class
      {
         return §,![§;
      }
      
      public function get §@!%§() : Sprite
      {
         return this.§8G§;
      }
      
      public function get §,!;§() : Sprite
      {
         return this.§?q§;
      }
      
      public function get §#!q§() : Sprite
      {
         return this.§4x§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§@'§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§@'§ = null;
         this.§`$§ = null;
         if(this.§?q§)
         {
            this.§?q§.dispose();
            this.§?q§ = null;
            this.§^i§ = null;
            this.§8G§ = null;
            this.§[U§ = null;
            this.§4x§ = null;
         }
         while(this.§!q§.length > 0)
         {
            _loc1_ = this.§!q§.pop();
            this.mLevelMain.textureManager.§`q§(_loc1_);
         }
      }
      
      private function §%!k§(param1:Boolean) : void
      {
         this.§^i§.visible = param1;
      }
      
      private function §^!B§() : void
      {
         var _loc3_:§9M§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§+i§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§9M§> = new Vector.<§9M§>();
         for each(_loc3_ in this.§@'§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§?q§);
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
            this.§>!#§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§@!c§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§!q§.push(_loc12_);
            (_loc13_ = new §+i§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§^i§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §@!c§(param1:Vector.<§9M§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§9M§ = null;
         var _loc11_:§4!j§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§?!D§.shape).§-g§();
            _loc13_ = new Rectangle(_loc12_[0].x / §%M§.§'!Y§ * param6,_loc12_[0].y / §%M§.§'!Y§ * param6,(_loc12_[1].x - _loc12_[0].x) / §%M§.§'!Y§ * param6,(_loc12_[1].y - _loc12_[0].y) / §%M§.§'!Y§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§&!G§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §>!#§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§&'§();
         var _loc5_:§8!P§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§#P§(_loc4_))
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
      
      public function §]!k§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9M§
      {
         var _loc10_:§?g§ = §,!l§.§<!<§(param2);
         return new §4y§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9M§
      {
         var _loc10_:§9M§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §#!o§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §%!o§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §-!+§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §;t§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §>0§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §7!l§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §%#§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §!!C§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §@!K§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§try § > 0;
      }
      
      public function §+"§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9M§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§9M§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§<2§;
            this.§@'§[this.§@'§.length] = _loc11_;
         }
         else
         {
            this.§@'§[this.§@'§.length] = _loc11_;
         }
         if(_loc11_ is §@!K§ && !_loc11_.§@q§())
         {
            this.§[U§.addChild(_loc10_);
            ++this.§try §;
         }
         else if(_loc11_.front || param9)
         {
            this.§8G§.addChild(_loc10_);
         }
         else
         {
            this.§4x§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§&!S§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §%q§(param1:int, param2:§9M§, param3:§9M§) : §%W§
      {
         var _loc6_:§%W§ = null;
         var _loc4_:int = this.§@'§.indexOf(param2) - this.§3I§;
         var _loc5_:int = this.§@'§.indexOf(param3) - this.§3I§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §%W§(§=g§.§-!k§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§#%§ = this.mLevelMain.mLevelEngine.mWorld.§'!"§(_loc6_.§,!I§(param2,param3));
            this.§5q§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §-!4§(param1:§%W§) : void
      {
         if(!(param1.§#%§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§9M§ = this.§=!&§(param1.index1 + this.§3I§);
         var _loc3_:§9M§ = this.§=!&§(param1.index2 + this.§3I§);
         this.mLevelMain.mLevelEngine.mWorld.§ each§(param1.§#%§);
         param1.§#%§ = this.mLevelMain.mLevelEngine.mWorld.§'!"§(param1.§,!I§(_loc2_,_loc3_));
      }
      
      public function §7!@§(param1:§9M§) : Vector.<§%W§>
      {
         var _loc4_:§%W§ = null;
         var _loc2_:Vector.<§%W§> = new Vector.<§%W§>();
         var _loc3_:int = this.§@'§.indexOf(param1) - this.§3I§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§5q§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §43§() : Vector.<§%W§>
      {
         return this.§5q§;
      }
      
      public function §4P§(param1:§9M§) : void
      {
         var _loc2_:int = this.§@'§.indexOf(param1) - this.§3I§;
         var _loc3_:int = this.§5q§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§5q§[_loc3_].index1 == _loc2_ || this.§5q§[_loc3_].index2 == _loc2_)
            {
               this.§5q§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §"p§(param1:§9M§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§`$§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§`$§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§`$§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §+!]§(param1:§9M§, param2:§9M§) : Boolean
      {
         var _loc3_:int = this.§@'§.indexOf(param1) - this.§3I§;
         var _loc4_:int = this.§@'§.indexOf(param2) - this.§3I§;
         var _loc5_:int = this.§5q§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§5q§[_loc5_].index1 == _loc3_ && this.§5q§[_loc5_].index2 == _loc4_ || this.§5q§[_loc5_].index1 == _loc4_ && this.§5q§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9M§
      {
         var _loc10_:§9M§ = null;
         var _loc11_:§?g§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§#!§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§]!k§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §,!l§.§<!<§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §,!l§.§<!<§(param2);
            }
            if(_loc11_.§^!U§ == §?g§.§ L§ || _loc11_.§^!U§ == §?g§.§+H§)
            {
               _loc10_ = new §;!O§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §9M§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§5?§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§]!7§();
         return _loc10_;
      }
      
      protected function §]!7§() : String
      {
         var _loc3_:§9M§ = null;
         var _loc1_:int = this.§@'§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§@'§)
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
      
      public function §]h§(param1:Number) : void
      {
         var _loc3_:§9M§ = null;
         var _loc2_:int = this.§@'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@'§[_loc2_] as §9M§;
            if(_loc3_)
            {
               if(_loc3_.§4!6§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§]!Y§();
                  _loc3_.§'$§();
               }
            }
            _loc2_--;
         }
         this.§9!g§(param1);
      }
      
      protected function §9!g§(param1:Number) : void
      {
         this.§8!X§(param1);
         this.§<![§();
      }
      
      private function §8!X§(param1:Number) : void
      {
         var _loc4_:§,[§ = null;
         var _loc5_:int = 0;
         var _loc6_:§9M§ = null;
         if(this.§`$§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§,[§> = this.§`$§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§>U§ && this.§`$§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§6!'§("" + _loc5_))
                  {
                     this.§8<§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §<![§() : void
      {
         var _loc1_:§%W§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§5q§)
         {
            if(_loc1_.type == §=g§.§0!Q§ && _loc1_.§=M§)
            {
               _loc2_ = (_loc1_.§#%§ as b2PrismaticJoint).§3!N§();
               _loc3_ = (_loc1_.§#%§ as b2PrismaticJoint).§5#§();
               if(_loc1_.§!0§ && _loc1_.§6L§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§#%§ as b2PrismaticJoint).§2#§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§9M§> = null) : void
      {
         this.§,V§.push(§%!?§.createExplosion(param1,param2,param3,param4));
         §-#§.§4h§("TntExplosions","ChannelExplosions");
      }
      
      public function §[!o§(param1:Number, param2:Number) : int
      {
         var _loc4_:§9M§ = null;
         var _loc3_:int = this.§@'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@'§[_loc3_])
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
      
      public function §9!7§(param1:Number, param2:Number) : §9M§
      {
         var _loc4_:§9M§ = null;
         var _loc3_:int = this.§@'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@'§[_loc3_])
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
      
      public function §0!d§(param1:Number, param2:Number) : Vector.<§9M§>
      {
         var _loc5_:§9M§ = null;
         var _loc3_:Vector.<§9M§> = new Vector.<§9M§>();
         var _loc4_:int = this.§@'§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§@'§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §=!&§(param1:int) : §9M§
      {
         return this.§@'§[param1];
      }
      
      public function §3'§(param1:Number, param2:Number) : void
      {
         var _loc4_:§9M§ = null;
         var _loc3_:int = this.§@'§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@'§[_loc3_] as §9M§).§3'§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §]I§(param1:§9M§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§9M§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§4!6§ == param1.§%!^§)
         {
            if(this.§#'§ < this.§,![§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§#'§ += param2 * this.§,![§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§3H§().§->§(param2 * this.§#'§);
            this.§7!I§ = 0;
         }
         else if(this.§7!I§ == 0)
         {
            this.§7!I§ = this.mLevelMain.§>b§;
         }
         if(param1.§7!;§() || this.§-+§(param1) || this.§7!I§ > 0 && this.mLevelMain.§>b§ > this.§7!I§ + this.§,![§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§,![§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§,![§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§,![§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §-#§.§4h§("Mighty_Eagle_Selected_1","ChannelBird");
                  §-#§.§4h§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§,![§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§3H§().GetPosition().x - this.§,![§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§3H§().GetPosition().y - this.§,![§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§,![§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§-+§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§+"§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§,![§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§7!I§ = 0;
                  _loc7_.§%!$§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §-!T§(param1:§9M§, param2:Number) : Boolean
      {
         var _loc5_:§9M§ = null;
         if(this.§,![§.MIGHTY_EAGLE_USE_SHADE && !this.§[]§ && this.mMightyEagleTimer > this.§,![§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§[]§ = true;
            this.mLevelMain.§'! §();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§3X§(§,]§.§"@§,§7!N§.§<!Z§,§,]§.§in §,param1.§3H§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§3H§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§,]§.§0!l§(param1.§`!p§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§%!_§(this.§,![§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§ Z§)
            {
               this.§ Z§ = false;
               this.mLevelMain.§&B§();
               param1.§@!!§(§9'§.§,!"§);
               this.mSardineCanAdded = false;
               param1.§%!$§.§;r§ = true;
               param1.§%!$§.§;b§();
               for each(_loc5_ in this.§@'§)
               {
                  if(_loc5_ && _loc5_.§?!#§())
                  {
                     _loc5_.§3H§().SetAwake(true);
                     _loc5_.§3H§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§8!l§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§@'§)
               {
                  if(_loc5_ && _loc5_.§?!#§())
                  {
                     _loc5_.applyDamage(_loc5_.§%!^§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§3H§().GetPosition().y >= -5.5;
            this.§ Z§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§0!h§(param2,new Point(this.§,![§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§,![§.MIGHTY_EAGLE_Y_CHANGE),this.§,![§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §6!2§() : void
      {
         var _loc1_:§%!?§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§9M§ = null;
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
         while(this.§,V§.length > 0)
         {
            _loc1_ = this.§,V§.shift();
            _loc2_ = _loc1_.§8q§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§@'§)
            {
               if(!(_loc1_.§^k§ != null && _loc1_.§^k§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§3H§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§3H§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§8q§)
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
                        _loc6_.§3H§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§0g§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§"!l§(_loc6_,_loc14_);
                  }
               }
            }
            this.mLevelMain.particles.§3X§(this.§4i§(_loc1_.type),§7!N§.§<!Z§,§,]§.§%0§,_loc3_,_loc4_,600,"",§,]§.§7![§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§3X§(§,]§.§"!E§,§7!N§.§<!Z§,§,]§.§in §,_loc3_,_loc4_,_loc16_,"",§,]§.§7![§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §"!l§(param1:§9M§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §4i§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §,]§.§`O§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§9M§ = null;
         var _loc3_:int = this.§@'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@'§[_loc3_];
            if(_loc2_.§9,§())
            {
               if(this.§]I§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§@q§())
            {
               this.§-!T§(_loc2_,param1);
            }
            else if(this.§-+§(_loc2_))
            {
               _loc2_.§@!!§(§9'§.§0,§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@!!§(§9'§.§0,§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§0!P§() || _loc2_.§@!Z§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§6!2§();
      }
      
      private function §8!l§() : void
      {
         var _loc1_:§%W§ = null;
         for each(_loc1_ in this.§5q§)
         {
            if(_loc1_.type != §=g§.§ ![§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§ each§(_loc1_.§#%§);
            }
         }
      }
      
      public function §,!$§() : Boolean
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@'§.length)
         {
            _loc2_ = this.§@'§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-+§(param1:§9M§) : Boolean
      {
         if(param1 && param1.§?!D§.§;!#§() != §']§.§5!U§ && this.mLevelMain.§"6§.§9h§(param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§%W§ = null;
         var _loc7_:§,[§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9M§;
         if((_loc5_ = this.§@'§[param1]).§?!#§())
         {
            ++this.§!!%§;
         }
         else if(_loc5_.§0!P§())
         {
            --this.§try §;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§?!D§.score,§[m§.§56§,true,_loc5_.§3H§().GetPosition().x,_loc5_.§3H§().GetPosition().y - 3,§,]§.§ N§(_loc5_.§`!p§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§2!!§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§1R§(_loc5_.sprite);
         this.§4P§(_loc5_);
         this.§"p§(_loc5_);
         for each(_loc6_ in this.§5q§)
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
         for each(_loc7_ in this.§`$§)
         {
            if(_loc7_.§"M§ == param1)
            {
               _loc7_.§>U§ = true;
            }
            if(_loc7_.§"M§ >= param1)
            {
               --_loc7_.§"M§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§@'§[param1] = null;
         this.§@'§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§9M§, param2:§7!N§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §1R§(param1:Sprite) : void
      {
         if(this.§4x§.contains(param1))
         {
            this.§4x§.removeChild(param1);
            return;
         }
         if(this.§[U§.contains(param1))
         {
            this.§[U§.removeChild(param1);
            return;
         }
         if(this.§^i§.contains(param1))
         {
            this.§^i§.removeChild(param1);
            return;
         }
         if(this.§8G§.contains(param1))
         {
            this.§8G§.removeChild(param1);
            return;
         }
      }
      
      protected function §2!!§(param1:§9M§) : void
      {
         if(param1.§=B§().toUpperCase() == "WHITE_EGG" || param1.§;6§())
         {
            if(param1.§`!p§.toUpperCase() == §;t§.§@!T§)
            {
               this.addExplosions(§%!?§.§]Z§,param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§%!?§.§'!p§,param1.§3H§().GetPosition().x,param1.§3H§().GetPosition().y);
            }
         }
      }
      
      public function §8<§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§@'§.indexOf(param1),param2,param3,param4);
      }
      
      public function §5[§(param1:Number, param2:Number) : void
      {
         this.§?q§.x = -param1;
         this.§?q§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§9M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@'§.length)
         {
            _loc3_ = this.§@'§[_loc2_] as §9M§;
            if(_loc3_ && _loc3_.§?!#§() && _loc3_.§4!6§ > 0)
            {
               if(!param1 || _loc3_.§%!$§.mTryToBlink <= 0 && _loc3_.§%!$§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §4!E§(param1:Boolean = false) : int
      {
         var _loc4_:§9M§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§@'§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@'§[_loc3_] as §9M§) && _loc4_.§?!#§() && _loc4_.§4!6§ > 0)
            {
               if(!param1 || _loc4_.§%!$§.mTryToBlink <= 0 && _loc4_.§%!$§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §`!;§() : int
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@'§)
         {
            if(_loc2_ && (_loc2_.dynamic() || _loc2_.§=z§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §<!A§() : int
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@'§)
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
         var _loc3_:§9M§ = null;
         var _loc2_:int = this.§@'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@'§[_loc2_];
            if(_loc3_ && _loc3_.§?!#§() && _loc3_.§4!6§ > 0)
            {
               _loc3_.§%!$§.mTryToScream = §?!c§.§%R§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §4L§() : Boolean
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = this.§@'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@'§[_loc1_] as §9M§;
            if(_loc2_ && _loc2_.§0!P§() && _loc2_.§4!6§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = this.§@'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@'§[_loc1_] as §9M§;
            if(_loc2_ && _loc2_.§4!6§ > 0 && _loc2_.§^!U§ != §?g§.§'r§)
            {
               if(_loc2_.§2!S§() && !_loc2_.§7!;§())
               {
                  return false;
               }
               if(_loc2_.§0!P§() && _loc2_.§4!6§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §@!2§(param1:Boolean = false) : §9M§
      {
         var _loc7_:§4y§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§@'§.length;
         var _loc3_:int = this.§4!E§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§@'§[_loc6_] as §4y§) && _loc7_.§?!#§() && _loc7_.§4!6§ > 0)
            {
               if(!param1 || _loc7_.§%!$§.mTryToBlink <= 0 && _loc7_.§%!$§.mTryToScream <= 0)
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
      
      public function §9Q§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§@'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§@'§[_loc2_] as §9M§).§?!D§.score;
            if((this.§@'§[_loc2_] as §9M§).§2!S§())
            {
               _loc1_ += §%M§.§#!N§.getValue() * int((this.§@'§[_loc2_] as §9M§).§%!^§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§9Q§());
      }
      
      public function §>i§(param1:§9M§, param2:§9M§) : Boolean
      {
         if(param2 is §%!o§ && param1 is §%!o§)
         {
            return true;
         }
         if(!param1.§5!T§() && !param2.§5!T§())
         {
            return true;
         }
         return false;
      }
      
      public function §"!W§() : void
      {
         this.mSardineCanAdded = true;
         this.§try § = 0;
      }
      
      public function §<^§(param1:§9M§, param2:§9M§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§@q§() || param2.§?!#§())
            {
               param2.applyDamage(param2.§%!^§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§@q§() || param1.§?!#§())
            {
               param1.applyDamage(param1.§%!^§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§,![§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9,§() || param2.§9,§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§>i§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§[!H§(param2.§=B§());
         var _loc5_:Number = param1.§?&§(param2.§=B§());
         var _loc6_:Number = param2.§[!H§(param1.§=B§());
         var _loc7_:Number = param2.§?&§(param1.§=B§());
         var _loc8_:Number = param1.§3H§().GetMass() * param1.§3H§().GetLinearVelocity().x - param2.§3H§().GetMass() * param2.§3H§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§3H§().GetMass() * param1.§3H§().GetLinearVelocity().y - param2.§3H§().GetMass() * param2.§3H§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§4!6§);
         var _loc14_:Number = Math.max(0,param2.§4!6§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§0!P§(),_loc14_ == param2.§%!^§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§0!P§(),_loc13_ == param1.§%!^§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§!!1§(new b2Vec2(param2.§3H§().GetLinearVelocity().x * _loc18_,param2.§3H§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§!!1§(new b2Vec2(param1.§3H§().GetLinearVelocity().x * _loc19_,param1.§3H§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function § !'§(param1:§9M§, param2:§9M§) : void
      {
      }
      
      public function §%A§() : void
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = this.§@'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@'§[_loc1_] as §9M§;
            if(_loc2_ != null && _loc2_.§?!#§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §>!&§() : void
      {
         var _loc2_:§9M§ = null;
         var _loc1_:int = this.§@'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@'§[_loc1_] as §9M§;
            if(_loc2_ != null && _loc2_.§;6§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §8!H§() : int
      {
         return this.§@'§.length;
      }
      
      public function §3!L§(param1:§0B§) : void
      {
         var _loc4_:§9M§ = null;
         var _loc5_:§?4§ = null;
         var _loc6_:§=g§ = null;
         var _loc7_:§%W§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@'§.length)
         {
            if(!(_loc4_ = this.§@'§[_loc2_]).isGround())
            {
               (_loc5_ = new §?4§()).angle = _loc4_.§&!G§();
               _loc5_.id = _loc4_.§`!p§;
               _loc5_.x = _loc4_.§3H§().GetPosition().x;
               _loc5_.y = _loc4_.§3H§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§+"§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5q§.length)
         {
            _loc7_ = this.§5q§[_loc3_];
            _loc6_ = new §=g§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§]!V§,_loc7_.§!0§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§6L§,_loc7_.motorSpeed,_loc7_.§=M§,_loc7_.maxTorque);
            param1.§5i§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §[>§() : void
      {
         var _loc1_:int = 0;
         while(this.§@'§.length > _loc1_)
         {
            if(this.§@'§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§8<§(this.§@'§[_loc1_]);
            }
         }
      }
      
      public function §%!R§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§@'§.length)
         {
            if(this.§@'§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§@'§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§<2§ = param1;
         this.§%!k§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@'§.length)
         {
            if(this.§@'§[_loc2_].isTexture())
            {
               this.§@'§[_loc2_].sprite.visible = !this.§<2§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§"!C§ = param1;
      }
      
      public function §#E§() : Boolean
      {
         return this.§"!C§;
      }
      
      public function §9!2§() : int
      {
         return this.§#!§;
      }
      
      public function §0m§() : int
      {
         return this.§!!%§;
      }
      
      public function §6!'§(param1:String) : §9M§
      {
         var _loc3_:§9M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@'§.length)
         {
            _loc3_ = this.§@'§[_loc2_] as §9M§;
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
