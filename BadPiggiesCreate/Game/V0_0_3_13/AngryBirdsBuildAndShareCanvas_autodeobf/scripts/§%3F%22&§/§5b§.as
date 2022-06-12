package §?"&§
{
   import § ""§.§4!n§;
   import § ""§.§7Q§;
   import § ""§.§<9§;
   import § ""§.§["?§;
   import § ""§.§]k§;
   import §0I§.§5!%§;
   import §0I§.§]!`§;
   import §0I§.§`!m§;
   import §0I§.§continue§;
   import §0s§.§];§;
   import §1!z§.b2Vec2;
   import §8!E§.§9!S§;
   import §8!E§.§?!X§;
   import §8!E§.§@!i§;
   import §8!E§.§[I§;
   import §;!@§.§>!%§;
   import §>Z§.§5;§;
   import §@!#§.Texture;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §^%§.b2PrismaticJoint;
   import §^%§.b2WeldJoint;
   import §`"2§.§%3§;
   import §`L§.§-;§;
   import §`L§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5b§
   {
       
      
      protected var §+"'§:Vector.<§"!q§>;
      
      protected var §-![§:int;
      
      public var §7!;§:§?!X§;
      
      public var §5!O§:Vector.<§?!l§>;
      
      protected var §<B§:Sprite;
      
      protected var §9!T§:Sprite;
      
      private var §<!H§:Sprite;
      
      private var § "8§:Sprite;
      
      private var §;!1§:Sprite;
      
      protected var §!!%§:Vector.<Texture>;
      
      protected var §"!7§:Vector.<§`!m§>;
      
      protected var §+!!§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §%!a§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §5!w§:Boolean = false;
      
      protected var §!e§:Number;
      
      protected var §]h§:int;
      
      protected var §>r§:Vector.<§]!`§>;
      
      protected var §,!-§:int = 0;
      
      private var §<Q§:int = 0;
      
      private var §9!h§:int = 0;
      
      private var §]q§:int;
      
      private var §3!+§:Boolean = true;
      
      private var §2!]§:Boolean = true;
      
      public function §5b§(param1:§?!X§, param2:§];§, param3:Sprite)
      {
         var _loc5_:§`!m§ = null;
         var _loc6_:§continue§ = null;
         var _loc7_:§"!q§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§"!q§ = null;
         var _loc11_:§"!q§ = null;
         this.§+"'§ = new Vector.<§"!q§>();
         this.§5!O§ = new Vector.<§?!l§>();
         this.§!!%§ = new Vector.<Texture>();
         this.§!e§ = this.§@!i§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§>r§ = new Vector.<§]!`§>();
         super();
         this.§7!;§ = param1;
         this.§-![§ = 0;
         this.§9!T§ = param3;
         this.§9!T§.§9!!§ = false;
         this.§2!]§ = true;
         this.§3!+§ = true;
         this.§<B§ = new Sprite();
         this.§<!H§ = new Sprite();
         this.§ "8§ = new Sprite();
         this.§;!1§ = new Sprite();
         this.§9!T§.addChild(this.§<B§);
         this.§9!T§.addChild(this.§<!H§);
         this.§9!T§.addChild(this.§ "8§);
         this.§9!T§.addChild(this.§;!1§);
         this.addObject(§>!%§.§?L§(param2.theme).§?B§,(this.§7!;§.borders.§""9§ + this.§7!;§.borders.§3!0§) / 2,this.§7!;§.borders.mBorderGround_B2 + §[I§.§7!+§);
         this.§]q§ = this.§+"'§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§1"8§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§9!w§();
         this.§=!l§(true);
         this.§"!7§ = new Vector.<§`!m§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§-!P§)
         {
            this.§"!7§.push(§`!m§.§3!k§(param2.§9+§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§"!7§)
         {
            _loc8_ = _loc5_.index1 + this.§]q§;
            _loc9_ = _loc5_.index2 + this.§]q§;
            if(_loc8_ < this.§+"'§.length && _loc9_ < this.§+"'§.length)
            {
               _loc10_ = this.§+"'§[_loc8_];
               _loc11_ = this.§+"'§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §5!%§.§=$§)
               {
                  _loc5_.§ i§ = this.§7!;§.§1!-§.§2!J§.§]=§(_loc5_.§+!D§(_loc10_,_loc11_));
               }
               else
               {
                  this.§>r§.push(new §]!`§(_loc8_,_loc9_,_loc5_.§^_§));
               }
            }
         }
      }
      
      protected function get §@!i§() : Class
      {
         return §@!i§;
      }
      
      public function get §[!a§() : Sprite
      {
         return this.§;!1§;
      }
      
      public function get § ! §() : Sprite
      {
         return this.§9!T§;
      }
      
      public function get §;!0§() : Sprite
      {
         return this.§ "8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§+"'§.length > 0)
         {
            this.§["=§(0);
         }
         this.§+"'§ = null;
         this.§>r§ = null;
         if(this.§9!T§)
         {
            this.§9!T§.dispose();
            this.§9!T§ = null;
            this.§<B§ = null;
            this.§;!1§ = null;
            this.§<!H§ = null;
            this.§ "8§ = null;
         }
         while(this.§!!%§.length > 0)
         {
            _loc1_ = this.§!!%§.pop();
            this.§7!;§.§4F§.§7?§(_loc1_);
         }
      }
      
      private function §=!l§(param1:Boolean) : void
      {
         this.§<B§.visible = param1;
      }
      
      private function §9!w§() : void
      {
         var _loc3_:§"!q§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§-;§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"!q§> = new Vector.<§"!q§>();
         for each(_loc3_ in this.§+"'§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§9!T§);
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
            this.§^"4§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§6! §(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§7!;§.§4F§.§`!+§(_loc10_);
            this.§!!%§.push(_loc12_);
            (_loc13_ = new §-;§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§<B§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §6! §(param1:Vector.<§"!q§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§"!q§ = null;
         var _loc11_:§["?§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§5U§.shape).§5!3§();
            _loc13_ = new Rectangle(_loc12_[0].x / §?!X§.§57§ * param6,_loc12_[0].y / §?!X§.§57§ * param6,(_loc12_[1].x - _loc12_[0].x) / §?!X§.§57§ * param6,(_loc12_[1].y - _loc12_[0].y) / §?!X§.§57§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§#!q§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §^"4§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§7!;§.background.§&L§();
         var _loc5_:§%3§;
         if(_loc5_ = this.§7!;§.§?!v§.§'"#§(_loc4_))
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
      
      public function §"Q§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!q§
      {
         var _loc10_:§]k§ = §4!n§.§]4§(param2);
         return new §'M§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §2!s§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!q§
      {
         var _loc10_:§"!q§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §]!S§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §1!P§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §5T§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §@!e§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §4!p§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new each(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §7c§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §<!+§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §`!k§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§,!-§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"!q§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§"!q§;
         if((_loc11_ = this.§""!§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§3!+§;
            this.§+"'§[this.§+"'§.length] = _loc11_;
         }
         else
         {
            this.§+"'§[this.§+"'§.length] = _loc11_;
         }
         if(_loc11_ is §`!k§ && !_loc11_.§?l§())
         {
            this.§<!H§.addChild(_loc10_);
            ++this.§,!-§;
         }
         else if(_loc11_.front || param9)
         {
            this.§;!1§.addChild(_loc10_);
         }
         else
         {
            this.§ "8§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§7!;§.§<Z§(_loc11_);
         }
         if(param6)
         {
            this.§7!;§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §3!k§(param1:int, param2:§"!q§, param3:§"!q§) : §`!m§
      {
         var _loc6_:§`!m§ = null;
         var _loc4_:int = this.§+"'§.indexOf(param2) - this.§]q§;
         var _loc5_:int = this.§+"'§.indexOf(param3) - this.§]q§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §`!m§(§5!%§.§@"2§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§ i§ = this.§7!;§.§1!-§.§2!J§.§]=§(_loc6_.§+!D§(param2,param3));
            this.§"!7§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §=!K§(param1:§`!m§) : void
      {
         if(!(param1.§ i§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§"!q§ = this.getObject(param1.index1 + this.§]q§);
         var _loc3_:§"!q§ = this.getObject(param1.index2 + this.§]q§);
         this.§7!;§.§1!-§.§2!J§.§6-§(param1.§ i§);
         param1.§ i§ = this.§7!;§.§1!-§.§2!J§.§]=§(param1.§+!D§(_loc2_,_loc3_));
      }
      
      public function §`!r§(param1:§"!q§) : Vector.<§`!m§>
      {
         var _loc4_:§`!m§ = null;
         var _loc2_:Vector.<§`!m§> = new Vector.<§`!m§>();
         var _loc3_:int = this.§+"'§.indexOf(param1) - this.§]q§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§"!7§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§`!m§>
      {
         return this.§"!7§;
      }
      
      public function §"!?§(param1:§"!q§) : void
      {
         var _loc2_:int = this.§+"'§.indexOf(param1) - this.§]q§;
         var _loc3_:int = this.§"!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§"!7§[_loc3_].index1 == _loc2_ || this.§"!7§[_loc3_].index2 == _loc2_)
            {
               this.§"!7§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §?`§(param1:§"!q§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§>r§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§>r§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§>r§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §^!E§(param1:§"!q§, param2:§"!q§) : Boolean
      {
         var _loc3_:int = this.§+"'§.indexOf(param1) - this.§]q§;
         var _loc4_:int = this.§+"'§.indexOf(param2) - this.§]q§;
         var _loc5_:int = this.§"!7§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§"!7§[_loc5_].index1 == _loc3_ && this.§"!7§[_loc5_].index2 == _loc4_ || this.§"!7§[_loc5_].index1 == _loc4_ && this.§"!7§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §""!§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!q§
      {
         var _loc10_:§"!q§ = null;
         var _loc11_:§]k§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§2!s§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§9!h§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§"Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §4!n§.§]4§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §4!n§.§]4§(param2);
            }
            if(_loc11_.§!"3§ == §]k§.§8"$§ || _loc11_.§!"3§ == §]k§.§%!A§)
            {
               _loc10_ = new §=!G§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §"!q§(this,param1,this.§7!;§.§1!-§.§2!J§,this.§7!;§,this.§-![§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§]"!§();
         return _loc10_;
      }
      
      protected function §]"!§() : String
      {
         var _loc3_:§"!q§ = null;
         var _loc1_:int = this.§+"'§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§+"'§)
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
      
      public function §'1§(param1:Number) : void
      {
         var _loc3_:§"!q§ = null;
         var _loc2_:int = this.§+"'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+"'§[_loc2_] as §"!q§;
            if(_loc3_)
            {
               if(_loc3_.§`X§ <= 0)
               {
                  this.§["=§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§9A§();
                  _loc3_.§5!A§();
               }
            }
            _loc2_--;
         }
         this.§2[§(param1);
      }
      
      protected function §2[§(param1:Number) : void
      {
         this.§5!6§(param1);
         this.§;!A§();
      }
      
      private function §5!6§(param1:Number) : void
      {
         var _loc4_:§]!`§ = null;
         var _loc5_:int = 0;
         var _loc6_:§"!q§ = null;
         if(this.§>r§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§]!`§> = this.§>r§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§&!9§ && this.§>r§.indexOf(_loc4_) != -1)
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
      
      private function §;!A§() : void
      {
         var _loc1_:§`!m§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§"!7§)
         {
            if(_loc1_.type == §5!%§.§%U§ && _loc1_.§8<§)
            {
               _loc2_ = (_loc1_.§ i§ as b2PrismaticJoint).§4y§();
               _loc3_ = (_loc1_.§ i§ as b2PrismaticJoint).§?n§();
               if(_loc1_.§@"1§ && _loc1_.§;!f§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§ i§ as b2PrismaticJoint).§,"%§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§"!q§> = null) : void
      {
         this.§5!O§.push(§?!l§.§=g§(param1,param2,param3,param4));
         §5;§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §6!c§(param1:Number, param2:Number) : int
      {
         var _loc4_:§"!q§ = null;
         var _loc3_:int = this.§+"'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+"'§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §"!q§
      {
         var _loc4_:§"!q§ = null;
         var _loc3_:int = this.§+"'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+"'§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§"!q§>
      {
         var _loc5_:§"!q§ = null;
         var _loc3_:Vector.<§"!q§> = new Vector.<§"!q§>();
         var _loc4_:int = this.§+"'§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§+"'§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §"!q§
      {
         return this.§+"'§[param1];
      }
      
      public function §=R§(param1:Number, param2:Number) : void
      {
         var _loc4_:§"!q§ = null;
         var _loc3_:int = this.§+"'§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§+"'§[_loc3_] as §"!q§).§=R§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §=!f§(param1:§"!q§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§"!q§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§`X§ == param1.§&<§)
         {
            if(this.§!e§ < this.§@!i§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§!e§ += param2 * this.§@!i§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§9J§(param2 * this.§!e§);
            this.§]h§ = 0;
         }
         else if(this.§]h§ == 0)
         {
            this.§]h§ = this.§7!;§.§;;§;
         }
         if(param1.§<!s§() || this.§89§(param1) || this.§]h§ > 0 && this.§7!;§.§;;§ > this.§]h§ + this.§@!i§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§@!i§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§@!i§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§@!i§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §5;§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §5;§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§@!i§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§@!i§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§@!i§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§@!i§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§89§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§@!i§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§]h§ = 0;
                  _loc7_.§!!8§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §]j§(param1:§"!q§, param2:Number) : Boolean
      {
         var _loc5_:§"!q§ = null;
         if(this.§@!i§.MIGHTY_EAGLE_USE_SHADE && !this.§5!w§ && this.mMightyEagleTimer > this.§@!i§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§5!w§ = true;
            this.§7!;§.§1!&§();
         }
         this.mMightyEagleTimer += param2;
         this.§7!;§.particles.§-?§(§=!i§.§#!+§,§ !>§.§!!]§,§=!i§.§^!3§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§=!i§.§6z§(param1.§=!+§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§9g§(this.§@!i§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§%!a§)
            {
               this.§%!a§ = false;
               this.§7!;§.§?!C§();
               param1.§@!,§(§<9§.§3=§);
               this.mSardineCanAdded = false;
               param1.§!!8§.§=!Y§ = true;
               param1.§!!8§.§=Y§();
               for each(_loc5_ in this.§+"'§)
               {
                  if(_loc5_ && _loc5_.§0"1§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§,G§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§+"'§)
               {
                  if(_loc5_ && _loc5_.§0"1§())
                  {
                     _loc5_.applyDamage(_loc5_.§&<§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§%!a§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§#!;§(param2,new Point(this.§@!i§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§@!i§.MIGHTY_EAGLE_Y_CHANGE),this.§@!i§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §]!6§() : void
      {
         var _loc1_:§?!l§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§"!q§ = null;
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
         while(this.§5!O§.length > 0)
         {
            _loc1_ = this.§5!O§.shift();
            _loc2_ = _loc1_.§["2§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§+"'§)
            {
               if(!(_loc1_.§?!b§ != null && _loc1_.§?!b§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§["2§)
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
                  if(_loc10_ <= _loc1_.§4!N§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§?T§(_loc6_,_loc14_);
                  }
               }
            }
            this.§7!;§.particles.§-?§(this.§18§(_loc1_.type),§ !>§.§!!]§,§=!i§.§&x§,_loc3_,_loc4_,600,"",§=!i§.§+"-§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§7!;§.particles.§-?§(§=!i§.§,! §,§ !>§.§!!]§,§=!i§.§^!3§,_loc3_,_loc4_,_loc16_,"",§=!i§.§+"-§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §?T§(param1:§"!q§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §18§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §=!i§.§<!r§;
      }
      
      public function §'!_§(param1:Number) : void
      {
         var _loc2_:§"!q§ = null;
         var _loc3_:int = this.§+"'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§+"'§[_loc3_];
            if(_loc2_.§23§())
            {
               if(this.§=!f§(_loc2_,param1))
               {
                  this.§["=§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§?l§())
            {
               this.§]j§(_loc2_,param1);
            }
            else if(this.§89§(_loc2_))
            {
               _loc2_.§@!,§(§<9§.§%!b§);
               this.§["=§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@!,§(§<9§.§%!b§);
               this.§["=§(_loc3_,false,true,true);
            }
            else if(_loc2_.§^!u§() || _loc2_.§'y§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§]!6§();
      }
      
      private function §,G§() : void
      {
         var _loc1_:§`!m§ = null;
         for each(_loc1_ in this.§"!7§)
         {
            if(_loc1_.type != §5!%§.§=$§)
            {
               this.§7!;§.§1!-§.§2!J§.§6-§(_loc1_.§ i§);
            }
         }
      }
      
      public function §3!K§() : Boolean
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+"'§.length)
         {
            _loc2_ = this.§+"'§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §89§(param1:§"!q§) : Boolean
      {
         if(param1 && param1.§5U§.§!!9§() != §7Q§.§!?§ && this.§7!;§.borders.§@",§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §["=§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§`!m§ = null;
         var _loc7_:§]!`§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§"!q§;
         if((_loc5_ = this.§+"'§[param1]).§0"1§())
         {
            ++this.§<Q§;
         }
         else if(_loc5_.§^!u§())
         {
            --this.§,!-§;
         }
         if(_loc5_ == this.§7!;§.activeObject)
         {
            this.§7!;§.activeObject = null;
         }
         if(param2)
         {
            this.§7!;§.addScore(_loc5_.§5U§.score,§9!S§.§-!G§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§=!i§.§ !2§(_loc5_.§=!+§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§7!;§.particles);
         }
         if(param4)
         {
            this.§?!K§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§[!W§(_loc5_.sprite);
         this.§"!?§(_loc5_);
         this.§?`§(_loc5_);
         for each(_loc6_ in this.§"!7§)
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
         for each(_loc7_ in this.§>r§)
         {
            if(_loc7_.§[[§ == param1)
            {
               _loc7_.§&!9§ = true;
            }
            if(_loc7_.§[[§ >= param1)
            {
               --_loc7_.§[[§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§+"'§[param1] = null;
         this.§+"'§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§"!q§, param2:§ !>§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §[!W§(param1:Sprite) : void
      {
         if(this.§ "8§.contains(param1))
         {
            this.§ "8§.removeChild(param1);
            return;
         }
         if(this.§<!H§.contains(param1))
         {
            this.§<!H§.removeChild(param1);
            return;
         }
         if(this.§<B§.contains(param1))
         {
            this.§<B§.removeChild(param1);
            return;
         }
         if(this.§;!1§.contains(param1))
         {
            this.§;!1§.removeChild(param1);
            return;
         }
      }
      
      protected function §?!K§(param1:§"!q§) : void
      {
         if(param1.§<!z§().toUpperCase() == "WHITE_EGG" || param1.§7i§())
         {
            if(param1.§=!+§.toUpperCase() == §@!e§.§4!h§)
            {
               this.addExplosions(§?!l§.§;A§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§?!l§.§,!N§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§["=§(this.§+"'§.indexOf(param1),param2,param3,param4);
      }
      
      public function §=!0§(param1:Number, param2:Number) : void
      {
         this.§9!T§.x = -param1;
         this.§9!T§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§"!q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"'§.length)
         {
            _loc3_ = this.§+"'§[_loc2_] as §"!q§;
            if(_loc3_ && _loc3_.§0"1§() && _loc3_.§`X§ > 0)
            {
               if(!param1 || _loc3_.§!!8§.mTryToBlink <= 0 && _loc3_.§!!8§.mTryToScream <= 0)
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
         var _loc4_:§"!q§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§+"'§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+"'§[_loc3_] as §"!q§) && _loc4_.§0"1§() && _loc4_.§`X§ > 0)
            {
               if(!param1 || _loc4_.§!!8§.mTryToBlink <= 0 && _loc4_.§!!8§.mTryToScream <= 0)
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
         var _loc2_:§"!q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+"'§)
         {
            if(_loc2_ && (_loc2_.§-E§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+"'§)
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
         var _loc3_:§"!q§ = null;
         var _loc2_:int = this.§+"'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+"'§[_loc2_];
            if(_loc3_ && _loc3_.§0"1§() && _loc3_.§`X§ > 0)
            {
               _loc3_.§!!8§.mTryToScream = §"f§.§7X§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §6!p§() : Boolean
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = this.§+"'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+"'§[_loc1_] as §"!q§;
            if(_loc2_ && _loc2_.§^!u§() && _loc2_.§`X§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = this.§+"'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+"'§[_loc1_] as §"!q§;
            if(_loc2_ && _loc2_.§`X§ > 0 && _loc2_.§!"3§ != §]k§.§9O§)
            {
               if(_loc2_.§'W§() && !_loc2_.§<!s§())
               {
                  return false;
               }
               if(_loc2_.§^!u§() && _loc2_.§`X§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § L§(param1:Boolean = false) : §"!q§
      {
         var _loc5_:int = 0;
         var _loc6_:§"!q§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§+"'§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§+"'§[_loc5_]) && _loc6_.§0"1§() && _loc6_.§`X§ > 0)
               {
                  if(!param1 || _loc6_.§!!8§.mTryToBlink <= 0 && _loc6_.§!!8§.mTryToScream <= 0)
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
      
      public function §?!^§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§+"'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§+"'§[_loc2_] as §"!q§).§5U§.score;
            if((this.§+"'§[_loc2_] as §"!q§).§'W§())
            {
               _loc1_ += §?!X§.§%!O§.getValue() * int((this.§+"'§[_loc2_] as §"!q§).§&<§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§7!;§.slingshot.§?!^§());
      }
      
      public function §#u§(param1:§"!q§, param2:§"!q§) : Boolean
      {
         if(param1.§^!u§() && param2.§^!u§())
         {
            return true;
         }
         if(!param1.§1"§() && !param2.§1"§())
         {
            return true;
         }
         return false;
      }
      
      public function §=w§() : void
      {
         this.mSardineCanAdded = true;
         this.§,!-§ = 0;
      }
      
      public function §]!N§(param1:§"!q§, param2:§"!q§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§?l§() || param2.§0"1§())
            {
               param2.applyDamage(param2.§&<§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§?l§() || param1.§0"1§())
            {
               param1.applyDamage(param1.§&<§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§@!i§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§23§() || param2.§23§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§#u§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%!e§(param2.§<!z§());
         var _loc5_:Number = param1.§?!4§(param2.§<!z§());
         var _loc6_:Number = param2.§%!e§(param1.§<!z§());
         var _loc7_:Number = param2.§?!4§(param1.§<!z§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§`X§);
         var _loc14_:Number = Math.max(0,param2.§`X§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§^!u§(),_loc14_ == param2.§&<§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§^!u§(),_loc13_ == param1.§&<§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§7!@§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§7!@§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §1!S§() : void
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = this.§+"'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+"'§[_loc1_] as §"!q§;
            if(_loc2_ != null && _loc2_.§0"1§())
            {
               this.§["=§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §@!N§() : void
      {
         var _loc2_:§"!q§ = null;
         var _loc1_:int = this.§+"'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+"'§[_loc1_] as §"!q§;
            if(_loc2_ != null && _loc2_.§7i§())
            {
               this.§["=§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§+"'§.length;
      }
      
      public function writeObjectInformation(param1:§];§) : void
      {
         var _loc4_:§"!q§ = null;
         var _loc5_:§continue§ = null;
         var _loc6_:§5!%§ = null;
         var _loc7_:§`!m§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+"'§.length)
         {
            if(!(_loc4_ = this.§+"'§[_loc2_]).isGround())
            {
               (_loc5_ = new §continue§()).angle = _loc4_.§#!q§();
               _loc5_.id = _loc4_.§=!+§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§"!7§.length)
         {
            _loc7_ = this.§"!7§[_loc3_];
            _loc6_ = new §5!%§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§#!I§,_loc7_.§@"1§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§;!f§,_loc7_.motorSpeed,_loc7_.§8<§,_loc7_.maxTorque);
            param1.§=!'§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §&"?§() : void
      {
         var _loc1_:int = 0;
         while(this.§+"'§.length > _loc1_)
         {
            if(this.§+"'§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§+"'§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§+"'§.length)
         {
            if(this.§+"'§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§+"'§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§3!+§ = param1;
         this.§=!l§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+"'§.length)
         {
            if(this.§+"'§[_loc2_].isTexture())
            {
               this.§+"'§[_loc2_].sprite.visible = !this.§3!+§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2!]§ = param1;
      }
      
      public function §2$§() : Boolean
      {
         return this.§2!]§;
      }
      
      public function §,!2§() : int
      {
         return this.§9!h§;
      }
      
      public function §3E§() : int
      {
         return this.§<Q§;
      }
      
      public function getObjectWithID(param1:String) : §"!q§
      {
         var _loc3_:§"!q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"'§.length)
         {
            _loc3_ = this.§+"'§[_loc2_] as §"!q§;
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
