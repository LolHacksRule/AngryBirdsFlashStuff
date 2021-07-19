package §+!o§
{
   import § !V§.b2PrismaticJoint;
   import § !V§.b2WeldJoint;
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§9"§;
   import §&"5§.§6!L§;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §,a§.§^7§;
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import §3"5§.§ !,§;
   import §3"5§.§5!q§;
   import §3"5§.§6O§;
   import §3"5§.§8"9§;
   import §5!V§.§!w§;
   import §5!V§.§8^§;
   import §5!V§.§?!b§;
   import §5!V§.§]"%§;
   import §7R§.Texture;
   import §9=§.§0!5§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?"-§
   {
       
      
      protected var §84§:Vector.<§]"5§>;
      
      protected var §>T§:int;
      
      public var §9q§:§!w§;
      
      public var §53§:Vector.<§]!i§>;
      
      protected var §?T§:Sprite;
      
      protected var §4!I§:Sprite;
      
      private var §>!w§:Sprite;
      
      private var §9!8§:Sprite;
      
      private var §?! §:Sprite;
      
      protected var §<!_§:Vector.<Texture>;
      
      protected var §2"'§:Vector.<§ !,§>;
      
      protected var §`![§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §4""§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §,!§:Boolean = false;
      
      protected var §#!B§:Number;
      
      protected var §5!J§:int;
      
      protected var §6!F§:Vector.<§8"9§>;
      
      protected var §0!6§:int = 0;
      
      private var §&!y§:int = 0;
      
      private var §5p§:int = 0;
      
      private var §7e§:int;
      
      private var §0"6§:Boolean = true;
      
      private var §7"-§:Boolean = true;
      
      public function §?"-§(param1:§!w§, param2:§9"§, param3:Sprite)
      {
         var _loc5_:§ !,§ = null;
         var _loc6_:§5!q§ = null;
         var _loc7_:§]"5§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§]"5§ = null;
         var _loc11_:§]"5§ = null;
         this.§84§ = new Vector.<§]"5§>();
         this.§53§ = new Vector.<§]!i§>();
         this.§<!_§ = new Vector.<Texture>();
         this.§#!B§ = this.§8^§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§6!F§ = new Vector.<§8"9§>();
         super();
         this.§9q§ = param1;
         this.§>T§ = 0;
         this.§4!I§ = param3;
         this.§4!I§.§#!1§ = false;
         this.§7"-§ = true;
         this.§0"6§ = true;
         this.§?T§ = new Sprite();
         this.§>!w§ = new Sprite();
         this.§9!8§ = new Sprite();
         this.§?! § = new Sprite();
         this.§4!I§.addChild(this.§?T§);
         this.§4!I§.addChild(this.§>!w§);
         this.§4!I§.addChild(this.§9!8§);
         this.§4!I§.addChild(this.§?! §);
         this.addObject(§0!5§.§;l§(param2.theme).§;F§,(this.§9q§.borders.§4"$§ + this.§9q§.borders.§>D§) / 2,this.§9q§.borders.mBorderGround_B2 + §?!b§.§1!§);
         this.§7e§ = this.§84§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§'O§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§!g§();
         this.§7!X§(true);
         this.§2"'§ = new Vector.<§ !,§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§-H§)
         {
            this.§2"'§.push(§ !,§.§8!A§(param2.§8!P§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§2"'§)
         {
            _loc8_ = _loc5_.index1 + this.§7e§;
            _loc9_ = _loc5_.index2 + this.§7e§;
            if(_loc8_ < this.§84§.length && _loc9_ < this.§84§.length)
            {
               _loc10_ = this.§84§[_loc8_];
               _loc11_ = this.§84§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §6O§.§]I§)
               {
                  _loc5_.§5""§ = this.§9q§.§[g§.§?"$§.§[?§(_loc5_.§3"#§(_loc10_,_loc11_));
               }
               else
               {
                  this.§6!F§.push(new §8"9§(_loc8_,_loc9_,_loc5_.§1!Q§));
               }
            }
         }
      }
      
      protected function get §8^§() : Class
      {
         return §8^§;
      }
      
      public function get §6!v§() : Sprite
      {
         return this.§?! §;
      }
      
      public function get §9!X§() : Sprite
      {
         return this.§4!I§;
      }
      
      public function get §8!<§() : Sprite
      {
         return this.§9!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§84§.length > 0)
         {
            this.§5"1§(0);
         }
         this.§84§ = null;
         this.§6!F§ = null;
         if(this.§4!I§)
         {
            this.§4!I§.dispose();
            this.§4!I§ = null;
            this.§?T§ = null;
            this.§?! § = null;
            this.§>!w§ = null;
            this.§9!8§ = null;
         }
         while(this.§<!_§.length > 0)
         {
            _loc1_ = this.§<!_§.pop();
            this.§9q§.§7!J§.§^y§(_loc1_);
         }
      }
      
      private function §7!X§(param1:Boolean) : void
      {
         this.§?T§.visible = param1;
      }
      
      private function §!g§() : void
      {
         var _loc3_:§]"5§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§=!Z§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§]"5§> = new Vector.<§]"5§>();
         for each(_loc3_ in this.§84§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§4!I§);
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
            this.§^!P§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§63§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§9q§.§7!J§.§&#§(_loc10_);
            this.§<!_§.push(_loc12_);
            (_loc13_ = new §=!Z§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§?T§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §63§(param1:Vector.<§]"5§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§]"5§ = null;
         var _loc11_:§^7§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§+!y§.shape).§]!&§();
            _loc13_ = new Rectangle(_loc12_[0].x / §!w§.§4!-§ * param6,_loc12_[0].y / §!w§.§4!-§ * param6,(_loc12_[1].x - _loc12_[0].x) / §!w§.§4!-§ * param6,(_loc12_[1].y - _loc12_[0].y) / §!w§.§4!-§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§+!1§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §^!P§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§9q§.background.§!z§();
         var _loc5_:§6!L§;
         if(_loc5_ = this.§9q§.§]@§.§12§(_loc4_))
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
      
      public function §"!f§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc10_:§]!>§ = §<!m§.§"!F§(param2);
         return new §1!!§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §-!!§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc10_:§]"5§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §6!>§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §3!F§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §3U§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §6!b§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §+!?§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §^f§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8!B§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §[f§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §>G§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§0!6§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §]"5§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§]"5§;
         if((_loc11_ = this.§`"+§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§0"6§;
            this.§84§[this.§84§.length] = _loc11_;
         }
         else
         {
            this.§84§[this.§84§.length] = _loc11_;
         }
         if(_loc11_ is §>G§ && !_loc11_.§<",§())
         {
            this.§>!w§.addChild(_loc10_);
            ++this.§0!6§;
         }
         else if(_loc11_.front || param9)
         {
            this.§?! §.addChild(_loc10_);
         }
         else
         {
            this.§9!8§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§9q§.§;O§(_loc11_);
         }
         if(param6)
         {
            this.§9q§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §8!A§(param1:int, param2:§]"5§, param3:§]"5§) : § !,§
      {
         var _loc6_:§ !,§ = null;
         var _loc4_:int = this.§84§.indexOf(param2) - this.§7e§;
         var _loc5_:int = this.§84§.indexOf(param3) - this.§7e§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new § !,§(§6O§.§+k§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§5""§ = this.§9q§.§[g§.§?"$§.§[?§(_loc6_.§3"#§(param2,param3));
            this.§2"'§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §%'§(param1:§ !,§) : void
      {
         if(!(param1.§5""§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§]"5§ = this.getObject(param1.index1 + this.§7e§);
         var _loc3_:§]"5§ = this.getObject(param1.index2 + this.§7e§);
         this.§9q§.§[g§.§?"$§.§%!A§(param1.§5""§);
         param1.§5""§ = this.§9q§.§[g§.§?"$§.§[?§(param1.§3"#§(_loc2_,_loc3_));
      }
      
      public function §]c§(param1:§]"5§) : Vector.<§ !,§>
      {
         var _loc4_:§ !,§ = null;
         var _loc2_:Vector.<§ !,§> = new Vector.<§ !,§>();
         var _loc3_:int = this.§84§.indexOf(param1) - this.§7e§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§2"'§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§ !,§>
      {
         return this.§2"'§;
      }
      
      public function §>O§(param1:§]"5§) : void
      {
         var _loc2_:int = this.§84§.indexOf(param1) - this.§7e§;
         var _loc3_:int = this.§2"'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2"'§[_loc3_].index1 == _loc2_ || this.§2"'§[_loc3_].index2 == _loc2_)
            {
               this.§2"'§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §3!v§(param1:§]"5§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§6!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§6!F§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§6!F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §-!Z§(param1:§]"5§, param2:§]"5§) : Boolean
      {
         var _loc3_:int = this.§84§.indexOf(param1) - this.§7e§;
         var _loc4_:int = this.§84§.indexOf(param2) - this.§7e§;
         var _loc5_:int = this.§2"'§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§2"'§[_loc5_].index1 == _loc3_ && this.§2"'§[_loc5_].index2 == _loc4_ || this.§2"'§[_loc5_].index1 == _loc4_ && this.§2"'§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §`"+§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]"5§
      {
         var _loc10_:§]"5§ = null;
         var _loc11_:§]!>§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§-!!§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§5p§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§"!f§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §<!m§.§"!F§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §<!m§.§"!F§(param2);
            }
            if(_loc11_.§,!E§ == §]!>§.§-"?§ || _loc11_.§,!E§ == §]!>§.§,"9§)
            {
               _loc10_ = new §[[§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §]"5§(this,param1,this.§9q§.§[g§.§?"$§,this.§9q§,this.§>T§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§6!?§();
         return _loc10_;
      }
      
      protected function §6!?§() : String
      {
         var _loc3_:§]"5§ = null;
         var _loc1_:int = this.§84§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§84§)
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
      
      public function §5J§(param1:Number) : void
      {
         var _loc3_:§]"5§ = null;
         var _loc2_:int = this.§84§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
            if(_loc3_)
            {
               if(_loc3_.§@!P§ <= 0)
               {
                  this.§5"1§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§^!6§();
                  _loc3_.§=O§();
               }
            }
            _loc2_--;
         }
         this.§5!=§(param1);
      }
      
      protected function §5!=§(param1:Number) : void
      {
         this.§=!!§(param1);
         this.§ _§();
      }
      
      private function §=!!§(param1:Number) : void
      {
         var _loc4_:§8"9§ = null;
         var _loc5_:int = 0;
         var _loc6_:§]"5§ = null;
         if(this.§6!F§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§8"9§> = this.§6!F§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§]o§ && this.§6!F§.indexOf(_loc4_) != -1)
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
      
      private function § _§() : void
      {
         var _loc1_:§ !,§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§2"'§)
         {
            if(_loc1_.type == §6O§.§2!+§ && _loc1_.§1!e§)
            {
               _loc2_ = (_loc1_.§5""§ as b2PrismaticJoint).§9[§();
               _loc3_ = (_loc1_.§5""§ as b2PrismaticJoint).§7U§();
               if(_loc1_.§<"3§ && _loc1_.§1!j§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§5""§ as b2PrismaticJoint).§^x§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§]"5§> = null) : void
      {
         this.§53§.push(§]!i§.§@%§(param1,param2,param3,param4));
         §5!U§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §%! §(param1:Number, param2:Number) : int
      {
         var _loc4_:§]"5§ = null;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§84§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §]"5§
      {
         var _loc4_:§]"5§ = null;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§84§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§]"5§>
      {
         var _loc5_:§]"5§ = null;
         var _loc3_:Vector.<§]"5§> = new Vector.<§]"5§>();
         var _loc4_:int = this.§84§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§84§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §]"5§
      {
         return this.§84§[param1];
      }
      
      public function §?!%§(param1:Number, param2:Number) : void
      {
         var _loc4_:§]"5§ = null;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§84§[_loc3_] as §]"5§).§?!%§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §,"3§(param1:§]"5§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§]"5§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§@!P§ == param1.§'">§)
         {
            if(this.§#!B§ < this.§8^§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§#!B§ += param2 * this.§8^§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§`!`§(param2 * this.§#!B§);
            this.§5!J§ = 0;
         }
         else if(this.§5!J§ == 0)
         {
            this.§5!J§ = this.§9q§.§," §;
         }
         if(param1.§#";§() || this.§?"+§(param1) || this.§5!J§ > 0 && this.§9q§.§," § > this.§5!J§ + this.§8^§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§8^§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§8^§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§8^§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §5!U§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §5!U§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§8^§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§8^§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§8^§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§8^§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§?"+§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§8^§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§5!J§ = 0;
                  _loc7_.§[!g§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §0`§(param1:§]"5§, param2:Number) : Boolean
      {
         var _loc5_:§]"5§ = null;
         if(this.§8^§.MIGHTY_EAGLE_USE_SHADE && !this.§,!§ && this.mMightyEagleTimer > this.§8^§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§,!§ = true;
            this.§9q§.§==§();
         }
         this.mMightyEagleTimer += param2;
         this.§9q§.particles.§[b§(§&!>§.§]!c§,§-5§.§5Q§,§&!>§.§&W§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§&!>§.§6H§(param1.§!F§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§4!1§(this.§8^§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§4""§)
            {
               this.§4""§ = false;
               this.§9q§.§@";§();
               param1.§"!a§(§+"&§.§`!!§);
               this.mSardineCanAdded = false;
               param1.§[!g§.§,!R§ = true;
               param1.§[!g§.§>y§();
               for each(_loc5_ in this.§84§)
               {
                  if(_loc5_ && _loc5_.§]F§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§>"3§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§84§)
               {
                  if(_loc5_ && _loc5_.§]F§())
                  {
                     _loc5_.applyDamage(_loc5_.§'">§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§4""§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§&!8§(param2,new Point(this.§8^§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§8^§.MIGHTY_EAGLE_Y_CHANGE),this.§8^§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §9l§() : void
      {
         var _loc1_:§]!i§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§]"5§ = null;
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
         while(this.§53§.length > 0)
         {
            _loc1_ = this.§53§.shift();
            _loc2_ = _loc1_.§"!l§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§84§)
            {
               if(!(_loc1_.§,!H§ != null && _loc1_.§,!H§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§"!l§)
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
                  if(_loc10_ <= _loc1_.§[!'§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§1r§(_loc6_,_loc14_);
                  }
               }
            }
            this.§9q§.particles.§[b§(this.§6!t§(_loc1_.type),§-5§.§5Q§,§&!>§.§0!+§,_loc3_,_loc4_,600,"",§&!>§.§-]§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§9q§.particles.§[b§(§&!>§.§?!A§,§-5§.§5Q§,§&!>§.§&W§,_loc3_,_loc4_,_loc16_,"",§&!>§.§-]§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §1r§(param1:§]"5§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §6!t§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §&!>§.§1!F§;
      }
      
      public function §,1§(param1:Number) : void
      {
         var _loc2_:§]"5§ = null;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§84§[_loc3_];
            if(_loc2_.§6!@§())
            {
               if(this.§,"3§(_loc2_,param1))
               {
                  this.§5"1§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§<",§())
            {
               this.§0`§(_loc2_,param1);
            }
            else if(this.§?"+§(_loc2_))
            {
               _loc2_.§"!a§(§+"&§.§<!k§);
               this.§5"1§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§"!a§(§+"&§.§<!k§);
               this.§5"1§(_loc3_,false,true,true);
            }
            else if(_loc2_.§9!^§() || _loc2_.§7!#§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§9l§();
      }
      
      private function §>"3§() : void
      {
         var _loc1_:§ !,§ = null;
         for each(_loc1_ in this.§2"'§)
         {
            if(_loc1_.type != §6O§.§]I§)
            {
               this.§9q§.§[g§.§?"$§.§%!A§(_loc1_.§5""§);
            }
         }
      }
      
      public function §71§() : Boolean
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§84§.length)
         {
            _loc2_ = this.§84§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §?"+§(param1:§]"5§) : Boolean
      {
         if(param1 && param1.§+!y§.§7"8§() != §+!Z§.§>$§ && this.§9q§.borders.§@h§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §5"1§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§ !,§ = null;
         var _loc7_:§8"9§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§]"5§;
         if((_loc5_ = this.§84§[param1]).§]F§())
         {
            ++this.§&!y§;
         }
         else if(_loc5_.§9!^§())
         {
            --this.§0!6§;
         }
         if(_loc5_ == this.§9q§.activeObject)
         {
            this.§9q§.activeObject = null;
         }
         if(param2)
         {
            this.§9q§.addScore(_loc5_.§+!y§.score,§]"%§.§-!R§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§&!>§.§6[§(_loc5_.§!F§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§9q§.particles);
         }
         if(param4)
         {
            this.§4"'§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§3;§(_loc5_.sprite);
         this.§>O§(_loc5_);
         this.§3!v§(_loc5_);
         for each(_loc6_ in this.§2"'§)
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
         for each(_loc7_ in this.§6!F§)
         {
            if(_loc7_.§2`§ == param1)
            {
               _loc7_.§]o§ = true;
            }
            if(_loc7_.§2`§ >= param1)
            {
               --_loc7_.§2`§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§84§[param1] = null;
         this.§84§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§]"5§, param2:§-5§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §3;§(param1:Sprite) : void
      {
         if(this.§9!8§.contains(param1))
         {
            this.§9!8§.removeChild(param1);
            return;
         }
         if(this.§>!w§.contains(param1))
         {
            this.§>!w§.removeChild(param1);
            return;
         }
         if(this.§?T§.contains(param1))
         {
            this.§?T§.removeChild(param1);
            return;
         }
         if(this.§?! §.contains(param1))
         {
            this.§?! §.removeChild(param1);
            return;
         }
      }
      
      protected function §4"'§(param1:§]"5§) : void
      {
         if(param1.§@"?§().toUpperCase() == "WHITE_EGG" || param1.§?!S§())
         {
            if(param1.§!F§.toUpperCase() == §6!b§.§7"2§)
            {
               this.addExplosions(§]!i§.§5!2§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]!i§.§1]§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§5"1§(this.§84§.indexOf(param1),param2,param3,param4);
      }
      
      public function §%]§(param1:Number, param2:Number) : void
      {
         this.§4!I§.x = -param1;
         this.§4!I§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§]"5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§84§.length)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
            if(_loc3_ && _loc3_.§]F§() && _loc3_.§@!P§ > 0)
            {
               if(!param1 || _loc3_.§[!g§.mTryToBlink <= 0 && _loc3_.§[!g§.mTryToScream <= 0)
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
         var _loc4_:§]"5§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§84§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§84§[_loc3_] as §]"5§) && _loc4_.§]F§() && _loc4_.§@!P§ > 0)
            {
               if(!param1 || _loc4_.§[!g§.mTryToBlink <= 0 && _loc4_.§[!g§.mTryToScream <= 0)
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
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§84§)
         {
            if(_loc2_ && (_loc2_.§@!i§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§84§)
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
         var _loc3_:§]"5§ = null;
         var _loc2_:int = this.§84§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§84§[_loc2_];
            if(_loc3_ && _loc3_.§]F§() && _loc3_.§@!P§ > 0)
            {
               _loc3_.§[!g§.mTryToScream = §<Y§.§^!7§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §7Y§() : Boolean
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = this.§84§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc2_ && _loc2_.§9!^§() && _loc2_.§@!P§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = this.§84§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc2_ && _loc2_.§@!P§ > 0 && _loc2_.§,!E§ != §]!>§.§=!a§)
            {
               if(_loc2_.§%h§() && !_loc2_.§#";§())
               {
                  return false;
               }
               if(_loc2_.§9!^§() && _loc2_.§@!P§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §2!e§(param1:Boolean = false) : §]"5§
      {
         var _loc5_:int = 0;
         var _loc6_:§]"5§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§84§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§84§[_loc5_]) && _loc6_.§]F§() && _loc6_.§@!P§ > 0)
               {
                  if(!param1 || _loc6_.§[!g§.mTryToBlink <= 0 && _loc6_.§[!g§.mTryToScream <= 0)
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
      
      public function §@!b§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§84§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§84§[_loc2_] as §]"5§).§+!y§.score;
            if((this.§84§[_loc2_] as §]"5§).§%h§())
            {
               _loc1_ += §!w§.§!!l§.getValue() * int((this.§84§[_loc2_] as §]"5§).§'">§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§9q§.slingshot.§@!b§());
      }
      
      public function §in §(param1:§]"5§, param2:§]"5§) : Boolean
      {
         if(param1.§9!^§() && param2.§9!^§())
         {
            return true;
         }
         if(!param1.§+f§() && !param2.§+f§())
         {
            return true;
         }
         return false;
      }
      
      public function §?3§() : void
      {
         this.mSardineCanAdded = true;
         this.§0!6§ = 0;
      }
      
      public function §8_§(param1:§]"5§, param2:§]"5§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§<",§() || param2.§]F§())
            {
               param2.applyDamage(param2.§'">§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§<",§() || param1.§]F§())
            {
               param1.applyDamage(param1.§'">§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§8^§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§6!@§() || param2.§6!@§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§in §(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§1!r§(param2.§@"?§());
         var _loc5_:Number = param1.§8d§(param2.§@"?§());
         var _loc6_:Number = param2.§1!r§(param1.§@"?§());
         var _loc7_:Number = param2.§8d§(param1.§@"?§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§@!P§);
         var _loc14_:Number = Math.max(0,param2.§@!P§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§9!^§(),_loc14_ == param2.§'">§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§9!^§(),_loc13_ == param1.§'">§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§@!a§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§@!a§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §+j§() : void
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = this.§84§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc2_ != null && _loc2_.§]F§())
            {
               this.§5"1§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §5!F§() : void
      {
         var _loc2_:§]"5§ = null;
         var _loc1_:int = this.§84§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§84§[_loc1_] as §]"5§;
            if(_loc2_ != null && _loc2_.§?!S§())
            {
               this.§5"1§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§84§.length;
      }
      
      public function writeObjectInformation(param1:§9"§) : void
      {
         var _loc4_:§]"5§ = null;
         var _loc5_:§5!q§ = null;
         var _loc6_:§6O§ = null;
         var _loc7_:§ !,§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§84§.length)
         {
            if(!(_loc4_ = this.§84§[_loc2_]).isGround())
            {
               (_loc5_ = new §5!q§()).angle = _loc4_.§+!1§();
               _loc5_.id = _loc4_.§!F§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2"'§.length)
         {
            _loc7_ = this.§2"'§[_loc3_];
            _loc6_ = new §6O§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§8![§,_loc7_.§<"3§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§1!j§,_loc7_.motorSpeed,_loc7_.§1!e§,_loc7_.maxTorque);
            param1.§]"=§(_loc6_);
            _loc3_++;
         }
      }
      
      public function § I§() : void
      {
         var _loc1_:int = 0;
         while(this.§84§.length > _loc1_)
         {
            if(this.§84§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§84§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§84§.length)
         {
            if(this.§84§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§84§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§0"6§ = param1;
         this.§7!X§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§84§.length)
         {
            if(this.§84§[_loc2_].isTexture())
            {
               this.§84§[_loc2_].sprite.visible = !this.§0"6§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§7"-§ = param1;
      }
      
      public function §[!<§() : Boolean
      {
         return this.§7"-§;
      }
      
      public function §""2§() : int
      {
         return this.§5p§;
      }
      
      public function §5!7§() : int
      {
         return this.§&!y§;
      }
      
      public function getObjectWithID(param1:String) : §]"5§
      {
         var _loc3_:§]"5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§84§.length)
         {
            _loc3_ = this.§84§[_loc2_] as §]"5§;
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
