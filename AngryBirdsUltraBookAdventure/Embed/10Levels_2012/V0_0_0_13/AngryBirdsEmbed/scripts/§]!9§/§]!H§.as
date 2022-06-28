package §]!9§
{
   import §#k§.§"!D§;
   import §#k§.§%!?§;
   import §#k§.§,r§;
   import §#k§.§@Q§;
   import §%$§.§3V§;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §%x§.§;C§;
   import §-!0§.§9X§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §`K§.§+i§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import §`K§.§7g§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!H§
   {
       
      
      protected var §2;§:Vector.<§>2§>;
      
      protected var §1&§:int;
      
      public var §7C§:§#;§;
      
      public var §,!6§:Vector.<§5V§>;
      
      protected var §&V§:Sprite;
      
      protected var §`8§:Sprite;
      
      private var §72§:Sprite;
      
      private var §2A§:Sprite;
      
      private var §;l§:Sprite;
      
      protected var §<o§:Vector.<Texture>;
      
      protected var §-!C§:Vector.<§@Q§>;
      
      protected var §[c§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`!E§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §!!§:Boolean = false;
      
      protected var §]f§:Number;
      
      protected var §,=§:int;
      
      protected var §9!4§:Vector.<§,r§>;
      
      protected var §2s§:int = 0;
      
      private var §<!D§:int = 0;
      
      private var §-v§:int = 0;
      
      private var §^!9§:int;
      
      private var §`!7§:Boolean = true;
      
      private var §=y§:Boolean = true;
      
      public function §]!H§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc5_:§@Q§ = null;
         var _loc6_:§"!D§ = null;
         var _loc7_:§>2§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§>2§ = null;
         var _loc11_:§>2§ = null;
         this.§2;§ = new Vector.<§>2§>();
         this.§,!6§ = new Vector.<§5V§>();
         this.§<o§ = new Vector.<Texture>();
         this.§]f§ = this.§#!;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§9!4§ = new Vector.<§,r§>();
         super();
         this.§7C§ = param1;
         this.§1&§ = 0;
         this.§`8§ = param3;
         this.§`8§.§-j§ = false;
         this.§=y§ = true;
         this.§`!7§ = true;
         this.§&V§ = new Sprite();
         this.§72§ = new Sprite();
         this.§2A§ = new Sprite();
         this.§;l§ = new Sprite();
         this.§`8§.addChild(this.§&V§);
         this.§`8§.addChild(this.§72§);
         this.§`8§.addChild(this.§2A§);
         this.§`8§.addChild(this.§;l§);
         this.addObject(§3V§.§9S§(param2.theme).§@!2§,(this.§7C§.§`,§.§+!0§ + this.§7C§.§`,§.§0!?§) / 2,this.§7C§.§`,§.§=s§ + §;C§.§7!5§);
         this.§^!9§ = this.§2;§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§ M§)
         {
            _loc6_ = param2.§!6§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§<j§();
         this.§[<§(true);
         this.§-!C§ = new Vector.<§@Q§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§"9§)
         {
            this.§-!C§.push(§@Q§.§>d§(param2.§4! §(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§-!C§)
         {
            _loc8_ = _loc5_.index1 + this.§^!9§;
            _loc9_ = _loc5_.index2 + this.§^!9§;
            if(_loc8_ < this.§2;§.length && _loc9_ < this.§2;§.length)
            {
               _loc10_ = this.§2;§[_loc8_];
               _loc11_ = this.§2;§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §%!?§.§?f§)
               {
                  _loc5_.§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(_loc5_.§>k§(_loc10_,_loc11_));
               }
               else
               {
                  this.§9!4§.push(new §,r§(_loc8_,_loc9_,_loc5_.§ 0§));
               }
            }
         }
      }
      
      protected function get §#!;§() : Class
      {
         return §#!;§;
      }
      
      public function get §6N§() : Sprite
      {
         return this.§;l§;
      }
      
      public function get §6,§() : Sprite
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§2;§.length > 0)
         {
            this.§64§(0);
         }
         this.§2;§ = null;
         this.§9!4§ = null;
         if(this.§`8§)
         {
            this.§`8§.dispose();
            this.§`8§ = null;
            this.§&V§ = null;
            this.§;l§ = null;
            this.§72§ = null;
            this.§2A§ = null;
         }
         while(this.§<o§.length > 0)
         {
            _loc1_ = this.§<o§.pop();
            this.§7C§.textureManager.§9a§(_loc1_);
         }
      }
      
      private function §[<§(param1:Boolean) : void
      {
         this.§&V§.visible = param1;
      }
      
      private function §<j§() : void
      {
         var _loc3_:§>2§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§8!?§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§>2§> = new Vector.<§>2§>();
         for each(_loc3_ in this.§2;§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§`8§);
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
            this.§,a§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§&!&§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§7C§.textureManager.§ b§(_loc10_);
            this.§<o§.push(_loc12_);
            (_loc13_ = new §8!?§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§&V§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §&!&§(param1:Vector.<§>2§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§>2§ = null;
         var _loc11_:§2z§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§0§.shape).§#F§();
            _loc13_ = new Rectangle(_loc12_[0].x / §#;§.§`!2§ * param6,_loc12_[0].y / §#;§.§`!2§ * param6,(_loc12_[1].x - _loc12_[0].x) / §#;§.§`!2§ * param6,(_loc12_[1].y - _loc12_[0].y) / §#;§.§`!2§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§+O§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §,a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§7C§.background.§"I§();
         var _loc5_:§9X§;
         if(_loc5_ = this.§7C§.backgroundTextureManager.§4K§(_loc4_))
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
      
      public function § Q§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>2§
      {
         var _loc10_:§>2§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §+k§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §3'§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §5,§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §<5§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §#!"§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §6&§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,-§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §&v§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§2s§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>2§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§>2§;
         if((_loc11_ = this.§5!3§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§`!7§;
            this.§2;§[this.§2;§.length] = _loc11_;
         }
         else
         {
            this.§2;§[this.§2;§.length] = _loc11_;
         }
         if(_loc11_ is §&v§ && !_loc11_.§1!F§())
         {
            this.§72§.addChild(_loc10_);
            ++this.§2s§;
         }
         else if(_loc11_.front || param9)
         {
            this.§;l§.addChild(_loc10_);
         }
         else
         {
            this.§2A§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§7C§.§ N§(_loc11_);
         }
         if(param6)
         {
            this.§7C§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §>d§(param1:int, param2:§>2§, param3:§>2§) : §@Q§
      {
         var _loc6_:§@Q§ = null;
         var _loc4_:int = this.§2;§.indexOf(param2) - this.§^!9§;
         var _loc5_:int = this.§2;§.indexOf(param3) - this.§^!9§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@Q§(§%!?§.§4+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(_loc6_.§>k§(param2,param3));
            this.§-!C§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §<S§(param1:§@Q§) : void
      {
         if(!(param1.§1-§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§>2§ = this.§!6§(param1.index1 + this.§^!9§);
         var _loc3_:§>2§ = this.§!6§(param1.index2 + this.§^!9§);
         this.§7C§.§-K§.§[N§.DestroyJoint(param1.§1-§);
         param1.§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(param1.§>k§(_loc2_,_loc3_));
      }
      
      public function §"l§(param1:§>2§) : Vector.<§@Q§>
      {
         var _loc4_:§@Q§ = null;
         var _loc2_:Vector.<§@Q§> = new Vector.<§@Q§>();
         var _loc3_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§-!C§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §@`§() : Vector.<§@Q§>
      {
         return this.§-!C§;
      }
      
      public function §"-§(param1:§>2§) : void
      {
         var _loc2_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         var _loc3_:int = this.§-!C§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§-!C§[_loc3_].index1 == _loc2_ || this.§-!C§[_loc3_].index2 == _loc2_)
            {
               this.§-!C§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §'!&§(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc3_:int = this.§2;§.indexOf(param1) - this.§^!9§;
         var _loc4_:int = this.§2;§.indexOf(param2) - this.§^!9§;
         var _loc5_:int = this.§-!C§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§-!C§[_loc5_].index1 == _loc3_ && this.§-!C§[_loc5_].index2 == _loc4_ || this.§-!C§[_loc5_].index1 == _loc4_ && this.§-!C§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §5!3§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>2§
      {
         var _loc10_:§>2§ = null;
         var _loc11_:§+i§ = null;
         var _loc12_:§+i§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§ Q§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§-v§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §3n§.§]B§(param2);
            _loc10_ = new §4A§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §3n§.§]B§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §3n§.§]B§(param2);
            }
            if(_loc12_.§'F§ == §+i§.§]D§ || _loc12_.§'F§ == §+i§.§+^§)
            {
               _loc10_ = new §>o§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §>2§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§1&§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §&'§(param1:Number) : void
      {
         var _loc3_:§>2§ = null;
         var _loc2_:int = this.§2;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2;§[_loc2_] as §>2§;
            if(_loc3_)
            {
               if(_loc3_.§4!;§ <= 0)
               {
                  this.§64§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4!3§();
                  _loc3_.§,I§();
               }
            }
            _loc2_--;
         }
         this.§8k§(param1);
      }
      
      protected function §8k§(param1:Number) : void
      {
         var _loc3_:§@Q§ = null;
         var _loc4_:§,r§ = null;
         var _loc5_:int = 0;
         var _loc6_:§>2§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§9!4§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§9!4§[_loc2_]).§8!A§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§'§("block_" + _loc5_))
                  {
                     this.§>!"§(_loc6_,true,true,true);
                  }
                  this.§9!4§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§-!C§)
         {
            if(_loc3_.type == §%!?§.§!E§ && _loc3_.§7!G§)
            {
               _loc7_ = (_loc3_.§1-§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§1-§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§!_§ && _loc3_.§9!'§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§1-§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§,!6§.push(§5V§.createExplosion(param1,param2,param3));
         §3!E§.§<!,§("TntExplosions","ChannelExplosions");
      }
      
      public function §2j§(param1:Number, param2:Number) : int
      {
         var _loc4_:§>2§ = null;
         var _loc3_:int = this.§2;§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2;§[_loc3_])
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
      
      public function §<"§(param1:Number, param2:Number) : §>2§
      {
         var _loc4_:§>2§ = null;
         var _loc3_:int = this.§2;§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2;§[_loc3_])
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
      
      public function §!6§(param1:int) : §>2§
      {
         return this.§2;§[param1];
      }
      
      public function §&;§(param1:Number, param2:Number) : void
      {
         var _loc4_:§>2§ = null;
         var _loc3_:int = this.§2;§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§2;§[_loc3_] as §>2§).§&;§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §!G§(param1:§>2§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§>2§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§4!;§ == param1.§8!,§)
         {
            if(this.§]f§ < this.§#!;§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§]f§ += param2 * this.§#!;§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§%;§().SetAngularVelocity(param2 * this.§]f§);
            this.§,=§ = 0;
         }
         else if(this.§,=§ == 0)
         {
            this.§,=§ = this.§7C§.§3!F§;
         }
         if(param1.§0!@§() || this.§0g§(param1) || this.§,=§ > 0 && this.§7C§.§3!F§ > this.§,=§ + this.§#!;§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §3!E§.§<!,§("Mighty_Eagle_Selected_1","ChannelBird");
                  §3!E§.§<!,§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§%;§().GetPosition().x - this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§%;§().GetPosition().y - this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§0g§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§#!;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§,=§ = 0;
                  _loc7_.§2!@§.§&w§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §;!0§(param1:§>2§, param2:Number) : Boolean
      {
         var _loc5_:§>2§ = null;
         if(this.§#!;§.MIGHTY_EAGLE_USE_SHADE && !this.§!!§ && this.mMightyEagleTimer > this.§#!;§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§!!§ = true;
            this.§7C§.§8G§();
         }
         this.mMightyEagleTimer += param2;
         this.§7C§.particles.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,param1.§%;§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§%;§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2S§.§#!2§(param1.§'!,§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§>!@§(this.§#!;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§`!E§)
            {
               this.§`!E§ = false;
               this.§7C§.§&`§();
               param1.§+t§(§0r§.§@B§);
               this.mSardineCanAdded = false;
               param1.§2!@§.§"@§ = true;
               param1.§2!@§.§1i§();
               for each(_loc5_ in this.§2;§)
               {
                  if(_loc5_ && _loc5_.§`U§())
                  {
                     _loc5_.§%;§().SetAwake(true);
                     _loc5_.§%;§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§ !§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§2;§)
               {
                  if(_loc5_ && _loc5_.§`U§())
                  {
                     _loc5_.applyDamage(_loc5_.§8!,§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§%;§().GetPosition().y >= -5.5;
            this.§`!E§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§[;§(param2,new Point(this.§#!;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE),this.§#!;§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §'p§() : void
      {
         var _loc1_:§5V§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>2§ = null;
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
         while(this.§,!6§.length > 0)
         {
            _loc1_ = this.§,!6§.shift();
            _loc2_ = _loc1_.§+r§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§2;§)
            {
               _loc8_ = _loc6_.§%;§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§%;§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§+r§)
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
                     _loc6_.§%;§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§+@§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§7C§.particles.§ t§(this.§ o§(_loc1_.type),§5b§.§?D§,§2S§.§>t§,_loc3_,_loc4_,600,"",§2S§.§%f§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§7C§.particles.§ t§(§2S§.§!!?§,§5b§.§?D§,§2S§.§9!>§,_loc3_,_loc4_,_loc16_,"",§2S§.§%f§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function § o§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2S§.§;n§;
      }
      
      public function §3W§(param1:Number) : void
      {
         var _loc2_:§>2§ = null;
         var _loc3_:int = this.§2;§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2;§[_loc3_];
            if(_loc2_.§?!1§())
            {
               if(this.§!G§(_loc2_,param1))
               {
                  this.§64§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§1!F§())
            {
               this.§;!0§(_loc2_,param1);
            }
            else if(this.§0g§(_loc2_))
            {
               _loc2_.§+t§(§0r§.§5L§);
               this.§64§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§+t§(§0r§.§5L§);
               this.§64§(_loc3_,false,true,true);
            }
            else if(_loc2_.§-`§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§'p§();
      }
      
      private function § !§() : void
      {
         var _loc1_:§@Q§ = null;
         for each(_loc1_ in this.§-!C§)
         {
            this.§7C§.§-K§.§[N§.DestroyJoint(_loc1_.§1-§);
         }
      }
      
      public function § l§() : Boolean
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2;§.length)
         {
            _loc2_ = this.§2;§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §0g§(param1:§>2§) : Boolean
      {
         if(param1 && param1.§0§.§+!9§() != §7g§.§0!!§ && this.§7C§.§`,§.§'J§(param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §64§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@Q§ = null;
         var _loc7_:§,r§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§>2§;
         if((_loc5_ = this.§2;§[param1]).§`U§())
         {
            ++this.§<!D§;
         }
         else if(_loc5_.§-`§())
         {
            --this.§2s§;
         }
         if(_loc5_ == this.§7C§.activeObject)
         {
            this.§7C§.activeObject = null;
         }
         if(param2)
         {
            this.§7C§.addScore(_loc5_.§0§.score,§0]§.§@Z§,true,_loc5_.§%;§().GetPosition().x,_loc5_.§%;§().GetPosition().y - 3,§2S§.§`!0§(_loc5_.§'!,§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§7C§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§0!#§(_loc5_.sprite);
         this.§"-§(_loc5_);
         for each(_loc6_ in this.§-!C§)
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
         for each(_loc7_ in this.§9!4§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§8!A§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§2;§[param1] = null;
         this.§2;§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§>2§, param2:§5b§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §0!#§(param1:Sprite) : void
      {
         if(this.§2A§.contains(param1))
         {
            this.§2A§.removeChild(param1);
            return;
         }
         if(this.§72§.contains(param1))
         {
            this.§72§.removeChild(param1);
            return;
         }
         if(this.§&V§.contains(param1))
         {
            this.§&V§.removeChild(param1);
            return;
         }
         if(this.§;l§.contains(param1))
         {
            this.§;l§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§>2§) : void
      {
         if(param1.§&!C§().toUpperCase() == "WHITE_EGG" || param1.§],§())
         {
            if(param1.§'!,§.toUpperCase() == §<5§.§9G§)
            {
               this.addExplosions(§5V§.§^!4§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§5V§.§?7§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
            }
         }
      }
      
      public function §>!"§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§64§(this.§2;§.indexOf(param1),param2,param3,param4);
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         this.§`8§.x = -param1;
         this.§`8§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§>2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2;§.length)
         {
            _loc3_ = this.§2;§[_loc2_] as §>2§;
            if(_loc3_ && _loc3_.§`U§() && _loc3_.§4!;§ > 0)
            {
               if(!param1 || _loc3_.§2!@§.mTryToBlink <= 0 && _loc3_.§2!@§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §0N§(param1:Boolean = false) : int
      {
         var _loc4_:§>2§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§2;§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2;§[_loc3_] as §>2§) && _loc4_.§`U§() && _loc4_.§4!;§ > 0)
            {
               if(!param1 || _loc4_.§2!@§.mTryToBlink <= 0 && _loc4_.§2!@§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §,<§() : int
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2;§)
         {
            if(_loc2_ && (_loc2_.§=H§() || _loc2_.§6S§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §6A§() : int
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2;§)
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
         var _loc3_:§>2§ = null;
         var _loc2_:int = this.§2;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2;§[_loc2_];
            if(_loc3_ && _loc3_.§`U§() && _loc3_.§4!;§ > 0)
            {
               _loc3_.§2!@§.mTryToScream = §1c§.§1!6§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function § 6§() : Boolean
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = this.§2;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc2_ && _loc2_.§-`§() && _loc2_.§4!;§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = this.§2;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc2_ && _loc2_.§4!;§ > 0 && _loc2_.§'F§ != §+i§.§!!@§)
            {
               if(_loc2_.§<!0§() && !_loc2_.§0!@§())
               {
                  return false;
               }
               if(_loc2_.§-`§() && _loc2_.§4!;§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §import§(param1:Boolean = false) : §>2§
      {
         var _loc5_:int = 0;
         var _loc6_:§>2§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§2;§.length;
         var _loc3_:int = 1 + Math.random() * this.§0N§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§2;§[_loc5_]) && _loc6_.§`U§() && _loc6_.§4!;§ > 0)
               {
                  if(!param1 || _loc6_.§2!@§.mTryToBlink <= 0 && _loc6_.§2!@§.mTryToScream <= 0)
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
      
      public function §,!%§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§2;§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§2;§[_loc2_] as §>2§).§0§.score;
            if((this.§2;§[_loc2_] as §>2§).§<!0§())
            {
               _loc1_ += §#;§.§?!B§.getValue() * int((this.§2;§[_loc2_] as §>2§).§8!,§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§7C§.slingshot.§,!%§());
      }
      
      public function §`!;§(param1:§>2§, param2:§>2§) : Boolean
      {
         if(param1.§-`§() && param2.§-`§())
         {
            return true;
         }
         if(!param1.§`E§() && !param2.§`E§())
         {
            return true;
         }
         return false;
      }
      
      public function §?=§() : void
      {
         this.mSardineCanAdded = true;
         this.§2s§ = 0;
      }
      
      public function objectCollision(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§1!F§() || param2.§`U§())
            {
               param2.applyDamage(param2.§8!,§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§1!F§() || param1.§`U§())
            {
               param1.applyDamage(param1.§8!,§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§?!1§() || param2.§?!1§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§`!;§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§]z§(param2.§&!C§());
         var _loc5_:Number = param1.§2F§(param2.§&!C§());
         var _loc6_:Number = param2.§]z§(param1.§&!C§());
         var _loc7_:Number = param2.§2F§(param1.§&!C§());
         var _loc8_:Number = param1.§%;§().GetMass() * param1.§%;§().GetLinearVelocity().x - param2.§%;§().GetMass() * param2.§%;§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§%;§().GetMass() * param1.§%;§().GetLinearVelocity().y - param2.§%;§().GetMass() * param2.§%;§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§4!;§);
         var _loc14_:Number = Math.max(0,param2.§4!;§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§-`§(),_loc14_ == param2.§8!,§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§-`§(),_loc13_ == param1.§8!,§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§12§(new b2Vec2(param2.§%;§().GetLinearVelocity().x * _loc18_,param2.§%;§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§12§(new b2Vec2(param1.§%;§().GetLinearVelocity().x * _loc19_,param1.§%;§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function § L§() : void
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = this.§2;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc2_ != null && _loc2_.§`U§())
            {
               this.§64§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §6b§() : void
      {
         var _loc2_:§>2§ = null;
         var _loc1_:int = this.§2;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2;§[_loc1_] as §>2§;
            if(_loc2_ != null && _loc2_.§],§())
            {
               this.§64§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §"q§() : int
      {
         return this.§2;§.length;
      }
      
      public function §4%§(param1:§9R§) : void
      {
         var _loc4_:§>2§ = null;
         var _loc5_:§"!D§ = null;
         var _loc6_:§%!?§ = null;
         var _loc7_:§@Q§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2;§.length)
         {
            if((_loc4_ = this.§2;§[_loc2_]).§1@§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §"!D§()).angle = _loc4_.§+O§();
                  _loc5_.id = _loc4_.§'!,§;
                  _loc5_.x = _loc4_.§%;§().GetPosition().x;
                  _loc5_.y = _loc4_.§%;§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-!C§.length)
         {
            _loc7_ = this.§-!C§[_loc3_];
            _loc6_ = new §%!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§&!#§,_loc7_.§!_§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§9!'§,_loc7_.motorSpeed,_loc7_.§7!G§,_loc7_.maxTorque);
            param1.§8P§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §,g§() : void
      {
         var _loc1_:int = 0;
         while(this.§2;§.length > _loc1_)
         {
            if(this.§2;§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§>!"§(this.§2;§[_loc1_]);
            }
         }
      }
      
      public function §;!?§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2;§.length)
         {
            if(this.§2;§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2;§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§`!7§ = param1;
         this.§[<§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2;§.length)
         {
            if(this.§2;§[_loc2_].isTexture())
            {
               this.§2;§[_loc2_].sprite.visible = !this.§`!7§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§=y§ = param1;
      }
      
      public function §=7§() : Boolean
      {
         return this.§=y§;
      }
      
      public function §=!D§() : int
      {
         return this.§-v§;
      }
      
      public function §;!5§() : int
      {
         return this.§<!D§;
      }
      
      public function §'§(param1:String) : §>2§
      {
         var _loc3_:§>2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§2;§.length)
         {
            _loc3_ = this.§2;§[_loc2_] as §>2§;
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
