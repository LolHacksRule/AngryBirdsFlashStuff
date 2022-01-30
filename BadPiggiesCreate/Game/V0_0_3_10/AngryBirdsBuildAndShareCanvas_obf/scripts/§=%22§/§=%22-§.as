package §="§
{
   import §%!I§.§ C§;
   import §%!I§.§+;§;
   import §%!I§.§,!3§;
   import §%!I§.§3g§;
   import §%t§.§#B§;
   import §&!s§.§!m§;
   import §&!s§.§+!O§;
   import §&!s§.§,!c§;
   import §&!s§.§1!S§;
   import §&!s§.§=!E§;
   import §'!s§.§;2§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   import §4!s§.§&,§;
   import §4!s§.§'i§;
   import §4!s§.§7!$§;
   import §5^§.§ !x§;
   import §7M§.§+R§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §?!h§.b2Vec2;
   import §^!2§.b2PrismaticJoint;
   import §^!2§.b2WeldJoint;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §="-§
   {
       
      
      protected var §>!l§:Vector.<§`T§>;
      
      protected var §&!?§:int;
      
      public var §,!T§:§%I§;
      
      public var §<!B§:Vector.<§99§>;
      
      protected var §`1§:Sprite;
      
      protected var §+"5§:Sprite;
      
      private var §8!4§:Sprite;
      
      private var §<"+§:Sprite;
      
      private var get:Sprite;
      
      protected var §6!H§:Vector.<Texture>;
      
      protected var §[z§:Vector.<§3g§>;
      
      protected var §2!d§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §=5§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §&!a§:Boolean = false;
      
      protected var §<z§:Number;
      
      protected var §-"7§:int;
      
      protected var §-"-§:Vector.<§+;§>;
      
      protected var §>!0§:int = 0;
      
      private var §;!9§:int = 0;
      
      private var §5§:int = 0;
      
      private var §4!f§:int;
      
      private var §1!^§:Boolean = true;
      
      private var §5!r§:Boolean = true;
      
      public function §="-§(param1:§%I§, param2:§+R§, param3:Sprite)
      {
         var _loc5_:§3g§ = null;
         var _loc6_:§,!3§ = null;
         var _loc7_:§`T§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§`T§ = null;
         var _loc11_:§`T§ = null;
         this.§>!l§ = new Vector.<§`T§>();
         this.§<!B§ = new Vector.<§99§>();
         this.§6!H§ = new Vector.<Texture>();
         this.§<z§ = this.§7!$§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§-"-§ = new Vector.<§+;§>();
         super();
         this.§,!T§ = param1;
         this.§&!?§ = 0;
         this.§+"5§ = param3;
         this.§+"5§.§<"!§ = false;
         this.§5!r§ = true;
         this.§1!^§ = true;
         this.§`1§ = new Sprite();
         this.§8!4§ = new Sprite();
         this.§<"+§ = new Sprite();
         this.get = new Sprite();
         this.§+"5§.addChild(this.§`1§);
         this.§+"5§.addChild(this.§8!4§);
         this.§+"5§.addChild(this.§<"+§);
         this.§+"5§.addChild(this.get);
         this.addObject(§;2§.§8g§(param2.theme).§;!e§,(this.§,!T§.borders.§]! § + this.§,!T§.borders.§7!]§) / 2,this.§,!T§.borders.mBorderGround_B2 + §'i§.§,!d§);
         this.§4!f§ = this.§>!l§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§3J§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§'!]§();
         this.§0!w§(true);
         this.§[z§ = new Vector.<§3g§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§7"4§)
         {
            this.§[z§.push(§3g§.§<!§(param2.§;-§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§[z§)
         {
            _loc8_ = _loc5_.index1 + this.§4!f§;
            _loc9_ = _loc5_.index2 + this.§4!f§;
            if(_loc8_ < this.§>!l§.length && _loc9_ < this.§>!l§.length)
            {
               _loc10_ = this.§>!l§[_loc8_];
               _loc11_ = this.§>!l§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != § C§.§<" §)
               {
                  _loc5_.§5!?§ = this.§,!T§.§6P§.§;+§.§^!y§(_loc5_.§>I§(_loc10_,_loc11_));
               }
               else
               {
                  this.§-"-§.push(new §+;§(_loc8_,_loc9_,_loc5_.§-^§));
               }
            }
         }
      }
      
      protected function get §7!$§() : Class
      {
         return §7!$§;
      }
      
      public function get §@!F§() : Sprite
      {
         return this.get;
      }
      
      public function get §!",§() : Sprite
      {
         return this.§+"5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§>!l§.length > 0)
         {
            this.§96§(0);
         }
         this.§>!l§ = null;
         this.§-"-§ = null;
         if(this.§+"5§)
         {
            this.§+"5§.dispose();
            this.§+"5§ = null;
            this.§`1§ = null;
            this.get = null;
            this.§8!4§ = null;
            this.§<"+§ = null;
         }
         while(this.§6!H§.length > 0)
         {
            _loc1_ = this.§6!H§.pop();
            this.§,!T§.§>=§.§#!I§(_loc1_);
         }
      }
      
      private function §0!w§(param1:Boolean) : void
      {
         this.§`1§.visible = param1;
      }
      
      private function §'!]§() : void
      {
         var _loc3_:§`T§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§=!+§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§`T§> = new Vector.<§`T§>();
         for each(_loc3_ in this.§>!l§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§+"5§);
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
            this.§0!5§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§`!Z§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§,!T§.§>=§.§extends§(_loc10_);
            this.§6!H§.push(_loc12_);
            (_loc13_ = new §=!+§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§`1§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §`!Z§(param1:Vector.<§`T§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§`T§ = null;
         var _loc11_:§,!c§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§6m§.shape).§^g§();
            _loc13_ = new Rectangle(_loc12_[0].x / §%I§.§9"4§ * param6,_loc12_[0].y / §%I§.§9"4§ * param6,(_loc12_[1].x - _loc12_[0].x) / §%I§.§9"4§ * param6,(_loc12_[1].y - _loc12_[0].y) / §%I§.§9"4§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§'k§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §0!5§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§,!T§.background.§"4§();
         var _loc5_:§#B§;
         if(_loc5_ = this.§,!T§.§!!l§.§ !Z§(_loc4_))
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
      
      public function §?!j§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`T§
      {
         var _loc10_:§`T§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §+H§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §]b§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §8m§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §?!%§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §]]§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §`!=§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §!!c§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §+!j§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>!0§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`T§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§`T§;
         if((_loc11_ = this.§4!A§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§1!^§;
            this.§>!l§[this.§>!l§.length] = _loc11_;
         }
         else
         {
            this.§>!l§[this.§>!l§.length] = _loc11_;
         }
         if(_loc11_ is §+!j§ && !_loc11_.§6C§())
         {
            this.§8!4§.addChild(_loc10_);
            ++this.§>!0§;
         }
         else if(_loc11_.front || param9)
         {
            this.get.addChild(_loc10_);
         }
         else
         {
            this.§<"+§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§,!T§.§^9§(_loc11_);
         }
         if(param6)
         {
            this.§,!T§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §<!§(param1:int, param2:§`T§, param3:§`T§) : §3g§
      {
         var _loc6_:§3g§ = null;
         var _loc4_:int = this.§>!l§.indexOf(param2) - this.§4!f§;
         var _loc5_:int = this.§>!l§.indexOf(param3) - this.§4!f§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §3g§(§ C§.§7!t§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5!?§ = this.§,!T§.§6P§.§;+§.§^!y§(_loc6_.§>I§(param2,param3));
            this.§[z§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §?M§(param1:§3g§) : void
      {
         if(!(param1.§5!?§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§`T§ = this.getObject(param1.index1 + this.§4!f§);
         var _loc3_:§`T§ = this.getObject(param1.index2 + this.§4!f§);
         this.§,!T§.§6P§.§;+§.§?!-§(param1.§5!?§);
         param1.§5!?§ = this.§,!T§.§6P§.§;+§.§^!y§(param1.§>I§(_loc2_,_loc3_));
      }
      
      public function §9" §(param1:§`T§) : Vector.<§3g§>
      {
         var _loc4_:§3g§ = null;
         var _loc2_:Vector.<§3g§> = new Vector.<§3g§>();
         var _loc3_:int = this.§>!l§.indexOf(param1) - this.§4!f§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§[z§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§3g§>
      {
         return this.§[z§;
      }
      
      public function §-!-§(param1:§`T§) : void
      {
         var _loc2_:int = this.§>!l§.indexOf(param1) - this.§4!f§;
         var _loc3_:int = this.§[z§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§[z§[_loc3_].index1 == _loc2_ || this.§[z§[_loc3_].index2 == _loc2_)
            {
               this.§[z§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §,""§(param1:§`T§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§-"-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§-"-§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§-"-§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §9!R§(param1:§`T§, param2:§`T§) : Boolean
      {
         var _loc3_:int = this.§>!l§.indexOf(param1) - this.§4!f§;
         var _loc4_:int = this.§>!l§.indexOf(param2) - this.§4!f§;
         var _loc5_:int = this.§[z§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§[z§[_loc5_].index1 == _loc3_ && this.§[z§[_loc5_].index2 == _loc4_ || this.§[z§[_loc5_].index1 == _loc4_ && this.§[z§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §4!A§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`T§
      {
         var _loc10_:§`T§ = null;
         var _loc11_:§1!S§ = null;
         var _loc12_:§1!S§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§?!j§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§5§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §+!O§.§?!b§(param2);
            _loc10_ = new §+!w§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §+!O§.§?!b§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §+!O§.§?!b§(param2);
            }
            if(_loc12_.§`!A§ == §1!S§.§=^§ || _loc12_.§`!A§ == §1!S§.§,!G§)
            {
               _loc10_ = new §`!c§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §`T§(this,param1,this.§,!T§.§6P§.§;+§,this.§,!T§,this.§&!?§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§5!8§();
         return _loc10_;
      }
      
      protected function §5!8§() : String
      {
         var _loc3_:§`T§ = null;
         var _loc1_:int = this.§>!l§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§>!l§)
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
      
      public function §[!!§(param1:Number) : void
      {
         var _loc3_:§`T§ = null;
         var _loc2_:int = this.§>!l§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>!l§[_loc2_] as §`T§;
            if(_loc3_)
            {
               if(_loc3_.§+!_§ <= 0)
               {
                  this.§96§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§5!Q§();
                  _loc3_.§^!K§();
               }
            }
            _loc2_--;
         }
         this.§?!#§(param1);
      }
      
      protected function §?!#§(param1:Number) : void
      {
         this.§>!V§(param1);
         this.§>@§();
      }
      
      private function §>!V§(param1:Number) : void
      {
         var _loc4_:§+;§ = null;
         var _loc5_:int = 0;
         var _loc6_:§`T§ = null;
         if(this.§-"-§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§+;§> = this.§-"-§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§<N§ && this.§-"-§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.getObjectWithID("" + _loc5_))
                  {
                     this.removeObject(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §>@§() : void
      {
         var _loc1_:§3g§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§[z§)
         {
            if(_loc1_.type == § C§.§<!&§ && _loc1_.§'!Y§)
            {
               _loc2_ = (_loc1_.§5!?§ as b2PrismaticJoint).§&W§();
               _loc3_ = (_loc1_.§5!?§ as b2PrismaticJoint).§'L§();
               if(_loc1_.§^"2§ && _loc1_.§!'§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§5!?§ as b2PrismaticJoint).§;d§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§<!B§.push(§99§.§2"6§(param1,param2,param3));
         § !x§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §5!e§(param1:Number, param2:Number) : int
      {
         var _loc4_:§`T§ = null;
         var _loc3_:int = this.§>!l§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§>!l§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §`T§
      {
         var _loc4_:§`T§ = null;
         var _loc3_:int = this.§>!l§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§>!l§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§`T§>
      {
         var _loc5_:§`T§ = null;
         var _loc3_:Vector.<§`T§> = new Vector.<§`T§>();
         var _loc4_:int = this.§>!l§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§>!l§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §`T§
      {
         return this.§>!l§[param1];
      }
      
      public function §1!%§(param1:Number, param2:Number) : void
      {
         var _loc4_:§`T§ = null;
         var _loc3_:int = this.§>!l§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§>!l§[_loc3_] as §`T§).§1!%§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §!!1§(param1:§`T§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§`T§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§+!_§ == param1.§4>§)
         {
            if(this.§<z§ < this.§7!$§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§<z§ += param2 * this.§7!$§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§?!s§(param2 * this.§<z§);
            this.§-"7§ = 0;
         }
         else if(this.§-"7§ == 0)
         {
            this.§-"7§ = this.§,!T§.§5a§;
         }
         if(param1.§!!`§() || this.§;R§(param1) || this.§-"7§ > 0 && this.§,!T§.§5a§ > this.§-"7§ + this.§7!$§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§7!$§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§7!$§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§7!$§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  § !x§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  § !x§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§7!$§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§7!$§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§7!$§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§7!$§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§;R§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§7!$§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§-"7§ = 0;
                  _loc7_.§7!w§.§;"&§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §3p§(param1:§`T§, param2:Number) : Boolean
      {
         var _loc5_:§`T§ = null;
         if(this.§7!$§.MIGHTY_EAGLE_USE_SHADE && !this.§&!a§ && this.mMightyEagleTimer > this.§7!$§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§&!a§ = true;
            this.§,!T§.§1!w§();
         }
         this.mMightyEagleTimer += param2;
         this.§,!T§.particles.§`!N§(§7!0§.§+_§,§3!8§.§^D§,§7!0§.§3!!§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§7!0§.§@",§(param1.§'!l§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§8>§(this.§7!$§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§=5§)
            {
               this.§=5§ = false;
               this.§,!T§.§ E§();
               param1.§0!B§(§!m§.§^"§);
               this.mSardineCanAdded = false;
               param1.§7!w§.§7!i§ = true;
               param1.§7!w§.§8!&§();
               for each(_loc5_ in this.§>!l§)
               {
                  if(_loc5_ && _loc5_.§3!^§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§#!V§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§>!l§)
               {
                  if(_loc5_ && _loc5_.§3!^§())
                  {
                     _loc5_.applyDamage(_loc5_.§4>§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§=5§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§1!L§(param2,new Point(this.§7!$§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§7!$§.MIGHTY_EAGLE_Y_CHANGE),this.§7!$§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §"!i§() : void
      {
         var _loc1_:§99§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§`T§ = null;
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
         while(this.§<!B§.length > 0)
         {
            _loc1_ = this.§<!B§.shift();
            _loc2_ = _loc1_.§[j§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§>!l§)
            {
               _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§[j§)
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
               if(_loc10_ <= _loc1_.§ !A§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§^!§(_loc6_,_loc14_);
               }
            }
            this.§,!T§.particles.§`!N§(this.§=!T§(_loc1_.type),§3!8§.§^D§,§7!0§.§+!'§,_loc3_,_loc4_,600,"",§7!0§.§07§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§,!T§.particles.§`!N§(§7!0§.§,!e§,§3!8§.§^D§,§7!0§.§3!!§,_loc3_,_loc4_,_loc16_,"",§7!0§.§07§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §^!§(param1:§`T§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §=!T§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §7!0§.§`!2§;
      }
      
      public function §0§(param1:Number) : void
      {
         var _loc2_:§`T§ = null;
         var _loc3_:int = this.§>!l§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§>!l§[_loc3_];
            if(_loc2_.§]J§())
            {
               if(this.§!!1§(_loc2_,param1))
               {
                  this.§96§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§6C§())
            {
               this.§3p§(_loc2_,param1);
            }
            else if(this.§;R§(_loc2_))
            {
               _loc2_.§0!B§(§!m§.§ q§);
               this.§96§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§0!B§(§!m§.§ q§);
               this.§96§(_loc3_,false,true,true);
            }
            else if(_loc2_.§>R§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§"!i§();
      }
      
      private function §#!V§() : void
      {
         var _loc1_:§3g§ = null;
         for each(_loc1_ in this.§[z§)
         {
            if(_loc1_.type != § C§.§<" §)
            {
               this.§,!T§.§6P§.§;+§.§?!-§(_loc1_.§5!?§);
            }
         }
      }
      
      public function §&!Q§() : Boolean
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>!l§.length)
         {
            _loc2_ = this.§>!l§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §;R§(param1:§`T§) : Boolean
      {
         if(param1 && param1.§6m§.§3!I§() != §=!E§.§0!n§ && this.§,!T§.borders.§0_§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §96§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§3g§ = null;
         var _loc7_:§+;§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§`T§;
         if((_loc5_ = this.§>!l§[param1]).§3!^§())
         {
            ++this.§;!9§;
         }
         else if(_loc5_.§>R§())
         {
            --this.§>!0§;
         }
         if(_loc5_ == this.§,!T§.activeObject)
         {
            this.§,!T§.activeObject = null;
         }
         if(param2)
         {
            this.§,!T§.addScore(_loc5_.§6m§.score,§&,§.§5i§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§7!0§.§6=§(_loc5_.§'!l§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§,!T§.particles);
         }
         if(param4)
         {
            this.§4p§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§8B§(_loc5_.sprite);
         this.§-!-§(_loc5_);
         this.§,""§(_loc5_);
         for each(_loc6_ in this.§[z§)
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
         for each(_loc7_ in this.§-"-§)
         {
            if(_loc7_.§]W§ == param1)
            {
               _loc7_.§<N§ = true;
            }
            if(_loc7_.§]W§ >= param1)
            {
               --_loc7_.§]W§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§>!l§[param1] = null;
         this.§>!l§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§`T§, param2:§3!8§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §8B§(param1:Sprite) : void
      {
         if(this.§<"+§.contains(param1))
         {
            this.§<"+§.removeChild(param1);
            return;
         }
         if(this.§8!4§.contains(param1))
         {
            this.§8!4§.removeChild(param1);
            return;
         }
         if(this.§`1§.contains(param1))
         {
            this.§`1§.removeChild(param1);
            return;
         }
         if(this.get.contains(param1))
         {
            this.get.removeChild(param1);
            return;
         }
      }
      
      protected function §4p§(param1:§`T§) : void
      {
         if(param1.§]" §().toUpperCase() == "WHITE_EGG" || param1.§1"4§())
         {
            if(param1.§'!l§.toUpperCase() == §?!%§.§?!N§)
            {
               this.addExplosions(§99§.§0!C§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§99§.§>!j§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§96§(this.§>!l§.indexOf(param1),param2,param3,param4);
      }
      
      public function §54§(param1:Number, param2:Number) : void
      {
         this.§+"5§.x = -param1;
         this.§+"5§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§`T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!l§.length)
         {
            _loc3_ = this.§>!l§[_loc2_] as §`T§;
            if(_loc3_ && _loc3_.§3!^§() && _loc3_.§+!_§ > 0)
            {
               if(!param1 || _loc3_.§7!w§.mTryToBlink <= 0 && _loc3_.§7!w§.mTryToScream <= 0)
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
         var _loc4_:§`T§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§>!l§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§>!l§[_loc3_] as §`T§) && _loc4_.§3!^§() && _loc4_.§+!_§ > 0)
            {
               if(!param1 || _loc4_.§7!w§.mTryToBlink <= 0 && _loc4_.§7!w§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function getBlockCount() : int
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>!l§)
         {
            if(_loc2_ && (_loc2_.§[!Z§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§>!l§)
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
         var _loc3_:§`T§ = null;
         var _loc2_:int = this.§>!l§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>!l§[_loc2_];
            if(_loc3_ && _loc3_.§3!^§() && _loc3_.§+!_§ > 0)
            {
               _loc3_.§7!w§.mTryToScream = §<!e§.§@!v§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §`!T§() : Boolean
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = this.§>!l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!l§[_loc1_] as §`T§;
            if(_loc2_ && _loc2_.§>R§() && _loc2_.§+!_§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = this.§>!l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!l§[_loc1_] as §`T§;
            if(_loc2_ && _loc2_.§+!_§ > 0 && _loc2_.§`!A§ != §1!S§.§^$§)
            {
               if(_loc2_.§4$§() && !_loc2_.§!!`§())
               {
                  return false;
               }
               if(_loc2_.§>R§() && _loc2_.§+!_§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §&@§(param1:Boolean = false) : §`T§
      {
         var _loc5_:int = 0;
         var _loc6_:§`T§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§>!l§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§>!l§[_loc5_]) && _loc6_.§3!^§() && _loc6_.§+!_§ > 0)
               {
                  if(!param1 || _loc6_.§7!w§.mTryToBlink <= 0 && _loc6_.§7!w§.mTryToScream <= 0)
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
      
      public function §="6§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§>!l§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§>!l§[_loc2_] as §`T§).§6m§.score;
            if((this.§>!l§[_loc2_] as §`T§).§4$§())
            {
               _loc1_ += §%I§.§2Q§.getValue() * int((this.§>!l§[_loc2_] as §`T§).§4>§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§,!T§.slingshot.§="6§());
      }
      
      public function §,!l§(param1:§`T§, param2:§`T§) : Boolean
      {
         if(param1.§>R§() && param2.§>R§())
         {
            return true;
         }
         if(!param1.§?q§() && !param2.§?q§())
         {
            return true;
         }
         return false;
      }
      
      public function §`d§() : void
      {
         this.mSardineCanAdded = true;
         this.§>!0§ = 0;
      }
      
      public function §?,§(param1:§`T§, param2:§`T§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§6C§() || param2.§3!^§())
            {
               param2.applyDamage(param2.§4>§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§6C§() || param1.§3!^§())
            {
               param1.applyDamage(param1.§4>§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§7!$§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§]J§() || param2.§]J§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§,!l§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§null§(param2.§]" §());
         var _loc5_:Number = param1.§3D§(param2.§]" §());
         var _loc6_:Number = param2.§null§(param1.§]" §());
         var _loc7_:Number = param2.§3D§(param1.§]" §());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§+!_§);
         var _loc14_:Number = Math.max(0,param2.§+!_§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§>R§(),_loc14_ == param2.§4>§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§>R§(),_loc13_ == param1.§4>§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§<!D§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§<!D§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §[!J§() : void
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = this.§>!l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!l§[_loc1_] as §`T§;
            if(_loc2_ != null && _loc2_.§3!^§())
            {
               this.§96§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §+4§() : void
      {
         var _loc2_:§`T§ = null;
         var _loc1_:int = this.§>!l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!l§[_loc1_] as §`T§;
            if(_loc2_ != null && _loc2_.§1"4§())
            {
               this.§96§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§>!l§.length;
      }
      
      public function writeObjectInformation(param1:§+R§) : void
      {
         var _loc4_:§`T§ = null;
         var _loc5_:§,!3§ = null;
         var _loc6_:§ C§ = null;
         var _loc7_:§3g§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>!l§.length)
         {
            if(!(_loc4_ = this.§>!l§[_loc2_]).isGround())
            {
               (_loc5_ = new §,!3§()).angle = _loc4_.§'k§();
               _loc5_.id = _loc4_.§'!l§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§[z§.length)
         {
            _loc7_ = this.§[z§[_loc3_];
            _loc6_ = new § C§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§5y§,_loc7_.§^"2§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§!'§,_loc7_.motorSpeed,_loc7_.§'!Y§,_loc7_.maxTorque);
            param1.§+!Q§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §#!a§() : void
      {
         var _loc1_:int = 0;
         while(this.§>!l§.length > _loc1_)
         {
            if(this.§>!l§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§>!l§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§>!l§.length)
         {
            if(this.§>!l§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§>!l§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§1!^§ = param1;
         this.§0!w§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>!l§.length)
         {
            if(this.§>!l§[_loc2_].isTexture())
            {
               this.§>!l§[_loc2_].sprite.visible = !this.§1!^§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§5!r§ = param1;
      }
      
      public function §5"%§() : Boolean
      {
         return this.§5!r§;
      }
      
      public function §7!N§() : int
      {
         return this.§5§;
      }
      
      public function §1!f§() : int
      {
         return this.§;!9§;
      }
      
      public function getObjectWithID(param1:String) : §`T§
      {
         var _loc3_:§`T§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!l§.length)
         {
            _loc3_ = this.§>!l§[_loc2_] as §`T§;
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
