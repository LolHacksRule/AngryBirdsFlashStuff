package §%!&§
{
   import § !V§.§=!g§;
   import §!g§.§,q§;
   import §!t§.b2PrismaticJoint;
   import §!t§.b2WeldJoint;
   import §%!<§.§ !6§;
   import §%!<§.§,6§;
   import §%!<§.§7V§;
   import §%!<§.§=!j§;
   import §%!<§.§`f§;
   import §%h§.§"l§;
   import §%h§.§5X§;
   import §%h§.§6!d§;
   import §%h§.§^!'§;
   import §&"+§.§7D§;
   import §&"+§.§<!1§;
   import §&"+§.§=G§;
   import §&"+§.§>@§;
   import §'!O§.§@!l§;
   import §3!U§.Texture;
   import §6`§.§?!7§;
   import §9v§.b2Vec2;
   import §?c§.§3!u§;
   import §?c§.final;
   import §]!2§.§,!n§;
   import §]!2§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'"-§
   {
       
      
      protected var §1!4§:Vector.<§;!x§>;
      
      protected var §1"-§:int;
      
      public var §>"2§:§5X§;
      
      public var §8!G§:Vector.<§2!%§>;
      
      protected var §8c§:Sprite;
      
      protected var §&!-§:Sprite;
      
      private var §6O§:Sprite;
      
      private var §']§:Sprite;
      
      private var §,L§:Sprite;
      
      protected var §#O§:Vector.<Texture>;
      
      protected var §%j§:Vector.<§<!1§>;
      
      protected var §%o§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §>i§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §9J§:Boolean = false;
      
      protected var § L§:Number;
      
      protected var include:int;
      
      protected var §"!f§:Vector.<§=G§>;
      
      protected var §?m§:int = 0;
      
      private var §0w§:int = 0;
      
      private var §2s§:int = 0;
      
      private var §?b§:int;
      
      private var §]!+§:Boolean = true;
      
      private var §4!r§:Boolean = true;
      
      public function §'"-§(param1:§5X§, param2:§@!l§, param3:Sprite)
      {
         var _loc5_:§<!1§ = null;
         var _loc6_:§>@§ = null;
         var _loc7_:§;!x§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§;!x§ = null;
         var _loc11_:§;!x§ = null;
         this.§1!4§ = new Vector.<§;!x§>();
         this.§8!G§ = new Vector.<§2!%§>();
         this.§#O§ = new Vector.<Texture>();
         this.§ L§ = this.§6!d§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§"!f§ = new Vector.<§=G§>();
         super();
         this.§>"2§ = param1;
         this.§1"-§ = 0;
         this.§&!-§ = param3;
         this.§&!-§.§7!'§ = false;
         this.§4!r§ = true;
         this.§]!+§ = true;
         this.§8c§ = new Sprite();
         this.§6O§ = new Sprite();
         this.§']§ = new Sprite();
         this.§,L§ = new Sprite();
         this.§&!-§.addChild(this.§8c§);
         this.§&!-§.addChild(this.§6O§);
         this.§&!-§.addChild(this.§']§);
         this.§&!-§.addChild(this.§,L§);
         this.addObject(§,q§.§"!>§(param2.theme).§[-§,(this.§>"2§.borders.§ !<§ + this.§>"2§.borders.§`I§) / 2,this.§>"2§.borders.mBorderGround_B2 + §"l§.§%F§);
         this.§?b§ = this.§1!4§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§%!D§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§ !x§();
         this.§;K§(true);
         this.§%j§ = new Vector.<§<!1§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§^!i§)
         {
            this.§%j§.push(§<!1§.§==§(param2.§'"%§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§%j§)
         {
            _loc8_ = _loc5_.index1 + this.§?b§;
            _loc9_ = _loc5_.index2 + this.§?b§;
            if(_loc8_ < this.§1!4§.length && _loc9_ < this.§1!4§.length)
            {
               _loc10_ = this.§1!4§[_loc8_];
               _loc11_ = this.§1!4§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §7D§.§]'§)
               {
                  _loc5_.§ " § = this.§>"2§.§[![§.§'!2§.§6!u§(_loc5_.§!H§(_loc10_,_loc11_));
               }
               else
               {
                  this.§"!f§.push(new §=G§(_loc8_,_loc9_,_loc5_.§-l§));
               }
            }
         }
      }
      
      protected function get §6!d§() : Class
      {
         return §6!d§;
      }
      
      public function get §<!b§() : Sprite
      {
         return this.§,L§;
      }
      
      public function get §9t§() : Sprite
      {
         return this.§&!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§1!4§.length > 0)
         {
            this.§ for§(0);
         }
         this.§1!4§ = null;
         this.§"!f§ = null;
         if(this.§&!-§)
         {
            this.§&!-§.dispose();
            this.§&!-§ = null;
            this.§8c§ = null;
            this.§,L§ = null;
            this.§6O§ = null;
            this.§']§ = null;
         }
         while(this.§#O§.length > 0)
         {
            _loc1_ = this.§#O§.pop();
            this.§>"2§.§7<§.§4`§(_loc1_);
         }
      }
      
      private function §;K§(param1:Boolean) : void
      {
         this.§8c§.visible = param1;
      }
      
      private function § !x§() : void
      {
         var _loc3_:§;!x§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§,!n§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;!x§> = new Vector.<§;!x§>();
         for each(_loc3_ in this.§1!4§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§&!-§);
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
            this.§1!r§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§=L§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§>"2§.§7<§.§>!,§(_loc10_);
            this.§#O§.push(_loc12_);
            (_loc13_ = new §,!n§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§8c§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §=L§(param1:Vector.<§;!x§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;!x§ = null;
         var _loc11_:§`f§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§8N§.shape).§>!Q§();
            _loc13_ = new Rectangle(_loc12_[0].x / §5X§.§,!m§ * param6,_loc12_[0].y / §5X§.§,!m§ * param6,(_loc12_[1].x - _loc12_[0].x) / §5X§.§,!m§ * param6,(_loc12_[1].y - _loc12_[0].y) / §5X§.§,!m§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§8!1§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §1!r§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§>"2§.background.§]"%§();
         var _loc5_:§=!g§;
         if(_loc5_ = this.§>"2§.§,;§.§&I§(_loc4_))
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
      
      public function §9!K§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!x§
      {
         var _loc10_:§;!x§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §7!p§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §@G§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §<'§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §?!g§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §+5§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §6!!§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §=!8§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §6""§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§?m§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!x§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§;!x§;
         if((_loc11_ = this.§4S§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§]!+§;
            this.§1!4§[this.§1!4§.length] = _loc11_;
         }
         else
         {
            this.§1!4§[this.§1!4§.length] = _loc11_;
         }
         if(_loc11_ is §6""§ && !_loc11_.§7!_§())
         {
            this.§6O§.addChild(_loc10_);
            ++this.§?m§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,L§.addChild(_loc10_);
         }
         else
         {
            this.§']§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§>"2§.§,"2§(_loc11_);
         }
         if(param6)
         {
            this.§>"2§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §==§(param1:int, param2:§;!x§, param3:§;!x§) : §<!1§
      {
         var _loc6_:§<!1§ = null;
         var _loc4_:int = this.§1!4§.indexOf(param2) - this.§?b§;
         var _loc5_:int = this.§1!4§.indexOf(param3) - this.§?b§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §<!1§(§7D§.§4[§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§ " § = this.§>"2§.§[![§.§'!2§.§6!u§(_loc6_.§!H§(param2,param3));
            this.§%j§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §?!@§(param1:§<!1§) : void
      {
         if(!(param1.§ " § is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§;!x§ = this.getObject(param1.index1 + this.§?b§);
         var _loc3_:§;!x§ = this.getObject(param1.index2 + this.§?b§);
         this.§>"2§.§[![§.§'!2§.§"!k§(param1.§ " §);
         param1.§ " § = this.§>"2§.§[![§.§'!2§.§6!u§(param1.§!H§(_loc2_,_loc3_));
      }
      
      public function §-t§(param1:§;!x§) : Vector.<§<!1§>
      {
         var _loc4_:§<!1§ = null;
         var _loc2_:Vector.<§<!1§> = new Vector.<§<!1§>();
         var _loc3_:int = this.§1!4§.indexOf(param1) - this.§?b§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§%j§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§<!1§>
      {
         return this.§%j§;
      }
      
      public function §"!-§(param1:§;!x§) : void
      {
         var _loc2_:int = this.§1!4§.indexOf(param1) - this.§?b§;
         var _loc3_:int = this.§%j§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§%j§[_loc3_].index1 == _loc2_ || this.§%j§[_loc3_].index2 == _loc2_)
            {
               this.§%j§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §>H§(param1:§;!x§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§"!f§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§"!f§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§"!f§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §4!o§(param1:§;!x§, param2:§;!x§) : Boolean
      {
         var _loc3_:int = this.§1!4§.indexOf(param1) - this.§?b§;
         var _loc4_:int = this.§1!4§.indexOf(param2) - this.§?b§;
         var _loc5_:int = this.§%j§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§%j§[_loc5_].index1 == _loc3_ && this.§%j§[_loc5_].index2 == _loc4_ || this.§%j§[_loc5_].index1 == _loc4_ && this.§%j§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §4S§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!x§
      {
         var _loc10_:§;!x§ = null;
         var _loc11_:§,6§ = null;
         var _loc12_:§,6§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§9!K§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§2s§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §7V§.§"!E§(param2);
            _loc10_ = new §`"!§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §7V§.§"!E§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §7V§.§"!E§(param2);
            }
            if(_loc12_.§9E§ == §,6§.§[K§ || _loc12_.§9E§ == §,6§.§<!m§)
            {
               _loc10_ = new §&![§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §;!x§(this,param1,this.§>"2§.§[![§.§'!2§,this.§>"2§,this.§1"-§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§4V§();
         return _loc10_;
      }
      
      protected function §4V§() : String
      {
         var _loc3_:§;!x§ = null;
         var _loc1_:int = this.§1!4§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§1!4§)
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
      
      public function §-"3§(param1:Number) : void
      {
         var _loc3_:§;!x§ = null;
         var _loc2_:int = this.§1!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!4§[_loc2_] as §;!x§;
            if(_loc3_)
            {
               if(_loc3_.§^!n§ <= 0)
               {
                  this.§ for§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§]!K§();
                  _loc3_.§2!G§();
               }
            }
            _loc2_--;
         }
         this.§+"2§(param1);
      }
      
      protected function §+"2§(param1:Number) : void
      {
         this.§5!p§(param1);
         this.§&S§();
      }
      
      private function §5!p§(param1:Number) : void
      {
         var _loc4_:§=G§ = null;
         var _loc5_:int = 0;
         var _loc6_:§;!x§ = null;
         if(this.§"!f§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§=G§> = this.§"!f§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§#!P§ && this.§"!f§.indexOf(_loc4_) != 1)
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
      
      private function §&S§() : void
      {
         var _loc1_:§<!1§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§%j§)
         {
            if(_loc1_.type == §7D§.§#K§ && _loc1_.§1!N§)
            {
               _loc2_ = (_loc1_.§ " § as b2PrismaticJoint).§<!S§();
               _loc3_ = (_loc1_.§ " § as b2PrismaticJoint).§'Y§();
               if(_loc1_.§+!Q§ && _loc1_.§""§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§ " § as b2PrismaticJoint).§1!`§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§8!G§.push(§2!%§.§'9§(param1,param2,param3));
         §?!7§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §-!0§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;!x§ = null;
         var _loc3_:int = this.§1!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!4§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;!x§
      {
         var _loc4_:§;!x§ = null;
         var _loc3_:int = this.§1!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!4§[_loc3_])
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
      
      public function getObject(param1:int) : §;!x§
      {
         return this.§1!4§[param1];
      }
      
      public function §!8§(param1:Number, param2:Number) : void
      {
         var _loc4_:§;!x§ = null;
         var _loc3_:int = this.§1!4§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§1!4§[_loc3_] as §;!x§).§!8§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §>!4§(param1:§;!x§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§;!x§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§^!n§ == param1.§?!`§)
         {
            if(this.§ L§ < this.§6!d§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§ L§ += param2 * this.§6!d§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§1o§(param2 * this.§ L§);
            this.include = 0;
         }
         else if(this.include == 0)
         {
            this.include = this.§>"2§.§'§;
         }
         if(param1.§^!V§() || this.§3z§(param1) || this.include > 0 && this.§>"2§.§'§ > this.include + this.§6!d§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§6!d§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§6!d§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§6!d§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §?!7§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §?!7§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§6!d§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§6!d§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§6!d§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§6!d§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§3z§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§6!d§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.include = 0;
                  _loc7_.§+G§.§6§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §=!@§(param1:§;!x§, param2:Number) : Boolean
      {
         var _loc5_:§;!x§ = null;
         if(this.§6!d§.MIGHTY_EAGLE_USE_SHADE && !this.§9J§ && this.mMightyEagleTimer > this.§6!d§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§9J§ = true;
            this.§>"2§.§4!`§();
         }
         this.mMightyEagleTimer += param2;
         this.§>"2§.particles.§=!J§(§3!u§.§%!#§,final.§0e§,§3!u§.§[!%§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§3!u§.§!"5§(param1.§6u§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§1F§(this.§6!d§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§>i§)
            {
               this.§>i§ = false;
               this.§>"2§.§%J§();
               param1.§,!_§(§=!j§.§ !u§);
               this.mSardineCanAdded = false;
               param1.§+G§.§;?§ = true;
               param1.§+G§.§91§();
               for each(_loc5_ in this.§1!4§)
               {
                  if(_loc5_ && _loc5_.§+q§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§[a§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§1!4§)
               {
                  if(_loc5_ && _loc5_.§+q§())
                  {
                     _loc5_.applyDamage(_loc5_.§?!`§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§>i§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§2!S§(param2,new Point(this.§6!d§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§6!d§.MIGHTY_EAGLE_Y_CHANGE),this.§6!d§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §1]§() : void
      {
         var _loc1_:§2!%§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;!x§ = null;
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
         while(this.§8!G§.length > 0)
         {
            _loc1_ = this.§8!G§.shift();
            _loc2_ = _loc1_.§#o§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§1!4§)
            {
               _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§#o§)
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
               if(_loc10_ <= _loc1_.§^^§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§'!-§(_loc6_,_loc14_);
               }
            }
            this.§>"2§.particles.§=!J§(this.§7!W§(_loc1_.type),final.§0e§,§3!u§.§3!>§,_loc3_,_loc4_,600,"",§3!u§.§>n§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§>"2§.particles.§=!J§(§3!u§.§0![§,final.§0e§,§3!u§.§[!%§,_loc3_,_loc4_,_loc16_,"",§3!u§.§>n§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §'!-§(param1:§;!x§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §7!W§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §3!u§.§9w§;
      }
      
      public function §+M§(param1:Number) : void
      {
         var _loc2_:§;!x§ = null;
         var _loc3_:int = this.§1!4§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1!4§[_loc3_];
            if(_loc2_.§ %§())
            {
               if(this.§>!4§(_loc2_,param1))
               {
                  this.§ for§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§7!_§())
            {
               this.§=!@§(_loc2_,param1);
            }
            else if(this.§3z§(_loc2_))
            {
               _loc2_.§,!_§(§=!j§.§#"2§);
               this.§ for§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§,!_§(§=!j§.§#"2§);
               this.§ for§(_loc3_,false,true,true);
            }
            else if(_loc2_.§6!p§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§1]§();
      }
      
      private function §[a§() : void
      {
         var _loc1_:§<!1§ = null;
         for each(_loc1_ in this.§%j§)
         {
            if(_loc1_.type != §7D§.§]'§)
            {
               this.§>"2§.§[![§.§'!2§.§"!k§(_loc1_.§ " §);
            }
         }
      }
      
      public function §7!Y§() : Boolean
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!4§.length)
         {
            _loc2_ = this.§1!4§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §3z§(param1:§;!x§) : Boolean
      {
         if(param1 && param1.§8N§.§4?§() != § !6§.§20§ && this.§>"2§.borders.§8!q§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function § for§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§<!1§ = null;
         var _loc7_:§=G§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§;!x§;
         if((_loc5_ = this.§1!4§[param1]).§+q§())
         {
            ++this.§0w§;
         }
         else if(_loc5_.§6!p§())
         {
            --this.§?m§;
         }
         if(_loc5_ == this.§>"2§.activeObject)
         {
            this.§>"2§.activeObject = null;
         }
         if(param2)
         {
            this.§>"2§.addScore(_loc5_.§8N§.score,§^!'§.§6_§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§3!u§.§>!?§(_loc5_.§6u§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§>"2§.particles);
         }
         if(param4)
         {
            this.§&!6§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§;!k§(_loc5_.sprite);
         this.§"!-§(_loc5_);
         this.§>H§(_loc5_);
         for each(_loc6_ in this.§%j§)
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
         for each(_loc7_ in this.§"!f§)
         {
            if(_loc7_.§[!v§ == param1)
            {
               _loc7_.§#!P§ = true;
            }
            if(_loc7_.§[!v§ >= param1)
            {
               --_loc7_.§[!v§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§1!4§[param1] = null;
         this.§1!4§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§;!x§, param2:final) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §;!k§(param1:Sprite) : void
      {
         if(this.§']§.contains(param1))
         {
            this.§']§.removeChild(param1);
            return;
         }
         if(this.§6O§.contains(param1))
         {
            this.§6O§.removeChild(param1);
            return;
         }
         if(this.§8c§.contains(param1))
         {
            this.§8c§.removeChild(param1);
            return;
         }
         if(this.§,L§.contains(param1))
         {
            this.§,L§.removeChild(param1);
            return;
         }
      }
      
      protected function §&!6§(param1:§;!x§) : void
      {
         if(param1.§@<§().toUpperCase() == "WHITE_EGG" || param1.§7C§())
         {
            if(param1.§6u§.toUpperCase() == §?!g§.§>!O§)
            {
               this.addExplosions(§2!%§.§0r§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§2!%§.§-"+§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§ for§(this.§1!4§.indexOf(param1),param2,param3,param4);
      }
      
      public function §08§(param1:Number, param2:Number) : void
      {
         this.§&!-§.x = -param1;
         this.§&!-§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§;!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!4§.length)
         {
            _loc3_ = this.§1!4§[_loc2_] as §;!x§;
            if(_loc3_ && _loc3_.§+q§() && _loc3_.§^!n§ > 0)
            {
               if(!param1 || _loc3_.§+G§.mTryToBlink <= 0 && _loc3_.§+G§.mTryToScream <= 0)
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
         var _loc4_:§;!x§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§1!4§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!4§[_loc3_] as §;!x§) && _loc4_.§+q§() && _loc4_.§^!n§ > 0)
            {
               if(!param1 || _loc4_.§+G§.mTryToBlink <= 0 && _loc4_.§+G§.mTryToScream <= 0)
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
         var _loc2_:§;!x§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!4§)
         {
            if(_loc2_ && (_loc2_.§;!M§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!4§)
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
         var _loc3_:§;!x§ = null;
         var _loc2_:int = this.§1!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!4§[_loc2_];
            if(_loc3_ && _loc3_.§+q§() && _loc3_.§^!n§ > 0)
            {
               _loc3_.§+G§.mTryToScream = §5",§.§-!5§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §1t§() : Boolean
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = this.§1!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!4§[_loc1_] as §;!x§;
            if(_loc2_ && _loc2_.§6!p§() && _loc2_.§^!n§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = this.§1!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!4§[_loc1_] as §;!x§;
            if(_loc2_ && _loc2_.§^!n§ > 0 && _loc2_.§9E§ != §,6§.§;^§)
            {
               if(_loc2_.§'!X§() && !_loc2_.§^!V§())
               {
                  return false;
               }
               if(_loc2_.§6!p§() && _loc2_.§^!n§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §5"$§(param1:Boolean = false) : §;!x§
      {
         var _loc5_:int = 0;
         var _loc6_:§;!x§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§1!4§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§1!4§[_loc5_]) && _loc6_.§+q§() && _loc6_.§^!n§ > 0)
               {
                  if(!param1 || _loc6_.§+G§.mTryToBlink <= 0 && _loc6_.§+G§.mTryToScream <= 0)
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
      
      public function §>9§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§1!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§1!4§[_loc2_] as §;!x§).§8N§.score;
            if((this.§1!4§[_loc2_] as §;!x§).§'!X§())
            {
               _loc1_ += §5X§.§9!g§.getValue() * int((this.§1!4§[_loc2_] as §;!x§).§?!`§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§>"2§.slingshot.§>9§());
      }
      
      public function §6r§(param1:§;!x§, param2:§;!x§) : Boolean
      {
         if(param1.§6!p§() && param2.§6!p§())
         {
            return true;
         }
         if(!param1.§&`§() && !param2.§&`§())
         {
            return true;
         }
         return false;
      }
      
      public function §1D§() : void
      {
         this.mSardineCanAdded = true;
         this.§?m§ = 0;
      }
      
      public function § W§(param1:§;!x§, param2:§;!x§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§7!_§() || param2.§+q§())
            {
               param2.applyDamage(param2.§?!`§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§7!_§() || param1.§+q§())
            {
               param1.applyDamage(param1.§?!`§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§6!d§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§ %§() || param2.§ %§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§6r§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§9!W§(param2.§@<§());
         var _loc5_:Number = param1.§5T§(param2.§@<§());
         var _loc6_:Number = param2.§9!W§(param1.§@<§());
         var _loc7_:Number = param2.§5T§(param1.§@<§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§^!n§);
         var _loc14_:Number = Math.max(0,param2.§^!n§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§6!p§(),_loc14_ == param2.§?!`§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§6!p§(),_loc13_ == param1.§?!`§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§-!G§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§-!G§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §@!5§() : void
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = this.§1!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!4§[_loc1_] as §;!x§;
            if(_loc2_ != null && _loc2_.§+q§())
            {
               this.§ for§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §,!%§() : void
      {
         var _loc2_:§;!x§ = null;
         var _loc1_:int = this.§1!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!4§[_loc1_] as §;!x§;
            if(_loc2_ != null && _loc2_.§7C§())
            {
               this.§ for§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§1!4§.length;
      }
      
      public function writeObjectInformation(param1:§@!l§) : void
      {
         var _loc4_:§;!x§ = null;
         var _loc5_:§>@§ = null;
         var _loc6_:§7D§ = null;
         var _loc7_:§<!1§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!4§.length)
         {
            if(!(_loc4_ = this.§1!4§[_loc2_]).isGround())
            {
               (_loc5_ = new §>@§()).angle = _loc4_.§8!1§();
               _loc5_.id = _loc4_.§6u§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§%j§.length)
         {
            _loc7_ = this.§%j§[_loc3_];
            _loc6_ = new §7D§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§&m§,_loc7_.§+!Q§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§""§,_loc7_.motorSpeed,_loc7_.§1!N§,_loc7_.maxTorque);
            param1.§+A§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §#s§() : void
      {
         var _loc1_:int = 0;
         while(this.§1!4§.length > _loc1_)
         {
            if(this.§1!4§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§1!4§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1!4§.length)
         {
            if(this.§1!4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1!4§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§]!+§ = param1;
         this.§;K§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!4§.length)
         {
            if(this.§1!4§[_loc2_].isTexture())
            {
               this.§1!4§[_loc2_].sprite.visible = !this.§]!+§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§4!r§ = param1;
      }
      
      public function §!F§() : Boolean
      {
         return this.§4!r§;
      }
      
      public function §5J§() : int
      {
         return this.§2s§;
      }
      
      public function §]R§() : int
      {
         return this.§0w§;
      }
      
      public function getObjectWithID(param1:String) : §;!x§
      {
         var _loc3_:§;!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!4§.length)
         {
            _loc3_ = this.§1!4§[_loc2_] as §;!x§;
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
