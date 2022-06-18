package §`"§
{
   import § "§.§;4§;
   import § I§.§,!?§;
   import §!T§.§'2§;
   import §!T§.§2!!§;
   import §!T§.§9n§;
   import §!T§.§^^§;
   import §!T§.§`P§;
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §1!?§.§7_§;
   import §9!?§.§%!+§;
   import §9!?§.§&r§;
   import §9!?§.§,a§;
   import §9!?§.§^]§;
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §]7§.§#G§;
   import §]7§.§3V§;
   import §]7§.§53§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!;§
   {
       
      
      protected var §7D§:Vector.<§"e§>;
      
      protected var §!!1§:int;
      
      public var §]!9§:§^]§;
      
      public var §0T§:Vector.<§1p§>;
      
      protected var §8g§:Sprite;
      
      protected var §!m§:Sprite;
      
      private var §#;§:Sprite;
      
      private var §^l§:Sprite;
      
      private var §9!E§:Sprite;
      
      protected var §[^§:Vector.<Texture>;
      
      protected var §9!F§:Vector.<§53§>;
      
      protected var §+@§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §=v§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §!h§:Boolean = false;
      
      protected var §"2§:Number = 0.07;
      
      protected var §-=§:int;
      
      protected var §3J§:int = 0;
      
      private var §1i§:int = 0;
      
      private var §"^§:int = 0;
      
      private var §'D§:int;
      
      private var §-!!§:Boolean = true;
      
      private var §#r§:Boolean = true;
      
      public function §?!;§(param1:§^]§, param2:§;4§, param3:Sprite)
      {
         var _loc5_:§53§ = null;
         var _loc6_:§#G§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§"e§ = null;
         var _loc10_:§"e§ = null;
         this.§7D§ = new Vector.<§"e§>();
         this.§0T§ = new Vector.<§1p§>();
         this.§[^§ = new Vector.<Texture>();
         super();
         this.§]!9§ = param1;
         this.§!!1§ = 0;
         this.§!m§ = param3;
         this.§!m§.§>!'§ = false;
         this.§#r§ = true;
         this.§-!!§ = true;
         this.§8g§ = new Sprite();
         this.§#;§ = new Sprite();
         this.§^l§ = new Sprite();
         this.§9!E§ = new Sprite();
         this.§!m§.addChild(this.§8g§);
         this.§!m§.addChild(this.§#;§);
         this.§!m§.addChild(this.§^l§);
         this.§!m§.addChild(this.§9!E§);
         this.addObject(§,!?§.§'t§(param2.theme).§4!1§,(this.§]!9§.§2X§.§ !%§ + this.§]!9§.§2X§.§"&§) / 2,this.§]!9§.§2X§.§;!#§ + §&r§.§0§);
         this.§'D§ = this.§7D§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§+N§)
         {
            _loc6_ = param2.§7!6§(_loc4_);
            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            _loc4_++;
         }
         this.§<!F§();
         this.§ true§(true);
         this.§9!F§ = new Vector.<§53§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§'!>§)
         {
            this.§9!F§.push(§53§.§,!2§(param2.§with§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§9!F§)
         {
            _loc7_ = _loc5_.index1 + this.§'D§;
            _loc8_ = _loc5_.index2 + this.§'D§;
            if(_loc7_ < this.§7D§.length && _loc8_ < this.§7D§.length)
            {
               _loc9_ = this.§7D§[_loc7_];
               _loc10_ = this.§7D§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc5_.§43§ = this.§]!9§.§@R§.§7U§.CreateJoint(_loc5_.§!D§(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §2!6§() : Sprite
      {
         return this.§9!E§;
      }
      
      public function get §@u§() : Sprite
      {
         return this.§!m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§7D§.length > 0)
         {
            this.§-J§(0);
         }
         this.§7D§ = null;
         if(this.§!m§)
         {
            this.§!m§.dispose();
            this.§!m§ = null;
            this.§8g§ = null;
            this.§9!E§ = null;
            this.§#;§ = null;
            this.§^l§ = null;
         }
         while(this.§[^§.length > 0)
         {
            _loc1_ = this.§[^§.pop();
            this.§]!9§.textureManager.§"p§(_loc1_);
         }
      }
      
      private function § true§(param1:Boolean) : void
      {
         this.§8g§.visible = param1;
      }
      
      private function §<!F§() : void
      {
         var _loc3_:§"e§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§"!=§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§"e§> = new Vector.<§"e§>();
         for each(_loc3_ in this.§7D§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§!m§);
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
            this.§1!D§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§ m§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]!9§.textureManager.§"M§(_loc10_);
            this.§[^§.push(_loc12_);
            (_loc13_ = new §"!=§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§8g§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function § m§(param1:Vector.<§"e§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§"e§ = null;
         var _loc11_:§'2§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§3-§.shape).§?z§();
            _loc13_ = new Rectangle(_loc12_[0].x / §^]§.§ u§ * param6,_loc12_[0].y / §^]§.§ u§ * param6,(_loc12_[1].x - _loc12_[0].x) / §^]§.§ u§ * param6,(_loc12_[1].y - _loc12_[0].y) / §^]§.§ u§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§2c§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §1!D§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]!9§.background.§0]§();
         var _loc5_:§#H§;
         if(_loc5_ = this.§]!9§.backgroundTextureManager.§&P§(_loc4_))
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
      
      public function §&a§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"e§
      {
         var _loc10_:§"e§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §1!B§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §>!+§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §-f§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §<4§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §throw§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §[§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §,!,§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §&>§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§3J§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"e§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§"e§;
         if((_loc11_ = this.§,!$§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)) is §&>§)
         {
            ++this.§3J§;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§-!!§;
            this.§7D§[this.§7D§.length] = _loc11_;
         }
         else
         {
            this.§7D§[this.§7D§.length] = _loc11_;
         }
         if(_loc11_ is §&>§ && !_loc11_.§6-§())
         {
            this.§#;§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§9!E§.addChild(_loc10_);
         }
         else
         {
            this.§^l§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]!9§.§[!F§(_loc11_);
         }
         if(param6)
         {
            this.§]!9§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §,!2§(param1:int, param2:§"e§, param3:§"e§) : §53§
      {
         var _loc6_:§53§ = null;
         var _loc4_:int = this.§7D§.indexOf(param2) - this.§'D§;
         var _loc5_:int = this.§7D§.indexOf(param3) - this.§'D§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §53§(§3V§.§9<§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§43§ = this.§]!9§.§@R§.§7U§.CreateJoint(_loc6_.§!D§(param2,param3));
            this.§9!F§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function § @§(param1:§53§) : void
      {
         if(!(param1.§43§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§"e§ = this.§7!6§(param1.index1 + this.§'D§);
         var _loc3_:§"e§ = this.§7!6§(param1.index2 + this.§'D§);
         this.§]!9§.§@R§.§7U§.DestroyJoint(param1.§43§);
         param1.§43§ = this.§]!9§.§@R§.§7U§.CreateJoint(param1.§!D§(_loc2_,_loc3_));
      }
      
      public function §?d§(param1:§"e§) : Vector.<§53§>
      {
         var _loc4_:§53§ = null;
         var _loc2_:Vector.<§53§> = new Vector.<§53§>();
         var _loc3_:int = this.§7D§.indexOf(param1) - this.§'D§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§9!F§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §=y§() : Vector.<§53§>
      {
         return this.§9!F§;
      }
      
      public function §<!>§(param1:§"e§) : void
      {
         var _loc2_:int = this.§7D§.indexOf(param1) - this.§'D§;
         var _loc3_:int = this.§9!F§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§9!F§[_loc3_].index1 == _loc2_ || this.§9!F§[_loc3_].index2 == _loc2_)
            {
               this.§9!F§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §!!0§(param1:§"e§, param2:§"e§) : Boolean
      {
         var _loc3_:int = this.§7D§.indexOf(param1) - this.§'D§;
         var _loc4_:int = this.§7D§.indexOf(param2) - this.§'D§;
         var _loc5_:int = this.§9!F§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§9!F§[_loc5_].index1 == _loc3_ && this.§9!F§[_loc5_].index2 == _loc4_ || this.§9!F§[_loc5_].index1 == _loc4_ && this.§9!F§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §,!$§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"e§
      {
         var _loc10_:§"e§ = null;
         var _loc11_:§9n§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§&a§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§"^§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §^6§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §2!!§.§2V§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §2!!§.§2V§(param2);
            }
            if(_loc11_.§8V§ == §9n§.§[P§ || _loc11_.§8V§ == §9n§.§`!&§)
            {
               _loc10_ = new §-!1§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §"e§(this,param1,this.§]!9§.§@R§.§7U§,this.§]!9§,this.§!!1§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §+t§() : void
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = this.§7D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7D§[_loc1_] as §"e§;
            if(_loc2_)
            {
               if(_loc2_.§`h§ <= 0)
               {
                  this.§-J§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§]!,§();
                  _loc2_.§1Q§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§0T§.push(§1p§.createExplosion(param1,param2,param3));
         §7_§.§4!5§("TntExplosions","ChannelExplosions");
      }
      
      public function §'Z§(param1:Number, param2:Number) : int
      {
         var _loc4_:§"e§ = null;
         var _loc3_:int = this.§7D§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7D§[_loc3_])
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
      
      public function §=!F§(param1:Number, param2:Number) : §"e§
      {
         var _loc4_:§"e§ = null;
         var _loc3_:int = this.§7D§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7D§[_loc3_])
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
      
      public function §7!6§(param1:int) : §"e§
      {
         return this.§7D§[param1];
      }
      
      public function §,K§(param1:Number, param2:Number) : void
      {
         var _loc4_:§"e§ = null;
         var _loc3_:int = this.§7D§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7D§[_loc3_] as §"e§).§,K§(param2,param1);
            _loc3_--;
         }
      }
      
      private function § !"§(param1:§"e§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§"e§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§`h§ == param1.§'R§)
         {
            if(this.§"2§ < §,a§.§@!6§)
            {
               this.§"2§ += param2 * §,a§.§3,§;
            }
            param1.§]d§().SetAngularVelocity(param2 * this.§"2§);
            this.§-=§ = 0;
         }
         else if(this.§-=§ == 0)
         {
            this.§-=§ = this.§]!9§.§8!A§;
         }
         if(param1.§&c§() || this.§[8§(param1) || this.§-=§ > 0 && this.§]!9§.§8!A§ > this.§-=§ + §,a§.§2E§)
         {
            if(this.mMightyEagleTimer < §,a§.§@!&§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §,a§.§?!B§ && _loc4_ > §,a§.§?!B§)
               {
                  §7_§.§4!5§("Mighty_Eagle_Selected_1","ChannelBird");
                  §7_§.§4!5§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §,a§.§@!&§)
               {
                  _loc5_ = param1.§]d§().GetPosition().x - §,a§.§1;§;
                  _loc6_ = param1.§]d§().GetPosition().y - §,a§.§1;§ * §,a§.§2!3§ * 1.07;
                  if(this.§[8§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§,a§.§'K§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§-=§ = 0;
                  _loc7_.§>b§.§!y§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §]!=§(param1:§"e§, param2:Number) : Boolean
      {
         var _loc5_:§"e§ = null;
         if(!this.§!h§ && this.mMightyEagleTimer > §,a§.§3!§)
         {
            this.§!h§ = true;
            this.§]!9§.§@B§();
         }
         this.mMightyEagleTimer += param2;
         this.§]!9§.particles.§]1§(§-V§.§&§,§2x§.§3!6§,§-V§.§?P§,param1.§]d§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§]d§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§-V§.§3!;§(param1.§"]§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§ c§(§,a§.§3!3§ * param2);
            _loc4_ = -1;
            if(this.§=v§)
            {
               this.§=v§ = false;
               this.§]!9§.§get §();
               param1.§0Z§(§`P§.§9r§);
               this.mSardineCanAdded = false;
               param1.§>b§.§^x§ = true;
               param1.§>b§.§0X§();
               for each(_loc5_ in this.§7D§)
               {
                  if(_loc5_ && _loc5_.§6D§())
                  {
                     _loc5_.§]d§().SetAwake(true);
                     _loc5_.§]d§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§,!5§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§7D§)
               {
                  if(_loc5_ && _loc5_.§6D§())
                  {
                     _loc5_.applyDamage(_loc5_.§'R§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§]d§().GetPosition().y >= -5.5;
            this.§=v§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§^J§(param2,new Point(1,_loc4_ * §,a§.§2!3§),§,a§.§#!D§);
         return false;
      }
      
      private function §]!-§() : void
      {
         var _loc1_:§1p§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§"e§ = null;
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
         while(this.§0T§.length > 0)
         {
            _loc1_ = this.§0T§.shift();
            _loc2_ = _loc1_.§0j§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§7D§)
            {
               _loc8_ = _loc6_.§]d§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§]d§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§0j§)
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
                     _loc6_.§]d§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§[Z§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§]!9§.particles.§]1§(this.§`Q§(_loc1_.type),§2x§.§3!6§,§-V§.§%Z§,_loc3_,_loc4_,600,"",§-V§.§&!9§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]!9§.particles.§]1§(§-V§.§'e§,§2x§.§3!6§,§-V§.§?P§,_loc3_,_loc4_,_loc16_,"",§-V§.§&!9§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §`Q§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §-V§.§0!6§;
      }
      
      public function §9!§(param1:Number) : void
      {
         var _loc2_:§"e§ = null;
         var _loc3_:int = this.§7D§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7D§[_loc3_];
            if(_loc2_.§8p§())
            {
               if(this.§ !"§(_loc2_,param1))
               {
                  this.§-J§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§6-§())
            {
               this.§]!=§(_loc2_,param1);
            }
            else if(this.§[8§(_loc2_))
            {
               _loc2_.§0Z§(§`P§.§6k§);
               this.§-J§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§0Z§(§`P§.§6k§);
               this.§-J§(_loc3_,false,true,true);
            }
            else if(_loc2_.§^C§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§]!-§();
      }
      
      private function §,!5§() : void
      {
         var _loc1_:§53§ = null;
         for each(_loc1_ in this.§9!F§)
         {
            this.§]!9§.§@R§.§7U§.DestroyJoint(_loc1_.§43§);
         }
      }
      
      public function §7r§() : Boolean
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7D§.length)
         {
            _loc2_ = this.§7D§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[8§(param1:§"e§) : Boolean
      {
         if(param1 && param1.§3-§.§%e§() != §^^§.§3i§ && this.§]!9§.§2X§.§8@§(param1.§]d§().GetPosition().x,param1.§]d§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §-J§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§"e§;
         if((_loc5_ = this.§7D§[param1]).§6D§())
         {
            ++this.§1i§;
         }
         else if(_loc5_.§^C§())
         {
            --this.§3J§;
         }
         if(_loc5_ == this.§]!9§.activeObject)
         {
            this.§]!9§.activeObject = null;
         }
         if(param2)
         {
            this.§]!9§.addScore(_loc5_.§3-§.score,§%!+§.§`n§,true,_loc5_.§]d§().GetPosition().x,_loc5_.§]d§().GetPosition().y - 3,§-V§.§-!2§(_loc5_.§"]§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§]!9§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§>!D§(_loc5_.sprite);
         this.§<!>§(_loc5_);
         _loc5_.dispose();
         _loc5_ = null;
         this.§7D§[param1] = null;
         this.§7D§.splice(param1,1);
      }
      
      private function §>!D§(param1:Sprite) : void
      {
         if(this.§^l§.contains(param1))
         {
            this.§^l§.removeChild(param1);
            return;
         }
         if(this.§#;§.contains(param1))
         {
            this.§#;§.removeChild(param1);
            return;
         }
         if(this.§8g§.contains(param1))
         {
            this.§8g§.removeChild(param1);
            return;
         }
         if(this.§9!E§.contains(param1))
         {
            this.§9!E§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§"e§) : void
      {
         if(param1.§`u§().toUpperCase() == "WHITE_EGG" || param1.§,z§())
         {
            if(param1.§"]§.toUpperCase() == §<4§.§1A§)
            {
               this.addExplosions(§1p§.§5t§,param1.§]d§().GetPosition().x,param1.§]d§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§1p§.§6W§,param1.§]d§().GetPosition().x,param1.§]d§().GetPosition().y);
            }
         }
      }
      
      public function §6!4§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§-J§(this.§7D§.indexOf(param1),param2,param3,param4);
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         this.§!m§.x = -param1;
         this.§!m§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§"e§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7D§.length)
         {
            _loc3_ = this.§7D§[_loc2_] as §"e§;
            if(_loc3_ && _loc3_.§6D§() && _loc3_.§`h§ > 0)
            {
               if(!param1 || _loc3_.§>b§.mTryToBlink <= 0 && _loc3_.§>b§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@X§(param1:Boolean = false) : int
      {
         var _loc4_:§"e§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§7D§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7D§[_loc3_] as §"e§) && _loc4_.§6D§() && _loc4_.§`h§ > 0)
            {
               if(!param1 || _loc4_.§>b§.mTryToBlink <= 0 && _loc4_.§>b§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §`!-§() : int
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7D§)
         {
            if(_loc2_ && (_loc2_.§,&§() || _loc2_.§7n§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §%!#§() : int
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7D§)
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
         var _loc3_:§"e§ = null;
         var _loc2_:int = this.§7D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7D§[_loc2_];
            if(_loc3_ && _loc3_.§6D§() && _loc3_.§`h§ > 0)
            {
               _loc3_.§>b§.mTryToScream = §'q§.§3P§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §0W§() : Boolean
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = this.§7D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7D§[_loc1_] as §"e§;
            if(_loc2_ && _loc2_.§^C§() && _loc2_.§`h§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = this.§7D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7D§[_loc1_] as §"e§;
            if(_loc2_ && _loc2_.§`h§ > 0 && _loc2_.§8V§ != §9n§.§9?§)
            {
               if(_loc2_.§ +§() && !_loc2_.§&c§())
               {
                  return false;
               }
               if(_loc2_.§^C§() && _loc2_.§`h§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §1'§(param1:Boolean = false) : §"e§
      {
         var _loc5_:int = 0;
         var _loc6_:§"e§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§7D§.length;
         var _loc3_:int = 1 + Math.random() * this.§@X§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§7D§[_loc5_]) && _loc6_.§6D§() && _loc6_.§`h§ > 0)
               {
                  if(!param1 || _loc6_.§>b§.mTryToBlink <= 0 && _loc6_.§>b§.mTryToScream <= 0)
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
      
      public function §2r§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§7D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§7D§[_loc2_] as §"e§).§3-§.score;
            if((this.§7D§[_loc2_] as §"e§).§ +§())
            {
               _loc1_ += §^]§.§><§.getValue() * int((this.§7D§[_loc2_] as §"e§).§'R§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]!9§.slingshot.§2r§());
      }
      
      public function §%d§(param1:§"e§, param2:§"e§) : Boolean
      {
         if(param1.§^C§() && param2.§^C§())
         {
            return true;
         }
         if(!param1.§-G§() && !param2.§-G§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§"e§, param2:§"e§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§6-§() || param2.§6D§())
            {
               param2.applyDamage(param2.§'R§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§6-§() || param1.§6D§())
            {
               param1.applyDamage(param1.§'R§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §,a§.§@!&§)
         {
            if(param1.§8p§() || param2.§8p§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§%d§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§?7§(param2.§`u§());
         var _loc5_:Number = param1.§;c§(param2.§`u§());
         var _loc6_:Number = param2.§?7§(param1.§`u§());
         var _loc7_:Number = param2.§;c§(param1.§`u§());
         var _loc8_:Number = param1.§]d§().GetMass() * param1.§]d§().GetLinearVelocity().x - param2.§]d§().GetMass() * param2.§]d§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§]d§().GetMass() * param1.§]d§().GetLinearVelocity().y - param2.§]d§().GetMass() * param2.§]d§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§`h§);
         var _loc14_:Number = Math.max(0,param2.§`h§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§^C§(),_loc14_ == param2.§'R§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§^C§(),_loc13_ == param1.§'R§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§=! §(new b2Vec2(param2.§]d§().GetLinearVelocity().x * _loc18_,param2.§]d§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§=! §(new b2Vec2(param1.§]d§().GetLinearVelocity().x * _loc19_,param1.§]d§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §0!0§() : void
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = this.§7D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7D§[_loc1_] as §"e§;
            if(_loc2_ != null && _loc2_.§6D§())
            {
               this.§-J§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §^F§() : void
      {
         var _loc2_:§"e§ = null;
         var _loc1_:int = this.§7D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7D§[_loc1_] as §"e§;
            if(_loc2_ != null && _loc2_.§,z§())
            {
               this.§-J§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §3"§() : int
      {
         return this.§7D§.length;
      }
      
      public function §!!&§(param1:§;4§) : void
      {
         var _loc4_:§"e§ = null;
         var _loc5_:§#G§ = null;
         var _loc6_:§3V§ = null;
         var _loc7_:§53§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7D§.length)
         {
            if((_loc4_ = this.§7D§[_loc2_]).§"!§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §#G§()).angle = _loc4_.§2c§();
                  _loc5_.id = _loc4_.§"]§;
                  _loc5_.x = _loc4_.§]d§().GetPosition().x;
                  _loc5_.y = _loc4_.§]d§().GetPosition().y;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9!F§.length)
         {
            _loc7_ = this.§9!F§[_loc3_];
            _loc6_ = new §3V§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§,!#§,_loc7_.§!z§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§73§,_loc7_.motorSpeed,_loc7_.§"'§,_loc7_.maxTorque);
            param1.§^L§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §[D§() : void
      {
         var _loc1_:int = 0;
         while(this.§7D§.length > _loc1_)
         {
            if(this.§7D§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§6!4§(this.§7D§[_loc1_]);
            }
         }
      }
      
      public function §[$§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7D§.length)
         {
            if(this.§7D§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7D§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-!!§ = param1;
         this.§ true§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7D§.length)
         {
            if(this.§7D§[_loc2_].isTexture())
            {
               this.§7D§[_loc2_].sprite.visible = !this.§-!!§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§#r§ = param1;
      }
      
      public function §'!&§() : Boolean
      {
         return this.§#r§;
      }
      
      public function §6!+§() : int
      {
         return this.§"^§;
      }
      
      public function §3r§() : int
      {
         return this.§1i§;
      }
   }
}
