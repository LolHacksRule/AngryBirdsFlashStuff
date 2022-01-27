package §0=§
{
   import §%T§.§>p§;
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §,!1§.§]e§;
   import §,T§.§9I§;
   import §,T§.§9g§;
   import §,T§.Tuner;
   import §,T§.§[-§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §0E§.§"b§;
   import §0E§.§'+§;
   import §0E§.§,@§;
   import §0E§.§7u§;
   import §0E§.§<=§;
   import §6!L§.§#!M§;
   import §<A§.§8<§;
   import §@!P§.§ &§;
   import §@!P§.§!i§;
   import §@!P§.§-b§;
   import §@!P§.§?v§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!M§
   {
       
      
      protected var §<w§:Vector.<§2p§>;
      
      protected var §7! §:int;
      
      public var §34§:§[-§;
      
      public var §3$§:Vector.<§9!E§>;
      
      protected var §<!@§:Sprite;
      
      protected var §7T§:Sprite;
      
      private var §%W§:Sprite;
      
      private var §'!H§:Sprite;
      
      private var §;!C§:Sprite;
      
      protected var §,!;§:Vector.<Texture>;
      
      protected var §'!M§:Vector.<§ &§>;
      
      protected var §74§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §&!%§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §&w§:Boolean = false;
      
      protected var §4q§:Number;
      
      protected var §>a§:int;
      
      protected var §^!=§:Vector.<§!i§>;
      
      protected var §]c§:int = 0;
      
      private var §%E§:int = 0;
      
      private var §9#§:int = 0;
      
      private var §0d§:int;
      
      private var §?!H§:Boolean = true;
      
      private var §%Z§:Boolean = true;
      
      public function §6!M§(param1:§[-§, param2:§#!M§, param3:Sprite)
      {
         var _loc5_:§ &§ = null;
         var _loc6_:§-b§ = null;
         var _loc7_:§2p§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§2p§ = null;
         var _loc11_:§2p§ = null;
         this.§<w§ = new Vector.<§2p§>();
         this.§3$§ = new Vector.<§9!E§>();
         this.§,!;§ = new Vector.<Texture>();
         this.§4q§ = this.Tuner.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§^!=§ = new Vector.<§!i§>();
         super();
         this.§34§ = param1;
         this.§7! § = 0;
         this.§7T§ = param3;
         this.§7T§.§=!5§ = false;
         this.§%Z§ = true;
         this.§?!H§ = true;
         this.§<!@§ = new Sprite();
         this.§%W§ = new Sprite();
         this.§'!H§ = new Sprite();
         this.§;!C§ = new Sprite();
         this.§7T§.addChild(this.§<!@§);
         this.§7T§.addChild(this.§%W§);
         this.§7T§.addChild(this.§'!H§);
         this.§7T§.addChild(this.§;!C§);
         this.addObject(§>p§.§ w§(param2.theme).§;!!§,(this.§34§.§,y§.§"!Q§ + this.§34§.§,y§.§5p§) / 2,this.§34§.§,y§.§+D§ + §9g§.§^&§);
         this.§0d§ = this.§<w§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§5v§)
         {
            _loc6_ = param2.§?!!§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§?!'§();
         this.§@D§(true);
         this.§'!M§ = new Vector.<§ &§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§6m§)
         {
            this.§'!M§.push(§ &§.§2i§(param2.§^F§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§'!M§)
         {
            _loc8_ = _loc5_.index1 + this.§0d§;
            _loc9_ = _loc5_.index2 + this.§0d§;
            if(_loc8_ < this.§<w§.length && _loc9_ < this.§<w§.length)
            {
               _loc10_ = this.§<w§[_loc8_];
               _loc11_ = this.§<w§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §?v§.§]!K§)
               {
                  _loc5_.§6s§ = this.§34§.§[o§.§3!D§.CreateJoint(_loc5_.§=!F§(_loc10_,_loc11_));
               }
               else
               {
                  this.§^!=§.push(new §!i§(_loc8_,_loc9_,_loc5_.§=!7§));
               }
            }
         }
      }
      
      protected function get Tuner() : Class
      {
         return Tuner;
      }
      
      public function get §&! §() : Sprite
      {
         return this.§;!C§;
      }
      
      public function get §<g§() : Sprite
      {
         return this.§7T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§<w§.length > 0)
         {
            this.§?"§(0);
         }
         this.§<w§ = null;
         this.§^!=§ = null;
         if(this.§7T§)
         {
            this.§7T§.dispose();
            this.§7T§ = null;
            this.§<!@§ = null;
            this.§;!C§ = null;
            this.§%W§ = null;
            this.§'!H§ = null;
         }
         while(this.§,!;§.length > 0)
         {
            _loc1_ = this.§,!;§.pop();
            this.§34§.textureManager.§@G§(_loc1_);
         }
      }
      
      private function §@D§(param1:Boolean) : void
      {
         this.§<!@§.visible = param1;
      }
      
      private function §?!'§() : void
      {
         var _loc3_:§2p§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§3!1§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§2p§> = new Vector.<§2p§>();
         for each(_loc3_ in this.§<w§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§7T§);
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
            this.§!!,§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§#5§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§34§.textureManager.§&W§(_loc10_);
            this.§,!;§.push(_loc12_);
            (_loc13_ = new §3!1§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§<!@§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §#5§(param1:Vector.<§2p§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§2p§ = null;
         var _loc11_:§<=§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§&v§.shape).§3W§();
            _loc13_ = new Rectangle(_loc12_[0].x / §[-§.§;5§ * param6,_loc12_[0].y / §[-§.§;5§ * param6,(_loc12_[1].x - _loc12_[0].x) / §[-§.§;5§ * param6,(_loc12_[1].y - _loc12_[0].y) / §[-§.§;5§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§&!'§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §!!,§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§34§.background.§[!2§();
         var _loc5_:§8<§;
         if(_loc5_ = this.§34§.backgroundTextureManager.§@y§(_loc4_))
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
      
      public function §8V§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2p§
      {
         var _loc10_:§2p§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §#X§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §7f§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §0p§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §,U§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §,!E§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §@2§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8G§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §&!Q§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§]c§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2p§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§2p§;
         if((_loc11_ = this.§-!&§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§?!H§;
            this.§<w§[this.§<w§.length] = _loc11_;
         }
         else
         {
            this.§<w§[this.§<w§.length] = _loc11_;
         }
         if(_loc11_ is §&!Q§ && !_loc11_.§^!8§())
         {
            this.§%W§.addChild(_loc10_);
            ++this.§]c§;
         }
         else if(_loc11_.front || param9)
         {
            this.§;!C§.addChild(_loc10_);
         }
         else
         {
            this.§'!H§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§34§.§=1§(_loc11_);
         }
         if(param6)
         {
            this.§34§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §2i§(param1:int, param2:§2p§, param3:§2p§) : § &§
      {
         var _loc6_:§ &§ = null;
         var _loc4_:int = this.§<w§.indexOf(param2) - this.§0d§;
         var _loc5_:int = this.§<w§.indexOf(param3) - this.§0d§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new § &§(§?v§.§+§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§6s§ = this.§34§.§[o§.§3!D§.CreateJoint(_loc6_.§=!F§(param2,param3));
            this.§'!M§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §6l§(param1:§ &§) : void
      {
         if(!(param1.§6s§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§2p§ = this.§?!!§(param1.index1 + this.§0d§);
         var _loc3_:§2p§ = this.§?!!§(param1.index2 + this.§0d§);
         this.§34§.§[o§.§3!D§.DestroyJoint(param1.§6s§);
         param1.§6s§ = this.§34§.§[o§.§3!D§.CreateJoint(param1.§=!F§(_loc2_,_loc3_));
      }
      
      public function §"M§(param1:§2p§) : Vector.<§ &§>
      {
         var _loc4_:§ &§ = null;
         var _loc2_:Vector.<§ &§> = new Vector.<§ &§>();
         var _loc3_:int = this.§<w§.indexOf(param1) - this.§0d§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§'!M§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §+O§() : Vector.<§ &§>
      {
         return this.§'!M§;
      }
      
      public function §!S§(param1:§2p§) : void
      {
         var _loc2_:int = this.§<w§.indexOf(param1) - this.§0d§;
         var _loc3_:int = this.§'!M§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§'!M§[_loc3_].index1 == _loc2_ || this.§'!M§[_loc3_].index2 == _loc2_)
            {
               this.§'!M§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §&!O§(param1:§2p§, param2:§2p§) : Boolean
      {
         var _loc3_:int = this.§<w§.indexOf(param1) - this.§0d§;
         var _loc4_:int = this.§<w§.indexOf(param2) - this.§0d§;
         var _loc5_:int = this.§'!M§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§'!M§[_loc5_].index1 == _loc3_ && this.§'!M§[_loc5_].index2 == _loc4_ || this.§'!M§[_loc5_].index1 == _loc4_ && this.§'!M§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §-!&§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2p§
      {
         var _loc10_:§2p§ = null;
         var _loc11_:§'+§ = null;
         var _loc12_:§'+§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§8V§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§9#§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §"b§.§[M§(param2);
            _loc10_ = new §13§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §"b§.§[M§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §"b§.§[M§(param2);
            }
            if(_loc12_.§?!8§ == §'+§.§0S§ || _loc12_.§?!8§ == §'+§.§-<§)
            {
               _loc10_ = new §3!,§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §2p§(this,param1,this.§34§.§[o§.§3!D§,this.§34§,this.§7! §,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function final(param1:Number) : void
      {
         var _loc3_:§2p§ = null;
         var _loc2_:int = this.§<w§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<w§[_loc2_] as §2p§;
            if(_loc3_)
            {
               if(_loc3_.§[!J§ <= 0)
               {
                  this.§?"§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§4o§();
                  _loc3_.§%!9§();
               }
            }
            _loc2_--;
         }
         this.§><§(param1);
      }
      
      protected function §><§(param1:Number) : void
      {
         var _loc3_:§ &§ = null;
         var _loc4_:§!i§ = null;
         var _loc5_:int = 0;
         var _loc6_:§2p§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§^!=§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§^!=§[_loc2_]).§0!!§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§2!5§("block_" + _loc5_))
                  {
                     this.§[E§(_loc6_,true,true,true);
                  }
                  this.§^!=§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§'!M§)
         {
            if(_loc3_.type == §?v§.§#>§ && _loc3_.§=t§)
            {
               _loc7_ = (_loc3_.§6s§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§6s§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§0m§ && _loc3_.§#!F§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§6s§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§3$§.push(§9!E§.createExplosion(param1,param2,param3));
         §]e§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §"9§(param1:Number, param2:Number) : int
      {
         var _loc4_:§2p§ = null;
         var _loc3_:int = this.§<w§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<w§[_loc3_])
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
      
      public function §67§(param1:Number, param2:Number) : §2p§
      {
         var _loc4_:§2p§ = null;
         var _loc3_:int = this.§<w§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§<w§[_loc3_])
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
      
      public function §?!!§(param1:int) : §2p§
      {
         return this.§<w§[param1];
      }
      
      public function §[Q§(param1:Number, param2:Number) : void
      {
         var _loc4_:§2p§ = null;
         var _loc3_:int = this.§<w§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§<w§[_loc3_] as §2p§).§[Q§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §<!P§(param1:§2p§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§2p§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§[!J§ == param1.§ !L§)
         {
            if(this.§4q§ < this.Tuner.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§4q§ += param2 * this.Tuner.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§;!M§().SetAngularVelocity(param2 * this.§4q§);
            this.§>a§ = 0;
         }
         else if(this.§>a§ == 0)
         {
            this.§>a§ = this.§34§.§`u§;
         }
         if(param1.§,S§() || this.§#E§(param1) || this.§>a§ > 0 && this.§34§.§`u§ > this.§>a§ + this.Tuner.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.Tuner.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.Tuner.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §]e§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §]e§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§;!M§().GetPosition().x - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§;!M§().GetPosition().y - this.Tuner.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.Tuner.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§#E§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.Tuner.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§>a§ = 0;
                  _loc7_.§^c§.§!!6§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §4;§(param1:§2p§, param2:Number) : Boolean
      {
         var _loc5_:§2p§ = null;
         if(this.Tuner.MIGHTY_EAGLE_USE_SHADE && !this.§&w§ && this.mMightyEagleTimer > this.Tuner.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§&w§ = true;
            this.§34§.§@4§();
         }
         this.mMightyEagleTimer += param2;
         this.§34§.particles.addParticle(§5Z§.§=!>§,§5P§.§=!L§,§5Z§.§@!<§,param1.§;!M§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§;!M§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§5Z§.§89§(param1.§8!J§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§`4§(this.Tuner.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§&!%§)
            {
               this.§&!%§ = false;
               this.§34§.§=<§();
               param1.§;!"§(§7u§.§5!N§);
               this.mSardineCanAdded = false;
               param1.§^c§.§5c§ = true;
               param1.§^c§.§=P§();
               for each(_loc5_ in this.§<w§)
               {
                  if(_loc5_ && _loc5_.§"H§())
                  {
                     _loc5_.§;!M§().SetAwake(true);
                     _loc5_.§;!M§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§#!,§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§<w§)
               {
                  if(_loc5_ && _loc5_.§"H§())
                  {
                     _loc5_.applyDamage(_loc5_.§ !L§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§;!M§().GetPosition().y >= -5.5;
            this.§&!%§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§&D§(param2,new Point(this.Tuner.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.Tuner.MIGHTY_EAGLE_Y_CHANGE),this.Tuner.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §2!@§() : void
      {
         var _loc1_:§9!E§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§2p§ = null;
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
         while(this.§3$§.length > 0)
         {
            _loc1_ = this.§3$§.shift();
            _loc2_ = _loc1_.§;e§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§<w§)
            {
               _loc8_ = _loc6_.§;!M§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§;!M§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§;e§)
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
                     _loc6_.§;!M§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§%r§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§1!D§(_loc6_,_loc14_);
               }
            }
            this.§34§.particles.addParticle(this.§>!G§(_loc1_.type),§5P§.§=!L§,§5Z§.§,!=§,_loc3_,_loc4_,600,"",§5Z§.§@?§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§34§.particles.addParticle(§5Z§.§#J§,§5P§.§=!L§,§5Z§.§@!<§,_loc3_,_loc4_,_loc16_,"",§5Z§.§@?§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §1!D§(param1:§2p§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §>!G§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §5Z§.§4?§;
      }
      
      public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:§2p§ = null;
         var _loc3_:int = this.§<w§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§<w§[_loc3_];
            if(_loc2_.§?!K§())
            {
               if(this.§<!P§(_loc2_,param1))
               {
                  this.§?"§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§^!8§())
            {
               this.§4;§(_loc2_,param1);
            }
            else if(this.§#E§(_loc2_))
            {
               _loc2_.§;!"§(§7u§.§;!L§);
               this.§?"§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;!"§(§7u§.§;!L§);
               this.§?"§(_loc3_,false,true,true);
            }
            else if(_loc2_.§]i§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§2!@§();
      }
      
      private function §#!,§() : void
      {
         var _loc1_:§ &§ = null;
         for each(_loc1_ in this.§'!M§)
         {
            if(_loc1_.type != §?v§.§]!K§)
            {
               this.§34§.§[o§.§3!D§.DestroyJoint(_loc1_.§6s§);
            }
         }
      }
      
      public function §'!-§() : Boolean
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§<w§.length)
         {
            _loc2_ = this.§<w§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §#E§(param1:§2p§) : Boolean
      {
         if(param1 && param1.§&v§.§`r§() != §,@§.§+! § && this.§34§.§,y§.§9q§(param1.§;!M§().GetPosition().x,param1.§;!M§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §?"§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§ &§ = null;
         var _loc7_:§!i§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§2p§;
         if((_loc5_ = this.§<w§[param1]).§"H§())
         {
            ++this.§%E§;
         }
         else if(_loc5_.§]i§())
         {
            --this.§]c§;
         }
         if(_loc5_ == this.§34§.activeObject)
         {
            this.§34§.activeObject = null;
         }
         if(param2)
         {
            this.§34§.addScore(_loc5_.§&v§.score,§9I§.§0!-§,true,_loc5_.§;!M§().GetPosition().x,_loc5_.§;!M§().GetPosition().y - 3,§5Z§.§?!&§(_loc5_.§8!J§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§34§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§7,§(_loc5_.sprite);
         this.§!S§(_loc5_);
         for each(_loc6_ in this.§'!M§)
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
         for each(_loc7_ in this.§^!=§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§0!!§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§<w§[param1] = null;
         this.§<w§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§2p§, param2:§5P§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §7,§(param1:Sprite) : void
      {
         if(this.§'!H§.contains(param1))
         {
            this.§'!H§.removeChild(param1);
            return;
         }
         if(this.§%W§.contains(param1))
         {
            this.§%W§.removeChild(param1);
            return;
         }
         if(this.§<!@§.contains(param1))
         {
            this.§<!@§.removeChild(param1);
            return;
         }
         if(this.§;!C§.contains(param1))
         {
            this.§;!C§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§2p§) : void
      {
         if(param1.§]!9§().toUpperCase() == "WHITE_EGG" || param1.§6v§())
         {
            if(param1.§8!J§.toUpperCase() == §,U§.§8!L§)
            {
               this.addExplosions(§9!E§.§3+§,param1.§;!M§().GetPosition().x,param1.§;!M§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§9!E§.§@t§,param1.§;!M§().GetPosition().x,param1.§;!M§().GetPosition().y);
            }
         }
      }
      
      public function §[E§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§?"§(this.§<w§.indexOf(param1),param2,param3,param4);
      }
      
      public function §>>§(param1:Number, param2:Number) : void
      {
         this.§7T§.x = -param1;
         this.§7T§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§2p§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<w§.length)
         {
            _loc3_ = this.§<w§[_loc2_] as §2p§;
            if(_loc3_ && _loc3_.§"H§() && _loc3_.§[!J§ > 0)
            {
               if(!param1 || _loc3_.§^c§.mTryToBlink <= 0 && _loc3_.§^c§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §?!-§(param1:Boolean = false) : int
      {
         var _loc4_:§2p§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§<w§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§<w§[_loc3_] as §2p§) && _loc4_.§"H§() && _loc4_.§[!J§ > 0)
            {
               if(!param1 || _loc4_.§^c§.mTryToBlink <= 0 && _loc4_.§^c§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §@J§() : int
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<w§)
         {
            if(_loc2_ && (_loc2_.§%@§() || _loc2_.§ !2§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §!]§() : int
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<w§)
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
         var _loc3_:§2p§ = null;
         var _loc2_:int = this.§<w§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<w§[_loc2_];
            if(_loc3_ && _loc3_.§"H§() && _loc3_.§[!J§ > 0)
            {
               _loc3_.§^c§.mTryToScream = §?!,§.§=!B§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §^!<§() : Boolean
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = this.§<w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<w§[_loc1_] as §2p§;
            if(_loc2_ && _loc2_.§]i§() && _loc2_.§[!J§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = this.§<w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<w§[_loc1_] as §2p§;
            if(_loc2_ && _loc2_.§[!J§ > 0 && _loc2_.§?!8§ != §'+§.§]!C§)
            {
               if(_loc2_.§^j§() && !_loc2_.§,S§())
               {
                  return false;
               }
               if(_loc2_.§]i§() && _loc2_.§[!J§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §?!M§(param1:Boolean = false) : §2p§
      {
         var _loc5_:int = 0;
         var _loc6_:§2p§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§<w§.length;
         var _loc3_:int = 1 + Math.random() * this.§?!-§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§<w§[_loc5_]) && _loc6_.§"H§() && _loc6_.§[!J§ > 0)
               {
                  if(!param1 || _loc6_.§^c§.mTryToBlink <= 0 && _loc6_.§^c§.mTryToScream <= 0)
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
      
      public function §,8§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§<w§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§<w§[_loc2_] as §2p§).§&v§.score;
            if((this.§<w§[_loc2_] as §2p§).§^j§())
            {
               _loc1_ += §[-§.§&!>§.getValue() * int((this.§<w§[_loc2_] as §2p§).§ !L§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§34§.slingshot.§,8§());
      }
      
      public function §,J§(param1:§2p§, param2:§2p§) : Boolean
      {
         if(param1.§]i§() && param2.§]i§())
         {
            return true;
         }
         if(!param1.§;A§() && !param2.§;A§())
         {
            return true;
         }
         return false;
      }
      
      public function mightyEagleUsed() : void
      {
         this.mSardineCanAdded = true;
         this.§]c§ = 0;
      }
      
      public function objectCollision(param1:§2p§, param2:§2p§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§^!8§() || param2.§"H§())
            {
               param2.applyDamage(param2.§ !L§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§^!8§() || param1.§"H§())
            {
               param1.applyDamage(param1.§ !L§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.Tuner.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§?!K§() || param2.§?!K§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§,J§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§&j§(param2.§]!9§());
         var _loc5_:Number = param1.§@b§(param2.§]!9§());
         var _loc6_:Number = param2.§&j§(param1.§]!9§());
         var _loc7_:Number = param2.§@b§(param1.§]!9§());
         var _loc8_:Number = param1.§;!M§().GetMass() * param1.§;!M§().GetLinearVelocity().x - param2.§;!M§().GetMass() * param2.§;!M§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§;!M§().GetMass() * param1.§;!M§().GetLinearVelocity().y - param2.§;!M§().GetMass() * param2.§;!M§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§[!J§);
         var _loc14_:Number = Math.max(0,param2.§[!J§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§]i§(),_loc14_ == param2.§ !L§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§]i§(),_loc13_ == param1.§ !L§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ +§(new b2Vec2(param2.§;!M§().GetLinearVelocity().x * _loc18_,param2.§;!M§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ +§(new b2Vec2(param1.§;!M§().GetLinearVelocity().x * _loc19_,param1.§;!M§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §!!4§() : void
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = this.§<w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<w§[_loc1_] as §2p§;
            if(_loc2_ != null && _loc2_.§"H§())
            {
               this.§?"§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2!E§() : void
      {
         var _loc2_:§2p§ = null;
         var _loc1_:int = this.§<w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<w§[_loc1_] as §2p§;
            if(_loc2_ != null && _loc2_.§6v§())
            {
               this.§?"§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §-B§() : int
      {
         return this.§<w§.length;
      }
      
      public function §^i§(param1:§#!M§) : void
      {
         var _loc4_:§2p§ = null;
         var _loc5_:§-b§ = null;
         var _loc6_:§?v§ = null;
         var _loc7_:§ &§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<w§.length)
         {
            if((_loc4_ = this.§<w§[_loc2_]).§63§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §-b§()).angle = _loc4_.§&!'§();
                  _loc5_.id = _loc4_.§8!J§;
                  _loc5_.x = _loc4_.§;!M§().GetPosition().x;
                  _loc5_.y = _loc4_.§;!M§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!M§.length)
         {
            _loc7_ = this.§'!M§[_loc3_];
            _loc6_ = new §?v§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§1q§,_loc7_.§0m§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§#!F§,_loc7_.motorSpeed,_loc7_.§=t§,_loc7_.maxTorque);
            param1.§>H§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §^!K§() : void
      {
         var _loc1_:int = 0;
         while(this.§<w§.length > _loc1_)
         {
            if(this.§<w§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§[E§(this.§<w§[_loc1_]);
            }
         }
      }
      
      public function §+g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§<w§.length)
         {
            if(this.§<w§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§<w§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§?!H§ = param1;
         this.§@D§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<w§.length)
         {
            if(this.§<w§[_loc2_].isTexture())
            {
               this.§<w§[_loc2_].sprite.visible = !this.§?!H§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§%Z§ = param1;
      }
      
      public function §@Q§() : Boolean
      {
         return this.§%Z§;
      }
      
      public function §5!%§() : int
      {
         return this.§9#§;
      }
      
      public function §7;§() : int
      {
         return this.§%E§;
      }
      
      public function §2!5§(param1:String) : §2p§
      {
         var _loc3_:§2p§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§<w§.length)
         {
            _loc3_ = this.§<w§[_loc2_] as §2p§;
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
