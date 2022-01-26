package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §1n§.§1D§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §4N§.§9o§;
   import §4N§.§`!%§;
   import §5!@§.§3S§;
   import §5!@§.§=!%§;
   import §5!@§.§=!3§;
   import §5!@§.§?"§;
   import §;!E§.§!c§;
   import §[P§.Texture;
   import §[x§.§%!>§;
   import §[x§.§2^§;
   import §[x§.§^;§;
   import §[x§.§`5§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!!§
   {
       
      
      protected var §=! §:Vector.<§+>§>;
      
      protected var §=F§:int;
      
      public var §1! §:§2^§;
      
      public var §-W§:Vector.<§7]§>;
      
      protected var §3^§:Sprite;
      
      protected var §<R§:Sprite;
      
      private var §-o§:Sprite;
      
      private var §?3§:Sprite;
      
      private var §20§:Sprite;
      
      protected var §@D§:Vector.<Texture>;
      
      protected var §?]§:Vector.<§?"§>;
      
      protected var §,!$§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §-w§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var § Q§:Boolean = false;
      
      protected var §]$§:Number = 0.07;
      
      protected var §8[§:int;
      
      protected var §72§:Vector.<§3S§>;
      
      protected var §#!C§:int = 0;
      
      private var §`a§:int = 0;
      
      private var §,q§:int = 0;
      
      private var §!#§:int;
      
      private var §6!&§:Boolean = true;
      
      private var §+!F§:Boolean = true;
      
      public function §?!!§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         var _loc5_:§?"§ = null;
         var _loc6_:§=!3§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§+>§ = null;
         var _loc10_:§+>§ = null;
         this.§=! § = new Vector.<§+>§>();
         this.§-W§ = new Vector.<§7]§>();
         this.§@D§ = new Vector.<Texture>();
         this.§72§ = new Vector.<§3S§>();
         super();
         this.§1! § = param1;
         this.§=F§ = 0;
         this.§<R§ = param3;
         this.§<R§.§<!<§ = false;
         this.§+!F§ = true;
         this.§6!&§ = true;
         this.§3^§ = new Sprite();
         this.§-o§ = new Sprite();
         this.§?3§ = new Sprite();
         this.§20§ = new Sprite();
         this.§<R§.addChild(this.§3^§);
         this.§<R§.addChild(this.§-o§);
         this.§<R§.addChild(this.§?3§);
         this.§<R§.addChild(this.§20§);
         this.addObject(§!c§.§9!§(param2.theme).§;3§,(this.§1! §.§1!6§.§<!7§ + this.§1! §.§1!6§.§-S§) / 2,this.§1! §.§1!6§.§&p§ + §%!>§.§ if§);
         this.§!#§ = this.§=! §.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§?c§)
         {
            _loc6_ = param2.§!§(_loc4_);
            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            _loc4_++;
         }
         this.§6!3§();
         this.§,3§(true);
         this.§?]§ = new Vector.<§?"§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§5!$§)
         {
            this.§?]§.push(§?"§.§<d§(param2.§?;§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§?]§)
         {
            _loc7_ = _loc5_.index1 + this.§!#§;
            _loc8_ = _loc5_.index2 + this.§!#§;
            if(_loc7_ < this.§=! §.length && _loc8_ < this.§=! §.length)
            {
               _loc9_ = this.§=! §[_loc7_];
               _loc10_ = this.§=! §[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               if(_loc5_.type != §=!%§.§;!-§)
               {
                  _loc5_.§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(_loc5_.§ x§(_loc9_,_loc10_));
               }
               else
               {
                  this.§72§.push(new §3S§(_loc7_,_loc8_,_loc5_.§"!!§));
               }
            }
         }
      }
      
      public function get §]! §() : Sprite
      {
         return this.§20§;
      }
      
      public function get §9z§() : Sprite
      {
         return this.§<R§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§=! §.length > 0)
         {
            this.§]k§(0);
         }
         this.§=! § = null;
         this.§72§ = null;
         if(this.§<R§)
         {
            this.§<R§.dispose();
            this.§<R§ = null;
            this.§3^§ = null;
            this.§20§ = null;
            this.§-o§ = null;
            this.§?3§ = null;
         }
         while(this.§@D§.length > 0)
         {
            _loc1_ = this.§@D§.pop();
            this.§1! §.textureManager.§1l§(_loc1_);
         }
      }
      
      private function §,3§(param1:Boolean) : void
      {
         this.§3^§.visible = param1;
      }
      
      private function §6!3§() : void
      {
         var _loc3_:§+>§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§1!,§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§+>§> = new Vector.<§+>§>();
         for each(_loc3_ in this.§=! §)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§<R§);
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
            this.§6q§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§@@§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§1! §.textureManager.§]C§(_loc10_);
            this.§@D§.push(_loc12_);
            (_loc13_ = new §1!,§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§3^§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §@@§(param1:Vector.<§+>§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§+>§ = null;
         var _loc11_:§2D§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§&$§.shape).§>! §();
            _loc13_ = new Rectangle(_loc12_[0].x / §2^§.§,]§ * param6,_loc12_[0].y / §2^§.§,]§ * param6,(_loc12_[1].x - _loc12_[0].x) / §2^§.§,]§ * param6,(_loc12_[1].y - _loc12_[0].y) / §2^§.§,]§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§^k§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §6q§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§1! §.background.§#!8§();
         var _loc5_:§1D§;
         if(_loc5_ = this.§1! §.backgroundTextureManager.§,Y§(_loc4_))
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
      
      public function §>l§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+>§
      {
         var _loc10_:§+>§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new § p§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §1W§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §?o§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §"!?§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §6l§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §!e§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §!k§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §4!;§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#!C§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+>§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§+>§;
         if((_loc11_ = this.include(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§6!&§;
            this.§=! §[this.§=! §.length] = _loc11_;
         }
         else
         {
            this.§=! §[this.§=! §.length] = _loc11_;
         }
         if(_loc11_ is §4!;§ && !_loc11_.§[d§())
         {
            this.§-o§.addChild(_loc10_);
            ++this.§#!C§;
         }
         else if(_loc11_.front || param9)
         {
            this.§20§.addChild(_loc10_);
         }
         else
         {
            this.§?3§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§1! §.§2A§(_loc11_);
         }
         if(param6)
         {
            this.§1! §.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §<d§(param1:int, param2:§+>§, param3:§+>§) : §?"§
      {
         var _loc6_:§?"§ = null;
         var _loc4_:int = this.§=! §.indexOf(param2) - this.§!#§;
         var _loc5_:int = this.§=! §.indexOf(param3) - this.§!#§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §?"§(§=!%§.§`!;§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(_loc6_.§ x§(param2,param3));
            this.§?]§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §">§(param1:§?"§) : void
      {
         if(!(param1.§@I§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§+>§ = this.§!§(param1.index1 + this.§!#§);
         var _loc3_:§+>§ = this.§!§(param1.index2 + this.§!#§);
         this.§1! §.§[f§.§#_§.DestroyJoint(param1.§@I§);
         param1.§@I§ = this.§1! §.§[f§.§#_§.CreateJoint(param1.§ x§(_loc2_,_loc3_));
      }
      
      public function §@O§(param1:§+>§) : Vector.<§?"§>
      {
         var _loc4_:§?"§ = null;
         var _loc2_:Vector.<§?"§> = new Vector.<§?"§>();
         var _loc3_:int = this.§=! §.indexOf(param1) - this.§!#§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§?]§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §`c§() : Vector.<§?"§>
      {
         return this.§?]§;
      }
      
      public function §?#§(param1:§+>§) : void
      {
         var _loc2_:int = this.§=! §.indexOf(param1) - this.§!#§;
         var _loc3_:int = this.§?]§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§?]§[_loc3_].index1 == _loc2_ || this.§?]§[_loc3_].index2 == _loc2_)
            {
               this.§?]§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §1v§(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc3_:int = this.§=! §.indexOf(param1) - this.§!#§;
         var _loc4_:int = this.§=! §.indexOf(param2) - this.§!#§;
         var _loc5_:int = this.§?]§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§?]§[_loc5_].index1 == _loc3_ && this.§?]§[_loc5_].index2 == _loc4_ || this.§?]§[_loc5_].index1 == _loc4_ && this.§?]§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function include(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+>§
      {
         var _loc10_:§+>§ = null;
         var _loc11_:§9o§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§>l§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§,q§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §;H§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §&!@§.§9B§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §&!@§.§9B§(param2);
            }
            if(_loc11_.§&!E§ == §9o§.§'!<§ || _loc11_.§&!E§ == §9o§.§>]§)
            {
               _loc10_ = new §13§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §+>§(this,param1,this.§1! §.§[f§.§#_§,this.§1! §,this.§=F§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §&o§(param1:Number) : void
      {
         var _loc3_:§+>§ = null;
         var _loc2_:int = this.§=! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=! §[_loc2_] as §+>§;
            if(_loc3_)
            {
               if(_loc3_.§8!'§ <= 0)
               {
                  this.§]k§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§"!D§();
                  _loc3_.§,F§();
               }
            }
            _loc2_--;
         }
         this.§@!?§(param1);
      }
      
      protected function §@!?§(param1:Number) : void
      {
         var _loc3_:§3S§ = null;
         var _loc4_:int = 0;
         var _loc2_:int = this.§72§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§72§[_loc2_];
            if(_loc3_.§;N§)
            {
               if((_loc4_ = _loc3_.update(param1)) != -1)
               {
                  if(_loc4_ < this.§=! §.length && this.§=! §[_loc4_] != null)
                  {
                     this.§]k§(_loc4_,true,true,true);
                  }
                  this.§72§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§-W§.push(§7]§.createExplosion(param1,param2,param3));
         §@6§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §9!0§(param1:Number, param2:Number) : int
      {
         var _loc4_:§+>§ = null;
         var _loc3_:int = this.§=! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=! §[_loc3_])
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
      
      public function §with§(param1:Number, param2:Number) : §+>§
      {
         var _loc4_:§+>§ = null;
         var _loc3_:int = this.§=! §.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§=! §[_loc3_])
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
      
      public function §!§(param1:int) : §+>§
      {
         return this.§=! §[param1];
      }
      
      public function §%1§(param1:Number, param2:Number) : void
      {
         var _loc4_:§+>§ = null;
         var _loc3_:int = this.§=! §.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§=! §[_loc3_] as §+>§).§%1§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §@g§(param1:§+>§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§+>§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§8!'§ == param1.§[!3§)
         {
            if(this.§]$§ < §`5§.§`i§)
            {
               this.§]$§ += param2 * §`5§.§@l§;
            }
            param1.§>b§().SetAngularVelocity(param2 * this.§]$§);
            this.§8[§ = 0;
         }
         else if(this.§8[§ == 0)
         {
            this.§8[§ = this.§1! §.§6&§;
         }
         if(param1.§2h§() || this.§[%§(param1) || this.§8[§ > 0 && this.§1! §.§6&§ > this.§8[§ + §`5§.§'k§)
         {
            if(this.mMightyEagleTimer < §`5§.§%!4§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §`5§.§%t§ && _loc4_ > §`5§.§%t§)
               {
                  §@6§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §@6§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §`5§.§%!4§)
               {
                  _loc5_ = param1.§>b§().GetPosition().x - §`5§.§'j§;
                  _loc6_ = param1.§>b§().GetPosition().y - §`5§.§'j§ * §`5§.§^5§ * 1.07;
                  if(this.§[%§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§`5§.§=!,§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§8[§ = 0;
                  _loc7_.§<p§.§-+§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §6b§(param1:§+>§, param2:Number) : Boolean
      {
         var _loc5_:§+>§ = null;
         if(!this.§ Q§ && this.mMightyEagleTimer > §`5§.§&!$§)
         {
            this.§ Q§ = true;
            this.§1! §.§0u§();
         }
         this.mMightyEagleTimer += param2;
         this.§1! §.particles.§-X§(§'b§.§"x§,§>=§.§>!5§,§'b§.§=<§,param1.§>b§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§>b§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§'b§.§@#§(param1.§57§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§23§(§`5§.§[M§ * param2);
            _loc4_ = -1;
            if(this.§-w§)
            {
               this.§-w§ = false;
               this.§1! §.§%§();
               param1.§;v§(§7E§.§2c§);
               this.mSardineCanAdded = false;
               param1.§<p§.§11§ = true;
               param1.§<p§.§;&§();
               for each(_loc5_ in this.§=! §)
               {
                  if(_loc5_ && _loc5_.§+,§())
                  {
                     _loc5_.§>b§().SetAwake(true);
                     _loc5_.§>b§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§+§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§=! §)
               {
                  if(_loc5_ && _loc5_.§+,§())
                  {
                     _loc5_.applyDamage(_loc5_.§[!3§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§>b§().GetPosition().y >= -5.5;
            this.§-w§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§'1§(param2,new Point(1,_loc4_ * §`5§.§^5§),§`5§.§<6§);
         return false;
      }
      
      private function §2!,§() : void
      {
         var _loc1_:§7]§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§+>§ = null;
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
         while(this.§-W§.length > 0)
         {
            _loc1_ = this.§-W§.shift();
            _loc2_ = _loc1_.§-q§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§=! §)
            {
               _loc8_ = _loc6_.§>b§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§>b§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§-q§)
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
                     _loc6_.§>b§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§`K§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§1! §.particles.§-X§(this.§0n§(_loc1_.type),§>=§.§>!5§,§'b§.§`F§,_loc3_,_loc4_,600,"",§'b§.§'e§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§1! §.particles.§-X§(§'b§.§^g§,§>=§.§>!5§,§'b§.§=<§,_loc3_,_loc4_,_loc16_,"",§'b§.§'e§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §0n§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §'b§.§"s§;
      }
      
      public function §+!H§(param1:Number) : void
      {
         var _loc2_:§+>§ = null;
         var _loc3_:int = this.§=! §.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§=! §[_loc3_];
            if(_loc2_.§8i§())
            {
               if(this.§@g§(_loc2_,param1))
               {
                  this.§]k§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§[d§())
            {
               this.§6b§(_loc2_,param1);
            }
            else if(this.§[%§(_loc2_))
            {
               _loc2_.§;v§(§7E§.§&!2§);
               this.§]k§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;v§(§7E§.§&!2§);
               this.§]k§(_loc3_,false,true,true);
            }
            else if(_loc2_.§!!8§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§2!,§();
      }
      
      private function §+§() : void
      {
         var _loc1_:§?"§ = null;
         for each(_loc1_ in this.§?]§)
         {
            this.§1! §.§[f§.§#_§.DestroyJoint(_loc1_.§@I§);
         }
      }
      
      public function §]N§() : Boolean
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=! §.length)
         {
            _loc2_ = this.§=! §[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[%§(param1:§+>§) : Boolean
      {
         if(param1 && param1.§&$§.§-7§() != §`!%§.§function§ && this.§1! §.§1!6§.§'r§(param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §]k§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§?"§ = null;
         var _loc7_:§3S§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§+>§;
         if((_loc5_ = this.§=! §[param1]).§+,§())
         {
            ++this.§`a§;
         }
         else if(_loc5_.§!!8§())
         {
            --this.§#!C§;
         }
         if(_loc5_ == this.§1! §.activeObject)
         {
            this.§1! §.activeObject = null;
         }
         if(param2)
         {
            this.§1! §.addScore(_loc5_.§&$§.score,§^;§.§"!+§,true,_loc5_.§>b§().GetPosition().x,_loc5_.§>b§().GetPosition().y - 3,§'b§.§+[§(_loc5_.§57§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§1! §.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§!U§(_loc5_.sprite);
         this.§?#§(_loc5_);
         for each(_loc6_ in this.§?]§)
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
         for each(_loc7_ in this.§72§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§;N§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
            if(_loc7_.id2 >= param1)
            {
               --_loc7_.id2;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§=! §[param1] = null;
         this.§=! §.splice(param1,1);
      }
      
      private function §!U§(param1:Sprite) : void
      {
         if(this.§?3§.contains(param1))
         {
            this.§?3§.removeChild(param1);
            return;
         }
         if(this.§-o§.contains(param1))
         {
            this.§-o§.removeChild(param1);
            return;
         }
         if(this.§3^§.contains(param1))
         {
            this.§3^§.removeChild(param1);
            return;
         }
         if(this.§20§.contains(param1))
         {
            this.§20§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§+>§) : void
      {
         if(param1.§&A§().toUpperCase() == "WHITE_EGG" || param1.§^!;§())
         {
            if(param1.§57§.toUpperCase() == §"!?§.§<k§)
            {
               this.addExplosions(§7]§.§#!7§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§7]§.§'l§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
            }
         }
      }
      
      public function §0!;§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§]k§(this.§=! §.indexOf(param1),param2,param3,param4);
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         this.§<R§.x = -param1;
         this.§<R§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§+>§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§=! §.length)
         {
            _loc3_ = this.§=! §[_loc2_] as §+>§;
            if(_loc3_ && _loc3_.§+,§() && _loc3_.§8!'§ > 0)
            {
               if(!param1 || _loc3_.§<p§.mTryToBlink <= 0 && _loc3_.§<p§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §@P§(param1:Boolean = false) : int
      {
         var _loc4_:§+>§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§=! §.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§=! §[_loc3_] as §+>§) && _loc4_.§+,§() && _loc4_.§8!'§ > 0)
            {
               if(!param1 || _loc4_.§<p§.mTryToBlink <= 0 && _loc4_.§<p§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §6#§() : int
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=! §)
         {
            if(_loc2_ && (_loc2_.§"N§() || _loc2_.§3!>§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §7!D§() : int
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§=! §)
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
         var _loc3_:§+>§ = null;
         var _loc2_:int = this.§=! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=! §[_loc2_];
            if(_loc3_ && _loc3_.§+,§() && _loc3_.§8!'§ > 0)
            {
               _loc3_.§<p§.mTryToScream = §`-§.§`w§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §!X§() : Boolean
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = this.§=! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc2_ && _loc2_.§!!8§() && _loc2_.§8!'§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = this.§=! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc2_ && _loc2_.§8!'§ > 0 && _loc2_.§&!E§ != §9o§.§[H§)
            {
               if(_loc2_.§7I§() && !_loc2_.§2h§())
               {
                  return false;
               }
               if(_loc2_.§!!8§() && _loc2_.§8!'§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § '§(param1:Boolean = false) : §+>§
      {
         var _loc5_:int = 0;
         var _loc6_:§+>§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§=! §.length;
         var _loc3_:int = 1 + Math.random() * this.§@P§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§=! §[_loc5_]) && _loc6_.§+,§() && _loc6_.§8!'§ > 0)
               {
                  if(!param1 || _loc6_.§<p§.mTryToBlink <= 0 && _loc6_.§<p§.mTryToScream <= 0)
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
      
      public function §%!%§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§=! §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§=! §[_loc2_] as §+>§).§&$§.score;
            if((this.§=! §[_loc2_] as §+>§).§7I§())
            {
               _loc1_ += §2^§.§<A§.getValue() * int((this.§=! §[_loc2_] as §+>§).§[!3§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§1! §.slingshot.§%!%§());
      }
      
      public function §5!D§(param1:§+>§, param2:§+>§) : Boolean
      {
         if(param1.§!!8§() && param2.§!!8§())
         {
            return true;
         }
         if(!param1.§#d§() && !param2.§#d§())
         {
            return true;
         }
         return false;
      }
      
      public function §5e§() : void
      {
         this.mSardineCanAdded = true;
         this.§#!C§ = 0;
      }
      
      public function objectCollision(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§[d§() || param2.§+,§())
            {
               param2.applyDamage(param2.§[!3§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§[d§() || param1.§+,§())
            {
               param1.applyDamage(param1.§[!3§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §`5§.§%!4§)
         {
            if(param1.§8i§() || param2.§8i§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§5!D§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§]`§(param2.§&A§());
         var _loc5_:Number = param1.§8I§(param2.§&A§());
         var _loc6_:Number = param2.§]`§(param1.§&A§());
         var _loc7_:Number = param2.§8I§(param1.§&A§());
         var _loc8_:Number = param1.§>b§().GetMass() * param1.§>b§().GetLinearVelocity().x - param2.§>b§().GetMass() * param2.§>b§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§>b§().GetMass() * param1.§>b§().GetLinearVelocity().y - param2.§>b§().GetMass() * param2.§>b§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§8!'§);
         var _loc14_:Number = Math.max(0,param2.§8!'§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§!!8§(),_loc14_ == param2.§[!3§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§!!8§(),_loc13_ == param1.§[!3§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§03§(new b2Vec2(param2.§>b§().GetLinearVelocity().x * _loc18_,param2.§>b§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§03§(new b2Vec2(param1.§>b§().GetLinearVelocity().x * _loc19_,param1.§>b§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §=!G§() : void
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = this.§=! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc2_ != null && _loc2_.§+,§())
            {
               this.§]k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §+1§() : void
      {
         var _loc2_:§+>§ = null;
         var _loc1_:int = this.§=! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=! §[_loc1_] as §+>§;
            if(_loc2_ != null && _loc2_.§^!;§())
            {
               this.§]k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §;]§() : int
      {
         return this.§=! §.length;
      }
      
      public function §?n§(param1:§8+§) : void
      {
         var _loc4_:§+>§ = null;
         var _loc5_:§=!3§ = null;
         var _loc6_:§=!%§ = null;
         var _loc7_:§?"§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=! §.length)
         {
            if((_loc4_ = this.§=! §[_loc2_]).§,4§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §=!3§()).angle = _loc4_.§^k§();
                  _loc5_.id = _loc4_.§57§;
                  _loc5_.x = _loc4_.§>b§().GetPosition().x;
                  _loc5_.y = _loc4_.§>b§().GetPosition().y;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§?]§.length)
         {
            _loc7_ = this.§?]§[_loc3_];
            _loc6_ = new §=!%§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§-r§,_loc7_.§;p§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§7e§,_loc7_.motorSpeed,_loc7_.§ g§,_loc7_.maxTorque);
            param1.§-%§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §2I§() : void
      {
         var _loc1_:int = 0;
         while(this.§=! §.length > _loc1_)
         {
            if(this.§=! §[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§0!;§(this.§=! §[_loc1_]);
            }
         }
      }
      
      public function §1!'§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§=! §.length)
         {
            if(this.§=! §[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§=! §[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§6!&§ = param1;
         this.§,3§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=! §.length)
         {
            if(this.§=! §[_loc2_].isTexture())
            {
               this.§=! §[_loc2_].sprite.visible = !this.§6!&§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§+!F§ = param1;
      }
      
      public function §+#§() : Boolean
      {
         return this.§+!F§;
      }
      
      public function §7!1§() : int
      {
         return this.§,q§;
      }
      
      public function §^"§() : int
      {
         return this.§`a§;
      }
   }
}
