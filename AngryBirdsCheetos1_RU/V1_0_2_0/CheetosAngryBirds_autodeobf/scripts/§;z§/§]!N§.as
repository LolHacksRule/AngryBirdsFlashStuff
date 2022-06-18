package §;z§
{
   import § m§.§ r§;
   import § m§.§#!>§;
   import § m§.§']§;
   import § m§.§-;§;
   import §"P§.§%w§;
   import §"P§.§,!I§;
   import §"P§.§9!L§;
   import §"P§.§]5§;
   import §"P§.§^s§;
   import §#b§.§85§;
   import §&!+§.b2Vec2;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.§;!9§;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §-A§.§%9§;
   import §-A§.§36§;
   import §-A§.§?s§;
   import §-A§.§^`§;
   import §1o§.§'M§;
   import §2!4§.§>5§;
   import §7C§.b2PrismaticJoint;
   import §7C§.b2WeldJoint;
   import §^n§.§",§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!N§
   {
       
      
      protected var §<!4§:Vector.<§!+§>;
      
      protected var §0! §:int;
      
      public var §return§:§%9§;
      
      public var §%!,§:Vector.<§4!#§>;
      
      protected var §4?§:Sprite;
      
      protected var §?"§:Sprite;
      
      private var §7!a§:Sprite;
      
      private var §0a§:Sprite;
      
      private var §7S§:Sprite;
      
      protected var §7m§:Vector.<Texture>;
      
      protected var §6<§:Vector.<§']§>;
      
      protected var §5!M§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §]O§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §!-§:Boolean = false;
      
      protected var §0![§:Number;
      
      protected var §[!T§:int;
      
      protected var §;+§:Vector.<§-;§>;
      
      protected var §7J§:int = 0;
      
      private var §#2§:int = 0;
      
      private var §]!B§:int = 0;
      
      private var §#!`§:int;
      
      private var §1!;§:Boolean = true;
      
      private var §=<§:Boolean = true;
      
      public function §]!N§(param1:§%9§, param2:§85§, param3:Sprite)
      {
         var _loc5_:§']§ = null;
         var _loc6_:§ r§ = null;
         var _loc7_:§!+§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§!+§ = null;
         var _loc11_:§!+§ = null;
         this.§<!4§ = new Vector.<§!+§>();
         this.§%!,§ = new Vector.<§4!#§>();
         this.§7m§ = new Vector.<Texture>();
         this.§0![§ = this.§36§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§;+§ = new Vector.<§-;§>();
         super();
         this.§return§ = param1;
         this.§0! § = 0;
         this.§?"§ = param3;
         this.§?"§.§09§ = false;
         this.§=<§ = true;
         this.§1!;§ = true;
         this.§4?§ = new Sprite();
         this.§7!a§ = new Sprite();
         this.§0a§ = new Sprite();
         this.§7S§ = new Sprite();
         this.§?"§.addChild(this.§4?§);
         this.§?"§.addChild(this.§7!a§);
         this.§?"§.addChild(this.§0a§);
         this.§?"§.addChild(this.§7S§);
         this.addObject(§",§.§3^§(param2.theme).§;i§,(this.§return§.§#!a§.§3s§ + this.§return§.§#!a§.§2!?§) / 2,this.§return§.§#!a§.§>6§ + §^`§.§^!X§);
         this.§#!`§ = this.§<!4§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§6!8§)
         {
            _loc6_ = param2.§"!B§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§#!X§();
         this.§6!§(true);
         this.§6<§ = new Vector.<§']§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§5!9§)
         {
            this.§6<§.push(§']§.§0!&§(param2.§class§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§6<§)
         {
            _loc8_ = _loc5_.index1 + this.§#!`§;
            _loc9_ = _loc5_.index2 + this.§#!`§;
            if(_loc8_ < this.§<!4§.length && _loc9_ < this.§<!4§.length)
            {
               _loc10_ = this.§<!4§[_loc8_];
               _loc11_ = this.§<!4§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §#!>§.§ o§)
               {
                  _loc5_.§-"§ = this.§return§.mLevelEngine.mWorld.§5A§(_loc5_.§?!K§(_loc10_,_loc11_));
               }
               else
               {
                  this.§;+§.push(new §-;§(_loc8_,_loc9_,_loc5_.§&e§));
               }
            }
         }
      }
      
      protected function get §36§() : Class
      {
         return §36§;
      }
      
      public function get § v§() : Sprite
      {
         return this.§7S§;
      }
      
      public function get §-!W§() : Sprite
      {
         return this.§?"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§<!4§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§<!4§ = null;
         this.§;+§ = null;
         if(this.§?"§)
         {
            this.§?"§.dispose();
            this.§?"§ = null;
            this.§4?§ = null;
            this.§7S§ = null;
            this.§7!a§ = null;
            this.§0a§ = null;
         }
         while(this.§7m§.length > 0)
         {
            _loc1_ = this.§7m§.pop();
            this.§return§.§&w§.§]!8§(_loc1_);
         }
      }
      
      private function §6!§(param1:Boolean) : void
      {
         this.§4?§.visible = param1;
      }
      
      private function §#!X§() : void
      {
         var _loc3_:§!+§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§;!9§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§!+§> = new Vector.<§!+§>();
         for each(_loc3_ in this.§<!4§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§?"§);
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
            this.§3!@§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§,!&§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§return§.§&w§.§8@§(_loc10_);
            this.§7m§.push(_loc12_);
            (_loc13_ = new §;!9§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§4?§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §,!&§(param1:Vector.<§!+§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§!+§ = null;
         var _loc11_:§^s§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§3!F§.shape).§%N§();
            _loc13_ = new Rectangle(_loc12_[0].x / §%9§.§1[§ * param6,_loc12_[0].y / §%9§.§1[§ * param6,(_loc12_[1].x - _loc12_[0].x) / §%9§.§1[§ * param6,(_loc12_[1].y - _loc12_[0].y) / §%9§.§1[§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§!?§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3!@§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§return§.background.§+G§();
         var _loc5_:§>5§;
         if(_loc5_ = this.§return§.§'W§.§]N§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!+§
      {
         var _loc10_:§!+§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §<1§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §;L§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §6I§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §>S§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new § 2§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §`F§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §'!@§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §=P§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§7J§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §!+§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§!+§;
         if((_loc11_ = this.§@!1§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§1!;§;
            this.§<!4§[this.§<!4§.length] = _loc11_;
         }
         else
         {
            this.§<!4§[this.§<!4§.length] = _loc11_;
         }
         if(_loc11_ is §=P§ && !_loc11_.§+K§())
         {
            this.§7!a§.addChild(_loc10_);
            ++this.§7J§;
         }
         else if(_loc11_.front || param9)
         {
            this.§7S§.addChild(_loc10_);
         }
         else
         {
            this.§0a§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§return§.§=b§(_loc11_);
         }
         if(param6)
         {
            this.§return§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §0!&§(param1:int, param2:§!+§, param3:§!+§) : §']§
      {
         var _loc6_:§']§ = null;
         var _loc4_:int = this.§<!4§.indexOf(param2) - this.§#!`§;
         var _loc5_:int = this.§<!4§.indexOf(param3) - this.§#!`§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §']§(§#!>§.§!>§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§-"§ = this.§return§.mLevelEngine.mWorld.§5A§(_loc6_.§?!K§(param2,param3));
            this.§6<§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §`2§(param1:§']§) : void
      {
         if(!(param1.§-"§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§!+§ = this.§"!B§(param1.index1 + this.§#!`§);
         var _loc3_:§!+§ = this.§"!B§(param1.index2 + this.§#!`§);
         this.§return§.mLevelEngine.mWorld.§6#§(param1.§-"§);
         param1.§-"§ = this.§return§.mLevelEngine.mWorld.§5A§(param1.§?!K§(_loc2_,_loc3_));
      }
      
      public function §3e§(param1:§!+§) : Vector.<§']§>
      {
         var _loc4_:§']§ = null;
         var _loc2_:Vector.<§']§> = new Vector.<§']§>();
         var _loc3_:int = this.§<!4§.indexOf(param1) - this.§#!`§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§6<§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §;]§() : Vector.<§']§>
      {
         return this.§6<§;
      }
      
      public function §^^§(param1:§!+§) : void
      {
         var _loc2_:int = this.§<!4§.indexOf(param1) - this.§#!`§;
         var _loc3_:int = this.§6<§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6<§[_loc3_].index1 == _loc2_ || this.§6<§[_loc3_].index2 == _loc2_)
            {
               this.§6<§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §;!6§(param1:§!+§, param2:§!+§) : Boolean
      {
         var _loc3_:int = this.§<!4§.indexOf(param1) - this.§#!`§;
         var _loc4_:int = this.§<!4§.indexOf(param2) - this.§#!`§;
         var _loc5_:int = this.§6<§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§6<§[_loc5_].index1 == _loc3_ && this.§6<§[_loc5_].index2 == _loc4_ || this.§6<§[_loc5_].index1 == _loc4_ && this.§6<§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §@!1§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!+§
      {
         var _loc10_:§!+§ = null;
         var _loc11_:§]5§ = null;
         var _loc12_:§]5§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§]!B§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §9!L§.§=C§(param2);
            _loc10_ = new §^!3§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §9!L§.§=C§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §9!L§.§=C§(param2);
            }
            if(_loc12_.§<s§ == §]5§.§`1§ || _loc12_.§<s§ == §]5§.§,5§)
            {
               _loc10_ = new §^[§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §!+§(this,param1,this.§return§.mLevelEngine.mWorld,this.§return§,this.§0! §,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §-!A§(param1:Number) : void
      {
         var _loc3_:§!+§ = null;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!4§[_loc2_] as §!+§;
            if(_loc3_)
            {
               if(_loc3_.§^,§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§?_§();
                  _loc3_.§=c§();
               }
            }
            _loc2_--;
         }
         this.§1,§(param1);
      }
      
      protected function §1,§(param1:Number) : void
      {
         var _loc3_:§']§ = null;
         var _loc4_:§-;§ = null;
         var _loc5_:int = 0;
         var _loc6_:§!+§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§;+§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§;+§[_loc2_]).§'!I§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§ i§("block_" + _loc5_))
                  {
                     this.§@!C§(_loc6_,true,true,true);
                  }
                  this.§;+§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§6<§)
         {
            if(_loc3_.type == §#!>§.§,w§ && _loc3_.§]p§)
            {
               _loc7_ = (_loc3_.§-"§ as b2PrismaticJoint).§^!E§();
               _loc8_ = (_loc3_.§-"§ as b2PrismaticJoint).§0s§();
               if(_loc3_.§%T§ && _loc3_.§<!?§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§-"§ as b2PrismaticJoint).§8F§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§%!,§.push(§4!#§.§<x§(param1,param2,param3));
         §'M§.§1T§("TntExplosions","ChannelExplosions");
      }
      
      public function §8!"§(param1:Number, param2:Number) : int
      {
         var _loc4_:§!+§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<!4§[_loc3_])
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
      
      public function §1!2§(param1:Number, param2:Number) : §!+§
      {
         var _loc4_:§!+§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<!4§[_loc3_])
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
      
      public function §"!B§(param1:int) : §!+§
      {
         return this.§<!4§[param1];
      }
      
      public function §4w§(param1:Number, param2:Number) : void
      {
         var _loc4_:§!+§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§<!4§[_loc3_] as §!+§).§4w§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §8!B§(param1:§!+§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§!+§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§^,§ == param1.§[!,§)
         {
            if(this.§0![§ < this.§36§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§0![§ += param2 * this.§36§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§^!V§().§4h§(param2 * this.§0![§);
            this.§[!T§ = 0;
         }
         else if(this.§[!T§ == 0)
         {
            this.§[!T§ = this.§return§.§?!#§;
         }
         if(param1.§ !3§() || this.§6l§(param1) || this.§[!T§ > 0 && this.§return§.§?!#§ > this.§[!T§ + this.§36§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§36§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§36§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§36§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §'M§.§1T§("Mighty_Eagle_Selected_1","ChannelBird");
                  §'M§.§1T§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§36§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§^!V§().GetPosition().x - this.§36§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§^!V§().GetPosition().y - this.§36§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§36§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§6l§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§36§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§[!T§ = 0;
                  _loc7_.§=t§.§%!X§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §3A§(param1:§!+§, param2:Number) : Boolean
      {
         var _loc5_:§!+§ = null;
         if(this.§36§.MIGHTY_EAGLE_USE_SHADE && !this.§!-§ && this.mMightyEagleTimer > this.§36§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§!-§ = true;
            this.§return§.§9!D§();
         }
         this.mMightyEagleTimer += param2;
         this.§return§.particles.addParticle(§+e§.§#0§,§^Z§.§<!%§,§+e§.§]@§,param1.§^!V§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§^!V§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§+e§.§super§(param1.§10§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§8N§(this.§36§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§]O§)
            {
               this.§]O§ = false;
               this.§return§.§48§();
               param1.§6!H§(§%w§.§'A§);
               this.mSardineCanAdded = false;
               param1.§=t§.§`!P§ = true;
               param1.§=t§.§[!Q§();
               for each(_loc5_ in this.§<!4§)
               {
                  if(_loc5_ && _loc5_.§,!U§())
                  {
                     _loc5_.§^!V§().SetAwake(true);
                     _loc5_.§^!V§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§@Y§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§<!4§)
               {
                  if(_loc5_ && _loc5_.§,!U§())
                  {
                     _loc5_.applyDamage(_loc5_.§[!,§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§^!V§().GetPosition().y >= -5.5;
            this.§]O§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§;>§(param2,new Point(this.§36§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§36§.MIGHTY_EAGLE_Y_CHANGE),this.§36§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §<!B§() : void
      {
         var _loc1_:§4!#§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§!+§ = null;
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
         while(this.§%!,§.length > 0)
         {
            _loc1_ = this.§%!,§.shift();
            _loc2_ = _loc1_.§8!>§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§<!4§)
            {
               _loc8_ = _loc6_.§^!V§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§^!V§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§8!>§)
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
                     _loc6_.§^!V§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§1;§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§7! §(_loc6_,_loc14_);
               }
            }
            this.§return§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§^Z§.§<!%§,§+e§.§'>§,_loc3_,_loc4_,600,"",§+e§.§;!F§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§return§.particles.addParticle(§+e§.§8!1§,§^Z§.§<!%§,§+e§.§]@§,_loc3_,_loc4_,_loc16_,"",§+e§.§;!F§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §7! §(param1:§!+§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §+e§.§>F§;
      }
      
      public function §5!W§(param1:Number) : void
      {
         var _loc2_:§!+§ = null;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc3_];
            if(_loc2_.§<K§())
            {
               if(this.§8!B§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§+K§())
            {
               this.§3A§(_loc2_,param1);
            }
            else if(this.§6l§(_loc2_))
            {
               _loc2_.§6!H§(§%w§.§]!§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§6!H§(§%w§.§]!§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§?!_§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§<!B§();
      }
      
      private function §@Y§() : void
      {
         var _loc1_:§']§ = null;
         for each(_loc1_ in this.§6<§)
         {
            if(_loc1_.type != §#!>§.§ o§)
            {
               this.§return§.mLevelEngine.mWorld.§6#§(_loc1_.§-"§);
            }
         }
      }
      
      public function §1"§() : Boolean
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<!4§.length)
         {
            _loc2_ = this.§<!4§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §6l§(param1:§!+§) : Boolean
      {
         if(param1 && param1.§3!F§.§>G§() != §,!I§.§^a§ && this.§return§.§#!a§.§"!0§(param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§']§ = null;
         var _loc7_:§-;§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§!+§;
         if((_loc5_ = this.§<!4§[param1]).§,!U§())
         {
            ++this.§#2§;
         }
         else if(_loc5_.§?!_§())
         {
            --this.§7J§;
         }
         if(_loc5_ == this.§return§.activeObject)
         {
            this.§return§.activeObject = null;
         }
         if(param2)
         {
            this.§return§.addScore(_loc5_.§3!F§.score,§?s§.§`8§,true,_loc5_.§^!V§().GetPosition().x,_loc5_.§^!V§().GetPosition().y - 3,§+e§.§"s§(_loc5_.§10§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§return§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§]!W§(_loc5_.sprite);
         this.§^^§(_loc5_);
         for each(_loc6_ in this.§6<§)
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
         for each(_loc7_ in this.§;+§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§'!I§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§<!4§[param1] = null;
         this.§<!4§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§!+§, param2:§^Z§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §]!W§(param1:Sprite) : void
      {
         if(this.§0a§.contains(param1))
         {
            this.§0a§.removeChild(param1);
            return;
         }
         if(this.§7!a§.contains(param1))
         {
            this.§7!a§.removeChild(param1);
            return;
         }
         if(this.§4?§.contains(param1))
         {
            this.§4?§.removeChild(param1);
            return;
         }
         if(this.§7S§.contains(param1))
         {
            this.§7S§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§!+§) : void
      {
         if(param1.§!d§().toUpperCase() == "WHITE_EGG" || param1.§6`§())
         {
            if(param1.§10§.toUpperCase() == §>S§.§9!6§)
            {
               this.addExplosions(§4!#§.§^f§,param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§4!#§.§->§,param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y);
            }
         }
      }
      
      public function §@!C§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§<!4§.indexOf(param1),param2,param3,param4);
      }
      
      public function §"0§(param1:Number, param2:Number) : void
      {
         this.§?"§.x = -param1;
         this.§?"§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§!+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            _loc3_ = this.§<!4§[_loc2_] as §!+§;
            if(_loc3_ && _loc3_.§,!U§() && _loc3_.§^,§ > 0)
            {
               if(!param1 || _loc3_.§=t§.mTryToBlink <= 0 && _loc3_.§=t§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2!U§(param1:Boolean = false) : int
      {
         var _loc4_:§!+§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§<!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<!4§[_loc3_] as §!+§) && _loc4_.§,!U§() && _loc4_.§^,§ > 0)
            {
               if(!param1 || _loc4_.§=t§.mTryToBlink <= 0 && _loc4_.§=t§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §,!!§() : int
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!4§)
         {
            if(_loc2_ && (_loc2_.§,!2§() || _loc2_.§+!A§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §@!M§() : int
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<!4§)
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
         var _loc3_:§!+§ = null;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!4§[_loc2_];
            if(_loc3_ && _loc3_.§,!U§() && _loc3_.§^,§ > 0)
            {
               _loc3_.§=t§.mTryToScream = §0!Q§.§%!?§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@!>§() : Boolean
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as §!+§;
            if(_loc2_ && _loc2_.§?!_§() && _loc2_.§^,§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as §!+§;
            if(_loc2_ && _loc2_.§^,§ > 0 && _loc2_.§<s§ != §]5§.§,,§)
            {
               if(_loc2_.§3!J§() && !_loc2_.§ !3§())
               {
                  return false;
               }
               if(_loc2_.§?!_§() && _loc2_.§^,§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §9d§(param1:Boolean = false) : §!+§
      {
         var _loc5_:int = 0;
         var _loc6_:§!+§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§<!4§.length;
         var _loc3_:int = 1 + Math.random() * this.§2!U§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§<!4§[_loc5_]) && _loc6_.§,!U§() && _loc6_.§^,§ > 0)
               {
                  if(!param1 || _loc6_.§=t§.mTryToBlink <= 0 && _loc6_.§=t§.mTryToScream <= 0)
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
      
      public function §5C§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§<!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§<!4§[_loc2_] as §!+§).§3!F§.score;
            if((this.§<!4§[_loc2_] as §!+§).§3!J§())
            {
               _loc1_ += §%9§.§@K§.getValue() * int((this.§<!4§[_loc2_] as §!+§).§[!,§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§return§.slingshot.§5C§());
      }
      
      public function §!U§(param1:§!+§, param2:§!+§) : Boolean
      {
         if(param1.§?!_§() && param2.§?!_§())
         {
            return true;
         }
         if(!param1.§]!$§() && !param2.§]!$§())
         {
            return true;
         }
         return false;
      }
      
      public function §8y§() : void
      {
         this.mSardineCanAdded = true;
         this.§7J§ = 0;
      }
      
      public function objectCollision(param1:§!+§, param2:§!+§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§+K§() || param2.§,!U§())
            {
               param2.applyDamage(param2.§[!,§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§+K§() || param1.§,!U§())
            {
               param1.applyDamage(param1.§[!,§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§36§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§<K§() || param2.§<K§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§!U§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§4!2§(param2.§!d§());
         var _loc5_:Number = param1.§4M§(param2.§!d§());
         var _loc6_:Number = param2.§4!2§(param1.§!d§());
         var _loc7_:Number = param2.§4M§(param1.§!d§());
         var _loc8_:Number = param1.§^!V§().GetMass() * param1.§^!V§().GetLinearVelocity().x - param2.§^!V§().GetMass() * param2.§^!V§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§^!V§().GetMass() * param1.§^!V§().GetLinearVelocity().y - param2.§^!V§().GetMass() * param2.§^!V§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§^,§);
         var _loc14_:Number = Math.max(0,param2.§^,§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§?!_§(),_loc14_ == param2.§[!,§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§?!_§(),_loc13_ == param1.§[!,§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ !R§(new b2Vec2(param2.§^!V§().GetLinearVelocity().x * _loc18_,param2.§^!V§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ !R§(new b2Vec2(param1.§^!V§().GetLinearVelocity().x * _loc19_,param1.§^!V§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §&q§() : void
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as §!+§;
            if(_loc2_ != null && _loc2_.§,!U§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#!Z§() : void
      {
         var _loc2_:§!+§ = null;
         var _loc1_:int = this.§<!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<!4§[_loc1_] as §!+§;
            if(_loc2_ != null && _loc2_.§6`§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §,S§() : int
      {
         return this.§<!4§.length;
      }
      
      public function § !-§(param1:§85§) : void
      {
         var _loc4_:§!+§ = null;
         var _loc5_:§ r§ = null;
         var _loc6_:§#!>§ = null;
         var _loc7_:§']§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            if((_loc4_ = this.§<!4§[_loc2_]).§'K§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new § r§()).angle = _loc4_.§!?§();
                  _loc5_.id = _loc4_.§10§;
                  _loc5_.x = _loc4_.§^!V§().GetPosition().x;
                  _loc5_.y = _loc4_.§^!V§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§6<§.length)
         {
            _loc7_ = this.§6<§[_loc3_];
            _loc6_ = new §#!>§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§"u§,_loc7_.§%T§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§<!?§,_loc7_.motorSpeed,_loc7_.§]p§,_loc7_.maxTorque);
            param1.§6!4§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §>!1§() : void
      {
         var _loc1_:int = 0;
         while(this.§<!4§.length > _loc1_)
         {
            if(this.§<!4§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§@!C§(this.§<!4§[_loc1_]);
            }
         }
      }
      
      public function §<0§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<!4§.length)
         {
            if(this.§<!4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<!4§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§1!;§ = param1;
         this.§6!§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            if(this.§<!4§[_loc2_].isTexture())
            {
               this.§<!4§[_loc2_].sprite.visible = !this.§1!;§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§=<§ = param1;
      }
      
      public function §4t§() : Boolean
      {
         return this.§=<§;
      }
      
      public function §>§() : int
      {
         return this.§]!B§;
      }
      
      public function §&#§() : int
      {
         return this.§#2§;
      }
      
      public function § i§(param1:String) : §!+§
      {
         var _loc3_:§!+§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!4§.length)
         {
            _loc3_ = this.§<!4§[_loc2_] as §!+§;
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
