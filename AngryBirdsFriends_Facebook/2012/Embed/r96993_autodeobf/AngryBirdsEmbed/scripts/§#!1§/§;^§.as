package §#!1§
{
   import §'N§.§^]§;
   import §-!C§.§3!H§;
   import §0!D§.§!!D§;
   import §0!D§.§3m§;
   import §0!D§.§55§;
   import §0!D§.§@3§;
   import §6"§.§8!9§;
   import §6u§.§!B§;
   import §<!<§.§2!@§;
   import §<!<§.§6e§;
   import §<!<§.§6t§;
   import §<!<§.§>'§;
   import §<!<§.§>2§;
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import §`i§.§+3§;
   import §`i§.§2W§;
   import §`i§.§33§;
   import §`i§.§;9§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;^§
   {
       
      
      protected var §;,§:Vector.<§4!,§>;
      
      protected var §@g§:int;
      
      public var §"8§:§2W§;
      
      public var §9Y§:Vector.<§]o§>;
      
      protected var §?G§:Sprite;
      
      protected var §=C§:Sprite;
      
      private var §%e§:Sprite;
      
      private var §2]§:Sprite;
      
      private var §,!#§:Sprite;
      
      protected var §-k§:Vector.<Texture>;
      
      protected var § V§:Vector.<§@3§>;
      
      protected var §%!7§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §%H§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §5R§:Boolean = false;
      
      protected var §`?§:Number;
      
      protected var §'r§:int;
      
      protected var §[0§:Vector.<§3m§>;
      
      protected var §7!C§:int = 0;
      
      private var §;4§:int = 0;
      
      private var §!4§:int = 0;
      
      private var §!9§:int;
      
      private var §;A§:Boolean = true;
      
      private var §0_§:Boolean = true;
      
      public function §;^§(param1:§2W§, param2:§3!H§, param3:Sprite)
      {
         var _loc5_:§@3§ = null;
         var _loc6_:§55§ = null;
         var _loc7_:§4!,§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§4!,§ = null;
         var _loc11_:§4!,§ = null;
         this.§;,§ = new Vector.<§4!,§>();
         this.§9Y§ = new Vector.<§]o§>();
         this.§-k§ = new Vector.<Texture>();
         this.§`?§ = this.§+3§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§[0§ = new Vector.<§3m§>();
         super();
         this.§"8§ = param1;
         this.§@g§ = 0;
         this.§=C§ = param3;
         this.§=C§.§]M§ = false;
         this.§0_§ = true;
         this.§;A§ = true;
         this.§?G§ = new Sprite();
         this.§%e§ = new Sprite();
         this.§2]§ = new Sprite();
         this.§,!#§ = new Sprite();
         this.§=C§.addChild(this.§?G§);
         this.§=C§.addChild(this.§%e§);
         this.§=C§.addChild(this.§2]§);
         this.§=C§.addChild(this.§,!#§);
         this.addObject(§8!9§.§0M§(param2.theme).§8!;§,(this.§"8§.§&x§.§ Q§ + this.§"8§.§&x§.§6I§) / 2,this.§"8§.§&x§.§2B§ + §33§.§`O§);
         this.§!9§ = this.§;,§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§`$§)
         {
            _loc6_ = param2.§#!§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§%a§();
         this.§#G§(true);
         this.§ V§ = new Vector.<§@3§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§?M§)
         {
            this.§ V§.push(§@3§.§!C§(param2.§=7§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§ V§)
         {
            _loc8_ = _loc5_.index1 + this.§!9§;
            _loc9_ = _loc5_.index2 + this.§!9§;
            if(_loc8_ < this.§;,§.length && _loc9_ < this.§;,§.length)
            {
               _loc10_ = this.§;,§[_loc8_];
               _loc11_ = this.§;,§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §!!D§.§[C§)
               {
                  _loc5_.§0>§ = this.§"8§.§3X§.§8I§.CreateJoint(_loc5_.§`n§(_loc10_,_loc11_));
               }
               else
               {
                  this.§[0§.push(new §3m§(_loc8_,_loc9_,_loc5_.§9L§));
               }
            }
         }
      }
      
      protected function get §+3§() : Class
      {
         return §+3§;
      }
      
      public function get §>!0§() : Sprite
      {
         return this.§,!#§;
      }
      
      public function get §<A§() : Sprite
      {
         return this.§=C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§;,§.length > 0)
         {
            this.§5! §(0);
         }
         this.§;,§ = null;
         this.§[0§ = null;
         if(this.§=C§)
         {
            this.§=C§.dispose();
            this.§=C§ = null;
            this.§?G§ = null;
            this.§,!#§ = null;
            this.§%e§ = null;
            this.§2]§ = null;
         }
         while(this.§-k§.length > 0)
         {
            _loc1_ = this.§-k§.pop();
            this.§"8§.textureManager.§0a§(_loc1_);
         }
      }
      
      private function §#G§(param1:Boolean) : void
      {
         this.§?G§.visible = param1;
      }
      
      private function §%a§() : void
      {
         var _loc3_:§4!,§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§>T§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§4!,§> = new Vector.<§4!,§>();
         for each(_loc3_ in this.§;,§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§=C§);
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
            this.§&!'§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§>V§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§"8§.textureManager.§=_§(_loc10_);
            this.§-k§.push(_loc12_);
            (_loc13_ = new §>T§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§?G§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §>V§(param1:Vector.<§4!,§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§4!,§ = null;
         var _loc11_:§2!@§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§@F§.shape).§9?§();
            _loc13_ = new Rectangle(_loc12_[0].x / §2W§.§0;§ * param6,_loc12_[0].y / §2W§.§0;§ * param6,(_loc12_[1].x - _loc12_[0].x) / §2W§.§0;§ * param6,(_loc12_[1].y - _loc12_[0].y) / §2W§.§0;§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§>!+§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §&!'§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§"8§.background.§3!,§();
         var _loc5_:§!B§;
         if(_loc5_ = this.§"8§.backgroundTextureManager.§ 8§(_loc4_))
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
      
      public function §86§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!,§
      {
         var _loc10_:§4!,§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §"K§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §>D§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §-!!§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §[[§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §]!'§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §1!8§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §-j§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §9!'§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§7!C§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!,§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§4!,§;
         if((_loc11_ = this.§@E§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§;A§;
            this.§;,§[this.§;,§.length] = _loc11_;
         }
         else
         {
            this.§;,§[this.§;,§.length] = _loc11_;
         }
         if(_loc11_ is §9!'§ && !_loc11_.§;w§())
         {
            this.§%e§.addChild(_loc10_);
            ++this.§7!C§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,!#§.addChild(_loc10_);
         }
         else
         {
            this.§2]§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§"8§.§<!"§(_loc11_);
         }
         if(param6)
         {
            this.§"8§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §!C§(param1:int, param2:§4!,§, param3:§4!,§) : §@3§
      {
         var _loc6_:§@3§ = null;
         var _loc4_:int = this.§;,§.indexOf(param2) - this.§!9§;
         var _loc5_:int = this.§;,§.indexOf(param3) - this.§!9§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@3§(§!!D§.§-z§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§0>§ = this.§"8§.§3X§.§8I§.CreateJoint(_loc6_.§`n§(param2,param3));
            this.§ V§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §@!$§(param1:§@3§) : void
      {
         if(!(param1.§0>§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§4!,§ = this.§#!§(param1.index1 + this.§!9§);
         var _loc3_:§4!,§ = this.§#!§(param1.index2 + this.§!9§);
         this.§"8§.§3X§.§8I§.DestroyJoint(param1.§0>§);
         param1.§0>§ = this.§"8§.§3X§.§8I§.CreateJoint(param1.§`n§(_loc2_,_loc3_));
      }
      
      public function § c§(param1:§4!,§) : Vector.<§@3§>
      {
         var _loc4_:§@3§ = null;
         var _loc2_:Vector.<§@3§> = new Vector.<§@3§>();
         var _loc3_:int = this.§;,§.indexOf(param1) - this.§!9§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§ V§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §3!+§() : Vector.<§@3§>
      {
         return this.§ V§;
      }
      
      public function §4K§(param1:§4!,§) : void
      {
         var _loc2_:int = this.§;,§.indexOf(param1) - this.§!9§;
         var _loc3_:int = this.§ V§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§ V§[_loc3_].index1 == _loc2_ || this.§ V§[_loc3_].index2 == _loc2_)
            {
               this.§ V§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §`&§(param1:§4!,§, param2:§4!,§) : Boolean
      {
         var _loc3_:int = this.§;,§.indexOf(param1) - this.§!9§;
         var _loc4_:int = this.§;,§.indexOf(param2) - this.§!9§;
         var _loc5_:int = this.§ V§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§ V§[_loc5_].index1 == _loc3_ && this.§ V§[_loc5_].index2 == _loc4_ || this.§ V§[_loc5_].index1 == _loc4_ && this.§ V§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §@E§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!,§
      {
         var _loc10_:§4!,§ = null;
         var _loc11_:§6e§ = null;
         var _loc12_:§6e§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§86§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§!4§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §6t§.§5,§(param2);
            _loc10_ = new §4k§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §6t§.§5,§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §6t§.§5,§(param2);
            }
            if(_loc12_.§+!<§ == §6e§.§-!1§ || _loc12_.§+!<§ == §6e§.§4!<§)
            {
               _loc10_ = new §+>§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §4!,§(this,param1,this.§"8§.§3X§.§8I§,this.§"8§,this.§@g§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §5!;§(param1:Number) : void
      {
         var _loc3_:§4!,§ = null;
         var _loc2_:int = this.§;,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;,§[_loc2_] as §4!,§;
            if(_loc3_)
            {
               if(_loc3_.§,s§ <= 0)
               {
                  this.§5! §(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§^!B§();
                  _loc3_.§["§();
               }
            }
            _loc2_--;
         }
         this.§5;§(param1);
      }
      
      protected function §5;§(param1:Number) : void
      {
         var _loc3_:§@3§ = null;
         var _loc4_:§3m§ = null;
         var _loc5_:int = 0;
         var _loc6_:§4!,§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§[0§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§[0§[_loc2_]).§,!"§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§7$§("block_" + _loc5_))
                  {
                     this.§1!7§(_loc6_,true,true,true);
                  }
                  this.§[0§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§ V§)
         {
            if(_loc3_.type == §!!D§.§ else§ && _loc3_.§<%§)
            {
               _loc7_ = (_loc3_.§0>§ as b2PrismaticJoint).GetJointTranslation();
               _loc8_ = (_loc3_.§0>§ as b2PrismaticJoint).GetMotorSpeed();
               if(_loc3_.§#!"§ && _loc3_.§#c§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§0>§ as b2PrismaticJoint).SetMotorSpeed(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§9Y§.push(§]o§.createExplosion(param1,param2,param3));
         §^]§.§1g§("TntExplosions","ChannelExplosions");
      }
      
      public function §&o§(param1:Number, param2:Number) : int
      {
         var _loc4_:§4!,§ = null;
         var _loc3_:int = this.§;,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;,§[_loc3_])
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
      
      public function §&#§(param1:Number, param2:Number) : §4!,§
      {
         var _loc4_:§4!,§ = null;
         var _loc3_:int = this.§;,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§;,§[_loc3_])
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
      
      public function §#!§(param1:int) : §4!,§
      {
         return this.§;,§[param1];
      }
      
      public function §%!6§(param1:Number, param2:Number) : void
      {
         var _loc4_:§4!,§ = null;
         var _loc3_:int = this.§;,§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§;,§[_loc3_] as §4!,§).§%!6§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §;P§(param1:§4!,§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§4!,§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§,s§ == param1.§?!+§)
         {
            if(this.§`?§ < this.§+3§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§`?§ += param2 * this.§+3§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§!v§().SetAngularVelocity(param2 * this.§`?§);
            this.§'r§ = 0;
         }
         else if(this.§'r§ == 0)
         {
            this.§'r§ = this.§"8§.§0^§;
         }
         if(param1.§&!"§() || this.§&Y§(param1) || this.§'r§ > 0 && this.§"8§.§0^§ > this.§'r§ + this.§+3§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§+3§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§+3§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§+3§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §^]§.§1g§("Mighty_Eagle_Selected_1","ChannelBird");
                  §^]§.§1g§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§+3§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§!v§().GetPosition().x - this.§+3§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§!v§().GetPosition().y - this.§+3§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§+3§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§&Y§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§+3§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§'r§ = 0;
                  _loc7_.§>7§.§`!$§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §7!<§(param1:§4!,§, param2:Number) : Boolean
      {
         var _loc5_:§4!,§ = null;
         if(!this.§5R§ && this.mMightyEagleTimer > this.§+3§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§5R§ = true;
            this.§"8§.§8c§();
         }
         this.mMightyEagleTimer += param2;
         this.§"8§.particles.§#!B§(§4!F§.§=w§,§=j§.§[m§,§4!F§.§1E§,param1.§!v§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§!v§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§4!F§.§9-§(param1.§=p§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§6S§(this.§+3§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§%H§)
            {
               this.§%H§ = false;
               this.§"8§.§-!9§();
               param1.§+K§(§>'§.§0z§);
               this.mSardineCanAdded = false;
               param1.§>7§.§=!G§ = true;
               param1.§>7§.§#[§();
               for each(_loc5_ in this.§;,§)
               {
                  if(_loc5_ && _loc5_.§?B§())
                  {
                     _loc5_.§!v§().SetAwake(true);
                     _loc5_.§!v§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§20§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§;,§)
               {
                  if(_loc5_ && _loc5_.§?B§())
                  {
                     _loc5_.applyDamage(_loc5_.§?!+§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§!v§().GetPosition().y >= -5.5;
            this.§%H§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§]!7§(param2,new Point(this.§+3§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§+3§.MIGHTY_EAGLE_Y_CHANGE),this.§+3§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §6n§() : void
      {
         var _loc1_:§]o§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§4!,§ = null;
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
         while(this.§9Y§.length > 0)
         {
            _loc1_ = this.§9Y§.shift();
            _loc2_ = _loc1_.§6!%§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§;,§)
            {
               _loc8_ = _loc6_.§!v§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§!v§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§6!%§)
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
                     _loc6_.§!v§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§7?§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§"8§.particles.§#!B§(this.§import§(_loc1_.type),§=j§.§[m§,§4!F§.§<!>§,_loc3_,_loc4_,600,"",§4!F§.§?!C§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§"8§.particles.§#!B§(§4!F§.§0!G§,§=j§.§[m§,§4!F§.§1E§,_loc3_,_loc4_,_loc16_,"",§4!F§.§?!C§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §import§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §4!F§.§'7§;
      }
      
      public function §2b§(param1:Number) : void
      {
         var _loc2_:§4!,§ = null;
         var _loc3_:int = this.§;,§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§;,§[_loc3_];
            if(_loc2_.§,!I§())
            {
               if(this.§;P§(_loc2_,param1))
               {
                  this.§5! §(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§;w§())
            {
               this.§7!<§(_loc2_,param1);
            }
            else if(this.§&Y§(_loc2_))
            {
               _loc2_.§+K§(§>'§.§&u§);
               this.§5! §(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§+K§(§>'§.§&u§);
               this.§5! §(_loc3_,false,true,true);
            }
            else if(_loc2_.§!h§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§6n§();
      }
      
      private function §20§() : void
      {
         var _loc1_:§@3§ = null;
         for each(_loc1_ in this.§ V§)
         {
            this.§"8§.§3X§.§8I§.DestroyJoint(_loc1_.§0>§);
         }
      }
      
      public function §-[§() : Boolean
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;,§.length)
         {
            _loc2_ = this.§;,§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §&Y§(param1:§4!,§) : Boolean
      {
         if(param1 && param1.§@F§.§[!@§() != §>2§.§"I§ && this.§"8§.§&x§.§@>§(param1.§!v§().GetPosition().x,param1.§!v§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §5! §(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@3§ = null;
         var _loc7_:§3m§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§4!,§;
         if((_loc5_ = this.§;,§[param1]).§?B§())
         {
            ++this.§;4§;
         }
         else if(_loc5_.§!h§())
         {
            --this.§7!C§;
         }
         if(_loc5_ == this.§"8§.activeObject)
         {
            this.§"8§.activeObject = null;
         }
         if(param2)
         {
            this.§"8§.addScore(_loc5_.§@F§.score,§;9§.§5!§,true,_loc5_.§!v§().GetPosition().x,_loc5_.§!v§().GetPosition().y - 3,§4!F§.§&q§(_loc5_.§=p§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§"8§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§+b§(_loc5_.sprite);
         this.§4K§(_loc5_);
         for each(_loc6_ in this.§ V§)
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
         for each(_loc7_ in this.§[0§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§,!"§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§;,§[param1] = null;
         this.§;,§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§4!,§, param2:§=j§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §+b§(param1:Sprite) : void
      {
         if(this.§2]§.contains(param1))
         {
            this.§2]§.removeChild(param1);
            return;
         }
         if(this.§%e§.contains(param1))
         {
            this.§%e§.removeChild(param1);
            return;
         }
         if(this.§?G§.contains(param1))
         {
            this.§?G§.removeChild(param1);
            return;
         }
         if(this.§,!#§.contains(param1))
         {
            this.§,!#§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§4!,§) : void
      {
         if(param1.§7H§().toUpperCase() == "WHITE_EGG" || param1.§#w§())
         {
            if(param1.§=p§.toUpperCase() == §[[§.§^!'§)
            {
               this.addExplosions(§]o§.§[!3§,param1.§!v§().GetPosition().x,param1.§!v§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§]o§.§<x§,param1.§!v§().GetPosition().x,param1.§!v§().GetPosition().y);
            }
         }
      }
      
      public function §1!7§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§5! §(this.§;,§.indexOf(param1),param2,param3,param4);
      }
      
      public function §3k§(param1:Number, param2:Number) : void
      {
         this.§=C§.x = -param1;
         this.§=C§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§4!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;,§.length)
         {
            _loc3_ = this.§;,§[_loc2_] as §4!,§;
            if(_loc3_ && _loc3_.§?B§() && _loc3_.§,s§ > 0)
            {
               if(!param1 || _loc3_.§>7§.mTryToBlink <= 0 && _loc3_.§>7§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §"u§(param1:Boolean = false) : int
      {
         var _loc4_:§4!,§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§;,§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§;,§[_loc3_] as §4!,§) && _loc4_.§?B§() && _loc4_.§,s§ > 0)
            {
               if(!param1 || _loc4_.§>7§.mTryToBlink <= 0 && _loc4_.§>7§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §'F§() : int
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;,§)
         {
            if(_loc2_ && (_loc2_.§!A§() || _loc2_.§]!=§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §5!8§() : int
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;,§)
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
         var _loc3_:§4!,§ = null;
         var _loc2_:int = this.§;,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;,§[_loc2_];
            if(_loc3_ && _loc3_.§?B§() && _loc3_.§,s§ > 0)
            {
               _loc3_.§>7§.mTryToScream = §+q§.§+!§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §1'§() : Boolean
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = this.§;,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;,§[_loc1_] as §4!,§;
            if(_loc2_ && _loc2_.§!h§() && _loc2_.§,s§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = this.§;,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;,§[_loc1_] as §4!,§;
            if(_loc2_ && _loc2_.§,s§ > 0 && _loc2_.§+!<§ != §6e§.§#M§)
            {
               if(_loc2_.§%S§() && !_loc2_.§&!"§())
               {
                  return false;
               }
               if(_loc2_.§!h§() && _loc2_.§,s§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §1!#§(param1:Boolean = false) : §4!,§
      {
         var _loc5_:int = 0;
         var _loc6_:§4!,§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§;,§.length;
         var _loc3_:int = 1 + Math.random() * this.§"u§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§;,§[_loc5_]) && _loc6_.§?B§() && _loc6_.§,s§ > 0)
               {
                  if(!param1 || _loc6_.§>7§.mTryToBlink <= 0 && _loc6_.§>7§.mTryToScream <= 0)
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
      
      public function §8!<§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§;,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§;,§[_loc2_] as §4!,§).§@F§.score;
            if((this.§;,§[_loc2_] as §4!,§).§%S§())
            {
               _loc1_ += §2W§.§"!'§.getValue() * int((this.§;,§[_loc2_] as §4!,§).§?!+§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§"8§.slingshot.§8!<§());
      }
      
      public function §;j§(param1:§4!,§, param2:§4!,§) : Boolean
      {
         if(param1.§!h§() && param2.§!h§())
         {
            return true;
         }
         if(!param1.§-O§() && !param2.§-O§())
         {
            return true;
         }
         return false;
      }
      
      public function §`!F§() : void
      {
         this.mSardineCanAdded = true;
         this.§7!C§ = 0;
      }
      
      public function objectCollision(param1:§4!,§, param2:§4!,§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§;w§() || param2.§?B§())
            {
               param2.applyDamage(param2.§?!+§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§;w§() || param1.§?B§())
            {
               param1.applyDamage(param1.§?!+§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§+3§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§,!I§() || param2.§,!I§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;j§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§11§(param2.§7H§());
         var _loc5_:Number = param1.§`9§(param2.§7H§());
         var _loc6_:Number = param2.§11§(param1.§7H§());
         var _loc7_:Number = param2.§`9§(param1.§7H§());
         var _loc8_:Number = param1.§!v§().GetMass() * param1.§!v§().GetLinearVelocity().x - param2.§!v§().GetMass() * param2.§!v§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§!v§().GetMass() * param1.§!v§().GetLinearVelocity().y - param2.§!v§().GetMass() * param2.§!v§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§,s§);
         var _loc14_:Number = Math.max(0,param2.§,s§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§!h§(),_loc14_ == param2.§?!+§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§!h§(),_loc13_ == param1.§?!+§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§8w§(new b2Vec2(param2.§!v§().GetLinearVelocity().x * _loc18_,param2.§!v§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§8w§(new b2Vec2(param1.§!v§().GetLinearVelocity().x * _loc19_,param1.§!v§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §51§() : void
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = this.§;,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;,§[_loc1_] as §4!,§;
            if(_loc2_ != null && _loc2_.§?B§())
            {
               this.§5! §(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#!C§() : void
      {
         var _loc2_:§4!,§ = null;
         var _loc1_:int = this.§;,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;,§[_loc1_] as §4!,§;
            if(_loc2_ != null && _loc2_.§#w§())
            {
               this.§5! §(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §7l§() : int
      {
         return this.§;,§.length;
      }
      
      public function §6!!§(param1:§3!H§) : void
      {
         var _loc4_:§4!,§ = null;
         var _loc5_:§55§ = null;
         var _loc6_:§!!D§ = null;
         var _loc7_:§@3§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;,§.length)
         {
            if((_loc4_ = this.§;,§[_loc2_]).§4U§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §55§()).angle = _loc4_.§>!+§();
                  _loc5_.id = _loc4_.§=p§;
                  _loc5_.x = _loc4_.§!v§().GetPosition().x;
                  _loc5_.y = _loc4_.§!v§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§ V§.length)
         {
            _loc7_ = this.§ V§[_loc3_];
            _loc6_ = new §!!D§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.get,_loc7_.§#!"§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§#c§,_loc7_.motorSpeed,_loc7_.§<%§,_loc7_.maxTorque);
            param1.§#!8§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §<o§() : void
      {
         var _loc1_:int = 0;
         while(this.§;,§.length > _loc1_)
         {
            if(this.§;,§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§1!7§(this.§;,§[_loc1_]);
            }
         }
      }
      
      public function §?P§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§;,§.length)
         {
            if(this.§;,§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§;,§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§;A§ = param1;
         this.§#G§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§;,§.length)
         {
            if(this.§;,§[_loc2_].isTexture())
            {
               this.§;,§[_loc2_].sprite.visible = !this.§;A§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§0_§ = param1;
      }
      
      public function §!!6§() : Boolean
      {
         return this.§0_§;
      }
      
      public function §,!-§() : int
      {
         return this.§!4§;
      }
      
      public function §]x§() : int
      {
         return this.§;4§;
      }
      
      public function §7$§(param1:String) : §4!,§
      {
         var _loc3_:§4!,§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;,§.length)
         {
            _loc3_ = this.§;,§[_loc2_] as §4!,§;
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
