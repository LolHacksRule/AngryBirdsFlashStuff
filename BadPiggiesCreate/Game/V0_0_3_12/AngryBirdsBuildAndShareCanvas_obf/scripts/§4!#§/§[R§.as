package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §#?§.§%!O§;
   import §#?§.§+"5§;
   import §#?§.§4">§;
   import §#?§.§8!§;
   import §#?§.§?![§;
   import §#I§.§4";§;
   import §%B§.§^k§;
   import §0E§.§#O§;
   import §3!t§.b2Vec2;
   import §4"$§.b2PrismaticJoint;
   import §4"$§.b2WeldJoint;
   import §?",§.§4T§;
   import §?",§.§7"?§;
   import §?",§.§>!l§;
   import §?",§.§]!k§;
   import §@!-§.§"K§;
   import §@!i§.§%Q§;
   import §@!i§.Sprite;
   import §[B§.§ !j§;
   import §[B§.§"d§;
   import §[B§.§,!B§;
   import §[B§.§5"1§;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[R§
   {
       
      
      protected var §7!q§:Vector.<§60§>;
      
      protected var §,"$§:int;
      
      public var §]!3§:§"d§;
      
      public var §8!6§:Vector.<§]!v§>;
      
      protected var §4q§:Sprite;
      
      protected var §5[§:Sprite;
      
      private var §'4§:Sprite;
      
      private var §^!b§:Sprite;
      
      private var §2!C§:Sprite;
      
      protected var §,!r§:Vector.<Texture>;
      
      protected var §@!#§:Vector.<§7"?§>;
      
      protected var §^"§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §+!&§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §;!7§:Boolean = false;
      
      protected var §"!A§:Number;
      
      protected var §&_§:int;
      
      protected var §9"+§:Vector.<§4T§>;
      
      protected var §@s§:int = 0;
      
      private var §1"1§:int = 0;
      
      private var §;V§:int = 0;
      
      private var §<b§:int;
      
      private var § ![§:Boolean = true;
      
      private var §#!2§:Boolean = true;
      
      public function §[R§(param1:§"d§, param2:§#O§, param3:Sprite)
      {
         var _loc5_:§7"?§ = null;
         var _loc6_:§]!k§ = null;
         var _loc7_:§60§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§60§ = null;
         var _loc11_:§60§ = null;
         this.§7!q§ = new Vector.<§60§>();
         this.§8!6§ = new Vector.<§]!v§>();
         this.§,!r§ = new Vector.<Texture>();
         this.§"!A§ = this.§5"1§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§9"+§ = new Vector.<§4T§>();
         super();
         this.§]!3§ = param1;
         this.§,"$§ = 0;
         this.§5[§ = param3;
         this.§5[§.§"!f§ = false;
         this.§#!2§ = true;
         this.§ ![§ = true;
         this.§4q§ = new Sprite();
         this.§'4§ = new Sprite();
         this.§^!b§ = new Sprite();
         this.§2!C§ = new Sprite();
         this.§5[§.addChild(this.§4q§);
         this.§5[§.addChild(this.§'4§);
         this.§5[§.addChild(this.§^!b§);
         this.§5[§.addChild(this.§2!C§);
         this.addObject(§4";§.§[p§(param2.theme).§9"=§,(this.§]!3§.borders.§'"6§ + this.§]!3§.borders.§]J§) / 2,this.§]!3§.borders.mBorderGround_B2 + §,!B§.§"!b§);
         this.§<b§ = this.§7!q§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§@!l§)
         {
            _loc6_ = param2.getObject(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§7!W§();
         this.§ !9§(true);
         this.§@!#§ = new Vector.<§7"?§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§if§)
         {
            this.§@!#§.push(§7"?§.§6$§(param2.§7!h§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§@!#§)
         {
            _loc8_ = _loc5_.index1 + this.§<b§;
            _loc9_ = _loc5_.index2 + this.§<b§;
            if(_loc8_ < this.§7!q§.length && _loc9_ < this.§7!q§.length)
            {
               _loc10_ = this.§7!q§[_loc8_];
               _loc11_ = this.§7!q§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §>!l§.§3>§)
               {
                  _loc5_.§,#§ = this.§]!3§.§5L§.§4!o§.§1!p§(_loc5_.§`>§(_loc10_,_loc11_));
               }
               else
               {
                  this.§9"+§.push(new §4T§(_loc8_,_loc9_,_loc5_.§3Z§));
               }
            }
         }
      }
      
      protected function get §5"1§() : Class
      {
         return §5"1§;
      }
      
      public function get §="0§() : Sprite
      {
         return this.§2!C§;
      }
      
      public function get §3$§() : Sprite
      {
         return this.§5[§;
      }
      
      public function get §0!a§() : Sprite
      {
         return this.§^!b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§7!q§.length > 0)
         {
            this.§[H§(0);
         }
         this.§7!q§ = null;
         this.§9"+§ = null;
         if(this.§5[§)
         {
            this.§5[§.dispose();
            this.§5[§ = null;
            this.§4q§ = null;
            this.§2!C§ = null;
            this.§'4§ = null;
            this.§^!b§ = null;
         }
         while(this.§,!r§.length > 0)
         {
            _loc1_ = this.§,!r§.pop();
            this.§]!3§.§="!§.§&!c§(_loc1_);
         }
      }
      
      private function § !9§(param1:Boolean) : void
      {
         this.§4q§.visible = param1;
      }
      
      private function §7!W§() : void
      {
         var _loc3_:§60§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%Q§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§60§> = new Vector.<§60§>();
         for each(_loc3_ in this.§7!q§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§5[§);
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
            this.§&!F§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§2!K§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]!3§.§="!§.§,!d§(_loc10_);
            this.§,!r§.push(_loc12_);
            (_loc13_ = new §%Q§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§4q§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §2!K§(param1:Vector.<§60§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§60§ = null;
         var _loc11_:§+"5§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§=m§.shape).§#1§();
            _loc13_ = new Rectangle(_loc12_[0].x / §"d§.§2!]§ * param6,_loc12_[0].y / §"d§.§2!]§ * param6,(_loc12_[1].x - _loc12_[0].x) / §"d§.§2!]§ * param6,(_loc12_[1].y - _loc12_[0].y) / §"d§.§2!]§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§1o§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §&!F§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]!3§.background.§9!§();
         var _loc5_:§"K§;
         if(_loc5_ = this.§]!3§.§[^§.§`!+§(_loc4_))
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
      
      public function §&";§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §60§
      {
         var _loc10_:§4">§ = §%!O§.§2<§(param2);
         return new §,!l§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §>!Q§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §60§
      {
         var _loc10_:§60§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §=§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §!!n§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §^!$§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §&![§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §4!>§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §<!,§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §`u§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §?!5§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §@!m§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§@s§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §60§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§60§;
         if((_loc11_ = this.§1!I§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§ ![§;
            this.§7!q§[this.§7!q§.length] = _loc11_;
         }
         else
         {
            this.§7!q§[this.§7!q§.length] = _loc11_;
         }
         if(_loc11_ is §@!m§ && !_loc11_.§!"5§())
         {
            this.§'4§.addChild(_loc10_);
            ++this.§@s§;
         }
         else if(_loc11_.front || param9)
         {
            this.§2!C§.addChild(_loc10_);
         }
         else
         {
            this.§^!b§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]!3§.§,!k§(_loc11_);
         }
         if(param6)
         {
            this.§]!3§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §6$§(param1:int, param2:§60§, param3:§60§) : §7"?§
      {
         var _loc6_:§7"?§ = null;
         var _loc4_:int = this.§7!q§.indexOf(param2) - this.§<b§;
         var _loc5_:int = this.§7!q§.indexOf(param3) - this.§<b§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §7"?§(§>!l§.§34§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§,#§ = this.§]!3§.§5L§.§4!o§.§1!p§(_loc6_.§`>§(param2,param3));
            this.§@!#§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §<!f§(param1:§7"?§) : void
      {
         if(!(param1.§,#§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§60§ = this.getObject(param1.index1 + this.§<b§);
         var _loc3_:§60§ = this.getObject(param1.index2 + this.§<b§);
         this.§]!3§.§5L§.§4!o§.§!!1§(param1.§,#§);
         param1.§,#§ = this.§]!3§.§5L§.§4!o§.§1!p§(param1.§`>§(_loc2_,_loc3_));
      }
      
      public function §"#§(param1:§60§) : Vector.<§7"?§>
      {
         var _loc4_:§7"?§ = null;
         var _loc2_:Vector.<§7"?§> = new Vector.<§7"?§>();
         var _loc3_:int = this.§7!q§.indexOf(param1) - this.§<b§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§@!#§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function getJoints() : Vector.<§7"?§>
      {
         return this.§@!#§;
      }
      
      public function §<!1§(param1:§60§) : void
      {
         var _loc2_:int = this.§7!q§.indexOf(param1) - this.§<b§;
         var _loc3_:int = this.§@!#§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§@!#§[_loc3_].index1 == _loc2_ || this.§@!#§[_loc3_].index2 == _loc2_)
            {
               this.§@!#§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §&!g§(param1:§60§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§9"+§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§9"+§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§9"+§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §2f§(param1:§60§, param2:§60§) : Boolean
      {
         var _loc3_:int = this.§7!q§.indexOf(param1) - this.§<b§;
         var _loc4_:int = this.§7!q§.indexOf(param2) - this.§<b§;
         var _loc5_:int = this.§@!#§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§@!#§[_loc5_].index1 == _loc3_ && this.§@!#§[_loc5_].index2 == _loc4_ || this.§@!#§[_loc5_].index1 == _loc4_ && this.§@!#§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §1!I§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §60§
      {
         var _loc10_:§60§ = null;
         var _loc11_:§4">§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§>!Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§;V§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§&";§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §%!O§.§2<§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §%!O§.§2<§(param2);
            }
            if(_loc11_.§#>§ == §4">§.§5>§ || _loc11_.§#>§ == §4">§.§@!X§)
            {
               _loc10_ = new §&""§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §60§(this,param1,this.§]!3§.§5L§.§4!o§,this.§]!3§,this.§,"$§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§>O§();
         return _loc10_;
      }
      
      protected function §>O§() : String
      {
         var _loc3_:§60§ = null;
         var _loc1_:int = this.§7!q§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§7!q§)
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
      
      public function §7!B§(param1:Number) : void
      {
         var _loc3_:§60§ = null;
         var _loc2_:int = this.§7!q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7!q§[_loc2_] as §60§;
            if(_loc3_)
            {
               if(_loc3_.§2E§ <= 0)
               {
                  this.§[H§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§]!B§();
                  _loc3_.§!W§();
               }
            }
            _loc2_--;
         }
         this.§8`§(param1);
      }
      
      protected function §8`§(param1:Number) : void
      {
         this.§'!u§(param1);
         this.§]!1§();
      }
      
      private function §'!u§(param1:Number) : void
      {
         var _loc4_:§4T§ = null;
         var _loc5_:int = 0;
         var _loc6_:§60§ = null;
         if(this.§9"+§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§4T§> = this.§9"+§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§^"<§ && this.§9"+§.indexOf(_loc4_) != -1)
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
      
      private function §]!1§() : void
      {
         var _loc1_:§7"?§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         for each(_loc1_ in this.§@!#§)
         {
            if(_loc1_.type == §>!l§.§&!#§ && _loc1_.§%A§)
            {
               _loc2_ = (_loc1_.§,#§ as b2PrismaticJoint).§^"6§();
               _loc3_ = (_loc1_.§,#§ as b2PrismaticJoint).§3!L§();
               if(_loc1_.§]R§ && _loc1_.§2"9§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§,#§ as b2PrismaticJoint).§"X§(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§60§> = null) : void
      {
         this.§8!6§.push(§]!v§.§8!Y§(param1,param2,param3,param4));
         §^k§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §>!9§(param1:Number, param2:Number) : int
      {
         var _loc4_:§60§ = null;
         var _loc3_:int = this.§7!q§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7!q§[_loc3_])
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
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §60§
      {
         var _loc4_:§60§ = null;
         var _loc3_:int = this.§7!q§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7!q§[_loc3_])
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
      
      public function getObjectsFromPoint(param1:Number, param2:Number) : Vector.<§60§>
      {
         var _loc5_:§60§ = null;
         var _loc3_:Vector.<§60§> = new Vector.<§60§>();
         var _loc4_:int = this.§7!q§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§7!q§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §60§
      {
         return this.§7!q§[param1];
      }
      
      public function §^!4§(param1:Number, param2:Number) : void
      {
         var _loc4_:§60§ = null;
         var _loc3_:int = this.§7!q§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7!q§[_loc3_] as §60§).§^!4§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §`!"§(param1:§60§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§60§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§2E§ == param1.§<e§)
         {
            if(this.§"!A§ < this.§5"1§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§"!A§ += param2 * this.§5"1§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.getBody().§7"5§(param2 * this.§"!A§);
            this.§&_§ = 0;
         }
         else if(this.§&_§ == 0)
         {
            this.§&_§ = this.§]!3§.§5!x§;
         }
         if(param1.§5l§() || this.§ n§(param1) || this.§&_§ > 0 && this.§]!3§.§5!x§ > this.§&_§ + this.§5"1§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§5"1§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§5"1§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§5"1§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §^k§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §^k§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§5"1§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.getBody().GetPosition().x - this.§5"1§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.getBody().GetPosition().y - this.§5"1§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§5"1§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§ n§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§5"1§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§&_§ = 0;
                  _loc7_.§8!5§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §-e§(param1:§60§, param2:Number) : Boolean
      {
         var _loc5_:§60§ = null;
         if(this.§5"1§.MIGHTY_EAGLE_USE_SHADE && !this.§;!7§ && this.mMightyEagleTimer > this.§5"1§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§;!7§ = true;
            this.§]!3§.§!V§();
         }
         this.mMightyEagleTimer += param2;
         this.§]!3§.particles.§""#§(§8u§.§=!H§,§>"=§.§3%§,§8u§.§@9§,param1.getBody().GetPosition().x - 3 + Math.random() * (3 * 2),param1.getBody().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§8u§.§^p§(param1.§%!t§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§1! §(this.§5"1§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§+!&§)
            {
               this.§+!&§ = false;
               this.§]!3§.§get §();
               param1.§6B§(§?![§.§-"§);
               this.mSardineCanAdded = false;
               param1.§8!5§.§"!4§ = true;
               param1.§8!5§.§5!r§();
               for each(_loc5_ in this.§7!q§)
               {
                  if(_loc5_ && _loc5_.§&d§())
                  {
                     _loc5_.getBody().SetAwake(true);
                     _loc5_.getBody().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§'!>§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§7!q§)
               {
                  if(_loc5_ && _loc5_.§&d§())
                  {
                     _loc5_.applyDamage(_loc5_.§<e§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.getBody().GetPosition().y >= -5.5;
            this.§+!&§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§+!#§(param2,new Point(this.§5"1§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§5"1§.MIGHTY_EAGLE_Y_CHANGE),this.§5"1§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §-!>§() : void
      {
         var _loc1_:§]!v§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§60§ = null;
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
         while(this.§8!6§.length > 0)
         {
            _loc1_ = this.§8!6§.shift();
            _loc2_ = _loc1_.§4!`§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§7!q§)
            {
               if(!(_loc1_.§6""§ != null && _loc1_.§6""§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.getBody().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.getBody().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§4!`§)
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
                  if(_loc10_ <= _loc1_.§&7§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§>[§(_loc6_,_loc14_);
                  }
               }
            }
            this.§]!3§.particles.§""#§(this.§'!o§(_loc1_.type),§>"=§.§3%§,§8u§.§,!+§,_loc3_,_loc4_,600,"",§8u§.§>m§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]!3§.particles.§""#§(§8u§.§#"§,§>"=§.§3%§,§8u§.§@9§,_loc3_,_loc4_,_loc16_,"",§8u§.§>m§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §>[§(param1:§60§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §'!o§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §8u§.§,!p§;
      }
      
      public function §2!<§(param1:Number) : void
      {
         var _loc2_:§60§ = null;
         var _loc3_:int = this.§7!q§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7!q§[_loc3_];
            if(_loc2_.§^!m§())
            {
               if(this.§`!"§(_loc2_,param1))
               {
                  this.§[H§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§!"5§())
            {
               this.§-e§(_loc2_,param1);
            }
            else if(this.§ n§(_loc2_))
            {
               _loc2_.§6B§(§?![§.§[!+§);
               this.§[H§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§6B§(§?![§.§[!+§);
               this.§[H§(_loc3_,false,true,true);
            }
            else if(_loc2_.§&!d§() || _loc2_.§>"'§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§-!>§();
      }
      
      private function §'!>§() : void
      {
         var _loc1_:§7"?§ = null;
         for each(_loc1_ in this.§@!#§)
         {
            if(_loc1_.type != §>!l§.§3>§)
            {
               this.§]!3§.§5L§.§4!o§.§!!1§(_loc1_.§,#§);
            }
         }
      }
      
      public function §#Y§() : Boolean
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!q§.length)
         {
            _loc2_ = this.§7!q§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function § n§(param1:§60§) : Boolean
      {
         if(param1 && param1.§=m§.§=0§() != §8!§.§9!$§ && this.§]!3§.borders.§2!T§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §[H§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§7"?§ = null;
         var _loc7_:§4T§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§60§;
         if((_loc5_ = this.§7!q§[param1]).§&d§())
         {
            ++this.§1"1§;
         }
         else if(_loc5_.§&!d§())
         {
            --this.§@s§;
         }
         if(_loc5_ == this.§]!3§.activeObject)
         {
            this.§]!3§.activeObject = null;
         }
         if(param2)
         {
            this.§]!3§.addScore(_loc5_.§=m§.score,§ !j§.§>L§,true,_loc5_.getBody().GetPosition().x,_loc5_.getBody().GetPosition().y - 3,§8u§.§+1§(_loc5_.§%!t§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§]!3§.particles);
         }
         if(param4)
         {
            this.§<"-§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§;E§(_loc5_.sprite);
         this.§<!1§(_loc5_);
         this.§&!g§(_loc5_);
         for each(_loc6_ in this.§@!#§)
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
         for each(_loc7_ in this.§9"+§)
         {
            if(_loc7_.§4!$§ == param1)
            {
               _loc7_.§^"<§ = true;
            }
            if(_loc7_.§4!$§ >= param1)
            {
               --_loc7_.§4!$§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§7!q§[param1] = null;
         this.§7!q§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§60§, param2:§>"=§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §;E§(param1:Sprite) : void
      {
         if(this.§^!b§.contains(param1))
         {
            this.§^!b§.removeChild(param1);
            return;
         }
         if(this.§'4§.contains(param1))
         {
            this.§'4§.removeChild(param1);
            return;
         }
         if(this.§4q§.contains(param1))
         {
            this.§4q§.removeChild(param1);
            return;
         }
         if(this.§2!C§.contains(param1))
         {
            this.§2!C§.removeChild(param1);
            return;
         }
      }
      
      protected function §<"-§(param1:§60§) : void
      {
         if(param1.§`"9§().toUpperCase() == "WHITE_EGG" || param1.§11§())
         {
            if(param1.§%!t§.toUpperCase() == §&![§.§""2§)
            {
               this.addExplosions(§]!v§.§>,§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]!v§.§`!_§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
            }
         }
      }
      
      public function removeObject(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§[H§(this.§7!q§.indexOf(param1),param2,param3,param4);
      }
      
      public function §4K§(param1:Number, param2:Number) : void
      {
         this.§5[§.x = -param1;
         this.§5[§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§60§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!q§.length)
         {
            _loc3_ = this.§7!q§[_loc2_] as §60§;
            if(_loc3_ && _loc3_.§&d§() && _loc3_.§2E§ > 0)
            {
               if(!param1 || _loc3_.§8!5§.mTryToBlink <= 0 && _loc3_.§8!5§.mTryToScream <= 0)
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
         var _loc4_:§60§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§7!q§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7!q§[_loc3_] as §60§) && _loc4_.§&d§() && _loc4_.§2E§ > 0)
            {
               if(!param1 || _loc4_.§8!5§.mTryToBlink <= 0 && _loc4_.§8!5§.mTryToScream <= 0)
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
         var _loc2_:§60§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7!q§)
         {
            if(_loc2_ && (_loc2_.§2!A§() || _loc2_.isMiscBlock()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function getStaticCount() : int
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7!q§)
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
         var _loc3_:§60§ = null;
         var _loc2_:int = this.§7!q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7!q§[_loc2_];
            if(_loc3_ && _loc3_.§&d§() && _loc3_.§2E§ > 0)
            {
               _loc3_.§8!5§.mTryToScream = §#0§.§#!i§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function § !>§() : Boolean
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = this.§7!q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!q§[_loc1_] as §60§;
            if(_loc2_ && _loc2_.§&!d§() && _loc2_.§2E§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = this.§7!q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!q§[_loc1_] as §60§;
            if(_loc2_ && _loc2_.§2E§ > 0 && _loc2_.§#>§ != §4">§.§0"0§)
            {
               if(_loc2_.§>!m§() && !_loc2_.§5l§())
               {
                  return false;
               }
               if(_loc2_.§&!d§() && _loc2_.§2E§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>!Y§(param1:Boolean = false) : §60§
      {
         var _loc5_:int = 0;
         var _loc6_:§60§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§7!q§.length;
         var _loc3_:int = 1 + Math.random() * this.getPigCount(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§7!q§[_loc5_]) && _loc6_.§&d§() && _loc6_.§2E§ > 0)
               {
                  if(!param1 || _loc6_.§8!5§.mTryToBlink <= 0 && _loc6_.§8!5§.mTryToScream <= 0)
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
      
      public function §,q§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§7!q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§7!q§[_loc2_] as §60§).§=m§.score;
            if((this.§7!q§[_loc2_] as §60§).§>!m§())
            {
               _loc1_ += §"d§.§]7§.getValue() * int((this.§7!q§[_loc2_] as §60§).§<e§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]!3§.slingshot.§,q§());
      }
      
      public function §>!4§(param1:§60§, param2:§60§) : Boolean
      {
         if(param1.§&!d§() && param2.§&!d§())
         {
            return true;
         }
         if(!param1.§'!C§() && !param2.§'!C§())
         {
            return true;
         }
         return false;
      }
      
      public function §@!,§() : void
      {
         this.mSardineCanAdded = true;
         this.§@s§ = 0;
      }
      
      public function §+8§(param1:§60§, param2:§60§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§!"5§() || param2.§&d§())
            {
               param2.applyDamage(param2.§<e§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§!"5§() || param1.§&d§())
            {
               param1.applyDamage(param1.§<e§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§5"1§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§^!m§() || param2.§^!m§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§>!4§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§@!M§(param2.§`"9§());
         var _loc5_:Number = param1.§]L§(param2.§`"9§());
         var _loc6_:Number = param2.§@!M§(param1.§`"9§());
         var _loc7_:Number = param2.§]L§(param1.§`"9§());
         var _loc8_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().x - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().x;
         var _loc9_:Number = param1.getBody().GetMass() * param1.getBody().GetLinearVelocity().y - param2.getBody().GetMass() * param2.getBody().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§2E§);
         var _loc14_:Number = Math.max(0,param2.§2E§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§&!d§(),_loc14_ == param2.§<e§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§&!d§(),_loc13_ == param1.§<e§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§4x§(new b2Vec2(param2.getBody().GetLinearVelocity().x * _loc18_,param2.getBody().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§4x§(new b2Vec2(param1.getBody().GetLinearVelocity().x * _loc19_,param1.getBody().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §+"6§() : void
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = this.§7!q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!q§[_loc1_] as §60§;
            if(_loc2_ != null && _loc2_.§&d§())
            {
               this.§[H§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §^!R§() : void
      {
         var _loc2_:§60§ = null;
         var _loc1_:int = this.§7!q§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!q§[_loc1_] as §60§;
            if(_loc2_ != null && _loc2_.§11§())
            {
               this.§[H§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function getObjectCount() : int
      {
         return this.§7!q§.length;
      }
      
      public function writeObjectInformation(param1:§#O§) : void
      {
         var _loc4_:§60§ = null;
         var _loc5_:§]!k§ = null;
         var _loc6_:§>!l§ = null;
         var _loc7_:§7"?§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7!q§.length)
         {
            if(!(_loc4_ = this.§7!q§[_loc2_]).isGround())
            {
               (_loc5_ = new §]!k§()).angle = _loc4_.§1o§();
               _loc5_.id = _loc4_.§%!t§;
               _loc5_.x = _loc4_.getBody().GetPosition().x;
               _loc5_.y = _loc4_.getBody().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.addObject(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@!#§.length)
         {
            _loc7_ = this.§@!#§[_loc3_];
            _loc6_ = new §>!l§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§;!#§,_loc7_.§]R§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§2"9§,_loc7_.motorSpeed,_loc7_.§%A§,_loc7_.maxTorque);
            param1.§!!0§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §=y§() : void
      {
         var _loc1_:int = 0;
         while(this.§7!q§.length > _loc1_)
         {
            if(this.§7!q§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.removeObject(this.§7!q§[_loc1_]);
            }
         }
      }
      
      public function getObjectsWithinBoundingBox(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7!q§.length)
         {
            if(this.§7!q§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7!q§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§ ![§ = param1;
         this.§ !9§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7!q§.length)
         {
            if(this.§7!q§[_loc2_].isTexture())
            {
               this.§7!q§[_loc2_].sprite.visible = !this.§ ![§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§#!2§ = param1;
      }
      
      public function §6"4§() : Boolean
      {
         return this.§#!2§;
      }
      
      public function §&x§() : int
      {
         return this.§;V§;
      }
      
      public function §4F§() : int
      {
         return this.§1"1§;
      }
      
      public function getObjectWithID(param1:String) : §60§
      {
         var _loc3_:§60§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!q§.length)
         {
            _loc3_ = this.§7!q§[_loc2_] as §60§;
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
