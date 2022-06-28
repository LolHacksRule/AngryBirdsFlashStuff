package § !3§
{
   import §!c§.§2E§;
   import §!c§.§4F§;
   import §!c§.§8M§;
   import §!c§.§<q§;
   import §!c§.§`K§;
   import §#k§.§"!D§;
   import §#k§.§%!?§;
   import §#k§.§,r§;
   import §#k§.§@Q§;
   import §%$§.§3V§;
   import §%-§.§%!,§;
   import §%-§.Sprite;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §%x§.§;C§;
   import §2!<§.§?!?§;
   import §<h§.§]^§;
   import §>!C§.§<-§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!"§.Texture;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!9§
   {
       
      
      protected var §+E§:Vector.<§'§>;
      
      protected var §]!H§:int;
      
      public var §7C§:§#;§;
      
      public var §1&§:Vector.<§,-§>;
      
      protected var §,!6§:Sprite;
      
      protected var §&V§:Sprite;
      
      private var §72§:Sprite;
      
      private var §`8§:Sprite;
      
      private var §2A§:Sprite;
      
      protected var §;l§:Vector.<Texture>;
      
      protected var §2x§:Vector.<§@Q§>;
      
      protected var §<o§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §[c§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §`!E§:Boolean = false;
      
      protected var §!!§:Number;
      
      protected var §]f§:int;
      
      protected var §,=§:Vector.<§,r§>;
      
      protected var §9!4§:int = 0;
      
      private var §2s§:int = 0;
      
      private var §<!D§:int = 0;
      
      private var §-v§:int;
      
      private var §6,§:Boolean = true;
      
      private var §`!7§:Boolean = true;
      
      public function §]!9§(param1:§#;§, param2:§<-§, param3:Sprite)
      {
         var _loc5_:§@Q§ = null;
         var _loc6_:§"!D§ = null;
         var _loc7_:§'§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§'§ = null;
         var _loc11_:§'§ = null;
         this.§+E§ = new Vector.<§'§>();
         this.§1&§ = new Vector.<§,-§>();
         this.§;l§ = new Vector.<Texture>();
         this.§!!§ = this.§#!;§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§,=§ = new Vector.<§,r§>();
         super();
         this.§7C§ = param1;
         this.§]!H§ = 0;
         this.§&V§ = param3;
         this.§&V§.§4!5§ = false;
         this.§`!7§ = true;
         this.§6,§ = true;
         this.§,!6§ = new Sprite();
         this.§72§ = new Sprite();
         this.§`8§ = new Sprite();
         this.§2A§ = new Sprite();
         this.§&V§.addChild(this.§,!6§);
         this.§&V§.addChild(this.§72§);
         this.§&V§.addChild(this.§`8§);
         this.§&V§.addChild(this.§2A§);
         this.addObject(§3V§.§9S§(param2.theme).§@!2§,(this.§7C§.§`,§.§+!0§ + this.§7C§.§`,§.§0!?§) / 2,this.§7C§.§`,§.§=s§ + §;C§.§7!5§);
         this.§-v§ = this.§+E§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§^?§)
         {
            _loc6_ = param2.§%t§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§=y§();
         this.§[<§(true);
         this.§2x§ = new Vector.<§@Q§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§ M§)
         {
            this.§2x§.push(§@Q§.§>d§(param2.§!6§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§2x§)
         {
            _loc8_ = _loc5_.index1 + this.§-v§;
            _loc9_ = _loc5_.index2 + this.§-v§;
            if(_loc8_ < this.§+E§.length && _loc9_ < this.§+E§.length)
            {
               _loc10_ = this.§+E§[_loc8_];
               _loc11_ = this.§+E§[_loc9_];
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
                  this.§,=§.push(new §,r§(_loc8_,_loc9_,_loc5_.§ 0§));
               }
            }
         }
      }
      
      protected function get §#!;§() : Class
      {
         return §#!;§;
      }
      
      public function get §^!9§() : Sprite
      {
         return this.§2A§;
      }
      
      public function get §6N§() : Sprite
      {
         return this.§&V§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§+E§.length > 0)
         {
            this.§0g§(0);
         }
         this.§+E§ = null;
         this.§,=§ = null;
         if(this.§&V§)
         {
            this.§&V§.dispose();
            this.§&V§ = null;
            this.§,!6§ = null;
            this.§2A§ = null;
            this.§72§ = null;
            this.§`8§ = null;
         }
         while(this.§;l§.length > 0)
         {
            _loc1_ = this.§;l§.pop();
            this.§7C§.textureManager.§?K§(_loc1_);
         }
      }
      
      private function §[<§(param1:Boolean) : void
      {
         this.§,!6§.visible = param1;
      }
      
      private function §=y§() : void
      {
         var _loc3_:§'§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§%!,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§'§> = new Vector.<§'§>();
         for each(_loc3_ in this.§+E§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§&V§);
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
            this.§&!&§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§<j§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§7C§.textureManager.§4K§(_loc10_);
            this.§;l§.push(_loc12_);
            (_loc13_ = new §%!,§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§,!6§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §<j§(param1:Vector.<§'§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§'§ = null;
         var _loc11_:§<q§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§<?§.shape).§'C§();
            _loc13_ = new Rectangle(_loc12_[0].x / §#;§.§`!2§ * param6,_loc12_[0].y / §#;§.§`!2§ * param6,(_loc12_[1].x - _loc12_[0].x) / §#;§.§`!2§ * param6,(_loc12_[1].y - _loc12_[0].y) / §#;§.§`!2§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§0i§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §&!&§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc5_:§]^§;
         if(_loc5_ = this.§7C§.backgroundTextureManager.§-+§(_loc4_))
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
      
      public function §,a§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §'§
      {
         var _loc10_:§'§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §75§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §6&§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §3'§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §#!"§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §!Z§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §1+§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §9u§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §1?§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§9!4§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §'§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§'§;
         if((_loc11_ = this.§'!&§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§6,§;
            this.§+E§[this.§+E§.length] = _loc11_;
         }
         else
         {
            this.§+E§[this.§+E§.length] = _loc11_;
         }
         if(_loc11_ is §1?§ && !_loc11_.§`U§())
         {
            this.§72§.addChild(_loc10_);
            ++this.§9!4§;
         }
         else if(_loc11_.front || param9)
         {
            this.§2A§.addChild(_loc10_);
         }
         else
         {
            this.§`8§.addChild(_loc10_);
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
      
      public function §>d§(param1:int, param2:§'§, param3:§'§) : §@Q§
      {
         var _loc6_:§@Q§ = null;
         var _loc4_:int = this.§+E§.indexOf(param2) - this.§-v§;
         var _loc5_:int = this.§+E§.indexOf(param3) - this.§-v§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@Q§(§%!?§.§4+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(_loc6_.§>k§(param2,param3));
            this.§2x§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function § Q§(param1:§@Q§) : void
      {
         if(!(param1.§1-§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§'§ = this.§%t§(param1.index1 + this.§-v§);
         var _loc3_:§'§ = this.§%t§(param1.index2 + this.§-v§);
         this.§7C§.§-K§.§[N§.DestroyJoint(param1.§1-§);
         param1.§1-§ = this.§7C§.§-K§.§[N§.CreateJoint(param1.§>k§(_loc2_,_loc3_));
      }
      
      public function §<S§(param1:§'§) : Vector.<§@Q§>
      {
         var _loc4_:§@Q§ = null;
         var _loc2_:Vector.<§@Q§> = new Vector.<§@Q§>();
         var _loc3_:int = this.§+E§.indexOf(param1) - this.§-v§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§2x§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §"l§() : Vector.<§@Q§>
      {
         return this.§2x§;
      }
      
      public function §@`§(param1:§'§) : void
      {
         var _loc2_:int = this.§+E§.indexOf(param1) - this.§-v§;
         var _loc3_:int = this.§2x§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2x§[_loc3_].index1 == _loc2_ || this.§2x§[_loc3_].index2 == _loc2_)
            {
               this.§2x§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §"-§(param1:§'§, param2:§'§) : Boolean
      {
         var _loc3_:int = this.§+E§.indexOf(param1) - this.§-v§;
         var _loc4_:int = this.§+E§.indexOf(param2) - this.§-v§;
         var _loc5_:int = this.§2x§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§2x§[_loc5_].index1 == _loc3_ && this.§2x§[_loc5_].index2 == _loc4_ || this.§2x§[_loc5_].index1 == _loc4_ && this.§2x§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §'!&§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §'§
      {
         var _loc10_:§'§ = null;
         var _loc11_:§2E§ = null;
         var _loc12_:§2E§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§,a§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§<!D§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §`K§.§!P§(param2);
            _loc10_ = new §9G§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §`K§.§!P§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §`K§.§!P§(param2);
            }
            if(_loc12_.§'!,§ == §2E§.§ k§ || _loc12_.§'!,§ == §2E§.§try§)
            {
               _loc10_ = new §7! §(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §'§(this,param1,this.§7C§.§-K§.§[N§,this.§7C§,this.§]!H§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §5!3§(param1:Number) : void
      {
         var _loc3_:§'§ = null;
         var _loc2_:int = this.§+E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+E§[_loc2_] as §'§;
            if(_loc3_)
            {
               if(_loc3_.§7j§ <= 0)
               {
                  this.§0g§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§12§();
                  _loc3_.§3q§();
               }
            }
            _loc2_--;
         }
         this.§&'§(param1);
      }
      
      protected function §&'§(param1:Number) : void
      {
         var _loc3_:§@Q§ = null;
         var _loc4_:§,r§ = null;
         var _loc5_:int = 0;
         var _loc6_:§'§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§,=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§,=§[_loc2_]).§8!A§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§;!5§("block_" + _loc5_))
                  {
                     this.§>!"§(_loc6_,true,true,true);
                  }
                  this.§,=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§2x§)
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
         this.§1&§.push(§,-§.createExplosion(param1,param2,param3));
         §?!?§.§#'§("TntExplosions","ChannelExplosions");
      }
      
      public function §8k§(param1:Number, param2:Number) : int
      {
         var _loc4_:§'§ = null;
         var _loc3_:int = this.§+E§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+E§[_loc3_])
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
      
      public function §<"§(param1:Number, param2:Number) : §'§
      {
         var _loc4_:§'§ = null;
         var _loc3_:int = this.§+E§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§+E§[_loc3_])
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
      
      public function §%t§(param1:int) : §'§
      {
         return this.§+E§[param1];
      }
      
      public function §2j§(param1:Number, param2:Number) : void
      {
         var _loc4_:§'§ = null;
         var _loc3_:int = this.§+E§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§+E§[_loc3_] as §'§).§2j§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&;§(param1:§'§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§'§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§7j§ == param1.§`9§)
         {
            if(this.§!!§ < this.§#!;§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§!!§ += param2 * this.§#!;§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§9! §().SetAngularVelocity(param2 * this.§!!§);
            this.§]f§ = 0;
         }
         else if(this.§]f§ == 0)
         {
            this.§]f§ = this.§7C§.§3!F§;
         }
         if(param1.§`E§() || this.§ l§(param1) || this.§]f§ > 0 && this.§7C§.§3!F§ > this.§]f§ + this.§#!;§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§#!;§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §?!?§.§#'§("Mighty_Eagle_Selected_1","ChannelBird");
                  §?!?§.§#'§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§9! §().GetPosition().x - this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§9! §().GetPosition().y - this.§#!;§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§ l§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§#!;§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§]f§ = 0;
                  _loc7_.§"0§.§ else§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §!G§(param1:§'§, param2:Number) : Boolean
      {
         var _loc5_:§'§ = null;
         if(this.§#!;§.MIGHTY_EAGLE_USE_SHADE && !this.§`!E§ && this.mMightyEagleTimer > this.§#!;§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§`!E§ = true;
            this.§7C§.§8G§();
         }
         this.mMightyEagleTimer += param2;
         this.§7C§.particles.§ t§(§2S§.§4"§,§5b§.§?D§,§2S§.§9!>§,param1.§9! §().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§9! §().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§2S§.§#!2§(param1.§+i§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§[;§(this.§#!;§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§[c§)
            {
               this.§[c§ = false;
               this.§7C§.§&`§();
               param1.§3%§(§8M§.§!$§);
               this.mSardineCanAdded = false;
               param1.§"0§.§?4§ = true;
               param1.§"0§.§&w§();
               for each(_loc5_ in this.§+E§)
               {
                  if(_loc5_ && _loc5_.§-`§())
                  {
                     _loc5_.§9! §().SetAwake(true);
                     _loc5_.§9! §().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§3W§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§+E§)
               {
                  if(_loc5_ && _loc5_.§-`§())
                  {
                     _loc5_.applyDamage(_loc5_.§`9§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§9! §().GetPosition().y >= -5.5;
            this.§[c§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§^m§(param2,new Point(this.§#!;§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§#!;§.MIGHTY_EAGLE_Y_CHANGE),this.§#!;§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §;!0§() : void
      {
         var _loc1_:§,-§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§'§ = null;
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
         while(this.§1&§.length > 0)
         {
            _loc1_ = this.§1&§.shift();
            _loc2_ = _loc1_.§4w§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§+E§)
            {
               _loc8_ = _loc6_.§9! §().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§9! §().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§4w§)
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
                     _loc6_.§9! §().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§+r§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§7C§.particles.§ t§(this.§'p§(_loc1_.type),§5b§.§?D§,§2S§.§>t§,_loc3_,_loc4_,600,"",§2S§.§%f§,0,0,0,0,1,20,true);
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
      
      protected function §'p§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2S§.§;n§;
      }
      
      public function § o§(param1:Number) : void
      {
         var _loc2_:§'§ = null;
         var _loc3_:int = this.§+E§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§+E§[_loc3_];
            if(_loc2_.§1!F§())
            {
               if(this.§&;§(_loc2_,param1))
               {
                  this.§0g§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§`U§())
            {
               this.§!G§(_loc2_,param1);
            }
            else if(this.§ l§(_loc2_))
            {
               _loc2_.§3%§(§8M§.§@B§);
               this.§0g§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§3%§(§8M§.§@B§);
               this.§0g§(_loc3_,false,true,true);
            }
            else if(_loc2_.§0U§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§;!0§();
      }
      
      private function §3W§() : void
      {
         var _loc1_:§@Q§ = null;
         for each(_loc1_ in this.§2x§)
         {
            this.§7C§.§-K§.§[N§.DestroyJoint(_loc1_.§1-§);
         }
      }
      
      public function § !§() : Boolean
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+E§.length)
         {
            _loc2_ = this.§+E§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function § l§(param1:§'§) : Boolean
      {
         if(param1 && param1.§<?§.§<!E§() != §4F§.§7i§ && this.§7C§.§`,§.§'J§(param1.§9! §().GetPosition().x,param1.§9! §().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §0g§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@Q§ = null;
         var _loc7_:§,r§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§'§;
         if((_loc5_ = this.§+E§[param1]).§-`§())
         {
            ++this.§2s§;
         }
         else if(_loc5_.§0U§())
         {
            --this.§9!4§;
         }
         if(_loc5_ == this.§7C§.activeObject)
         {
            this.§7C§.activeObject = null;
         }
         if(param2)
         {
            this.§7C§.addScore(_loc5_.§<?§.score,§0]§.§@Z§,true,_loc5_.§9! §().GetPosition().x,_loc5_.§9! §().GetPosition().y - 3,§2S§.§`!0§(_loc5_.§+i§));
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
         this.§64§(_loc5_.sprite);
         this.§@`§(_loc5_);
         for each(_loc6_ in this.§2x§)
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
         for each(_loc7_ in this.§,=§)
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
         this.§+E§[param1] = null;
         this.§+E§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§'§, param2:§5b§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §64§(param1:Sprite) : void
      {
         if(this.§`8§.contains(param1))
         {
            this.§`8§.removeChild(param1);
            return;
         }
         if(this.§72§.contains(param1))
         {
            this.§72§.removeChild(param1);
            return;
         }
         if(this.§,!6§.contains(param1))
         {
            this.§,!6§.removeChild(param1);
            return;
         }
         if(this.§2A§.contains(param1))
         {
            this.§2A§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§'§) : void
      {
         if(param1.§2F§().toUpperCase() == "WHITE_EGG" || param1.§6S§())
         {
            if(param1.§+i§.toUpperCase() == §#!"§.§<5§)
            {
               this.addExplosions(§,-§.§]b§,param1.§9! §().GetPosition().x,param1.§9! §().GetPosition().y);
            }
            else
            {
               this.addExplosions(§,-§.§^!4§,param1.§9! §().GetPosition().x,param1.§9! §().GetPosition().y);
            }
         }
      }
      
      public function §>!"§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§0g§(this.§+E§.indexOf(param1),param2,param3,param4);
      }
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         this.§&V§.x = -param1;
         this.§&V§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+E§.length)
         {
            _loc3_ = this.§+E§[_loc2_] as §'§;
            if(_loc3_ && _loc3_.§-`§() && _loc3_.§7j§ > 0)
            {
               if(!param1 || _loc3_.§"0§.mTryToBlink <= 0 && _loc3_.§"0§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §0!#§(param1:Boolean = false) : int
      {
         var _loc4_:§'§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§+E§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§+E§[_loc3_] as §'§) && _loc4_.§-`§() && _loc4_.§7j§ > 0)
            {
               if(!param1 || _loc4_.§"0§.mTryToBlink <= 0 && _loc4_.§"0§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §0N§() : int
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+E§)
         {
            if(_loc2_ && (_loc2_.§?!1§() || _loc2_.§=H§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,<§() : int
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+E§)
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
         var _loc3_:§'§ = null;
         var _loc2_:int = this.§+E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+E§[_loc2_];
            if(_loc3_ && _loc3_.§-`§() && _loc3_.§7j§ > 0)
            {
               _loc3_.§"0§.mTryToScream = §[4§.§;!E§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §6A§() : Boolean
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = this.§+E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+E§[_loc1_] as §'§;
            if(_loc2_ && _loc2_.§0U§() && _loc2_.§7j§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = this.§+E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+E§[_loc1_] as §'§;
            if(_loc2_ && _loc2_.§7j§ > 0 && _loc2_.§'!,§ != §2E§.§6!6§)
            {
               if(_loc2_.§4!#§() && !_loc2_.§`E§())
               {
                  return false;
               }
               if(_loc2_.§0U§() && _loc2_.§7j§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § 6§(param1:Boolean = false) : §'§
      {
         var _loc5_:int = 0;
         var _loc6_:§'§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§+E§.length;
         var _loc3_:int = 1 + Math.random() * this.§0!#§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§+E§[_loc5_]) && _loc6_.§-`§() && _loc6_.§7j§ > 0)
               {
                  if(!param1 || _loc6_.§"0§.mTryToBlink <= 0 && _loc6_.§"0§.mTryToScream <= 0)
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
         var _loc2_:int = this.§+E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§+E§[_loc2_] as §'§).§<?§.score;
            if((this.§+E§[_loc2_] as §'§).§4!#§())
            {
               _loc1_ += §#;§.§?!B§.getValue() * int((this.§+E§[_loc2_] as §'§).§`9§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§7C§.slingshot.§,!%§());
      }
      
      public function §import§(param1:§'§, param2:§'§) : Boolean
      {
         if(param1.§0U§() && param2.§0U§())
         {
            return true;
         }
         if(!param1.§7K§() && !param2.§7K§())
         {
            return true;
         }
         return false;
      }
      
      public function §`!;§() : void
      {
         this.mSardineCanAdded = true;
         this.§9!4§ = 0;
      }
      
      public function objectCollision(param1:§'§, param2:§'§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§`U§() || param2.§-`§())
            {
               param2.applyDamage(param2.§`9§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§`U§() || param1.§-`§())
            {
               param1.applyDamage(param1.§`9§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§#!;§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§1!F§() || param2.§1!F§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§import§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§+t§(param2.§2F§());
         var _loc5_:Number = param1.§]z§(param2.§2F§());
         var _loc6_:Number = param2.§+t§(param1.§2F§());
         var _loc7_:Number = param2.§]z§(param1.§2F§());
         var _loc8_:Number = param1.§9! §().GetMass() * param1.§9! §().GetLinearVelocity().x - param2.§9! §().GetMass() * param2.§9! §().GetLinearVelocity().x;
         var _loc9_:Number = param1.§9! §().GetMass() * param1.§9! §().GetLinearVelocity().y - param2.§9! §().GetMass() * param2.§9! §().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§7j§);
         var _loc14_:Number = Math.max(0,param2.§7j§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§0U§(),_loc14_ == param2.§`9§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§0U§(),_loc13_ == param1.§`9§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§>c§(new b2Vec2(param2.§9! §().GetLinearVelocity().x * _loc18_,param2.§9! §().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§>c§(new b2Vec2(param1.§9! §().GetLinearVelocity().x * _loc19_,param1.§9! §().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function § L§() : void
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = this.§+E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+E§[_loc1_] as §'§;
            if(_loc2_ != null && _loc2_.§-`§())
            {
               this.§0g§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §?=§() : void
      {
         var _loc2_:§'§ = null;
         var _loc1_:int = this.§+E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+E§[_loc1_] as §'§;
            if(_loc2_ != null && _loc2_.§6S§())
            {
               this.§0g§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §6b§() : int
      {
         return this.§+E§.length;
      }
      
      public function §"q§(param1:§<-§) : void
      {
         var _loc4_:§'§ = null;
         var _loc5_:§"!D§ = null;
         var _loc6_:§%!?§ = null;
         var _loc7_:§@Q§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+E§.length)
         {
            if((_loc4_ = this.§+E§[_loc2_]).§[&§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §"!D§()).angle = _loc4_.§0i§();
                  _loc5_.id = _loc4_.§+i§;
                  _loc5_.x = _loc4_.§9! §().GetPosition().x;
                  _loc5_.y = _loc4_.§9! §().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2x§.length)
         {
            _loc7_ = this.§2x§[_loc3_];
            _loc6_ = new §%!?§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§&!#§,_loc7_.§!_§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§9!'§,_loc7_.motorSpeed,_loc7_.§7!G§,_loc7_.maxTorque);
            param1.§4! §(_loc6_);
            _loc3_++;
         }
      }
      
      public function §,g§() : void
      {
         var _loc1_:int = 0;
         while(this.§+E§.length > _loc1_)
         {
            if(this.§+E§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§>!"§(this.§+E§[_loc1_]);
            }
         }
      }
      
      public function §;!?§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§+E§.length)
         {
            if(this.§+E§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§+E§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§6,§ = param1;
         this.§[<§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+E§.length)
         {
            if(this.§+E§[_loc2_].isTexture())
            {
               this.§+E§[_loc2_].sprite.visible = !this.§6,§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§`!7§ = param1;
      }
      
      public function §4%§() : Boolean
      {
         return this.§`!7§;
      }
      
      public function §=7§() : int
      {
         return this.§<!D§;
      }
      
      public function §=!D§() : int
      {
         return this.§2s§;
      }
      
      public function §;!5§(param1:String) : §'§
      {
         var _loc3_:§'§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+E§.length)
         {
            _loc3_ = this.§+E§[_loc2_] as §'§;
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
