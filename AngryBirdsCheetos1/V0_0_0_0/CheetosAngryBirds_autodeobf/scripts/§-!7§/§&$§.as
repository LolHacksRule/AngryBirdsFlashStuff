package §-!7§
{
   import §%!$§.§=m§;
   import §,u§.§-!#§;
   import §,u§.§]!M§;
   import §2!-§.Texture;
   import §3]§.§8[§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §9N§.§&!V§;
   import §9N§.§'!Q§;
   import §9N§.§9!%§;
   import §9N§.§^_§;
   import §<!+§.§with§;
   import §?7§.§!S§;
   import §?7§.§#!+§;
   import §?7§.§&!5§;
   import §?7§.§,!§;
   import §?7§.§=!5§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&$§
   {
       
      
      protected var §5! §:Vector.<§@m§>;
      
      protected var §7!2§:int;
      
      public var §8@§:§9!%§;
      
      public var §6D§:Vector.<§?L§>;
      
      protected var §4R§:Sprite;
      
      protected var §-X§:Sprite;
      
      private var §67§:Sprite;
      
      private var §=!9§:Sprite;
      
      private var §`W§:Sprite;
      
      protected var §?j§:Vector.<Texture>;
      
      protected var §2j§:Vector.<§]!M§>;
      
      protected var §#!A§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §`P§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §#!4§:Boolean = false;
      
      protected var §[,§:Number = 0.07;
      
      protected var §#!0§:int;
      
      protected var §50§:int = 0;
      
      private var §4L§:int = 0;
      
      private var §#l§:int = 0;
      
      private var §-]§:Boolean = true;
      
      private var §7B§:Boolean = true;
      
      public function §&$§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         var _loc5_:§-!#§ = null;
         var _loc6_:§]!M§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§@m§ = null;
         var _loc10_:§@m§ = null;
         this.§5! § = new Vector.<§@m§>();
         this.§6D§ = new Vector.<§?L§>();
         this.§?j§ = new Vector.<Texture>();
         super();
         this.§8@§ = param1;
         this.§7!2§ = 0;
         this.§-X§ = param3;
         this.§-X§.§=!;§ = false;
         this.§7B§ = true;
         this.§-]§ = true;
         this.§4R§ = new Sprite();
         this.§67§ = new Sprite();
         this.§=!9§ = new Sprite();
         this.§`W§ = new Sprite();
         this.§-X§.addChild(this.§4R§);
         this.§-X§.addChild(this.§67§);
         this.§-X§.addChild(this.§=!9§);
         this.§-X§.addChild(this.§`W§);
         this.addObject(§8[§.§8V§(param2.theme).§#!Q§,(this.§8@§.§null §.§?H§ + this.§8@§.§null §.§'N§) / 2,this.§8@§.§null §.§;U§ + §'!Q§.§5r§);
         var _loc4_:int = this.§5! §.length;
         for each(_loc5_ in param2.§@k§)
         {
            this.addObject(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§[K§();
         this.§1Z§(true);
         this.§2j§ = param2.§2j§;
         for each(_loc6_ in param2.§2j§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            if(_loc7_ < this.§5! §.length && _loc8_ < this.§5! §.length)
            {
               _loc9_ = this.§5! §[_loc7_];
               _loc10_ = this.§5! §[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc6_.set = this.§8@§.mLevelEngine.mWorld.§,!R§(_loc6_.§class§(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §[!M§() : Sprite
      {
         return this.§`W§;
      }
      
      public function get §1!+§() : Sprite
      {
         return this.§-X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§5! §.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§5! § = null;
         if(this.§-X§)
         {
            this.§-X§.dispose();
            this.§-X§ = null;
            this.§4R§ = null;
            this.§`W§ = null;
            this.§67§ = null;
            this.§=!9§ = null;
         }
         while(this.§?j§.length > 0)
         {
            _loc1_ = this.§?j§.pop();
            this.§8@§.§#G§.§&!I§(_loc1_);
         }
      }
      
      private function §1Z§(param1:Boolean) : void
      {
         this.§4R§.visible = param1;
      }
      
      private function §[K§() : void
      {
         var _loc3_:§@m§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§>?§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@m§> = new Vector.<§@m§>();
         for each(_loc3_ in this.§5! §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§-X§);
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
            this.§>,§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§?k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§8@§.§#G§.§8E§(_loc10_);
            this.§?j§.push(_loc12_);
            (_loc13_ = new §>?§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§4R§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §?k§(param1:Vector.<§@m§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§@m§ = null;
         var _loc11_:§!S§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§8!Q§.shape).§!!<§();
            _loc13_ = new Rectangle(_loc12_[0].x / §9!%§.§catch§ * param6,_loc12_[0].y / §9!%§.§catch§ * param6,(_loc12_[1].x - _loc12_[0].x) / §9!%§.§catch§ * param6,(_loc12_[1].y - _loc12_[0].y) / §9!%§.§catch§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§?!"§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §>,§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§8@§.background.§]!S§();
         var _loc5_:§>c§;
         if(_loc5_ = this.§8@§.§4w§.§]]§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc10_:§@m§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §]!$§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §;!+§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §^7§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §]!W§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new § !2§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §;7§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §!v§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §^!1§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§50§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@m§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§@m§;
         if((_loc11_ = this.§>Z§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)) is §^!1§)
         {
            ++this.§50§;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§-]§;
            this.§5! §[this.§5! §.length] = _loc11_;
         }
         else
         {
            this.§5! §[this.§5! §.length] = _loc11_;
         }
         if(_loc11_ is §^!1§ && !_loc11_.§;!B§())
         {
            this.§67§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§`W§.addChild(_loc10_);
         }
         else
         {
            this.§=!9§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§8@§.§+!'§(_loc11_);
         }
         if(param6)
         {
            this.§8@§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      protected function §>Z§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc10_:§@m§ = null;
         var _loc11_:§,!§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §;!T§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §&!5§.§;@§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §&!5§.§;@§(param2);
            }
            if(_loc11_.§5x§ == §,!§.§&!Q§ || _loc11_.§5x§ == §,!§.§!?§)
            {
               _loc10_ = new §--§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §@m§(this,param1,this.§8@§.mLevelEngine.mWorld,this.§8@§,this.§7!2§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §#P§() : void
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = this.§5! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc2_)
            {
               if(_loc2_.§4^§ <= 0)
               {
                  this.removeObjectWithIndex(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§-r§();
                  _loc2_.§7!+§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§6D§.push(§?L§.§<!V§(param1,param2,param3));
         §=m§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §+m§(param1:Number, param2:Number) : int
      {
         var _loc4_:§@m§ = null;
         var _loc3_:int = this.§5! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§5! §[_loc3_])
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
      
      public function §7l§(param1:Number, param2:Number) : §@m§
      {
         var _loc4_:§@m§ = null;
         var _loc3_:int = this.§5! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§5! §[_loc3_])
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
      
      public function §'!P§(param1:int) : §@m§
      {
         return this.§5! §[param1];
      }
      
      public function §>!=§(param1:Number, param2:Number) : void
      {
         var _loc4_:§@m§ = null;
         var _loc3_:int = this.§5! §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§5! §[_loc3_] as §@m§).§>!=§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §&d§(param1:§@m§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§@m§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§4^§ == param1.§,>§)
         {
            if(this.§[,§ < §&!V§.§?!4§)
            {
               this.§[,§ += param2 * §&!V§.§@6§;
            }
            param1.§`!#§().§;[§(param2 * this.§[,§);
            this.§#!0§ = 0;
         }
         else if(this.§#!0§ == 0)
         {
            this.§#!0§ = this.§8@§.§@3§;
         }
         if(param1.§5!@§() || this.§2!T§(param1) || this.§#!0§ > 0 && this.§8@§.§@3§ > this.§#!0§ + §&!V§.§,C§)
         {
            if(this.mMightyEagleTimer < §&!V§.§+!I§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §&!V§.§@%§ && _loc4_ > §&!V§.§@%§)
               {
                  §=m§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §=m§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §&!V§.§+!I§)
               {
                  _loc5_ = param1.§`!#§().GetPosition().x - §&!V§.§'2§;
                  _loc6_ = param1.§`!#§().GetPosition().y - §&!V§.§'2§ * §&!V§.§^5§ * 1.07;
                  if(this.§2!T§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§&!V§.§88§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§#!0§ = 0;
                  _loc7_.§%n§.§;!Q§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §"n§(param1:§@m§, param2:Number) : Boolean
      {
         var _loc5_:§@m§ = null;
         if(!this.§#!4§ && this.mMightyEagleTimer > §&!V§.§[7§)
         {
            this.§#!4§ = true;
            this.§8@§.§80§();
         }
         this.mMightyEagleTimer += param2;
         this.§8@§.particles.addParticle(§-&§.§+H§,§,v§.§-!;§,§-&§.§ ,§,param1.§`!#§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§`!#§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§-&§.§%6§(param1.§ h§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§6q§(§&!V§.§[>§ * param2);
            _loc4_ = -1;
            if(this.§`P§)
            {
               this.§`P§ = false;
               this.§8@§.§8!&§();
               param1.§,!L§(§=!5§.§,! §);
               this.mSardineCanAdded = false;
               param1.§%n§.§+l§ = true;
               param1.§%n§.§3f§();
               for each(_loc5_ in this.§5! §)
               {
                  if(_loc5_ && _loc5_.§7!?§())
                  {
                     _loc5_.§`!#§().SetAwake(true);
                     _loc5_.§`!#§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§switch§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§5! §)
               {
                  if(_loc5_ && _loc5_.§7!?§())
                  {
                     _loc5_.applyDamage(_loc5_.§,>§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§`!#§().GetPosition().y >= -5.5;
            this.§`P§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§!K§(param2,new Point(1,_loc4_ * §&!V§.§^5§),§&!V§.§+!3§);
         return false;
      }
      
      private function §?!H§() : void
      {
         var _loc1_:§?L§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§@m§ = null;
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
         while(this.§6D§.length > 0)
         {
            _loc1_ = this.§6D§.shift();
            _loc2_ = _loc1_.§0b§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§5! §)
            {
               _loc8_ = _loc6_.§`!#§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§`!#§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§0b§)
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
                     _loc6_.§`!#§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§`u§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§8@§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§,v§.§-!;§,§-&§.§3!<§,_loc3_,_loc4_,600,"",§-&§.§'=§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§8@§.particles.addParticle(§-&§.§,G§,§,v§.§-!;§,§-&§.§ ,§,_loc3_,_loc4_,_loc16_,"",§-&§.§'=§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §-&§.§9'§;
      }
      
      public function §`!"§(param1:Number) : void
      {
         var _loc2_:§@m§ = null;
         var _loc3_:int = this.§5! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§5! §[_loc3_];
            if(_loc2_.§?u§())
            {
               if(this.§&d§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§;!B§())
            {
               this.§"n§(_loc2_,param1);
            }
            else if(this.§2!T§(_loc2_))
            {
               _loc2_.§,!L§(§=!5§.§^!X§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§,!L§(§=!5§.§^!X§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§ !?§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§?!H§();
      }
      
      private function §switch§() : void
      {
         var _loc1_:§]!M§ = null;
         for each(_loc1_ in this.§2j§)
         {
            this.§8@§.mLevelEngine.mWorld.§+`§(_loc1_.set);
         }
      }
      
      public function §9u§() : Boolean
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5! §.length)
         {
            _loc2_ = this.§5! §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §2!T§(param1:§@m§) : Boolean
      {
         if(param1 && param1.§8!Q§.§ s§() != §#!+§.§#D§ && this.§8@§.§null §.§-8§(param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§@m§;
         if((_loc5_ = this.§5! §[param1]).§7!?§())
         {
            ++this.§4L§;
         }
         else if(_loc5_.§ !?§())
         {
            ++this.§#l§;
            --this.§50§;
         }
         if(_loc5_ == this.§8@§.activeObject)
         {
            this.§8@§.activeObject = null;
         }
         if(param2)
         {
            this.§8@§.addScore(_loc5_.§8!Q§.score,§^_§.§3F§,true,_loc5_.§`!#§().GetPosition().x,_loc5_.§`!#§().GetPosition().y - 3,§-&§.§7!W§(_loc5_.§ h§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§8@§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§^H§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§5! §[param1] = null;
         this.§5! §.splice(param1,1);
      }
      
      private function §^H§(param1:Sprite) : void
      {
         if(this.§=!9§.contains(param1))
         {
            this.§=!9§.removeChild(param1);
            return;
         }
         if(this.§67§.contains(param1))
         {
            this.§67§.removeChild(param1);
            return;
         }
         if(this.§4R§.contains(param1))
         {
            this.§4R§.removeChild(param1);
            return;
         }
         if(this.§`W§.contains(param1))
         {
            this.§`W§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§@m§) : void
      {
         if(param1.§7J§().toUpperCase() == "WHITE_EGG" || param1.§"!J§())
         {
            if(param1.§ h§.toUpperCase() == §]!W§.§'`§)
            {
               this.addExplosions(§?L§.§'H§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§?L§.§6!1§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
            }
         }
      }
      
      public function §3!K§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§5! §.indexOf(param1),param2,param3,param4);
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         this.§-X§.x = -param1;
         this.§-X§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§@m§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§5! §.length)
         {
            _loc3_ = this.§5! §[_loc2_] as §@m§;
            if(_loc3_ && _loc3_.§7!?§() && _loc3_.§4^§ > 0)
            {
               if(!param1 || _loc3_.§%n§.mTryToBlink <= 0 && _loc3_.§%n§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §7e§(param1:Boolean = false) : int
      {
         var _loc4_:§@m§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§5! §.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§5! §[_loc3_] as §@m§) && _loc4_.§7!?§() && _loc4_.§4^§ > 0)
            {
               if(!param1 || _loc4_.§%n§.mTryToBlink <= 0 && _loc4_.§%n§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §2§() : int
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5! §)
         {
            if(_loc2_ && _loc2_.§?!<§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §5a§() : int
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§5! §)
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
         var _loc3_:§@m§ = null;
         var _loc2_:int = this.§5! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5! §[_loc2_];
            if(_loc3_ && _loc3_.§7!?§() && _loc3_.§4^§ > 0)
            {
               _loc3_.§%n§.mTryToScream = §'x§.§ H§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §>1§() : Boolean
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = this.§5! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc2_ && _loc2_.§ !?§() && _loc2_.§4^§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = this.§5! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc2_ && _loc2_.§4^§ > 0 && _loc2_.§5x§ != §,!§.§&J§)
            {
               if(_loc2_.§!!A§() && !_loc2_.§5!@§())
               {
                  return false;
               }
               if(_loc2_.§ !?§() && _loc2_.§4^§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[!I§(param1:Boolean = false) : §@m§
      {
         var _loc5_:int = 0;
         var _loc6_:§@m§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§5! §.length;
         var _loc3_:int = 1 + Math.random() * this.§7e§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§5! §[_loc5_]) && _loc6_.§7!?§() && _loc6_.§4^§ > 0)
               {
                  if(!param1 || _loc6_.§%n§.mTryToBlink <= 0 && _loc6_.§%n§.mTryToScream <= 0)
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
      
      public function §[!%§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§5! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§5! §[_loc2_] as §@m§).§8!Q§.score;
            if((this.§5! §[_loc2_] as §@m§).§!!A§())
            {
               _loc1_ += §9!%§.§#6§.getValue() * int((this.§5! §[_loc2_] as §@m§).§,>§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§8@§.slingshot.§[!%§());
      }
      
      public function §5;§(param1:§@m§, param2:§@m§) : Boolean
      {
         if(param1.§ !?§() && param2.§ !?§())
         {
            return true;
         }
         if(!param1.§`9§() && !param2.§`9§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§@m§, param2:§@m§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§;!B§() || param2.§7!?§())
            {
               param2.applyDamage(param2.§,>§ * 2,true,true,true,false);
               return;
            }
            if(param2.§;!B§() || param1.§7!?§())
            {
               param1.applyDamage(param1.§,>§ * 2,true,true,true,false);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §&!V§.§+!I§)
         {
            if(param1.§?u§() || param2.§?u§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§5;§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§=d§(param2.§7J§());
         var _loc5_:Number = param1.§<=§(param2.§7J§());
         var _loc6_:Number = param2.§=d§(param1.§7J§());
         var _loc7_:Number = param2.§<=§(param1.§7J§());
         var _loc8_:Number = param1.§`!#§().GetMass() * param1.§`!#§().GetLinearVelocity().x - param2.§`!#§().GetMass() * param2.§`!#§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§`!#§().GetMass() * param1.§`!#§().GetLinearVelocity().y - param2.§`!#§().GetMass() * param2.§`!#§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§4^§);
         var _loc14_:Number = Math.max(0,param2.§4^§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ !?§(),_loc14_ == param2.§,>§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ !?§(),_loc13_ == param1.§,>§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§,!%§(new b2Vec2(param2.§`!#§().GetLinearVelocity().x * _loc18_,param2.§`!#§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§,!%§(new b2Vec2(param1.§`!#§().GetLinearVelocity().x * _loc19_,param1.§`!#§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §10§() : void
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = this.§5! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc2_ != null && _loc2_.§7!?§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2n§() : void
      {
         var _loc2_:§@m§ = null;
         var _loc1_:int = this.§5! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5! §[_loc1_] as §@m§;
            if(_loc2_ != null && _loc2_.§"!J§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §"!2§() : int
      {
         return this.§5! §.length;
      }
      
      public function §=s§(param1:§with§) : void
      {
         var _loc4_:§@m§ = null;
         var _loc5_:§-!#§ = null;
         var _loc6_:§]!M§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5! §.length)
         {
            if((_loc4_ = this.§5! §[_loc2_]).§4!'§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §-!#§()).angle = _loc4_.§?!"§();
                  _loc5_.id = _loc4_.§ h§;
                  _loc5_.x = _loc4_.§`!#§().GetPosition().x;
                  _loc5_.y = _loc4_.§`!#§().GetPosition().y;
                  param1.§@k§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2j§.length)
         {
            (_loc6_ = new §]!M§(this.§2j§[_loc3_].type,this.§2j§[_loc3_].index1,this.§2j§[_loc3_].index2)).backAndForth = this.§2j§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§2j§[_loc3_].collideConnected;
            _loc6_.limit = this.§2j§[_loc3_].limit;
            _loc6_.lowerLimit = this.§2j§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§2j§[_loc3_].maxTorque;
            _loc6_.motor = this.§2j§[_loc3_].motor;
            _loc6_.motorSpeed = this.§2j§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§2j§[_loc3_].upperLimit;
            _loc6_.p1 = this.§2j§[_loc3_].p1;
            _loc6_.p2 = this.§2j§[_loc3_].p2;
            param1.§2j§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §4!=§() : void
      {
         var _loc1_:int = 0;
         while(this.§5! §.length > _loc1_)
         {
            if(this.§5! §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§3!K§(this.§5! §[_loc1_]);
            }
         }
      }
      
      public function §2!&§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§5! §.length)
         {
            if(this.§5! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§5! §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§-]§ = param1;
         this.§1Z§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5! §.length)
         {
            if(this.§5! §[_loc2_].isTexture())
            {
               this.§5! §[_loc2_].sprite.visible = !this.§-]§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§7B§ = param1;
      }
      
      public function §1c§() : Boolean
      {
         return this.§7B§;
      }
      
      public function §46§() : int
      {
         return this.§#l§;
      }
      
      public function §#3§() : int
      {
         return this.§4L§;
      }
   }
}
