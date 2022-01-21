package §%`§
{
   import § !m§.§6h§;
   import §",§.Texture;
   import §"U§.b2Vec2;
   import §'a§.§#!`§;
   import §'a§.§0!f§;
   import §'a§.§;!'§;
   import §'a§.§^N§;
   import §+-§.§,K§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §4s§.§0R§;
   import §4s§.§>!"§;
   import §4s§.§?!O§;
   import §4s§.§[!_§;
   import §4s§.§[-§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import §]6§.§<"§;
   import §`!C§.§"!5§;
   import §`!C§.§?0§;
   import §`!C§.§@!l§;
   import §`!C§.§`!&§;
   import §`!Z§.b2PrismaticJoint;
   import §`!Z§.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!k§
   {
       
      
      protected var §5h§:Vector.<§"s§>;
      
      protected var §'B§:int;
      
      public var mLevelMain:§0!f§;
      
      public var §"X§:Vector.<§]!I§>;
      
      protected var §-!p§:Sprite;
      
      protected var §try §:Sprite;
      
      private var §+%§:Sprite;
      
      private var §9;§:Sprite;
      
      private var §>!G§:Sprite;
      
      protected var §&-§:Vector.<Texture>;
      
      protected var §;F§:Vector.<§@!l§>;
      
      protected var §=!G§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`p§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §8z§:Boolean = false;
      
      protected var §-w§:Number;
      
      protected var §5&§:int;
      
      protected var §2Y§:Vector.<§`!&§>;
      
      protected var §1!o§:int = 0;
      
      private var §!!P§:int = 0;
      
      private var §"w§:int = 0;
      
      private var §-@§:int;
      
      private var §5k§:Boolean = true;
      
      private var §`!^§:Boolean = true;
      
      public function §,!k§(param1:§0!f§, param2:§,K§, param3:Sprite)
      {
         var _loc5_:§@!l§ = null;
         var _loc6_:§?0§ = null;
         var _loc7_:§"s§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§"s§ = null;
         var _loc11_:§"s§ = null;
         this.§5h§ = new Vector.<§"s§>();
         this.§"X§ = new Vector.<§]!I§>();
         this.§&-§ = new Vector.<Texture>();
         this.§-w§ = this.§^N§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§2Y§ = new Vector.<§`!&§>();
         super();
         this.mLevelMain = param1;
         this.§'B§ = 0;
         this.§try § = param3;
         this.§try §.§^!7§ = false;
         this.§`!^§ = true;
         this.§5k§ = true;
         this.§-!p§ = new Sprite();
         this.§+%§ = new Sprite();
         this.§9;§ = new Sprite();
         this.§>!G§ = new Sprite();
         this.§try §.addChild(this.§-!p§);
         this.§try §.addChild(this.§+%§);
         this.§try §.addChild(this.§9;§);
         this.§try §.addChild(this.§>!G§);
         this.§1!!§(§<"§.§0!&§(param2.theme).§=!^§,(this.mLevelMain.§9!I§.§8!9§ + this.mLevelMain.§9!I§.§^!$§) / 2,this.mLevelMain.§9!I§.§8!R§ + §;!'§.§;!=§);
         this.§-@§ = this.§5h§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§2!E§)
         {
            _loc6_ = param2.§6!e§(_loc4_);
            if(_loc7_ = this.§1!!§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§!!?§();
         this.§8§(true);
         this.§;F§ = new Vector.<§@!l§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§[!h§)
         {
            this.§;F§.push(§@!l§.§]b§(param2.§`!X§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§;F§)
         {
            _loc8_ = _loc5_.index1 + this.§-@§;
            _loc9_ = _loc5_.index2 + this.§-@§;
            if(_loc8_ < this.§5h§.length && _loc9_ < this.§5h§.length)
            {
               _loc10_ = this.§5h§[_loc8_];
               _loc11_ = this.§5h§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §"!5§.§=a§)
               {
                  _loc5_.§4_§ = this.mLevelMain.mLevelEngine.mWorld.§%!o§(_loc5_.§46§(_loc10_,_loc11_));
               }
               else
               {
                  this.§2Y§.push(new §`!&§(_loc8_,_loc9_,_loc5_.§&V§));
               }
            }
         }
      }
      
      protected function get §^N§() : Class
      {
         return §^N§;
      }
      
      public function get §"![§() : Sprite
      {
         return this.§>!G§;
      }
      
      public function get §,!1§() : Sprite
      {
         return this.§try §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§5h§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§5h§ = null;
         this.§2Y§ = null;
         if(this.§try §)
         {
            this.§try §.dispose();
            this.§try § = null;
            this.§-!p§ = null;
            this.§>!G§ = null;
            this.§+%§ = null;
            this.§9;§ = null;
         }
         while(this.§&-§.length > 0)
         {
            _loc1_ = this.§&-§.pop();
            this.mLevelMain.textureManager.§'!Q§(_loc1_);
         }
      }
      
      private function §8§(param1:Boolean) : void
      {
         this.§-!p§.visible = param1;
      }
      
      private function §!!?§() : void
      {
         var _loc3_:§"s§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§2!K§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"s§> = new Vector.<§"s§>();
         for each(_loc3_ in this.§5h§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§try §);
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
            this.§!B§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§8!G§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.getTextureFromBitmapData(_loc10_);
            this.§&-§.push(_loc12_);
            (_loc13_ = new §2!K§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§-!p§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §8!G§(param1:Vector.<§"s§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§"s§ = null;
         var _loc11_:§[!_§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§>!@§.shape).§<n§();
            _loc13_ = new Rectangle(_loc12_[0].x / §0!f§.§<C§ * param6,_loc12_[0].y / §0!f§.§<C§ * param6,(_loc12_[1].x - _loc12_[0].x) / §0!f§.§<C§ * param6,(_loc12_[1].y - _loc12_[0].y) / §0!f§.§<C§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§#f§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §!B§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§%E§();
         var _loc5_:§9Z§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§2x§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"s§
      {
         var _loc10_:§"s§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § V§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §+[§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §^!U§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §'!Y§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §#>§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new § !F§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §7!A§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new override(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§1!o§ > 0;
      }
      
      public function §1!!§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"s§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§"s§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§5k§;
            this.§5h§[this.§5h§.length] = _loc11_;
         }
         else
         {
            this.§5h§[this.§5h§.length] = _loc11_;
         }
         if(_loc11_ is override && !_loc11_.§;T§())
         {
            this.§+%§.addChild(_loc10_);
            ++this.§1!o§;
         }
         else if(_loc11_.front || param9)
         {
            this.§>!G§.addChild(_loc10_);
         }
         else
         {
            this.§9;§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§=]§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §]b§(param1:int, param2:§"s§, param3:§"s§) : §@!l§
      {
         var _loc6_:§@!l§ = null;
         var _loc4_:int = this.§5h§.indexOf(param2) - this.§-@§;
         var _loc5_:int = this.§5h§.indexOf(param3) - this.§-@§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@!l§(§"!5§.§ !'§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§4_§ = this.mLevelMain.mLevelEngine.mWorld.§%!o§(_loc6_.§46§(param2,param3));
            this.§;F§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §[!$§(param1:§@!l§) : void
      {
         if(!(param1.§4_§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§"s§ = this.§6!e§(param1.index1 + this.§-@§);
         var _loc3_:§"s§ = this.§6!e§(param1.index2 + this.§-@§);
         this.mLevelMain.mLevelEngine.mWorld.§,y§(param1.§4_§);
         param1.§4_§ = this.mLevelMain.mLevelEngine.mWorld.§%!o§(param1.§46§(_loc2_,_loc3_));
      }
      
      public function §3A§(param1:§"s§) : Vector.<§@!l§>
      {
         var _loc4_:§@!l§ = null;
         var _loc2_:Vector.<§@!l§> = new Vector.<§@!l§>();
         var _loc3_:int = this.§5h§.indexOf(param1) - this.§-@§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§;F§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §%!c§() : Vector.<§@!l§>
      {
         return this.§;F§;
      }
      
      public function §6!$§(param1:§"s§) : void
      {
         var _loc2_:int = this.§5h§.indexOf(param1) - this.§-@§;
         var _loc3_:int = this.§;F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§;F§[_loc3_].index1 == _loc2_ || this.§;F§[_loc3_].index2 == _loc2_)
            {
               this.§;F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §"!E§(param1:§"s§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§2Y§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2Y§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§2Y§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §;W§(param1:§"s§, param2:§"s§) : Boolean
      {
         var _loc3_:int = this.§5h§.indexOf(param1) - this.§-@§;
         var _loc4_:int = this.§5h§.indexOf(param2) - this.§-@§;
         var _loc5_:int = this.§;F§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§;F§[_loc5_].index1 == _loc3_ && this.§;F§[_loc5_].index2 == _loc4_ || this.§;F§[_loc5_].index1 == _loc4_ && this.§;F§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"s§
      {
         var _loc10_:§"s§ = null;
         var _loc11_:§?!O§ = null;
         var _loc12_:§?!O§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§"w§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §>!"§.§??§(param2);
            _loc10_ = new §`U§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §>!"§.§??§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §>!"§.§??§(param2);
            }
            if(_loc12_.§=!6§ == §?!O§.§`5§ || _loc12_.§=!6§ == §?!O§.§4J§)
            {
               _loc10_ = new §`I§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §"s§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§'B§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§?!o§();
         return _loc10_;
      }
      
      protected function §?!o§() : String
      {
         var _loc3_:§"s§ = null;
         var _loc1_:int = this.§5h§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§5h§)
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
      
      public function §]i§(param1:Number) : void
      {
         var _loc3_:§"s§ = null;
         var _loc2_:int = this.§5h§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5h§[_loc2_] as §"s§;
            if(_loc3_)
            {
               if(_loc3_.§%!a§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4!b§();
                  _loc3_.§+!A§();
               }
            }
            _loc2_--;
         }
         this.§8!k§(param1);
      }
      
      protected function §8!k§(param1:Number) : void
      {
         this.§01§(param1);
         this.§&T§();
      }
      
      private function §01§(param1:Number) : void
      {
         var _loc4_:§`!&§ = null;
         var _loc5_:int = 0;
         var _loc6_:§"s§ = null;
         if(this.§2Y§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§`!&§> = this.§2Y§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§]!U§ && this.§2Y§.indexOf(_loc4_))
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§!!o§("" + _loc5_))
                  {
                     this.§'%§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §&T§() : void
      {
         var _loc1_:§@!l§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§;F§)
         {
            if(_loc1_.type == §"!5§.§@3§ && _loc1_.§ b§)
            {
               _loc2_ = (_loc1_.§4_§ as b2PrismaticJoint).§ !f§();
               _loc3_ = (_loc1_.§4_§ as b2PrismaticJoint).§'!`§();
               if(_loc1_.§#Q§ && _loc1_.§[!=§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§4_§ as b2PrismaticJoint).§>!L§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§"X§.push(§]!I§.createExplosion(param1,param2,param3));
         §6h§.§-a§("TntExplosions","ChannelExplosions");
      }
      
      public function §3x§(param1:Number, param2:Number) : int
      {
         var _loc4_:§"s§ = null;
         var _loc3_:int = this.§5h§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§5h§[_loc3_])
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
      
      public function §&B§(param1:Number, param2:Number) : §"s§
      {
         var _loc4_:§"s§ = null;
         var _loc3_:int = this.§5h§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§5h§[_loc3_])
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
      
      public function §6!e§(param1:int) : §"s§
      {
         return this.§5h§[param1];
      }
      
      public function §;J§(param1:Number, param2:Number) : void
      {
         var _loc4_:§"s§ = null;
         var _loc3_:int = this.§5h§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§5h§[_loc3_] as §"s§).§;J§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&R§(param1:§"s§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§"s§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§%!a§ == param1.§"!j§)
         {
            if(this.§-w§ < this.§^N§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§-w§ += param2 * this.§^N§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§%9§().§2!a§(param2 * this.§-w§);
            this.§5&§ = 0;
         }
         else if(this.§5&§ == 0)
         {
            this.§5&§ = this.mLevelMain.§3+§;
         }
         if(param1.§ !i§() || this.§#7§(param1) || this.§5&§ > 0 && this.mLevelMain.§3+§ > this.§5&§ + this.§^N§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§^N§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§^N§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§^N§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §6h§.§-a§("Mighty_Eagle_Selected_1","ChannelBird");
                  §6h§.§-a§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§^N§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§%9§().GetPosition().x - this.§^N§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§%9§().GetPosition().y - this.§^N§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§^N§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§#7§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§1!!§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§^N§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§5&§ = 0;
                  _loc7_.§2R§.§50§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §3L§(param1:§"s§, param2:Number) : Boolean
      {
         var _loc5_:§"s§ = null;
         if(this.§^N§.MIGHTY_EAGLE_USE_SHADE && !this.§8z§ && this.mMightyEagleTimer > this.§^N§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§8z§ = true;
            this.mLevelMain.§[§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§;!G§(§8!;§.§9!1§,§3F§.§![§,§8!;§.§!!8§,param1.§%9§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§%9§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§8!;§.§2!n§(param1.§6!?§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§1!7§(this.§^N§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§`p§)
            {
               this.§`p§ = false;
               this.mLevelMain.§-!!§();
               param1.§"!Z§(§[-§.§^]§);
               this.mSardineCanAdded = false;
               param1.§2R§.§^g§ = true;
               param1.§2R§.§ J§();
               for each(_loc5_ in this.§5h§)
               {
                  if(_loc5_ && _loc5_.§7m§())
                  {
                     _loc5_.§%9§().SetAwake(true);
                     _loc5_.§%9§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§-u§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§5h§)
               {
                  if(_loc5_ && _loc5_.§7m§())
                  {
                     _loc5_.applyDamage(_loc5_.§"!j§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§%9§().GetPosition().y >= -5.5;
            this.§`p§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§4!`§(param2,new Point(this.§^N§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§^N§.MIGHTY_EAGLE_Y_CHANGE),this.§^N§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §,U§() : void
      {
         var _loc1_:§]!I§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§"s§ = null;
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
         while(this.§"X§.length > 0)
         {
            _loc1_ = this.§"X§.shift();
            _loc2_ = _loc1_.§+f§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§5h§)
            {
               _loc8_ = _loc6_.§%9§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§%9§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§+f§)
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
                     _loc6_.§%9§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§#i§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§4u§(_loc6_,_loc14_);
               }
            }
            this.mLevelMain.particles.§;!G§(this.§7!j§(_loc1_.type),§3F§.§![§,§8!;§.§=!h§,_loc3_,_loc4_,600,"",§8!;§.§>![§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§;!G§(§8!;§.§-!l§,§3F§.§![§,§8!;§.§!!8§,_loc3_,_loc4_,_loc16_,"",§8!;§.§>![§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §4u§(param1:§"s§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §7!j§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8!;§.§'!H§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§"s§ = null;
         var _loc3_:int = this.§5h§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§5h§[_loc3_];
            if(_loc2_.§3M§())
            {
               if(this.§&R§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§;T§())
            {
               this.§3L§(_loc2_,param1);
            }
            else if(this.§#7§(_loc2_))
            {
               _loc2_.§"!Z§(§[-§.§-9§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§"!Z§(§[-§.§-9§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§6$§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§,U§();
      }
      
      private function §-u§() : void
      {
         var _loc1_:§@!l§ = null;
         for each(_loc1_ in this.§;F§)
         {
            if(_loc1_.type != §"!5§.§=a§)
            {
               this.mLevelMain.mLevelEngine.mWorld.§,y§(_loc1_.§4_§);
            }
         }
      }
      
      public function §6!H§() : Boolean
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5h§.length)
         {
            _loc2_ = this.§5h§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §#7§(param1:§"s§) : Boolean
      {
         if(param1 && param1.§>!@§.§#!a§() != §0R§.§7!&§ && this.mLevelMain.§9!I§.§'!K§(param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@!l§ = null;
         var _loc7_:§`!&§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§"s§;
         if((_loc5_ = this.§5h§[param1]).§7m§())
         {
            ++this.§!!P§;
         }
         else if(_loc5_.§6$§())
         {
            --this.§1!o§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§>!@§.score,§#!`§.§7o§,true,_loc5_.§%9§().GetPosition().x,_loc5_.§%9§().GetPosition().y - 3,§8!;§.§2$§(_loc5_.§6!?§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.mLevelMain.particles);
         }
         if(param4)
         {
            this.§<!f§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§'!1§(_loc5_.sprite);
         this.§6!$§(_loc5_);
         this.§"!E§(_loc5_);
         for each(_loc6_ in this.§;F§)
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
         for each(_loc7_ in this.§2Y§)
         {
            if(_loc7_.§[!O§ == param1)
            {
               _loc7_.§]!U§ = true;
            }
            if(_loc7_.§[!O§ >= param1)
            {
               --_loc7_.§[!O§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§5h§[param1] = null;
         this.§5h§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§"s§, param2:§3F§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §'!1§(param1:Sprite) : void
      {
         if(this.§9;§.contains(param1))
         {
            this.§9;§.removeChild(param1);
            return;
         }
         if(this.§+%§.contains(param1))
         {
            this.§+%§.removeChild(param1);
            return;
         }
         if(this.§-!p§.contains(param1))
         {
            this.§-!p§.removeChild(param1);
            return;
         }
         if(this.§>!G§.contains(param1))
         {
            this.§>!G§.removeChild(param1);
            return;
         }
      }
      
      protected function §<!f§(param1:§"s§) : void
      {
         if(param1.§#!j§().toUpperCase() == "WHITE_EGG" || param1.§const§())
         {
            if(param1.§6!?§.toUpperCase() == §'!Y§.§-2§)
            {
               this.addExplosions(§]!I§.§&@§,param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]!I§.§&X§,param1.§%9§().GetPosition().x,param1.§%9§().GetPosition().y);
            }
         }
      }
      
      public function §'%§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§5h§.indexOf(param1),param2,param3,param4);
      }
      
      public function §8!E§(param1:Number, param2:Number) : void
      {
         this.§try §.x = -param1;
         this.§try §.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§"s§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5h§.length)
         {
            _loc3_ = this.§5h§[_loc2_] as §"s§;
            if(_loc3_ && _loc3_.§7m§() && _loc3_.§%!a§ > 0)
            {
               if(!param1 || _loc3_.§2R§.mTryToBlink <= 0 && _loc3_.§2R§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<9§(param1:Boolean = false) : int
      {
         var _loc4_:§"s§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§5h§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§5h§[_loc3_] as §"s§) && _loc4_.§7m§() && _loc4_.§%!a§ > 0)
            {
               if(!param1 || _loc4_.§2R§.mTryToBlink <= 0 && _loc4_.§2R§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §&!&§() : int
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5h§)
         {
            if(_loc2_ && (_loc2_.§,!-§() || _loc2_.§%!W§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §4!8§() : int
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5h§)
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
         var _loc3_:§"s§ = null;
         var _loc2_:int = this.§5h§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5h§[_loc2_];
            if(_loc3_ && _loc3_.§7m§() && _loc3_.§%!a§ > 0)
            {
               _loc3_.§2R§.mTryToScream = §;!"§.§]l§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §-p§() : Boolean
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = this.§5h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5h§[_loc1_] as §"s§;
            if(_loc2_ && _loc2_.§6$§() && _loc2_.§%!a§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = this.§5h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5h§[_loc1_] as §"s§;
            if(_loc2_ && _loc2_.§%!a§ > 0 && _loc2_.§=!6§ != §?!O§.§8!a§)
            {
               if(_loc2_.§`!0§() && !_loc2_.§ !i§())
               {
                  return false;
               }
               if(_loc2_.§6$§() && _loc2_.§%!a§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § !8§(param1:Boolean = false) : §"s§
      {
         var _loc5_:int = 0;
         var _loc6_:§"s§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§5h§.length;
         var _loc3_:int = 1 + Math.random() * this.§<9§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§5h§[_loc5_]) && _loc6_.§7m§() && _loc6_.§%!a§ > 0)
               {
                  if(!param1 || _loc6_.§2R§.mTryToBlink <= 0 && _loc6_.§2R§.mTryToScream <= 0)
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
      
      public function §0!n§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§5h§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§5h§[_loc2_] as §"s§).§>!@§.score;
            if((this.§5h§[_loc2_] as §"s§).§`!0§())
            {
               _loc1_ += §0!f§.§8&§.getValue() * int((this.§5h§[_loc2_] as §"s§).§"!j§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§0!n§());
      }
      
      public function §-o§(param1:§"s§, param2:§"s§) : Boolean
      {
         if(param1.§6$§() && param2.§6$§())
         {
            return true;
         }
         if(!param1.§+U§() && !param2.§+U§())
         {
            return true;
         }
         return false;
      }
      
      public function §2!c§() : void
      {
         this.mSardineCanAdded = true;
         this.§1!o§ = 0;
      }
      
      public function §=!V§(param1:§"s§, param2:§"s§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§;T§() || param2.§7m§())
            {
               param2.applyDamage(param2.§"!j§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§;T§() || param1.§7m§())
            {
               param1.applyDamage(param1.§"!j§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§^N§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§3M§() || param2.§3M§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§-o§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%!f§(param2.§#!j§());
         var _loc5_:Number = param1.§"!S§(param2.§#!j§());
         var _loc6_:Number = param2.§%!f§(param1.§#!j§());
         var _loc7_:Number = param2.§"!S§(param1.§#!j§());
         var _loc8_:Number = param1.§%9§().GetMass() * param1.§%9§().GetLinearVelocity().x - param2.§%9§().GetMass() * param2.§%9§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§%9§().GetMass() * param1.§%9§().GetLinearVelocity().y - param2.§%9§().GetMass() * param2.§%9§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§%!a§);
         var _loc14_:Number = Math.max(0,param2.§%!a§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§6$§(),_loc14_ == param2.§"!j§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§6$§(),_loc13_ == param1.§"!j§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§?d§(new b2Vec2(param2.§%9§().GetLinearVelocity().x * _loc18_,param2.§%9§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§?d§(new b2Vec2(param1.§%9§().GetLinearVelocity().x * _loc19_,param1.§%9§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §#!n§() : void
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = this.§5h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5h§[_loc1_] as §"s§;
            if(_loc2_ != null && _loc2_.§7m§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §9!=§() : void
      {
         var _loc2_:§"s§ = null;
         var _loc1_:int = this.§5h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5h§[_loc1_] as §"s§;
            if(_loc2_ != null && _loc2_.§const§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function § %§() : int
      {
         return this.§5h§.length;
      }
      
      public function §2t§(param1:§,K§) : void
      {
         var _loc4_:§"s§ = null;
         var _loc5_:§?0§ = null;
         var _loc6_:§"!5§ = null;
         var _loc7_:§@!l§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5h§.length)
         {
            if(!(_loc4_ = this.§5h§[_loc2_]).isGround())
            {
               (_loc5_ = new §?0§()).angle = _loc4_.§#f§();
               _loc5_.id = _loc4_.§6!?§;
               _loc5_.x = _loc4_.§%9§().GetPosition().x;
               _loc5_.y = _loc4_.§%9§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§1!!§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;F§.length)
         {
            _loc7_ = this.§;F§[_loc3_];
            _loc6_ = new §"!5§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§0!I§,_loc7_.§#Q§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§[!=§,_loc7_.motorSpeed,_loc7_.§ b§,_loc7_.maxTorque);
            param1.§3y§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §-_§() : void
      {
         var _loc1_:int = 0;
         while(this.§5h§.length > _loc1_)
         {
            if(this.§5h§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§'%§(this.§5h§[_loc1_]);
            }
         }
      }
      
      public function §=Y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§5h§.length)
         {
            if(this.§5h§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§5h§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§5k§ = param1;
         this.§8§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5h§.length)
         {
            if(this.§5h§[_loc2_].isTexture())
            {
               this.§5h§[_loc2_].sprite.visible = !this.§5k§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§`!^§ = param1;
      }
      
      public function §9A§() : Boolean
      {
         return this.§`!^§;
      }
      
      public function §2!U§() : int
      {
         return this.§"w§;
      }
      
      public function §@!9§() : int
      {
         return this.§!!P§;
      }
      
      public function §!!o§(param1:String) : §"s§
      {
         var _loc3_:§"s§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5h§.length)
         {
            _loc3_ = this.§5h§[_loc2_] as §"s§;
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
