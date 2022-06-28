package §]![§
{
   import §!!§.§>4§;
   import §!!9§.Texture;
   import §+!r§.§@!a§;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §+&§.§;!8§;
   import §+&§.§<T§;
   import §,6§.§5z§;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §=!7§.§,F§;
   import §=!7§.§-!`§;
   import §=!7§.§6! §;
   import §=!7§.§@!;§;
   import §>o§.§"!e§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import §>o§.§0!N§;
   import §>o§.§8!4§;
   import §[!N§.b2PrismaticJoint;
   import §[!N§.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[?§
   {
       
      
      protected var §@!d§:Vector.<§4!H§>;
      
      protected var §!E§:int;
      
      public var §+!X§:§-!7§;
      
      public var §5!%§:Vector.<§1! §>;
      
      protected var §1_§:Sprite;
      
      protected var §==§:Sprite;
      
      private var §>e§:Sprite;
      
      private var §16§:Sprite;
      
      private var §%L§:Sprite;
      
      protected var §+M§:Vector.<Texture>;
      
      protected var §<?§:Vector.<§@!;§>;
      
      protected var §]%§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §1!&§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §=!J§:Boolean = false;
      
      protected var §3!5§:Number;
      
      protected var §<!#§:int;
      
      protected var §#t§:Vector.<§6! §>;
      
      protected var §;!o§:int = 0;
      
      private var §;!0§:int = 0;
      
      private var §2i§:int = 0;
      
      private var §@W§:int;
      
      private var §?!e§:Boolean = true;
      
      private var §2!<§:Boolean = true;
      
      public function §[?§(param1:§-!7§, param2:§>4§, param3:Sprite)
      {
         var _loc5_:§@!;§ = null;
         var _loc6_:§,F§ = null;
         var _loc7_:§4!H§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§4!H§ = null;
         var _loc11_:§4!H§ = null;
         this.§@!d§ = new Vector.<§4!H§>();
         this.§5!%§ = new Vector.<§1! §>();
         this.§+M§ = new Vector.<Texture>();
         this.§3!5§ = this.§3D§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§#t§ = new Vector.<§6! §>();
         super();
         this.§+!X§ = param1;
         this.§!E§ = 0;
         this.§==§ = param3;
         this.§==§.§<V§ = false;
         this.§2!<§ = true;
         this.§?!e§ = true;
         this.§1_§ = new Sprite();
         this.§>e§ = new Sprite();
         this.§16§ = new Sprite();
         this.§%L§ = new Sprite();
         this.§==§.addChild(this.§1_§);
         this.§==§.addChild(this.§>e§);
         this.§==§.addChild(this.§16§);
         this.§==§.addChild(this.§%L§);
         this.addObject(§@!a§.§^!o§(param2.theme).§ k§,(this.§+!X§.§<!x§.§&!7§ + this.§+!X§.§<!x§.§=!i§) / 2,this.§+!X§.§<!x§.§;2§ + §<T§.§`!U§);
         this.§@W§ = this.§@!d§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§"X§)
         {
            _loc6_ = param2.§^k§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§#!"§();
         this.§4!"§(true);
         this.§<?§ = new Vector.<§@!;§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§3!l§)
         {
            this.§<?§.push(§@!;§.§+1§(param2.§',§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§<?§)
         {
            _loc8_ = _loc5_.index1 + this.§@W§;
            _loc9_ = _loc5_.index2 + this.§@W§;
            if(_loc8_ < this.§@!d§.length && _loc9_ < this.§@!d§.length)
            {
               _loc10_ = this.§@!d§[_loc8_];
               _loc11_ = this.§@!d§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-!`§.§,_§)
               {
                  _loc5_.§ E§ = this.§+!X§.mLevelEngine.mWorld.§6!8§(_loc5_.§+!@§(_loc10_,_loc11_));
               }
               else
               {
                  this.§#t§.push(new §6! §(_loc8_,_loc9_,_loc5_.§;!4§));
               }
            }
         }
      }
      
      protected function get §3D§() : Class
      {
         return §3D§;
      }
      
      public function get §;+§() : Sprite
      {
         return this.§%L§;
      }
      
      public function get §47§() : Sprite
      {
         return this.§==§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§@!d§.length > 0)
         {
            this.§+!W§(0);
         }
         this.§@!d§ = null;
         this.§#t§ = null;
         if(this.§==§)
         {
            this.§==§.dispose();
            this.§==§ = null;
            this.§1_§ = null;
            this.§%L§ = null;
            this.§>e§ = null;
            this.§16§ = null;
         }
         while(this.§+M§.length > 0)
         {
            _loc1_ = this.§+M§.pop();
            this.§+!X§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §4!"§(param1:Boolean) : void
      {
         this.§1_§.visible = param1;
      }
      
      private function §#!"§() : void
      {
         var _loc3_:§4!H§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§;!U§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§4!H§> = new Vector.<§4!H§>();
         for each(_loc3_ in this.§@!d§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§==§);
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
            this.§^!+§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§"!V§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§+!X§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§+M§.push(_loc12_);
            (_loc13_ = new §;!U§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§1_§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §"!V§(param1:Vector.<§4!H§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§4!H§ = null;
         var _loc11_:§0!N§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§&!'§.shape).§,s§();
            _loc13_ = new Rectangle(_loc12_[0].x / §-!7§.§8!r§ * param6,_loc12_[0].y / §-!7§.§8!r§ * param6,(_loc12_[1].x - _loc12_[0].x) / §-!7§.§8!r§ * param6,(_loc12_[1].y - _loc12_[0].y) / §-!7§.§8!r§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§[!i§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §^!+§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§+!X§.background.§+!_§();
         var _loc5_:§5z§;
         if(_loc5_ = this.§+!X§.backgroundTextureManager.§`F§(_loc4_))
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
      
      public function §78§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         var _loc10_:§4!H§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §,u§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §%s§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §9J§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §]!O§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §3!v§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §,7§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §]!Z§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §4J§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§;!o§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!H§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§4!H§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§?!e§;
            this.§@!d§[this.§@!d§.length] = _loc11_;
         }
         else
         {
            this.§@!d§[this.§@!d§.length] = _loc11_;
         }
         if(_loc11_ is §4J§ && !_loc11_.§3!i§())
         {
            this.§>e§.addChild(_loc10_);
            ++this.§;!o§;
         }
         else if(_loc11_.front || param9)
         {
            this.§%L§.addChild(_loc10_);
         }
         else
         {
            this.§16§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§+!X§.§75§(_loc11_);
         }
         if(param6)
         {
            this.§+!X§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §+1§(param1:int, param2:§4!H§, param3:§4!H§) : §@!;§
      {
         var _loc6_:§@!;§ = null;
         var _loc4_:int = this.§@!d§.indexOf(param2) - this.§@W§;
         var _loc5_:int = this.§@!d§.indexOf(param3) - this.§@W§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@!;§(§-!`§.§,!w§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§ E§ = this.§+!X§.mLevelEngine.mWorld.§6!8§(_loc6_.§+!@§(param2,param3));
            this.§<?§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §^!L§(param1:§@!;§) : void
      {
         if(!(param1.§ E§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§4!H§ = this.§^k§(param1.index1 + this.§@W§);
         var _loc3_:§4!H§ = this.§^k§(param1.index2 + this.§@W§);
         this.§+!X§.mLevelEngine.mWorld.§+!O§(param1.§ E§);
         param1.§ E§ = this.§+!X§.mLevelEngine.mWorld.§6!8§(param1.§+!@§(_loc2_,_loc3_));
      }
      
      public function §7!#§(param1:§4!H§) : Vector.<§@!;§>
      {
         var _loc4_:§@!;§ = null;
         var _loc2_:Vector.<§@!;§> = new Vector.<§@!;§>();
         var _loc3_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§<?§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §<!r§() : Vector.<§@!;§>
      {
         return this.§<?§;
      }
      
      public function §0!C§(param1:§4!H§) : void
      {
         var _loc2_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         var _loc3_:int = this.§<?§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§<?§[_loc3_].index1 == _loc2_ || this.§<?§[_loc3_].index2 == _loc2_)
            {
               this.§<?§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §3!d§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         var _loc3_:int = this.§@!d§.indexOf(param1) - this.§@W§;
         var _loc4_:int = this.§@!d§.indexOf(param2) - this.§@W§;
         var _loc5_:int = this.§<?§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§<?§[_loc5_].index1 == _loc3_ && this.§<?§[_loc5_].index2 == _loc4_ || this.§<?§[_loc5_].index1 == _loc4_ && this.§<?§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         var _loc10_:§4!H§ = null;
         var _loc11_:§8!4§ = null;
         var _loc12_:§8!4§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§78§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§2i§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §+!4§.§ !`§(param2);
            _loc10_ = new §-!0§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §+!4§.§ !`§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §+!4§.§ !`§(param2);
            }
            if(_loc12_.§ W§ == §8!4§.§97§ || _loc12_.§ W§ == §8!4§.§+!#§)
            {
               _loc10_ = new §&u§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §4!H§(this,param1,this.§+!X§.mLevelEngine.mWorld,this.§+!X§,this.§!E§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §@c§(param1:Number) : void
      {
         var _loc3_:§4!H§ = null;
         var _loc2_:int = this.§@!d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
            if(_loc3_)
            {
               if(_loc3_.§%,§ <= 0)
               {
                  this.§+!W§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§"!7§();
                  _loc3_.override();
               }
            }
            _loc2_--;
         }
         this.§<!E§(param1);
      }
      
      protected function §<!E§(param1:Number) : void
      {
         var _loc3_:§@!;§ = null;
         var _loc4_:§6! § = null;
         var _loc5_:int = 0;
         var _loc6_:§4!H§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§#t§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§#t§[_loc2_]).§2;§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§8[§("block_" + _loc5_))
                  {
                     this.§[Z§(_loc6_,true,true,true);
                  }
                  this.§#t§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§<?§)
         {
            if(_loc3_.type == §-!`§.§+!]§ && _loc3_.§8!A§)
            {
               _loc7_ = (_loc3_.§ E§ as b2PrismaticJoint).§!!Y§();
               _loc8_ = (_loc3_.§ E§ as b2PrismaticJoint).§%!4§();
               if(_loc3_.§]!L§ && _loc3_.§0w§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§ E§ as b2PrismaticJoint).§<! §(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§5!%§.push(§1! §.createExplosion(param1,param2,param3));
         §6!H§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §&8§(param1:Number, param2:Number) : int
      {
         var _loc4_:§4!H§ = null;
         var _loc3_:int = this.§@!d§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!d§[_loc3_])
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
      
      public function §!!,§(param1:Number, param2:Number) : §4!H§
      {
         var _loc4_:§4!H§ = null;
         var _loc3_:int = this.§@!d§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§@!d§[_loc3_])
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
      
      public function §^k§(param1:int) : §4!H§
      {
         return this.§@!d§[param1];
      }
      
      public function §4W§(param1:Number, param2:Number) : void
      {
         var _loc4_:§4!H§ = null;
         var _loc3_:int = this.§@!d§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§@!d§[_loc3_] as §4!H§).§4W§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §6!<§(param1:§4!H§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§4!H§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§%,§ == param1.§0K§)
         {
            if(this.§3!5§ < this.§3D§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§3!5§ += param2 * this.§3D§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§+$§().§09§(param2 * this.§3!5§);
            this.§<!#§ = 0;
         }
         else if(this.§<!#§ == 0)
         {
            this.§<!#§ = this.§+!X§.§0!F§;
         }
         if(param1.§;!3§() || this.§8!=§(param1) || this.§<!#§ > 0 && this.§+!X§.§0!F§ > this.§<!#§ + this.§3D§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§3D§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§3D§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§3D§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §6!H§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §6!H§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§3D§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§+$§().GetPosition().x - this.§3D§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§+$§().GetPosition().y - this.§3D§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§3D§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§8!=§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§3D§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§<!#§ = 0;
                  _loc7_.§[!"§.§&O§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §5f§(param1:§4!H§, param2:Number) : Boolean
      {
         var _loc5_:§4!H§ = null;
         if(this.§3D§.MIGHTY_EAGLE_USE_SHADE && !this.§=!J§ && this.mMightyEagleTimer > this.§3D§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§=!J§ = true;
            this.§+!X§.§!m§();
         }
         this.mMightyEagleTimer += param2;
         this.§+!X§.particles.§=!K§(§6Q§.§&4§,§,n§.§9!&§,§6Q§.§?G§,param1.§+$§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§+$§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§6Q§.§5r§(param1.§@!p§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§>p§(this.§3D§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§1!&§)
            {
               this.§1!&§ = false;
               this.§+!X§.§!![§();
               param1.§;k§(§'y§.§9V§);
               this.mSardineCanAdded = false;
               param1.§[!"§.§?!]§ = true;
               param1.§[!"§.§@F§();
               for each(_loc5_ in this.§@!d§)
               {
                  if(_loc5_ && _loc5_.§'!e§())
                  {
                     _loc5_.§+$§().SetAwake(true);
                     _loc5_.§+$§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§,A§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§@!d§)
               {
                  if(_loc5_ && _loc5_.§'!e§())
                  {
                     _loc5_.applyDamage(_loc5_.§0K§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§+$§().GetPosition().y >= -5.5;
            this.§1!&§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§,!T§(param2,new Point(this.§3D§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§3D§.MIGHTY_EAGLE_Y_CHANGE),this.§3D§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §0"§() : void
      {
         var _loc1_:§1! § = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§4!H§ = null;
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
         while(this.§5!%§.length > 0)
         {
            _loc1_ = this.§5!%§.shift();
            _loc2_ = _loc1_.§]!E§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§@!d§)
            {
               _loc8_ = _loc6_.§+$§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§+$§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§]!E§)
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
                     _loc6_.§+$§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§`!>§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§+!X§.particles.§=!K§(this.§!S§(_loc1_.type),§,n§.§9!&§,§6Q§.§5!]§,_loc3_,_loc4_,600,"",§6Q§.§&!$§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§+!X§.particles.§=!K§(§6Q§.§ t§,§,n§.§9!&§,§6Q§.§?G§,_loc3_,_loc4_,_loc16_,"",§6Q§.§&!$§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §!S§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §6Q§.§,!p§;
      }
      
      public function §2O§(param1:Number) : void
      {
         var _loc2_:§4!H§ = null;
         var _loc3_:int = this.§@!d§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc3_];
            if(_loc2_.§=!P§())
            {
               if(this.§6!<§(_loc2_,param1))
               {
                  this.§+!W§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§3!i§())
            {
               this.§5f§(_loc2_,param1);
            }
            else if(this.§8!=§(_loc2_))
            {
               _loc2_.§;k§(§'y§.§+i§);
               this.§+!W§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§;k§(§'y§.§+i§);
               this.§+!W§(_loc3_,false,true,true);
            }
            else if(_loc2_.§<=§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§0"§();
      }
      
      private function §,A§() : void
      {
         var _loc1_:§@!;§ = null;
         for each(_loc1_ in this.§<?§)
         {
            this.§+!X§.mLevelEngine.mWorld.§+!O§(_loc1_.§ E§);
         }
      }
      
      public function §%!F§() : Boolean
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!d§.length)
         {
            _loc2_ = this.§@!d§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §8!=§(param1:§4!H§) : Boolean
      {
         if(param1 && param1.§&!'§.§"5§() != §"!e§.§[v§ && this.§+!X§.§<!x§.§+n§(param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §+!W§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@!;§ = null;
         var _loc7_:§6! § = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§4!H§;
         if((_loc5_ = this.§@!d§[param1]).§'!e§())
         {
            ++this.§;!0§;
         }
         else if(_loc5_.§<=§())
         {
            --this.§;!o§;
         }
         if(_loc5_ == this.§+!X§.activeObject)
         {
            this.§+!X§.activeObject = null;
         }
         if(param2)
         {
            this.§+!X§.addScore(_loc5_.§&!'§.score,§;!8§.§-"§,true,_loc5_.§+$§().GetPosition().x,_loc5_.§+$§().GetPosition().y - 3,§6Q§.§>k§(_loc5_.§@!p§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§+!X§.particles);
         }
         if(param4)
         {
            this.§-!V§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§>L§(_loc5_.sprite);
         this.§0!C§(_loc5_);
         for each(_loc6_ in this.§<?§)
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
         for each(_loc7_ in this.§#t§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§2;§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§@!d§[param1] = null;
         this.§@!d§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§4!H§, param2:§,n§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §>L§(param1:Sprite) : void
      {
         if(this.§16§.contains(param1))
         {
            this.§16§.removeChild(param1);
            return;
         }
         if(this.§>e§.contains(param1))
         {
            this.§>e§.removeChild(param1);
            return;
         }
         if(this.§1_§.contains(param1))
         {
            this.§1_§.removeChild(param1);
            return;
         }
         if(this.§%L§.contains(param1))
         {
            this.§%L§.removeChild(param1);
            return;
         }
      }
      
      protected function §-!V§(param1:§4!H§) : void
      {
         if(param1.§^!S§().toUpperCase() == "WHITE_EGG" || param1.§=f§())
         {
            if(param1.§@!p§.toUpperCase() == §]!O§.§3!S§)
            {
               this.addExplosions(§1! §.§8!8§,param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§1! §.§3!$§,param1.§+$§().GetPosition().x,param1.§+$§().GetPosition().y);
            }
         }
      }
      
      public function §[Z§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§+!W§(this.§@!d§.indexOf(param1),param2,param3,param4);
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         this.§==§.x = -param1;
         this.§==§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§4!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!d§.length)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
            if(_loc3_ && _loc3_.§'!e§() && _loc3_.§%,§ > 0)
            {
               if(!param1 || _loc3_.§[!"§.mTryToBlink <= 0 && _loc3_.§[!"§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §const§(param1:Boolean = false) : int
      {
         var _loc4_:§4!H§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§@!d§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§@!d§[_loc3_] as §4!H§) && _loc4_.§'!e§() && _loc4_.§%,§ > 0)
            {
               if(!param1 || _loc4_.§[!"§.mTryToBlink <= 0 && _loc4_.§[!"§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §!!M§() : int
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!d§)
         {
            if(_loc2_ && (_loc2_.§'!#§() || _loc2_.§[!<§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §%!o§() : int
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@!d§)
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
         var _loc3_:§4!H§ = null;
         var _loc2_:int = this.§@!d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!d§[_loc2_];
            if(_loc3_ && _loc3_.§'!e§() && _loc3_.§%,§ > 0)
            {
               _loc3_.§[!"§.mTryToScream = §+s§.§'!m§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<S§() : Boolean
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = this.§@!d§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc2_ && _loc2_.§<=§() && _loc2_.§%,§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = this.§@!d§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc2_ && _loc2_.§%,§ > 0 && _loc2_.§ W§ != §8!4§.§`!N§)
            {
               if(_loc2_.§8s§() && !_loc2_.§;!3§())
               {
                  return false;
               }
               if(_loc2_.§<=§() && _loc2_.§%,§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<W§(param1:Boolean = false) : §4!H§
      {
         var _loc5_:int = 0;
         var _loc6_:§4!H§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§@!d§.length;
         var _loc3_:int = 1 + Math.random() * this.§const§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§@!d§[_loc5_]) && _loc6_.§'!e§() && _loc6_.§%,§ > 0)
               {
                  if(!param1 || _loc6_.§[!"§.mTryToBlink <= 0 && _loc6_.§[!"§.mTryToScream <= 0)
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
      
      public function §6!§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§@!d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§@!d§[_loc2_] as §4!H§).§&!'§.score;
            if((this.§@!d§[_loc2_] as §4!H§).§8s§())
            {
               _loc1_ += §-!7§.§>!%§.getValue() * int((this.§@!d§[_loc2_] as §4!H§).§0K§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§+!X§.slingshot.§6!§());
      }
      
      public function §[!9§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         if(param1.§<=§() && param2.§<=§())
         {
            return true;
         }
         if(!param1.§^!"§() && !param2.§^!"§())
         {
            return true;
         }
         return false;
      }
      
      public function §>h§() : void
      {
         this.mSardineCanAdded = true;
         this.§;!o§ = 0;
      }
      
      public function §!!u§(param1:§4!H§, param2:§4!H§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§3!i§() || param2.§'!e§())
            {
               param2.applyDamage(param2.§0K§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§3!i§() || param1.§'!e§())
            {
               param1.applyDamage(param1.§0K§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§3D§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§=!P§() || param2.§=!P§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§[!9§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§,!H§(param2.§^!S§());
         var _loc5_:Number = param1.§-![§(param2.§^!S§());
         var _loc6_:Number = param2.§,!H§(param1.§^!S§());
         var _loc7_:Number = param2.§-![§(param1.§^!S§());
         var _loc8_:Number = param1.§+$§().GetMass() * param1.§+$§().GetLinearVelocity().x - param2.§+$§().GetMass() * param2.§+$§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§+$§().GetMass() * param1.§+$§().GetLinearVelocity().y - param2.§+$§().GetMass() * param2.§+$§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§%,§);
         var _loc14_:Number = Math.max(0,param2.§%,§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§<=§(),_loc14_ == param2.§0K§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§<=§(),_loc13_ == param1.§0K§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§9§(new b2Vec2(param2.§+$§().GetLinearVelocity().x * _loc18_,param2.§+$§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§9§(new b2Vec2(param1.§+$§().GetLinearVelocity().x * _loc19_,param1.§+$§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §%Q§() : void
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = this.§@!d§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc2_ != null && _loc2_.§'!e§())
            {
               this.§+!W§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §5!"§() : void
      {
         var _loc2_:§4!H§ = null;
         var _loc1_:int = this.§@!d§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!d§[_loc1_] as §4!H§;
            if(_loc2_ != null && _loc2_.§=f§())
            {
               this.§+!W§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[w§() : int
      {
         return this.§@!d§.length;
      }
      
      public function §@m§(param1:§>4§) : void
      {
         var _loc4_:§4!H§ = null;
         var _loc5_:§,F§ = null;
         var _loc6_:§-!`§ = null;
         var _loc7_:§@!;§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@!d§.length)
         {
            if((_loc4_ = this.§@!d§[_loc2_]).§#i§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §,F§()).angle = _loc4_.§[!i§();
                  _loc5_.id = _loc4_.§@!p§;
                  _loc5_.x = _loc4_.§+$§().GetPosition().x;
                  _loc5_.y = _loc4_.§+$§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§<?§.length)
         {
            _loc7_ = this.§<?§[_loc3_];
            _loc6_ = new §-!`§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§2!Q§,_loc7_.§]!L§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§0w§,_loc7_.motorSpeed,_loc7_.§8!A§,_loc7_.maxTorque);
            param1.§9!h§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §6W§() : void
      {
         var _loc1_:int = 0;
         while(this.§@!d§.length > _loc1_)
         {
            if(this.§@!d§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§[Z§(this.§@!d§[_loc1_]);
            }
         }
      }
      
      public function §-!X§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§@!d§.length)
         {
            if(this.§@!d§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§@!d§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§?!e§ = param1;
         this.§4!"§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§@!d§.length)
         {
            if(this.§@!d§[_loc2_].isTexture())
            {
               this.§@!d§[_loc2_].sprite.visible = !this.§?!e§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2!<§ = param1;
      }
      
      public function §<!9§() : Boolean
      {
         return this.§2!<§;
      }
      
      public function § Q§() : int
      {
         return this.§2i§;
      }
      
      public function §+!Y§() : int
      {
         return this.§;!0§;
      }
      
      public function §8[§(param1:String) : §4!H§
      {
         var _loc3_:§4!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!d§.length)
         {
            _loc3_ = this.§@!d§[_loc2_] as §4!H§;
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
