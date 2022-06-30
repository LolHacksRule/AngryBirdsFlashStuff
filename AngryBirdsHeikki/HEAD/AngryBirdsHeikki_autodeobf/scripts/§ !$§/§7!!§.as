package § !$§
{
   import § A§.§&!#§;
   import § A§.§-!E§;
   import § A§.§68§;
   import § A§.§8z§;
   import § A§.§9c§;
   import §!!S§.Texture;
   import §+!I§.§]4§;
   import §+!]§.§+!=§;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §6!;§.§!>§;
   import §6!;§.Sprite;
   import §7!3§.b2PrismaticJoint;
   import §7!3§.b2RevoluteJoint;
   import §7!3§.b2WeldJoint;
   import §7e§.§8!P§;
   import §9!'§.§&<§;
   import §9!'§.§0!%§;
   import §9!'§.§8j§;
   import §9!'§.§[v§;
   import §^!"§.§ >§;
   import §^!"§.§&K§;
   import §^!"§.§-!1§;
   import §^!"§.§@!E§;
   import §^f§.§<q§;
   import §`!^§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!!§
   {
       
      
      protected var §3!`§:Vector.<§>C§>;
      
      protected var §3D§:int;
      
      public var §]B§:§0!%§;
      
      public var §8!N§:Vector.<§4!<§>;
      
      protected var §>!,§:Sprite;
      
      protected var §`!,§:Sprite;
      
      private var §-_§:Sprite;
      
      private var §9i§:Sprite;
      
      private var §,n§:Sprite;
      
      protected var §8!b§:Vector.<Texture>;
      
      protected var §=!d§:Vector.<§-!1§>;
      
      protected var §3!<§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var § for§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §@1§:Boolean = false;
      
      protected var §&@§:Number;
      
      protected var §4!4§:int;
      
      protected var §2s§:Vector.<§&K§>;
      
      protected var §&!?§:int = 0;
      
      private var §3!7§:int = 0;
      
      private var §1! §:int = 0;
      
      protected var §#!3§:int;
      
      private var §`!'§:Boolean = true;
      
      private var §=![§:Boolean = true;
      
      public function §7!!§(param1:§0!%§, param2:§8!P§, param3:Sprite)
      {
         var _loc5_:§-!1§ = null;
         var _loc6_:§ >§ = null;
         var _loc7_:§>C§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§>C§ = null;
         var _loc11_:§>C§ = null;
         this.§3!`§ = new Vector.<§>C§>();
         this.§8!N§ = new Vector.<§4!<§>();
         this.§8!b§ = new Vector.<Texture>();
         this.§&@§ = this.§&<§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§2s§ = new Vector.<§&K§>();
         super();
         this.§]B§ = param1;
         this.§3D§ = 0;
         this.§`!,§ = param3;
         this.§`!,§.§`T§ = false;
         this.§=![§ = true;
         this.§`!'§ = true;
         this.§>!,§ = new Sprite();
         this.§-_§ = new Sprite();
         this.§9i§ = new Sprite();
         this.§,n§ = new Sprite();
         this.§`!,§.addChild(this.§>!,§);
         this.§`!,§.addChild(this.§-_§);
         this.§`!,§.addChild(this.§9i§);
         this.§`!,§.addChild(this.§,n§);
         this.§&H§(§]4§.§#_§(param2.theme).§4!V§,(this.§]B§.§%!E§.§<s§ + this.§]B§.§%!E§.§;!T§) / 2,this.§]B§.§%!E§.§3m§ + §[v§.§-!P§);
         this.§#!3§ = this.§3!`§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§+b§)
         {
            _loc6_ = param2.§]I§(_loc4_);
            if(_loc7_ = this.§&H§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§@!"§();
         this.§ !_§(true);
         this.§=!d§ = new Vector.<§-!1§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§%B§)
         {
            this.§=!d§.push(§-!1§.§+!Y§(param2.§@!^§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§=!d§)
         {
            _loc8_ = _loc5_.index1 + this.§#!3§;
            _loc9_ = _loc5_.index2 + this.§#!3§;
            if(_loc8_ < this.§3!`§.length && _loc9_ < this.§3!`§.length)
            {
               _loc10_ = this.§3!`§[_loc8_];
               _loc11_ = this.§3!`§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §@!E§.§'x§)
               {
                  _loc5_.§1%§ = this.§]B§.mLevelEngine.mWorld.§,2§(_loc5_.§<C§(_loc10_,_loc11_));
               }
               else
               {
                  this.§2s§.push(new §&K§(_loc8_,_loc9_,_loc5_.§=!4§));
               }
            }
         }
      }
      
      protected function get §&<§() : Class
      {
         return §&<§;
      }
      
      public function get §<!'§() : Sprite
      {
         return this.§,n§;
      }
      
      public function get §9B§() : Sprite
      {
         return this.§`!,§;
      }
      
      public function get §&!C§() : Sprite
      {
         return this.§9i§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§3!`§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§3!`§ = null;
         this.§2s§ = null;
         if(this.§`!,§)
         {
            this.§`!,§.dispose();
            this.§`!,§ = null;
            this.§>!,§ = null;
            this.§,n§ = null;
            this.§-_§ = null;
            this.§9i§ = null;
         }
         while(this.§8!b§.length > 0)
         {
            _loc1_ = this.§8!b§.pop();
            this.§]B§.textureManager.§ C§(_loc1_);
         }
      }
      
      private function § !_§(param1:Boolean) : void
      {
         this.§>!,§.visible = param1;
      }
      
      private function §@!"§() : void
      {
         var _loc3_:§>C§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§!>§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§>C§> = new Vector.<§>C§>();
         for each(_loc3_ in this.§3!`§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§`!,§);
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
            this.§%!e§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§"b§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]B§.textureManager.§@!&§(_loc10_);
            this.§8!b§.push(_loc12_);
            (_loc13_ = new §!>§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§>!,§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §"b§(param1:Vector.<§>C§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§>C§ = null;
         var _loc11_:§9c§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§]1§.shape).§6! §();
            _loc13_ = new Rectangle(_loc12_[0].x / §0!%§.§"m§ * param6,_loc12_[0].y / §0!%§.§"m§ * param6,(_loc12_[1].x - _loc12_[0].x) / §0!%§.§"m§ * param6,(_loc12_[1].y - _loc12_[0].y) / §0!%§.§"m§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§>s§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §%!e§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]B§.background.§1!=§();
         var _loc5_:§+!=§;
         if(_loc5_ = this.§]B§.backgroundTextureManager.§#P§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            _loc8_ = _loc6_.width;
            _loc9_ = _loc6_.height;
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
      
      public function §3!h§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>C§
      {
         var _loc10_:§-!E§ = §8z§.§3Z§(param2);
         return new §^!M§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>C§
      {
         var _loc10_:§>C§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §!!E§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §0!-§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §>#§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new § Y§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §!!4§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §1?§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §[!!§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §8!Y§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §2!J§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§&!?§ > 0;
      }
      
      public function §&H§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>C§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§>C§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§`!'§;
            this.§3!`§[this.§3!`§.length] = _loc11_;
         }
         else
         {
            this.§3!`§[this.§3!`§.length] = _loc11_;
         }
         if(_loc11_ is §2!J§ && !_loc11_.§&!Z§())
         {
            this.§-_§.addChild(_loc10_);
            ++this.§&!?§;
         }
         else if(_loc11_.front || param9)
         {
            this.§,n§.addChild(_loc10_);
         }
         else
         {
            this.§9i§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]B§.§!! §(_loc11_);
         }
         if(param6)
         {
            this.§]B§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §+!Y§(param1:int, param2:§>C§, param3:§>C§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0) : §-!1§
      {
         var _loc15_:§-!1§ = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:§&K§ = null;
         var _loc13_:int = this.§3!`§.indexOf(param2) - this.§#!3§;
         var _loc14_:int = this.§3!`§.indexOf(param3) - this.§#!3§;
         if(_loc13_ >= 0 && _loc14_ >= 0)
         {
            if(param1 != §@!E§.§'x§)
            {
               (_loc15_ = new §-!1§(param1,_loc13_,_loc14_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11)).§1%§ = this.§]B§.mLevelEngine.mWorld.§,2§(_loc15_.§<C§(param2,param3));
               this.§=!d§.push(_loc15_);
               return _loc15_;
            }
            _loc16_ = this.§3!`§.indexOf(param2);
            _loc17_ = this.§3!`§.indexOf(param3);
            _loc18_ = new §&K§(_loc16_,_loc17_,param12);
            this.§2s§.push(_loc18_);
         }
         return null;
      }
      
      public function §7!&§(param1:§-!1§) : void
      {
         if(!(param1.§1%§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§>C§ = this.§]I§(param1.index1 + this.§#!3§);
         var _loc3_:§>C§ = this.§]I§(param1.index2 + this.§#!3§);
         this.§]B§.mLevelEngine.mWorld.§@B§(param1.§1%§);
         param1.§1%§ = this.§]B§.mLevelEngine.mWorld.§,2§(param1.§<C§(_loc2_,_loc3_));
      }
      
      public function §^!P§(param1:§>C§) : Vector.<§-!1§>
      {
         var _loc4_:§-!1§ = null;
         var _loc2_:Vector.<§-!1§> = new Vector.<§-!1§>();
         var _loc3_:int = this.§3!`§.indexOf(param1) - this.§#!3§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§=!d§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §`n§() : Vector.<§-!1§>
      {
         return this.§=!d§;
      }
      
      public function §>!4§(param1:§>C§) : void
      {
         var _loc2_:int = this.§3!`§.indexOf(param1) - this.§#!3§;
         var _loc3_:int = this.§=!d§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§=!d§[_loc3_].index1 == _loc2_ || this.§=!d§[_loc3_].index2 == _loc2_)
            {
               this.§=!d§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §]t§(param1:§>C§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§2s§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§2s§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§2s§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §+D§(param1:§>C§, param2:§>C§) : Boolean
      {
         var _loc3_:int = this.§3!`§.indexOf(param1) - this.§#!3§;
         var _loc4_:int = this.§3!`§.indexOf(param2) - this.§#!3§;
         var _loc5_:int = this.§=!d§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§=!d§[_loc5_].index1 == _loc3_ && this.§=!d§[_loc5_].index2 == _loc4_ || this.§=!d§[_loc5_].index1 == _loc4_ && this.§=!d§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>C§
      {
         var _loc10_:§>C§ = null;
         var _loc11_:§-!E§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§1! §;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§3!h§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §8z§.§3Z§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §8z§.§3Z§(param2);
            }
            if(_loc11_.§]5§ == §-!E§.§<!G§ || _loc11_.§]5§ == §-!E§.§8<§)
            {
               _loc10_ = new §7!X§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §>C§(this,param1,this.§]B§.mLevelEngine.mWorld,this.§]B§,this.§3D§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§^!=§();
         return _loc10_;
      }
      
      protected function §^!=§() : String
      {
         var _loc3_:§>C§ = null;
         var _loc1_:int = this.§3!`§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§3!`§)
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
      
      public function §1!W§(param1:Number) : void
      {
         var _loc3_:§>C§ = null;
         var _loc2_:int = this.§3!`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!`§[_loc2_] as §>C§;
            if(_loc3_)
            {
               if(_loc3_.§6!^§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§'n§();
                  _loc3_.§&!9§();
               }
            }
            _loc2_--;
         }
         this.§`!T§(param1);
      }
      
      protected function §`!T§(param1:Number) : void
      {
         this.§ '§(param1);
         this.§9!3§();
      }
      
      private function § '§(param1:Number) : void
      {
         var _loc4_:§&K§ = null;
         var _loc5_:int = 0;
         var _loc6_:§>C§ = null;
         if(this.§2s§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§&K§> = this.§2s§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§`!P§ && this.§2s§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§<o§("" + _loc5_))
                  {
                     this.§?l§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §9!3§() : void
      {
         var _loc1_:§-!1§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§=!d§)
         {
            if(_loc1_.type == §@!E§.§,5§ || _loc1_.type == §@!E§.§@g§ && _loc1_.§=!M§)
            {
               if(_loc1_.§1%§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§1%§ as b2PrismaticJoint).include();
                  _loc3_ = (_loc1_.§1%§ as b2PrismaticJoint).§?I§();
               }
               else if(_loc1_.§1%§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§1%§ as b2RevoluteJoint).§>j§();
                  _loc3_ = (_loc1_.§1%§ as b2RevoluteJoint).§?I§();
               }
               if(_loc5_ = _loc1_.§6l§ && _loc1_.§@!@§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§1%§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§>C§> = null) : void
      {
         this.§8!N§.push(§4!<§.createExplosion(param1,param2,param3,param4));
         §<q§.§5!S§("TntExplosions","ChannelExplosions");
      }
      
      public function §1H§(param1:Number, param2:Number) : int
      {
         var _loc4_:§>C§ = null;
         var _loc3_:int = this.§3!`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3!`§[_loc3_])
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
      
      public function §=!b§(param1:Number, param2:Number) : §>C§
      {
         var _loc4_:§>C§ = null;
         var _loc3_:int = this.§3!`§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§3!`§[_loc3_])
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
      
      public function §`!5§(param1:Number, param2:Number) : Vector.<§>C§>
      {
         var _loc5_:§>C§ = null;
         var _loc3_:Vector.<§>C§> = new Vector.<§>C§>();
         var _loc4_:int = this.§3!`§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§3!`§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §]I§(param1:int) : §>C§
      {
         return this.§3!`§[param1];
      }
      
      public function §1!S§(param1:Number, param2:Number) : void
      {
         var _loc4_:§>C§ = null;
         var _loc3_:int = this.§3!`§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§3!`§[_loc3_] as §>C§).§1!S§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §,!,§(param1:§>C§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§>C§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§6!^§ == param1.§1D§)
         {
            if(this.§&@§ < this.§&<§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§&@§ += param2 * this.§&<§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§]!2§().§%d§(param2 * this.§&@§);
            this.§4!4§ = 0;
         }
         else if(this.§4!4§ == 0)
         {
            this.§4!4§ = this.§]B§.§"i§;
         }
         if(param1.§&n§() || this.§?!5§(param1) || this.§4!4§ > 0 && this.§]B§.§"i§ > this.§4!4§ + this.§&<§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§&<§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§&<§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§&<§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §<q§.§5!S§("Mighty_Eagle_Selected_1","ChannelBird");
                  §<q§.§5!S§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§&<§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§]!2§().GetPosition().x - this.§&<§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§]!2§().GetPosition().y - this.§&<§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§&<§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§?!5§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§&H§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§&<§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§4!4§ = 0;
                  _loc7_.§[m§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §#B§(param1:§>C§, param2:Number) : Boolean
      {
         var _loc5_:§>C§ = null;
         if(this.§&<§.MIGHTY_EAGLE_USE_SHADE && !this.§@1§ && this.mMightyEagleTimer > this.§&<§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§@1§ = true;
            this.§]B§.§;B§();
         }
         this.mMightyEagleTimer += param2;
         this.§]B§.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,param1.§]!2§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§]!2§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§-q§.§]8§(param1.§ [§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§4!5§(this.§&<§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§ for§)
            {
               this.§ for§ = false;
               this.§]B§.§ G§();
               param1.§^!'§(§68§.§3I§);
               this.mSardineCanAdded = false;
               param1.§[m§.§8D§ = true;
               param1.§[m§.§'!R§();
               for each(_loc5_ in this.§3!`§)
               {
                  if(_loc5_ && _loc5_.§0A§())
                  {
                     _loc5_.§]!2§().SetAwake(true);
                     _loc5_.§]!2§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§<w§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§3!`§)
               {
                  if(_loc5_ && _loc5_.§0A§())
                  {
                     _loc5_.applyDamage(_loc5_.§1D§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§]!2§().GetPosition().y >= -5.5;
            this.§ for§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§@a§(param2,new Point(this.§&<§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§&<§.MIGHTY_EAGLE_Y_CHANGE),this.§&<§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §7^§() : void
      {
         var _loc1_:§4!<§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>C§ = null;
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
         while(this.§8!N§.length > 0)
         {
            _loc1_ = this.§8!N§.shift();
            _loc2_ = _loc1_.§#6§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§3!`§)
            {
               if(!(_loc1_.§8'§ != null && _loc1_.§8'§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§]!2§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§]!2§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§#6§)
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
                        _loc6_.§]!2§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§'!P§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§]!L§(_loc6_,_loc14_);
                  }
               }
            }
            this.§]B§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§0i§.§>E§,§-q§.§,!f§,_loc3_,_loc4_,600,"",§-q§.§5t§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]B§.particles.addParticle(§-q§.§=!2§,§0i§.§>E§,§-q§.§5[§,_loc3_,_loc4_,_loc16_,"",§-q§.§5t§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §]!L§(param1:§>C§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §-q§.§0!T§;
      }
      
      public function §[!U§(param1:Number) : void
      {
         var _loc2_:§>C§ = null;
         var _loc3_:int = this.§3!`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3!`§[_loc3_];
            if(_loc2_.§%q§())
            {
               if(this.§,!,§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§&!Z§())
            {
               this.§#B§(_loc2_,param1);
            }
            else if(this.§?!5§(_loc2_))
            {
               _loc2_.§^!'§(§68§.§'§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§^!'§(§68§.§'§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§,!8§() || _loc2_.§%2§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§7^§();
      }
      
      private function §<w§() : void
      {
         var _loc1_:§-!1§ = null;
         for each(_loc1_ in this.§=!d§)
         {
            if(_loc1_.type != §@!E§.§'x§)
            {
               this.§]B§.mLevelEngine.mWorld.§@B§(_loc1_.§1%§);
            }
         }
      }
      
      public function §^!H§() : Boolean
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!`§.length)
         {
            _loc2_ = this.§3!`§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §?!5§(param1:§>C§) : Boolean
      {
         if(param1 && param1.§]1§.§ !Z§() != §&!#§.§%5§ && this.§]B§.§%!E§.§?!S§(param1.§]!2§().GetPosition().x,param1.§]!2§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§-!1§ = null;
         var _loc7_:§&K§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§>C§;
         if((_loc5_ = this.§3!`§[param1]).§0A§())
         {
            ++this.§3!7§;
         }
         else if(_loc5_.§,!8§())
         {
            --this.§&!?§;
         }
         if(_loc5_ == this.§]B§.activeObject)
         {
            this.§]B§.activeObject = null;
         }
         if(param2)
         {
            this.§]B§.addScore(_loc5_.§]1§.score,§8j§.§9z§,true,_loc5_.§]!2§().GetPosition().x,_loc5_.§]!2§().GetPosition().y - 3,§-q§.§^v§(_loc5_.§ [§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§]B§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§[!S§(_loc5_.sprite);
         this.§>!4§(_loc5_);
         this.§]t§(_loc5_);
         for each(_loc6_ in this.§=!d§)
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
         for each(_loc7_ in this.§2s§)
         {
            if(_loc7_.§#!9§ == param1)
            {
               _loc7_.§`!P§ = true;
            }
            if(_loc7_.§#!9§ >= param1)
            {
               --_loc7_.§#!9§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§3!`§[param1] = null;
         this.§3!`§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§>C§, param2:§0i§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §[!S§(param1:Sprite) : void
      {
         if(this.§9i§.contains(param1))
         {
            this.§9i§.removeChild(param1);
            return;
         }
         if(this.§-_§.contains(param1))
         {
            this.§-_§.removeChild(param1);
            return;
         }
         if(this.§>!,§.contains(param1))
         {
            this.§>!,§.removeChild(param1);
            return;
         }
         if(this.§,n§.contains(param1))
         {
            this.§,n§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§>C§) : void
      {
         if(param1.§2y§().toUpperCase() == "WHITE_EGG" || param1.§?!9§())
         {
            if(param1.§ [§.toUpperCase() == § Y§.§%>§)
            {
               this.addExplosions(§4!<§.§`J§,param1.§]!2§().GetPosition().x,param1.§]!2§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§4!<§.§,!&§,param1.§]!2§().GetPosition().x,param1.§]!2§().GetPosition().y);
            }
         }
      }
      
      public function §?l§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§3!`§.indexOf(param1),param2,param3,param4);
      }
      
      public function §`s§(param1:Number, param2:Number) : void
      {
         this.§`!,§.x = -param1;
         this.§`!,§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§>C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!`§.length)
         {
            _loc3_ = this.§3!`§[_loc2_] as §>C§;
            if(_loc3_ && _loc3_.§0A§() && _loc3_.§6!^§ > 0)
            {
               if(!param1 || _loc3_.§[m§.mTryToBlink <= 0 && _loc3_.§[m§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §<!a§(param1:Boolean = false) : int
      {
         var _loc4_:§>C§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§3!`§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§3!`§[_loc3_] as §>C§) && _loc4_.§0A§() && _loc4_.§6!^§ > 0)
            {
               if(!param1 || _loc4_.§[m§.mTryToBlink <= 0 && _loc4_.§[m§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §'!!§() : int
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!`§)
         {
            if(_loc2_ && (_loc2_.§8l§() || _loc2_.§4@§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function § each§() : int
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!`§)
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
         var _loc3_:§>C§ = null;
         var _loc2_:int = this.§3!`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3!`§[_loc2_];
            if(_loc3_ && _loc3_.§0A§() && _loc3_.§6!^§ > 0)
            {
               _loc3_.§[m§.mTryToScream = §"!%§.§"!=§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §1L§() : Boolean
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = this.§3!`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!`§[_loc1_] as §>C§;
            if(_loc2_ && _loc2_.§,!8§() && _loc2_.§6!^§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = this.§3!`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!`§[_loc1_] as §>C§;
            if(_loc2_ && _loc2_.§6!^§ > 0 && _loc2_.§]5§ != §-!E§.§2!V§)
            {
               if(_loc2_.§-!]§() && !_loc2_.§&n§())
               {
                  return false;
               }
               if(_loc2_.§,!8§() && _loc2_.§6!^§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §^z§(param1:Boolean = false) : §>C§
      {
         var _loc7_:§>C§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§3!`§.length;
         var _loc3_:int = this.§<!a§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§3!`§[_loc6_] as §>C§) && _loc7_.§0A§() && _loc7_.§6!^§ > 0)
            {
               if(!param1 || _loc7_.§[m§.mTryToBlink <= 0 && _loc7_.§[m§.mTryToScream <= 0)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function §1]§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§3!`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§3!`§[_loc2_] as §>C§).§]1§.score;
            if((this.§3!`§[_loc2_] as §>C§).§-!]§())
            {
               _loc1_ += §0!%§.§^a§.getValue() * int((this.§3!`§[_loc2_] as §>C§).§1D§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]B§.slingshot.§1]§());
      }
      
      public function §0!R§(param1:§>C§, param2:§>C§) : Boolean
      {
         if(param2 is §0!-§ && param1 is §0!-§)
         {
            return true;
         }
         if(!param1.§]!b§() && !param2.§]!b§())
         {
            return true;
         }
         return false;
      }
      
      public function §2S§() : void
      {
         this.mSardineCanAdded = true;
         this.§&!?§ = 0;
      }
      
      public function §>!]§(param1:§>C§, param2:§>C§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§&!Z§() || param2.§0A§())
            {
               param2.applyDamage(param2.§1D§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§&!Z§() || param1.§0A§())
            {
               param1.applyDamage(param1.§1D§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§&<§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§%q§() || param2.§%q§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§0!R§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§=!%§(param2.§2y§());
         var _loc5_:Number = param1.§5"§(param2.§2y§());
         var _loc6_:Number = param2.§=!%§(param1.§2y§());
         var _loc7_:Number = param2.§5"§(param1.§2y§());
         var _loc8_:Number = param1.§]!2§().GetMass() * param1.§]!2§().GetLinearVelocity().x - param2.§]!2§().GetMass() * param2.§]!2§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§]!2§().GetMass() * param1.§]!2§().GetLinearVelocity().y - param2.§]!2§().GetMass() * param2.§]!2§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§6!^§);
         var _loc14_:Number = Math.max(0,param2.§6!^§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§,!8§(),_loc14_ == param2.§1D§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§,!8§(),_loc13_ == param1.§1D§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ !-§(new b2Vec2(param2.§]!2§().GetLinearVelocity().x * _loc18_,param2.§]!2§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ !-§(new b2Vec2(param1.§]!2§().GetLinearVelocity().x * _loc19_,param1.§]!2§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §#Z§(param1:§>C§, param2:§>C§) : void
      {
      }
      
      public function §+!f§() : void
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = this.§3!`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!`§[_loc1_] as §>C§;
            if(_loc2_ != null && _loc2_.§0A§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §!w§() : void
      {
         var _loc2_:§>C§ = null;
         var _loc1_:int = this.§3!`§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!`§[_loc1_] as §>C§;
            if(_loc2_ != null && _loc2_.§?!9§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §1R§() : int
      {
         return this.§3!`§.length;
      }
      
      public function §<6§(param1:§8!P§) : void
      {
         var _loc4_:§>C§ = null;
         var _loc5_:§ >§ = null;
         var _loc6_:§@!E§ = null;
         var _loc7_:§-!1§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!`§.length)
         {
            if(!(_loc4_ = this.§3!`§[_loc2_]).isGround())
            {
               (_loc5_ = new § >§()).angle = _loc4_.§>s§();
               _loc5_.id = _loc4_.§ [§;
               _loc5_.x = _loc4_.§]!2§().GetPosition().x;
               _loc5_.y = _loc4_.§]!2§().GetPosition().y;
               _loc5_.uniqueID = _loc4_.uniqueID;
               param1.§&H§(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!d§.length)
         {
            _loc7_ = this.§=!d§[_loc3_];
            _loc6_ = new §@!E§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§4V§,_loc7_.§6l§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§@!@§,_loc7_.motorSpeed,_loc7_.§=!M§,_loc7_.maxTorque);
            param1.§1m§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §7!W§() : void
      {
         var _loc1_:int = 0;
         while(this.§3!`§.length > _loc1_)
         {
            if(this.§3!`§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§?l§(this.§3!`§[_loc1_]);
            }
         }
      }
      
      public function §3!§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§3!`§.length)
         {
            if(this.§3!`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§3!`§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§`!'§ = param1;
         this.§ !_§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3!`§.length)
         {
            if(this.§3!`§[_loc2_].isTexture())
            {
               this.§3!`§[_loc2_].sprite.visible = !this.§`!'§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§=![§ = param1;
      }
      
      public function §&0§() : Boolean
      {
         return this.§=![§;
      }
      
      public function §0!+§() : int
      {
         return this.§1! §;
      }
      
      public function § !d§() : int
      {
         return this.§3!7§;
      }
      
      public function §<o§(param1:String) : §>C§
      {
         var _loc3_:§>C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!`§.length)
         {
            _loc3_ = this.§3!`§[_loc2_] as §>C§;
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
