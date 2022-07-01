package §&!P§
{
   import §#";§.§0"#§;
   import §%!0§.§%";§;
   import §%!0§.§,4§;
   import §%!0§.§,g§;
   import §%!0§.§3!s§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §,!0§.b2PrismaticJoint;
   import §,!0§.b2WeldJoint;
   import §0!%§.Texture;
   import §;"7§.§+!I§;
   import §<!a§.b2Vec2;
   import §<i§.§'!e§;
   import §[!P§.§"0§;
   import §[!P§.§8!z§;
   import §[!P§.§@R§;
   import §[!P§.§[-§;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   import §]";§.§4!p§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.§47§;
   
   public class §^!!§
   {
       
      
      protected var §9n§:Vector.<§``§>;
      
      protected var §6!'§:int;
      
      public var §`!G§:§,4§;
      
      public var §;3§:Vector.<§=!Y§>;
      
      protected var §=!§:Sprite;
      
      protected var §!-§:Sprite;
      
      private var §,!]§:Sprite;
      
      private var §[!J§:Sprite;
      
      private var §7"-§:Sprite;
      
      protected var §6A§:Vector.<Texture>;
      
      protected var §=!O§:Vector.<§@R§>;
      
      protected var §=!T§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var § !=§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §+F§:Boolean = false;
      
      protected var §@8§:Number;
      
      protected var §;!0§:int;
      
      protected var §7p§:Vector.<§[-§>;
      
      protected var §%!A§:int = 0;
      
      private var §9W§:int = 0;
      
      private var §2!o§:int = 0;
      
      protected var §function§:int;
      
      private var §#U§:Boolean = true;
      
      private var §"+§:Boolean = true;
      
      public function §^!!§(param1:§,4§, param2:§'!e§, param3:Sprite)
      {
         var _loc5_:§@R§ = null;
         var _loc6_:§"0§ = null;
         var _loc7_:§``§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§``§ = null;
         var _loc11_:§``§ = null;
         this.§9n§ = new Vector.<§``§>();
         this.§;3§ = new Vector.<§=!Y§>();
         this.§6A§ = new Vector.<Texture>();
         this.§@8§ = this.§,g§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§7p§ = new Vector.<§[-§>();
         super();
         this.§`!G§ = param1;
         this.§6!'§ = 0;
         this.§!-§ = param3;
         this.§!-§.§#b§ = false;
         this.§"+§ = true;
         this.§#U§ = true;
         this.§=!§ = new Sprite();
         this.§,!]§ = new Sprite();
         this.§[!J§ = new Sprite();
         this.§7"-§ = new Sprite();
         this.§!-§.addChild(this.§=!§);
         this.§!-§.addChild(this.§,!]§);
         this.§!-§.addChild(this.§[!J§);
         this.§!-§.addChild(this.§7"-§);
         this.addObject(§47§.§," §(param2.theme).§9!y§,(this.§`!G§.borders.§0!X§ + this.§`!G§.borders.§2-§) / 2,this.§`!G§.borders.mBorderGround_B2 + §%";§.§]!6§);
         this.§function§ = this.§9n§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§8!Y§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§,!4§();
         this.§ "§(true);
         this.§=!O§ = new Vector.<§@R§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§=Y§)
         {
            this.§=!O§.push(§@R§.§2"6§(param2.§`'§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§=!O§)
         {
            _loc8_ = _loc5_.index1 + this.§function§;
            _loc9_ = _loc5_.index2 + this.§function§;
            if(_loc8_ < this.§9n§.length && _loc9_ < this.§9n§.length)
            {
               _loc10_ = this.§9n§[_loc8_];
               _loc11_ = this.§9n§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §8!z§.§3I§)
               {
                  _loc5_.§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(_loc5_.§8G§(_loc10_,_loc11_));
               }
               else
               {
                  this.§7p§.push(new §[-§(_loc8_,_loc9_,_loc5_.§%!B§));
               }
            }
         }
      }
      
      protected function get §,g§() : Class
      {
         return §,g§;
      }
      
      public function get §`z§() : Sprite
      {
         return this.§7"-§;
      }
      
      public function get §[!l§() : Sprite
      {
         return this.§!-§;
      }
      
      public function get §>!J§() : Sprite
      {
         return this.§[!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§9n§.length > 0)
         {
            this.§ "5§(0);
         }
         this.§9n§ = null;
         this.§7p§ = null;
         if(this.§!-§)
         {
            this.§!-§.dispose();
            this.§!-§ = null;
            this.§=!§ = null;
            this.§7"-§ = null;
            this.§,!]§ = null;
            this.§[!J§ = null;
         }
         while(this.§6A§.length > 0)
         {
            _loc1_ = this.§6A§.pop();
            this.§`!G§.§8=§.§2A§(_loc1_);
         }
      }
      
      private function § "§(param1:Boolean) : void
      {
         this.§=!§.visible = param1;
      }
      
      private function §,!4§() : void
      {
         var _loc3_:§``§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§7"#§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§``§> = new Vector.<§``§>();
         for each(_loc3_ in this.§9n§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§!-§);
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
            this.§3!Y§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§0",§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§`!G§.§8=§.§%N§(_loc10_);
            this.§6A§.push(_loc12_);
            (_loc13_ = new §7"#§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§=!§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §0",§(param1:Vector.<§``§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§``§ = null;
         var _loc11_:§1Y§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§4";§.shape).§&8§();
            _loc13_ = new Rectangle(_loc12_[0].x / §,4§.§,^§ * param6,_loc12_[0].y / §,4§.§,^§ * param6,(_loc12_[1].x - _loc12_[0].x) / §,4§.§,^§ * param6,(_loc12_[1].y - _loc12_[0].y) / §,4§.§,^§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§?"1§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3!Y§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§`!G§.background.§>N§();
         var _loc5_:§+!I§;
         if(_loc5_ = this.§`!G§.§=I§.§5!!§(_loc4_))
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
      
      public function § t§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc10_:§4!p§ = §!<§.§[!@§(param2);
         return new §&!a§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §2! §(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc10_:§``§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §&!^§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §>!m§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §^B§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §7c§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §]v§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §!!=§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §3"'§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §0!Z§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §9`§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§%!A§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §``§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§``§;
         if((_loc11_ = this.§;!p§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§#U§;
            this.§9n§[this.§9n§.length] = _loc11_;
         }
         else
         {
            this.§9n§[this.§9n§.length] = _loc11_;
         }
         if(_loc11_ is §9`§ && !_loc11_.§!0§())
         {
            this.§,!]§.addChild(_loc10_);
            ++this.§%!A§;
         }
         else if(_loc11_.front || param9)
         {
            this.§7"-§.addChild(_loc10_);
         }
         else
         {
            this.§[!J§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§`!G§.§8!J§(_loc11_);
         }
         if(param6)
         {
            this.§`!G§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §2"6§(param1:int, param2:§``§, param3:§``§) : §@R§
      {
         var _loc6_:§@R§ = null;
         var _loc4_:int = this.§9n§.indexOf(param2) - this.§function§;
         var _loc5_:int = this.§9n§.indexOf(param3) - this.§function§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@R§(§8!z§.§`,§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(_loc6_.§8G§(param2,param3));
            this.§=!O§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §'K§(param1:§@R§) : void
      {
         if(!(param1.§=!%§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§``§ = this.getObject(param1.index1 + this.§function§);
         var _loc3_:§``§ = this.getObject(param1.index2 + this.§function§);
         this.§`!G§.§?=§.§;!^§.§ !;§(param1.§=!%§);
         param1.§=!%§ = this.§`!G§.§?=§.§;!^§.§'!Y§(param1.§8G§(_loc2_,_loc3_));
      }
      
      public function §>!]§(param1:§``§) : Vector.<§@R§>
      {
         var _loc4_:§@R§ = null;
         var _loc2_:Vector.<§@R§> = new Vector.<§@R§>();
         var _loc3_:int = this.§9n§.indexOf(param1) - this.§function§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§=!O§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§@R§>
      {
         return this.§=!O§;
      }
      
      public function §=!&§(param1:§``§) : void
      {
         var _loc2_:int = this.§9n§.indexOf(param1) - this.§function§;
         var _loc3_:int = this.§=!O§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§=!O§[_loc3_].index1 == _loc2_ || this.§=!O§[_loc3_].index2 == _loc2_)
            {
               this.§=!O§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §95§(param1:§``§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§7p§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§7p§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§7p§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §8b§(param1:§``§, param2:§``§) : Boolean
      {
         var _loc3_:int = this.§9n§.indexOf(param1) - this.§function§;
         var _loc4_:int = this.§9n§.indexOf(param2) - this.§function§;
         var _loc5_:int = this.§=!O§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§=!O§[_loc5_].index1 == _loc3_ && this.§=!O§[_loc5_].index2 == _loc4_ || this.§=!O§[_loc5_].index1 == _loc4_ && this.§=!O§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §;!p§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §``§
      {
         var _loc10_:§``§ = null;
         var _loc11_:§4!p§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§2! §(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§2!o§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§ t§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §!<§.§[!@§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §!<§.§[!@§(param2);
            }
            if(_loc11_.§@F§ == §4!p§.§#!U§ || _loc11_.§@F§ == §4!p§.§+Q§)
            {
               _loc10_ = new §!!"§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §``§(this,param1,this.§`!G§.§?=§.§;!^§,this.§`!G§,this.§6!'§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§;!R§();
         return _loc10_;
      }
      
      protected function §;!R§() : String
      {
         var _loc3_:§``§ = null;
         var _loc1_:int = this.§9n§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§9n§)
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
      
      public function §="3§(param1:Number) : void
      {
         var _loc3_:§``§ = null;
         var _loc2_:int = this.§9n§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
            if(_loc3_)
            {
               if(_loc3_.§8W§ <= 0)
               {
                  this.§ "5§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§8<§();
                  _loc3_.§'!8§();
               }
            }
            _loc2_--;
         }
         this.§>g§(param1);
      }
      
      protected function §>g§(param1:Number) : void
      {
         this.§#!T§(param1);
         this.§&!q§();
      }
      
      private function §#!T§(param1:Number) : void
      {
         var _loc4_:§[-§ = null;
         var _loc5_:int = 0;
         var _loc6_:§``§ = null;
         if(this.§7p§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§[-§> = this.§7p§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§4x§ && this.§7p§.indexOf(_loc4_) != -1)
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
      
      private function §&!q§() : void
      {
         var _loc1_:§@R§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§=!O§)
         {
            if(_loc1_.type == §8!z§.§%_§ && _loc1_.§!!H§)
            {
               _loc2_ = (_loc1_.§=!%§ as b2PrismaticJoint).§>!b§();
               _loc3_ = (_loc1_.§=!%§ as b2PrismaticJoint).§,;§();
               if(_loc1_.§!z§ && _loc1_.§=@§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§=!%§ as b2PrismaticJoint).§97§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§``§> = null) : void
      {
         this.§;3§.push(§=!Y§.§`!W§(param1,param2,param3,param4));
         §0"#§.§9"2§("TntExplosions","ChannelExplosions");
      }
      
      public function §&A§(param1:Number, param2:Number) : int
      {
         var _loc4_:§``§ = null;
         var _loc3_:int = this.§9n§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§9n§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §``§
      {
         var _loc4_:§``§ = null;
         var _loc3_:int = this.§9n§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§9n§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§``§>
      {
         var _loc5_:§``§ = null;
         var _loc3_:Vector.<§``§> = new Vector.<§``§>();
         var _loc4_:int = this.§9n§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§9n§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §``§
      {
         return this.§9n§[param1];
      }
      
      public function §0!j§(param1:Number, param2:Number) : void
      {
         var _loc4_:§``§ = null;
         var _loc3_:int = this.§9n§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§9n§[_loc3_] as §``§).§0!j§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §+! §(param1:§``§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§``§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§8W§ == param1.§%5§)
         {
            if(this.§@8§ < this.§,g§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§@8§ += param2 * this.§,g§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§5'§(param2 * this.§@8§);
            this.§;!0§ = 0;
         }
         else if(this.§;!0§ == 0)
         {
            this.§;!0§ = this.§`!G§.§<I§;
         }
         if(param1.§+!>§() || this.§!&§(param1) || this.§;!0§ > 0 && this.§`!G§.§<I§ > this.§;!0§ + this.§,g§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§,g§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§,g§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§,g§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §0"#§.§9"2§("Mighty_Eagle_Selected_1","ChannelBird");
                  §0"#§.§9"2§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§,g§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§,g§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§,g§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§,g§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§!&§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§,g§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§;!0§ = 0;
                  _loc7_.§8C§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §-e§(param1:§``§, param2:Number) : Boolean
      {
         var _loc5_:§``§ = null;
         if(this.§,g§.MIGHTY_EAGLE_USE_SHADE && !this.§+F§ && this.mMightyEagleTimer > this.§,g§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§+F§ = true;
            this.§`!G§.§;!u§();
         }
         this.mMightyEagleTimer += param2;
         this.§`!G§.particles.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§`!E§.§]!I§(param1.§+!A§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§'n§(this.§,g§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§ !=§)
            {
               this.§ !=§ = false;
               this.§`!G§.§[!3§();
               param1.§^!x§(§34§.§do§);
               this.mSardineCanAdded = false;
               param1.§8C§.§!t§ = true;
               param1.§8C§.§^!+§();
               for each(_loc5_ in this.§9n§)
               {
                  if(_loc5_ && _loc5_.§>!r§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+[§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§9n§)
               {
                  if(_loc5_ && _loc5_.§>!r§())
                  {
                     _loc5_.applyDamage(_loc5_.§%5§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§ !=§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!h§(param2,new Point(this.§,g§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§,g§.MIGHTY_EAGLE_Y_CHANGE),this.§,g§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §3m§() : void
      {
         var _loc1_:§=!Y§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§``§ = null;
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
         while(this.§;3§.length > 0)
         {
            _loc1_ = this.§;3§.shift();
            _loc2_ = _loc1_.§@z§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§9n§)
            {
               if(!(_loc1_.§+j§ != null && _loc1_.§+j§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§@z§)
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
                  if(_loc10_ <= _loc1_.§-a§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§1O§(_loc6_,_loc14_);
                  }
               }
            }
            this.§`!G§.particles.§'p§(this.§+U§(_loc1_.type),§6!Q§.§+f§,§`!E§.§;!o§,_loc3_,_loc4_,600,"",§`!E§.§-4§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§`!G§.particles.§'p§(§`!E§.§1[§,§6!Q§.§+f§,§`!E§.§]W§,_loc3_,_loc4_,_loc16_,"",§`!E§.§-4§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §1O§(param1:§``§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §+U§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §`!E§.§&q§;
      }
      
      public function §#!z§(param1:Number) : void
      {
         var _loc2_:§``§ = null;
         var _loc3_:int = this.§9n§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§9n§[_loc3_];
            if(_loc2_.§9!W§())
            {
               if(this.§+! §(_loc2_,param1))
               {
                  this.§ "5§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§!0§())
            {
               this.§-e§(_loc2_,param1);
            }
            else if(this.§!&§(_loc2_))
            {
               _loc2_.§^!x§(§34§.§,!t§);
               this.§ "5§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§^!x§(§34§.§,!t§);
               this.§ "5§(_loc3_,false,true,true);
            }
            else if(_loc2_.§'5§() || _loc2_.§0!8§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§3m§();
      }
      
      private function §+[§() : void
      {
         var _loc1_:§@R§ = null;
         for each(_loc1_ in this.§=!O§)
         {
            if(_loc1_.type != §8!z§.§3I§)
            {
               this.§`!G§.§?=§.§;!^§.§ !;§(_loc1_.§=!%§);
            }
         }
      }
      
      public function § !3§() : Boolean
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9n§.length)
         {
            _loc2_ = this.§9n§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §!&§(param1:§``§) : Boolean
      {
         if(param1 && param1.§4";§.§0-§() != §0A§.§7"=§ && this.§`!G§.borders.§5"!§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function § "5§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@R§ = null;
         var _loc7_:§[-§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§``§;
         if((_loc5_ = this.§9n§[param1]).§>!r§())
         {
            ++this.§9W§;
         }
         else if(_loc5_.§'5§())
         {
            --this.§%!A§;
         }
         if(_loc5_ == this.§`!G§.activeObject)
         {
            this.§`!G§.activeObject = null;
         }
         if(param2)
         {
            this.§`!G§.addScore(_loc5_.§4";§.score,§3!s§.§0`§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§`!E§.§6!%§(_loc5_.§+!A§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§`!G§.particles);
         }
         if(param4)
         {
            this.§[!e§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§,'§(_loc5_.sprite);
         this.§=!&§(_loc5_);
         this.§95§(_loc5_);
         for each(_loc6_ in this.§=!O§)
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
         for each(_loc7_ in this.§7p§)
         {
            if(_loc7_.§86§ == param1)
            {
               _loc7_.§4x§ = true;
            }
            if(_loc7_.§86§ >= param1)
            {
               --_loc7_.§86§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§9n§[param1] = null;
         this.§9n§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§``§, param2:§6!Q§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §,'§(param1:Sprite) : void
      {
         if(this.§[!J§.contains(param1))
         {
            this.§[!J§.removeChild(param1);
            return;
         }
         if(this.§,!]§.contains(param1))
         {
            this.§,!]§.removeChild(param1);
            return;
         }
         if(this.§=!§.contains(param1))
         {
            this.§=!§.removeChild(param1);
            return;
         }
         if(this.§7"-§.contains(param1))
         {
            this.§7"-§.removeChild(param1);
            return;
         }
      }
      
      protected function §[!e§(param1:§``§) : void
      {
         if(param1.§2@§().toUpperCase() == "WHITE_EGG" || param1.§`!m§())
         {
            if(param1.§+!A§.toUpperCase() == §7c§.§]L§)
            {
               this.addExplosions(§=!Y§.§9"5§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§=!Y§.§<!q§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§ "5§(this.§9n§.indexOf(param1),param2,param3,param4);
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         this.§!-§.x = -param1;
         this.§!-§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§``§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9n§.length)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
            if(_loc3_ && _loc3_.§>!r§() && _loc3_.§8W§ > 0)
            {
               if(!param1 || _loc3_.§8C§.mTryToBlink <= 0 && _loc3_.§8C§.mTryToScream <= 0)
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
         var _loc4_:§``§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§9n§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§9n§[_loc3_] as §``§) && _loc4_.§>!r§() && _loc4_.§8W§ > 0)
            {
               if(!param1 || _loc4_.§8C§.mTryToBlink <= 0 && _loc4_.§8C§.mTryToScream <= 0)
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
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9n§)
         {
            if(_loc2_ && (_loc2_.§^_§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§9n§)
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
         var _loc3_:§``§ = null;
         var _loc2_:int = this.§9n§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9n§[_loc2_];
            if(_loc3_ && _loc3_.§>!r§() && _loc3_.§8W§ > 0)
            {
               _loc3_.§8C§.mTryToScream = §0;§.§2!_§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §+!J§() : Boolean
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = this.§9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc2_ && _loc2_.§'5§() && _loc2_.§8W§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = this.§9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc2_ && _loc2_.§8W§ > 0 && _loc2_.§@F§ != §4!p§.§>_§)
            {
               if(_loc2_.§8N§() && !_loc2_.§+!>§())
               {
                  return false;
               }
               if(_loc2_.§'5§() && _loc2_.§8W§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §#"!§(param1:Boolean = false) : §``§
      {
         var _loc7_:§&!a§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§9n§.length;
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
            if((_loc7_ = this.§9n§[_loc6_] as §&!a§) && _loc7_.§>!r§() && _loc7_.§8W§ > 0)
            {
               if(!param1 || _loc7_.§8C§.mTryToBlink <= 0 && _loc7_.§8C§.mTryToScream <= 0)
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
      
      public function §'i§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§9n§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§9n§[_loc2_] as §``§).§4";§.score;
            if((this.§9n§[_loc2_] as §``§).§8N§())
            {
               _loc1_ += §,4§.§]O§.getValue() * int((this.§9n§[_loc2_] as §``§).§%5§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§`!G§.slingshot.§'i§());
      }
      
      public function §;"<§(param1:§``§, param2:§``§) : Boolean
      {
         if(param2 is §>!m§ && param1 is §>!m§)
         {
            return true;
         }
         if(!param1.§=!8§() && !param2.§=!8§())
         {
            return true;
         }
         return false;
      }
      
      public function §4![§() : void
      {
         this.mSardineCanAdded = true;
         this.§%!A§ = 0;
      }
      
      public function §3!E§(param1:§``§, param2:§``§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§!0§() || param2.§>!r§())
            {
               param2.applyDamage(param2.§%5§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§!0§() || param1.§>!r§())
            {
               param1.applyDamage(param1.§%5§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§,g§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§9!W§() || param2.§9!W§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;"<§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§6J§(param2.§2@§());
         var _loc5_:Number = param1.§><§(param2.§2@§());
         var _loc6_:Number = param2.§6J§(param1.§2@§());
         var _loc7_:Number = param2.§><§(param1.§2@§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§8W§);
         var _loc14_:Number = Math.max(0,param2.§8W§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§'5§(),_loc14_ == param2.§%5§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§'5§(),_loc13_ == param1.§%5§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ >§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ >§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §;!H§(param1:§``§, param2:§``§) : void
      {
      }
      
      public function §7!E§() : void
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = this.§9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc2_ != null && _loc2_.§>!r§())
            {
               this.§ "5§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §;e§() : void
      {
         var _loc2_:§``§ = null;
         var _loc1_:int = this.§9n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9n§[_loc1_] as §``§;
            if(_loc2_ != null && _loc2_.§`!m§())
            {
               this.§ "5§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§9n§.length;
      }
      
      public function writeObjectInformation(param1:§'!e§) : void
      {
         var _loc4_:§``§ = null;
         var _loc5_:§"0§ = null;
         var _loc6_:§8!z§ = null;
         var _loc7_:§@R§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9n§.length)
         {
            if(!(_loc4_ = this.§9n§[_loc2_]).isGround())
            {
               (_loc5_ = new §"0§()).angle = _loc4_.§?"1§();
               _loc5_.id = _loc4_.§+!A§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!O§.length)
         {
            _loc7_ = this.§=!O§[_loc3_];
            _loc6_ = new §8!z§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§=Z§,_loc7_.§!z§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§=@§,_loc7_.motorSpeed,_loc7_.§!!H§,_loc7_.maxTorque);
            param1.§@!V§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §`!q§() : void
      {
         var _loc1_:int = 0;
         while(this.§9n§.length > _loc1_)
         {
            if(this.§9n§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§9n§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§9n§.length)
         {
            if(this.§9n§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§9n§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§#U§ = param1;
         this.§ "§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9n§.length)
         {
            if(this.§9n§[_loc2_].isTexture())
            {
               this.§9n§[_loc2_].sprite.visible = !this.§#U§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§"+§ = param1;
      }
      
      public function § !'§() : Boolean
      {
         return this.§"+§;
      }
      
      public function §5">§() : int
      {
         return this.§2!o§;
      }
      
      public function §=!_§() : int
      {
         return this.§9W§;
      }
      
      public function getObjectWithID(param1:String) : §``§
      {
         var _loc3_:§``§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9n§.length)
         {
            _loc3_ = this.§9n§[_loc2_] as §``§;
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
