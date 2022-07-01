package §]r§
{
   import §-!G§.b2Vec2;
   import §1'§.§4!a§;
   import §1'§.§=!Q§;
   import §1'§.§]"!§;
   import §1'§.§`!J§;
   import §3>§.§4D§;
   import §3>§.§=!f§;
   import §3>§.§>!&§;
   import §3>§.§>!y§;
   import §3>§.§["!§;
   import §6!&§.§0!b§;
   import §6p§.§'!B§;
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §8!k§.b2PrismaticJoint;
   import §8!k§.b2WeldJoint;
   import §8Y§.Texture;
   import §;!<§.§<!D§;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §<!x§.§7u§;
   import §=b§.§'=§;
   import §=b§.§-!K§;
   import §=b§.§0;§;
   import §=b§.§3!_§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2"%§
   {
       
      
      protected var §var §:Vector.<§9!R§>;
      
      protected var §^!@§:int;
      
      public var §;!x§:§-!K§;
      
      public var §<!q§:Vector.<§8T§>;
      
      protected var §[!v§:Sprite;
      
      protected var §+!M§:Sprite;
      
      private var §<5§:Sprite;
      
      private var §0!N§:Sprite;
      
      private var §,!U§:Sprite;
      
      protected var §0!j§:Vector.<Texture>;
      
      protected var §6!§:Vector.<§=!Q§>;
      
      protected var § p§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §+!d§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §0"1§:Boolean = false;
      
      protected var §4Y§:Number;
      
      protected var §9!x§:int;
      
      protected var §#!?§:Vector.<§4!a§>;
      
      protected var §"!Z§:int = 0;
      
      private var §@!R§:int = 0;
      
      private var §,"1§:int = 0;
      
      private var § !;§:int;
      
      private var §=!N§:Boolean = true;
      
      private var §<!b§:Boolean = true;
      
      public function §2"%§(param1:§-!K§, param2:§0!b§, param3:Sprite)
      {
         var _loc5_:§=!Q§ = null;
         var _loc6_:§]"!§ = null;
         var _loc7_:§9!R§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§9!R§ = null;
         var _loc11_:§9!R§ = null;
         this.§var § = new Vector.<§9!R§>();
         this.§<!q§ = new Vector.<§8T§>();
         this.§0!j§ = new Vector.<Texture>();
         this.§4Y§ = this.§0;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§#!?§ = new Vector.<§4!a§>();
         super();
         this.§;!x§ = param1;
         this.§^!@§ = 0;
         this.§+!M§ = param3;
         this.§+!M§.§7!&§ = false;
         this.§<!b§ = true;
         this.§=!N§ = true;
         this.§[!v§ = new Sprite();
         this.§<5§ = new Sprite();
         this.§0!N§ = new Sprite();
         this.§,!U§ = new Sprite();
         this.§+!M§.addChild(this.§[!v§);
         this.§+!M§.addChild(this.§<5§);
         this.§+!M§.addChild(this.§0!N§);
         this.§+!M§.addChild(this.§,!U§);
         this.addObject(§7u§.§;"!§(param2.theme).§ !y§,(this.§;!x§.borders.§8%§ + this.§;!x§.borders.§-!Q§) / 2,this.§;!x§.borders.mBorderGround_B2 + §3!_§.§%h§);
         this.§ !;§ = this.§var §.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§%!2§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§>§();
         this.§2f§(true);
         this.§6!§ = new Vector.<§=!Q§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§<!1§)
         {
            this.§6!§.push(§=!Q§.§,!H§(param2.§2I§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§6!§)
         {
            _loc8_ = _loc5_.index1 + this.§ !;§;
            _loc9_ = _loc5_.index2 + this.§ !;§;
            if(_loc8_ < this.§var §.length && _loc9_ < this.§var §.length)
            {
               _loc10_ = this.§var §[_loc8_];
               _loc11_ = this.§var §[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §`!J§.§6Q§)
               {
                  _loc5_.§-4§ = this.§;!x§.§^J§.§1c§.§5!,§(_loc5_.§!!f§(_loc10_,_loc11_));
               }
               else
               {
                  this.§#!?§.push(new §4!a§(_loc8_,_loc9_,_loc5_.§9"%§));
               }
            }
         }
      }
      
      protected function get §0;§() : Class
      {
         return §0;§;
      }
      
      public function get §8!T§() : Sprite
      {
         return this.§,!U§;
      }
      
      public function get §6+§() : Sprite
      {
         return this.§+!M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§var §.length > 0)
         {
            this.§8!]§(0);
         }
         this.§var § = null;
         this.§#!?§ = null;
         if(this.§+!M§)
         {
            this.§+!M§.dispose();
            this.§+!M§ = null;
            this.§[!v§ = null;
            this.§,!U§ = null;
            this.§<5§ = null;
            this.§0!N§ = null;
         }
         while(this.§0!j§.length > 0)
         {
            _loc1_ = this.§0!j§.pop();
            this.§;!x§.§20§.§;!'§(_loc1_);
         }
      }
      
      private function §2f§(param1:Boolean) : void
      {
         this.§[!v§.visible = param1;
      }
      
      private function §>§() : void
      {
         var _loc3_:§9!R§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§0!§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§9!R§> = new Vector.<§9!R§>();
         for each(_loc3_ in this.§var §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§+!M§);
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
            this.§3Z§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§`!S§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§;!x§.§20§.§>!d§(_loc10_);
            this.§0!j§.push(_loc12_);
            (_loc13_ = new §0!§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§[!v§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §`!S§(param1:Vector.<§9!R§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§9!R§ = null;
         var _loc11_:§4D§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§<3§.shape).§7n§();
            _loc13_ = new Rectangle(_loc12_[0].x / §-!K§.§"!C§ * param6,_loc12_[0].y / §-!K§.§"!C§ * param6,(_loc12_[1].x - _loc12_[0].x) / §-!K§.§"!C§ * param6,(_loc12_[1].y - _loc12_[0].y) / §-!K§.§"!C§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§@&§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §3Z§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§;!x§.background.§?"§();
         var _loc5_:§<!D§;
         if(_loc5_ = this.§;!x§.§07§.§>",§(_loc4_))
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
      
      public function §-_§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!R§
      {
         var _loc10_:§9!R§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §`!F§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §7!w§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §#a§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §%!C§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §>d§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §^!_§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §1!6§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §<!$§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§"!Z§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9!R§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§9!R§;
         if((_loc11_ = this.§9!p§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§=!N§;
            this.§var §[this.§var §.length] = _loc11_;
         }
         else
         {
            this.§var §[this.§var §.length] = _loc11_;
         }
         if(_loc11_ is §<!$§ && !_loc11_.§4"#§())
         {
            this.§<5§.addChild(_loc10_);
            ++this.§"!Z§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,!U§.addChild(_loc10_);
         }
         else
         {
            this.§0!N§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§;!x§.§;!o§(_loc11_);
         }
         if(param6)
         {
            this.§;!x§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §,!H§(param1:int, param2:§9!R§, param3:§9!R§) : §=!Q§
      {
         var _loc6_:§=!Q§ = null;
         var _loc4_:int = this.§var §.indexOf(param2) - this.§ !;§;
         var _loc5_:int = this.§var §.indexOf(param3) - this.§ !;§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §=!Q§(§`!J§.§]4§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§-4§ = this.§;!x§.§^J§.§1c§.§5!,§(_loc6_.§!!f§(param2,param3));
            this.§6!§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §4^§(param1:§=!Q§) : void
      {
         if(!(param1.§-4§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§9!R§ = this.getObject(param1.index1 + this.§ !;§);
         var _loc3_:§9!R§ = this.getObject(param1.index2 + this.§ !;§);
         this.§;!x§.§^J§.§1c§.§3S§(param1.§-4§);
         param1.§-4§ = this.§;!x§.§^J§.§1c§.§5!,§(param1.§!!f§(_loc2_,_loc3_));
      }
      
      public function §6!m§(param1:§9!R§) : Vector.<§=!Q§>
      {
         var _loc4_:§=!Q§ = null;
         var _loc2_:Vector.<§=!Q§> = new Vector.<§=!Q§>();
         var _loc3_:int = this.§var §.indexOf(param1) - this.§ !;§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§6!§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§=!Q§>
      {
         return this.§6!§;
      }
      
      public function §<!§(param1:§9!R§) : void
      {
         var _loc2_:int = this.§var §.indexOf(param1) - this.§ !;§;
         var _loc3_:int = this.§6!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6!§[_loc3_].index1 == _loc2_ || this.§6!§[_loc3_].index2 == _loc2_)
            {
               this.§6!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §>!,§(param1:§9!R§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§#!?§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§#!?§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§#!?§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §[!>§(param1:§9!R§, param2:§9!R§) : Boolean
      {
         var _loc3_:int = this.§var §.indexOf(param1) - this.§ !;§;
         var _loc4_:int = this.§var §.indexOf(param2) - this.§ !;§;
         var _loc5_:int = this.§6!§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§6!§[_loc5_].index1 == _loc3_ && this.§6!§[_loc5_].index2 == _loc4_ || this.§6!§[_loc5_].index1 == _loc4_ && this.§6!§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §9!p§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9!R§
      {
         var _loc10_:§9!R§ = null;
         var _loc11_:§=!f§ = null;
         var _loc12_:§=!f§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§-_§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§,"1§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §["!§.§+!s§(param2);
            _loc10_ = new §`!N§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §["!§.§+!s§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §["!§.§+!s§(param2);
            }
            if(_loc12_.§4!J§ == §=!f§.§;n§ || _loc12_.§4!J§ == §=!f§.§[Y§)
            {
               _loc10_ = new §4!O§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §9!R§(this,param1,this.§;!x§.§^J§.§1c§,this.§;!x§,this.§^!@§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         _loc10_.uniqueID = this.§+!x§();
         return _loc10_;
      }
      
      protected function §+!x§() : String
      {
         var _loc3_:§9!R§ = null;
         var _loc1_:int = this.§var §.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§var §)
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
      
      public function §23§(param1:Number) : void
      {
         var _loc3_:§9!R§ = null;
         var _loc2_:int = this.§var §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§var §[_loc2_] as §9!R§;
            if(_loc3_)
            {
               if(_loc3_.§7!D§ <= 0)
               {
                  this.§8!]§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§]! §();
                  _loc3_.§"!;§();
               }
            }
            _loc2_--;
         }
         this.§@"4§(param1);
      }
      
      protected function §@"4§(param1:Number) : void
      {
         this.§<!T§(param1);
         this.§`!!§();
      }
      
      private function §<!T§(param1:Number) : void
      {
         var _loc4_:§4!a§ = null;
         var _loc5_:int = 0;
         var _loc6_:§9!R§ = null;
         if(this.§#!?§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§4!a§> = this.§#!?§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§4"-§ && this.§#!?§.indexOf(_loc4_) != 1)
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
      
      private function §`!!§() : void
      {
         var _loc1_:§=!Q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§6!§)
         {
            if(_loc1_.type == §`!J§.§="#§ && _loc1_.§!"4§)
            {
               _loc2_ = (_loc1_.§-4§ as b2PrismaticJoint).§;E§();
               _loc3_ = (_loc1_.§-4§ as b2PrismaticJoint).§,c§();
               if(_loc1_.§-u§ && _loc1_.§"T§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§-4§ as b2PrismaticJoint).§&!9§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§<!q§.push(§8T§.§?!F§(param1,param2,param3));
         §'!B§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §0`§(param1:Number, param2:Number) : int
      {
         var _loc4_:§9!R§ = null;
         var _loc3_:int = this.§var §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§var §[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §9!R§
      {
         var _loc4_:§9!R§ = null;
         var _loc3_:int = this.§var §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§var §[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§9!R§>
      {
         var _loc5_:§9!R§ = null;
         var _loc3_:Vector.<§9!R§> = new Vector.<§9!R§>();
         var _loc4_:int = this.§var §.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§var §[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §9!R§
      {
         return this.§var §[param1];
      }
      
      public function §0s§(param1:Number, param2:Number) : void
      {
         var _loc4_:§9!R§ = null;
         var _loc3_:int = this.§var §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§var §[_loc3_] as §9!R§).§0s§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §95§(param1:§9!R§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§9!R§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§7!D§ == param1.§@!#§)
         {
            if(this.§4Y§ < this.§0;§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§4Y§ += param2 * this.§0;§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§@6§(param2 * this.§4Y§);
            this.§9!x§ = 0;
         }
         else if(this.§9!x§ == 0)
         {
            this.§9!x§ = this.§;!x§.§[W§;
         }
         if(param1.§@_§() || this.§!G§(param1) || this.§9!x§ > 0 && this.§;!x§.§[W§ > this.§9!x§ + this.§0;§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§0;§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§0;§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §'!B§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §'!B§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§0;§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§0;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§0;§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§!G§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§0;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§9!x§ = 0;
                  _loc7_.§2!7§.§[!n§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §]""§(param1:§9!R§, param2:Number) : Boolean
      {
         var _loc5_:§9!R§ = null;
         if(this.§0;§.MIGHTY_EAGLE_USE_SHADE && !this.§0"1§ && this.mMightyEagleTimer > this.§0;§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§0"1§ = true;
            this.§;!x§.§4!I§();
         }
         this.mMightyEagleTimer += param2;
         this.§;!x§.particles.§continue§(§3"+§.§2s§,§5!Y§.§%R§,§3"+§.§^!q§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§3"+§.§`d§(param1.§@!'§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§8!Y§(this.§0;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§+!d§)
            {
               this.§+!d§ = false;
               this.§;!x§.§-!k§();
               param1.§%i§(§>!&§.§@+§);
               this.mSardineCanAdded = false;
               param1.§2!7§.§-c§ = true;
               param1.§2!7§.§>K§();
               for each(_loc5_ in this.§var §)
               {
                  if(_loc5_ && _loc5_.§?!s§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§]"'§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§var §)
               {
                  if(_loc5_ && _loc5_.§?!s§())
                  {
                     _loc5_.applyDamage(_loc5_.§@!#§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§+!d§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§'i§(param2,new Point(this.§0;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§0;§.MIGHTY_EAGLE_Y_CHANGE),this.§0;§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §@"8§() : void
      {
         var _loc1_:§8T§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§9!R§ = null;
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
         while(this.§<!q§.length > 0)
         {
            _loc1_ = this.§<!q§.shift();
            _loc2_ = _loc1_.§%P§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§var §)
            {
               _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§%P§)
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
               if(_loc10_ <= _loc1_.§5o§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§4!K§(_loc6_,_loc14_);
               }
            }
            this.§;!x§.particles.§continue§(this.§"!]§(_loc1_.type),§5!Y§.§%R§,§3"+§.§&a§,_loc3_,_loc4_,600,"",§3"+§.§extends§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§;!x§.particles.§continue§(§3"+§.§-!4§,§5!Y§.§%R§,§3"+§.§^!q§,_loc3_,_loc4_,_loc16_,"",§3"+§.§extends§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §4!K§(param1:§9!R§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §"!]§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §3"+§.§+Z§;
      }
      
      public function §,!i§(param1:Number) : void
      {
         var _loc2_:§9!R§ = null;
         var _loc3_:int = this.§var §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§var §[_loc3_];
            if(_loc2_.§]!S§())
            {
               if(this.§95§(_loc2_,param1))
               {
                  this.§8!]§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§4"#§())
            {
               this.§]""§(_loc2_,param1);
            }
            else if(this.§!G§(_loc2_))
            {
               _loc2_.§%i§(§>!&§.§%!5§);
               this.§8!]§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§%i§(§>!&§.§%!5§);
               this.§8!]§(_loc3_,false,true,true);
            }
            else if(_loc2_.§@!j§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§@"8§();
      }
      
      private function §]"'§() : void
      {
         var _loc1_:§=!Q§ = null;
         for each(_loc1_ in this.§6!§)
         {
            if(_loc1_.type != §`!J§.§6Q§)
            {
               this.§;!x§.§^J§.§1c§.§3S§(_loc1_.§-4§);
            }
         }
      }
      
      public function §1"2§() : Boolean
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§var §.length)
         {
            _loc2_ = this.§var §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §!G§(param1:§9!R§) : Boolean
      {
         if(param1 && param1.§<3§.§0!g§() != §>!y§.§%I§ && this.§;!x§.borders.§9=§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §8!]§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§=!Q§ = null;
         var _loc7_:§4!a§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§9!R§;
         if((_loc5_ = this.§var §[param1]).§?!s§())
         {
            ++this.§@!R§;
         }
         else if(_loc5_.§@!j§())
         {
            --this.§"!Z§;
         }
         if(_loc5_ == this.§;!x§.activeObject)
         {
            this.§;!x§.activeObject = null;
         }
         if(param2)
         {
            this.§;!x§.addScore(_loc5_.§<3§.score,§'=§.§>L§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§3"+§.§%"0§(_loc5_.§@!'§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§;!x§.particles);
         }
         if(param4)
         {
            this.§^q§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§&j§(_loc5_.sprite);
         this.§<!§(_loc5_);
         this.§>!,§(_loc5_);
         for each(_loc6_ in this.§6!§)
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
         for each(_loc7_ in this.§#!?§)
         {
            if(_loc7_.§]!Z§ == param1)
            {
               _loc7_.§4"-§ = true;
            }
            if(_loc7_.§]!Z§ >= param1)
            {
               --_loc7_.§]!Z§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§var §[param1] = null;
         this.§var §.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§9!R§, param2:§5!Y§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §&j§(param1:Sprite) : void
      {
         if(this.§0!N§.contains(param1))
         {
            this.§0!N§.removeChild(param1);
            return;
         }
         if(this.§<5§.contains(param1))
         {
            this.§<5§.removeChild(param1);
            return;
         }
         if(this.§[!v§.contains(param1))
         {
            this.§[!v§.removeChild(param1);
            return;
         }
         if(this.§,!U§.contains(param1))
         {
            this.§,!U§.removeChild(param1);
            return;
         }
      }
      
      protected function §^q§(param1:§9!R§) : void
      {
         if(param1.§8-§().toUpperCase() == "WHITE_EGG" || param1.§0!e§())
         {
            if(param1.§@!'§.toUpperCase() == §%!C§.§5"'§)
            {
               this.addExplosions(§8T§.§3!D§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§8T§.§7C§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§8!]§(this.§var §.indexOf(param1),param2,param3,param4);
      }
      
      public function §,"#§(param1:Number, param2:Number) : void
      {
         this.§+!M§.x = -param1;
         this.§+!M§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§9!R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§var §.length)
         {
            _loc3_ = this.§var §[_loc2_] as §9!R§;
            if(_loc3_ && _loc3_.§?!s§() && _loc3_.§7!D§ > 0)
            {
               if(!param1 || _loc3_.§2!7§.mTryToBlink <= 0 && _loc3_.§2!7§.mTryToScream <= 0)
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
         var _loc4_:§9!R§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§var §.length - 1;
         for(; _loc3_ >= 0; _loc3_--)
         {
            if(!((_loc4_ = this.§var §[_loc3_] as §9!R§) && _loc4_.§?!s§() && _loc4_.§7!D§ > 0))
            {
               continue;
            }
            §§push(!param1);
            if(!!param1)
            {
               §§pop();
               if(_loc4_.§2!7§.mTryToBlink <= 0 && _loc4_.§2!7§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
               continue;
            }
            §§goto(addr67);
         }
         return _loc2_;
      }
      
      public function getBlockCount() : int
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§var §)
         {
            if(_loc2_ && (_loc2_.§#!y§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§var §)
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
         var _loc3_:§9!R§ = null;
         var _loc2_:int = this.§var §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§var §[_loc2_];
            if(_loc3_ && _loc3_.§?!s§() && _loc3_.§7!D§ > 0)
            {
               _loc3_.§2!7§.mTryToScream = §+c§.§]![§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §,A§() : Boolean
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = this.§var §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§var §[_loc1_] as §9!R§;
            if(_loc2_ && _loc2_.§@!j§() && _loc2_.§7!D§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = this.§var §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§var §[_loc1_] as §9!R§;
            if(_loc2_ && _loc2_.§7!D§ > 0 && _loc2_.§4!J§ != §=!f§.§"!g§)
            {
               if(_loc2_.§+m§() && !_loc2_.§@_§())
               {
                  return false;
               }
               if(_loc2_.§@!j§() && _loc2_.§7!D§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § !i§(param1:Boolean = false) : §9!R§
      {
         var _loc5_:int = 0;
         var _loc6_:§9!R§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§var §.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§var §[_loc5_]) && _loc6_.§?!s§() && _loc6_.§7!D§ > 0)
               {
                  if(!param1 || _loc6_.§2!7§.mTryToBlink <= 0 && _loc6_.§2!7§.mTryToScream <= 0)
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
      
      public function §%!E§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§var §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§var §[_loc2_] as §9!R§).§<3§.score;
            if((this.§var §[_loc2_] as §9!R§).§+m§())
            {
               _loc1_ += §-!K§.§,j§.getValue() * int((this.§var §[_loc2_] as §9!R§).§@!#§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§;!x§.slingshot.§%!E§());
      }
      
      public function §6!G§(param1:§9!R§, param2:§9!R§) : Boolean
      {
         if(param1.§@!j§() && param2.§@!j§())
         {
            return true;
         }
         if(!param1.§`!d§() && !param2.§`!d§())
         {
            return true;
         }
         return false;
      }
      
      public function §%"3§() : void
      {
         this.mSardineCanAdded = true;
         this.§"!Z§ = 0;
      }
      
      public function §?]§(param1:§9!R§, param2:§9!R§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§4"#§() || param2.§?!s§())
            {
               param2.applyDamage(param2.§@!#§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§4"#§() || param1.§?!s§())
            {
               param1.applyDamage(param1.§@!#§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§0;§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§]!S§() || param2.§]!S§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§6!G§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§9"!§(param2.§8-§());
         var _loc5_:Number = param1.§?!^§(param2.§8-§());
         var _loc6_:Number = param2.§9"!§(param1.§8-§());
         var _loc7_:Number = param2.§?!^§(param1.§8-§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§7!D§);
         var _loc14_:Number = Math.max(0,param2.§7!D§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§@!j§(),_loc14_ == param2.§@!#§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§@!j§(),_loc13_ == param1.§@!#§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§&!B§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§&!B§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §`!=§() : void
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = this.§var §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§var §[_loc1_] as §9!R§;
            if(_loc2_ != null && _loc2_.§?!s§())
            {
               this.§8!]§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §&L§() : void
      {
         var _loc2_:§9!R§ = null;
         var _loc1_:int = this.§var §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§var §[_loc1_] as §9!R§;
            if(_loc2_ != null && _loc2_.§0!e§())
            {
               this.§8!]§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§var §.length;
      }
      
      public function writeObjectInformation(param1:§0!b§) : void
      {
         var _loc4_:§9!R§ = null;
         var _loc5_:§]"!§ = null;
         var _loc6_:§`!J§ = null;
         var _loc7_:§=!Q§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§var §.length)
         {
            if(!(_loc4_ = this.§var §[_loc2_]).isGround())
            {
               (_loc5_ = new §]"!§()).angle = _loc4_.§@&§();
               _loc5_.id = _loc4_.§@!'§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§6!§.length)
         {
            _loc7_ = this.§6!§[_loc3_];
            _loc6_ = new §`!J§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§`!@§,_loc7_.§-u§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§"T§,_loc7_.motorSpeed,_loc7_.§!"4§,_loc7_.maxTorque);
            param1.§-!§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §<" §() : void
      {
         var _loc1_:int = 0;
         while(this.§var §.length > _loc1_)
         {
            if(this.§var §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§var §[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§var §.length)
         {
            if(this.§var §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§var §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§=!N§ = param1;
         this.§2f§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§var §.length)
         {
            if(this.§var §[_loc2_].isTexture())
            {
               this.§var §[_loc2_].sprite.visible = !this.§=!N§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§<!b§ = param1;
      }
      
      public function §;!j§() : Boolean
      {
         return this.§<!b§;
      }
      
      public function §&!a§() : int
      {
         return this.§,"1§;
      }
      
      public function §<"$§() : int
      {
         return this.§@!R§;
      }
      
      public function getObjectWithID(param1:String) : §9!R§
      {
         var _loc3_:§9!R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§var §.length)
         {
            _loc3_ = this.§var §[_loc2_] as §9!R§;
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
