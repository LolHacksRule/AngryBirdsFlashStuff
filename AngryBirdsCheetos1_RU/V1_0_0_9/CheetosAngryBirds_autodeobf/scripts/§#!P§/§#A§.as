package §#!P§
{
   import §!H§.b2PrismaticJoint;
   import §!H§.b2WeldJoint;
   import §"!@§.§&;§;
   import §#!`§.Texture;
   import §'>§.§>!M§;
   import §,!E§.§<p§;
   import §,!E§.§>K§;
   import §,!E§.§?K§;
   import §,!E§.§[+§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§!$§;
   import §3E§.§6w§;
   import §3E§.§7!+§;
   import §3E§.§<!9§;
   import §5!G§.§31§;
   import §7u§.§&!C§;
   import §7u§.Sprite;
   import §9!%§.§-D§;
   import §9!%§.§0!B§;
   import §9!%§.§<!L§;
   import §9!%§.§=A§;
   import §9!%§.§[!M§;
   import §;U§.b2Vec2;
   import §`!B§.§4!I§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#A§
   {
       
      
      protected var §0!7§:Vector.<§2!W§>;
      
      protected var §2!L§:int;
      
      public var §]v§:§6w§;
      
      public var §;5§:Vector.<§@N§>;
      
      protected var §=!8§:Sprite;
      
      protected var §,!=§:Sprite;
      
      private var §>!#§:Sprite;
      
      private var §#!6§:Sprite;
      
      private var §?!!§:Sprite;
      
      protected var §4!A§:Vector.<Texture>;
      
      protected var §!,§:Vector.<§<p§>;
      
      protected var §`!4§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §5!4§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §?F§:Boolean = false;
      
      protected var §[U§:Number;
      
      protected var § !O§:int;
      
      protected var §@!>§:Vector.<§>K§>;
      
      protected var §[H§:int = 0;
      
      private var §#v§:int = 0;
      
      private var §6!>§:int = 0;
      
      private var §^A§:int;
      
      private var §3!O§:Boolean = true;
      
      private var §<E§:Boolean = true;
      
      public function §#A§(param1:§6w§, param2:§&;§, param3:Sprite)
      {
         var _loc5_:§<p§ = null;
         var _loc6_:§[+§ = null;
         var _loc7_:§2!W§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§2!W§ = null;
         var _loc11_:§2!W§ = null;
         this.§0!7§ = new Vector.<§2!W§>();
         this.§;5§ = new Vector.<§@N§>();
         this.§4!A§ = new Vector.<Texture>();
         this.§[U§ = this.§!$§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§@!>§ = new Vector.<§>K§>();
         super();
         this.§]v§ = param1;
         this.§2!L§ = 0;
         this.§,!=§ = param3;
         this.§,!=§.§^!Y§ = false;
         this.§<E§ = true;
         this.§3!O§ = true;
         this.§=!8§ = new Sprite();
         this.§>!#§ = new Sprite();
         this.§#!6§ = new Sprite();
         this.§?!!§ = new Sprite();
         this.§,!=§.addChild(this.§=!8§);
         this.§,!=§.addChild(this.§>!#§);
         this.§,!=§.addChild(this.§#!6§);
         this.§,!=§.addChild(this.§?!!§);
         this.addObject(§>!M§.§@!`§(param2.theme).§`S§,(this.§]v§.§[2§.§&B§ + this.§]v§.§[2§.§7q§) / 2,this.§]v§.§[2§.§@I§ + §<!9§.§;g§);
         this.§^A§ = this.§0!7§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§'T§)
         {
            _loc6_ = param2.§4!K§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§]§();
         this.§[;§(true);
         this.§!,§ = new Vector.<§<p§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§+!<§)
         {
            this.§!,§.push(§<p§.§65§(param2.§3&§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§!,§)
         {
            _loc8_ = _loc5_.index1 + this.§^A§;
            _loc9_ = _loc5_.index2 + this.§^A§;
            if(_loc8_ < this.§0!7§.length && _loc9_ < this.§0!7§.length)
            {
               _loc10_ = this.§0!7§[_loc8_];
               _loc11_ = this.§0!7§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §?K§.§<!D§)
               {
                  _loc5_.§implements§ = this.§]v§.mLevelEngine.mWorld.§&!L§(_loc5_.§<!2§(_loc10_,_loc11_));
               }
               else
               {
                  this.§@!>§.push(new §>K§(_loc8_,_loc9_,_loc5_.§5"§));
               }
            }
         }
      }
      
      protected function get §!$§() : Class
      {
         return §!$§;
      }
      
      public function get §&h§() : Sprite
      {
         return this.§?!!§;
      }
      
      public function get §>!%§() : Sprite
      {
         return this.§,!=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§0!7§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§0!7§ = null;
         this.§@!>§ = null;
         if(this.§,!=§)
         {
            this.§,!=§.dispose();
            this.§,!=§ = null;
            this.§=!8§ = null;
            this.§?!!§ = null;
            this.§>!#§ = null;
            this.§#!6§ = null;
         }
         while(this.§4!A§.length > 0)
         {
            _loc1_ = this.§4!A§.pop();
            this.§]v§.§59§.§7n§(_loc1_);
         }
      }
      
      private function §[;§(param1:Boolean) : void
      {
         this.§=!8§.visible = param1;
      }
      
      private function §]§() : void
      {
         var _loc3_:§2!W§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§&!C§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§2!W§> = new Vector.<§2!W§>();
         for each(_loc3_ in this.§0!7§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§,!=§);
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
            this.§`!A§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.each(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]v§.§59§.§+t§(_loc10_);
            this.§4!A§.push(_loc12_);
            (_loc13_ = new §&!C§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§=!8§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function each(param1:Vector.<§2!W§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§2!W§ = null;
         var _loc11_:§0!B§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§<&§.shape).§!!F§();
            _loc13_ = new Rectangle(_loc12_[0].x / §6w§.§?!^§ * param6,_loc12_[0].y / §6w§.§?!^§ * param6,(_loc12_[1].x - _loc12_[0].x) / §6w§.§?!^§ * param6,(_loc12_[1].y - _loc12_[0].y) / §6w§.§?!^§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§[!P§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §`!A§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]v§.background.§3#§();
         var _loc5_:§4!I§;
         if(_loc5_ = this.§]v§.§8X§.§@d§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2!W§
      {
         var _loc10_:§2!W§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §1f§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §8@§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §-!9§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §&!4§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §]J§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §7`§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §8!O§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §`v§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§[H§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2!W§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§2!W§;
         if((_loc11_ = this.§9V§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§3!O§;
            this.§0!7§[this.§0!7§.length] = _loc11_;
         }
         else
         {
            this.§0!7§[this.§0!7§.length] = _loc11_;
         }
         if(_loc11_ is §`v§ && !_loc11_.§,c§())
         {
            this.§>!#§.addChild(_loc10_);
            ++this.§[H§;
         }
         else if(_loc11_.front || param9)
         {
            this.§?!!§.addChild(_loc10_);
         }
         else
         {
            this.§#!6§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]v§.§2!F§(_loc11_);
         }
         if(param6)
         {
            this.§]v§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §65§(param1:int, param2:§2!W§, param3:§2!W§) : §<p§
      {
         var _loc6_:§<p§ = null;
         var _loc4_:int = this.§0!7§.indexOf(param2) - this.§^A§;
         var _loc5_:int = this.§0!7§.indexOf(param3) - this.§^A§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §<p§(§?K§.§ f§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§implements§ = this.§]v§.mLevelEngine.mWorld.§&!L§(_loc6_.§<!2§(param2,param3));
            this.§!,§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §8!0§(param1:§<p§) : void
      {
         if(!(param1.§implements§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§2!W§ = this.§4!K§(param1.index1 + this.§^A§);
         var _loc3_:§2!W§ = this.§4!K§(param1.index2 + this.§^A§);
         this.§]v§.mLevelEngine.mWorld.§'B§(param1.§implements§);
         param1.§implements§ = this.§]v§.mLevelEngine.mWorld.§&!L§(param1.§<!2§(_loc2_,_loc3_));
      }
      
      public function §71§(param1:§2!W§) : Vector.<§<p§>
      {
         var _loc4_:§<p§ = null;
         var _loc2_:Vector.<§<p§> = new Vector.<§<p§>();
         var _loc3_:int = this.§0!7§.indexOf(param1) - this.§^A§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§!,§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §^x§() : Vector.<§<p§>
      {
         return this.§!,§;
      }
      
      public function §5h§(param1:§2!W§) : void
      {
         var _loc2_:int = this.§0!7§.indexOf(param1) - this.§^A§;
         var _loc3_:int = this.§!,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§!,§[_loc3_].index1 == _loc2_ || this.§!,§[_loc3_].index2 == _loc2_)
            {
               this.§!,§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §?!T§(param1:§2!W§, param2:§2!W§) : Boolean
      {
         var _loc3_:int = this.§0!7§.indexOf(param1) - this.§^A§;
         var _loc4_:int = this.§0!7§.indexOf(param2) - this.§^A§;
         var _loc5_:int = this.§!,§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§!,§[_loc5_].index1 == _loc3_ && this.§!,§[_loc5_].index2 == _loc4_ || this.§!,§[_loc5_].index1 == _loc4_ && this.§!,§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §9V§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2!W§
      {
         var _loc10_:§2!W§ = null;
         var _loc11_:§-D§ = null;
         var _loc12_:§-D§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§6!>§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §<!L§.§]z§(param2);
            _loc10_ = new §<q§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §<!L§.§]z§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §<!L§.§]z§(param2);
            }
            if(_loc12_.§"!+§ == §-D§.§#"§ || _loc12_.§"!+§ == §-D§.§8y§)
            {
               _loc10_ = new §@$§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §2!W§(this,param1,this.§]v§.mLevelEngine.mWorld,this.§]v§,this.§2!L§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §9g§(param1:Number) : void
      {
         var _loc3_:§2!W§ = null;
         var _loc2_:int = this.§0!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!7§[_loc2_] as §2!W§;
            if(_loc3_)
            {
               if(_loc3_.§1!L§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§%!H§();
                  _loc3_.§#!#§();
               }
            }
            _loc2_--;
         }
         this.§+G§(param1);
      }
      
      protected function §+G§(param1:Number) : void
      {
         var _loc3_:§<p§ = null;
         var _loc4_:§>K§ = null;
         var _loc5_:int = 0;
         var _loc6_:§2!W§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§@!>§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§@!>§[_loc2_]).§'x§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§=k§("block_" + _loc5_))
                  {
                     this.§1!;§(_loc6_,true,true,true);
                  }
                  this.§@!>§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§!,§)
         {
            if(_loc3_.type == §?K§.§`K§ && _loc3_.§ !T§)
            {
               _loc7_ = (_loc3_.§implements§ as b2PrismaticJoint).§4#§();
               _loc8_ = (_loc3_.§implements§ as b2PrismaticJoint).§82§();
               if(_loc3_.§6V§ && _loc3_.§-q§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§implements§ as b2PrismaticJoint).§-!3§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§;5§.push(§@N§.§%J§(param1,param2,param3));
         §31§.§>%§("TntExplosions","ChannelExplosions");
      }
      
      public function §!!%§(param1:Number, param2:Number) : int
      {
         var _loc4_:§2!W§ = null;
         var _loc3_:int = this.§0!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§0!7§[_loc3_])
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
      
      public function §3!H§(param1:Number, param2:Number) : §2!W§
      {
         var _loc4_:§2!W§ = null;
         var _loc3_:int = this.§0!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§0!7§[_loc3_])
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
      
      public function §4!K§(param1:int) : §2!W§
      {
         return this.§0!7§[param1];
      }
      
      public function § a§(param1:Number, param2:Number) : void
      {
         var _loc4_:§2!W§ = null;
         var _loc3_:int = this.§0!7§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§0!7§[_loc3_] as §2!W§).§ a§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §3!7§(param1:§2!W§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§2!W§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§1!L§ == param1.§!w§)
         {
            if(this.§[U§ < this.§!$§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§[U§ += param2 * this.§!$§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§84§().§=!H§(param2 * this.§[U§);
            this.§ !O§ = 0;
         }
         else if(this.§ !O§ == 0)
         {
            this.§ !O§ = this.§]v§.§5!R§;
         }
         if(param1.§@w§() || this.§'!!§(param1) || this.§ !O§ > 0 && this.§]v§.§5!R§ > this.§ !O§ + this.§!$§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§!$§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§!$§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§!$§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §31§.§>%§("Mighty_Eagle_Selected_1","ChannelBird");
                  §31§.§>%§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§!$§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§84§().GetPosition().x - this.§!$§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§84§().GetPosition().y - this.§!$§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§!$§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§'!!§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§!$§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§ !O§ = 0;
                  _loc7_.§<k§.§"!?§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §0A§(param1:§2!W§, param2:Number) : Boolean
      {
         var _loc5_:§2!W§ = null;
         if(this.§!$§.MIGHTY_EAGLE_USE_SHADE && !this.§?F§ && this.mMightyEagleTimer > this.§!$§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§?F§ = true;
            this.§]v§.§=!5§();
         }
         this.mMightyEagleTimer += param2;
         this.§]v§.particles.addParticle(§4+§.§5!`§,§ M§.§&^§,§4+§.§&'§,param1.§84§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§84§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§4+§.§#]§(param1.§<Y§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§4!H§(this.§!$§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§5!4§)
            {
               this.§5!4§ = false;
               this.§]v§.§2!;§();
               param1.§#`§(§=A§.§]!T§);
               this.mSardineCanAdded = false;
               param1.§<k§.§0_§ = true;
               param1.§<k§.§-!D§();
               for each(_loc5_ in this.§0!7§)
               {
                  if(_loc5_ && _loc5_.§+!2§())
                  {
                     _loc5_.§84§().SetAwake(true);
                     _loc5_.§84§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§8!]§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§0!7§)
               {
                  if(_loc5_ && _loc5_.§+!2§())
                  {
                     _loc5_.applyDamage(_loc5_.§!w§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§84§().GetPosition().y >= -5.5;
            this.§5!4§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§@!0§(param2,new Point(this.§!$§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§!$§.MIGHTY_EAGLE_Y_CHANGE),this.§!$§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §4!_§() : void
      {
         var _loc1_:§@N§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§2!W§ = null;
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
         while(this.§;5§.length > 0)
         {
            _loc1_ = this.§;5§.shift();
            _loc2_ = _loc1_.§4g§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§0!7§)
            {
               _loc8_ = _loc6_.§84§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§84§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§4g§)
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
                     _loc6_.§84§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§ s§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  this.§>v§(_loc6_,_loc14_);
               }
            }
            this.§]v§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§ M§.§&^§,§4+§.§!Y§,_loc3_,_loc4_,600,"",§4+§.§5!!§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]v§.particles.addParticle(§4+§.§-O§,§ M§.§&^§,§4+§.§&'§,_loc3_,_loc4_,_loc16_,"",§4+§.§5!!§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §>v§(param1:§2!W§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §4+§.§>!!§;
      }
      
      public function §[§(param1:Number) : void
      {
         var _loc2_:§2!W§ = null;
         var _loc3_:int = this.§0!7§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§0!7§[_loc3_];
            if(_loc2_.§6]§())
            {
               if(this.§3!7§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§,c§())
            {
               this.§0A§(_loc2_,param1);
            }
            else if(this.§'!!§(_loc2_))
            {
               _loc2_.§#`§(§=A§.§!k§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§#`§(§=A§.§!k§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§#Y§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§4!_§();
      }
      
      private function §8!]§() : void
      {
         var _loc1_:§<p§ = null;
         for each(_loc1_ in this.§!,§)
         {
            if(_loc1_.type != §?K§.§<!D§)
            {
               this.§]v§.mLevelEngine.mWorld.§'B§(_loc1_.§implements§);
            }
         }
      }
      
      public function §&!>§() : Boolean
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!7§.length)
         {
            _loc2_ = this.§0!7§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §'!!§(param1:§2!W§) : Boolean
      {
         if(param1 && param1.§<&§.§9<§() != §[!M§.§4!!§ && this.§]v§.§[2§.§8!^§(param1.§84§().GetPosition().x,param1.§84§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§<p§ = null;
         var _loc7_:§>K§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§2!W§;
         if((_loc5_ = this.§0!7§[param1]).§+!2§())
         {
            ++this.§#v§;
         }
         else if(_loc5_.§#Y§())
         {
            --this.§[H§;
         }
         if(_loc5_ == this.§]v§.activeObject)
         {
            this.§]v§.activeObject = null;
         }
         if(param2)
         {
            this.§]v§.addScore(_loc5_.§<&§.score,§7!+§.§]P§,true,_loc5_.§84§().GetPosition().x,_loc5_.§84§().GetPosition().y - 3,§4+§.§4B§(_loc5_.§<Y§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§]v§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§-z§(_loc5_.sprite);
         this.§5h§(_loc5_);
         for each(_loc6_ in this.§!,§)
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
         for each(_loc7_ in this.§@!>§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§'x§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§0!7§[param1] = null;
         this.§0!7§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§2!W§, param2:§ M§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §-z§(param1:Sprite) : void
      {
         if(this.§#!6§.contains(param1))
         {
            this.§#!6§.removeChild(param1);
            return;
         }
         if(this.§>!#§.contains(param1))
         {
            this.§>!#§.removeChild(param1);
            return;
         }
         if(this.§=!8§.contains(param1))
         {
            this.§=!8§.removeChild(param1);
            return;
         }
         if(this.§?!!§.contains(param1))
         {
            this.§?!!§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§2!W§) : void
      {
         if(param1.§ !-§().toUpperCase() == "WHITE_EGG" || param1.§&u§())
         {
            if(param1.§<Y§.toUpperCase() == §&!4§.§3m§)
            {
               this.addExplosions(§@N§.§<d§,param1.§84§().GetPosition().x,param1.§84§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§@N§.§@e§,param1.§84§().GetPosition().x,param1.§84§().GetPosition().y);
            }
         }
      }
      
      public function §1!;§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§0!7§.indexOf(param1),param2,param3,param4);
      }
      
      public function §3!J§(param1:Number, param2:Number) : void
      {
         this.§,!=§.x = -param1;
         this.§,!=§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§2!W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!7§.length)
         {
            _loc3_ = this.§0!7§[_loc2_] as §2!W§;
            if(_loc3_ && _loc3_.§+!2§() && _loc3_.§1!L§ > 0)
            {
               if(!param1 || _loc3_.§<k§.mTryToBlink <= 0 && _loc3_.§<k§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §+!%§(param1:Boolean = false) : int
      {
         var _loc4_:§2!W§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§0!7§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0!7§[_loc3_] as §2!W§) && _loc4_.§+!2§() && _loc4_.§1!L§ > 0)
            {
               if(!param1 || _loc4_.§<k§.mTryToBlink <= 0 && _loc4_.§<k§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §24§() : int
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!7§)
         {
            if(_loc2_ && (_loc2_.native() || _loc2_.§package§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §&v§() : int
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0!7§)
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
         var _loc3_:§2!W§ = null;
         var _loc2_:int = this.§0!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!7§[_loc2_];
            if(_loc3_ && _loc3_.§+!2§() && _loc3_.§1!L§ > 0)
            {
               _loc3_.§<k§.mTryToScream = §1!Y§.§0!P§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §9#§() : Boolean
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = this.§0!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!7§[_loc1_] as §2!W§;
            if(_loc2_ && _loc2_.§#Y§() && _loc2_.§1!L§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = this.§0!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!7§[_loc1_] as §2!W§;
            if(_loc2_ && _loc2_.§1!L§ > 0 && _loc2_.§"!+§ != §-D§.§"T§)
            {
               if(_loc2_.§<=§() && !_loc2_.§@w§())
               {
                  return false;
               }
               if(_loc2_.§#Y§() && _loc2_.§1!L§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §^!@§(param1:Boolean = false) : §2!W§
      {
         var _loc5_:int = 0;
         var _loc6_:§2!W§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§0!7§.length;
         var _loc3_:int = 1 + Math.random() * this.§+!%§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§0!7§[_loc5_]) && _loc6_.§+!2§() && _loc6_.§1!L§ > 0)
               {
                  if(!param1 || _loc6_.§<k§.mTryToBlink <= 0 && _loc6_.§<k§.mTryToScream <= 0)
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
      
      public function §[6§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§0!7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§0!7§[_loc2_] as §2!W§).§<&§.score;
            if((this.§0!7§[_loc2_] as §2!W§).§<=§())
            {
               _loc1_ += §6w§.§5'§.getValue() * int((this.§0!7§[_loc2_] as §2!W§).§!w§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]v§.slingshot.§[6§());
      }
      
      public function §?N§(param1:§2!W§, param2:§2!W§) : Boolean
      {
         if(param1.§#Y§() && param2.§#Y§())
         {
            return true;
         }
         if(!param1.§,!9§() && !param2.§,!9§())
         {
            return true;
         }
         return false;
      }
      
      public function §`E§() : void
      {
         this.mSardineCanAdded = true;
         this.§[H§ = 0;
      }
      
      public function objectCollision(param1:§2!W§, param2:§2!W§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§,c§() || param2.§+!2§())
            {
               param2.applyDamage(param2.§!w§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§,c§() || param1.§+!2§())
            {
               param1.applyDamage(param1.§!w§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§!$§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§6]§() || param2.§6]§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§?N§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§'J§(param2.§ !-§());
         var _loc5_:Number = param1.§#!=§(param2.§ !-§());
         var _loc6_:Number = param2.§'J§(param1.§ !-§());
         var _loc7_:Number = param2.§#!=§(param1.§ !-§());
         var _loc8_:Number = param1.§84§().GetMass() * param1.§84§().GetLinearVelocity().x - param2.§84§().GetMass() * param2.§84§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§84§().GetMass() * param1.§84§().GetLinearVelocity().y - param2.§84§().GetMass() * param2.§84§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§1!L§);
         var _loc14_:Number = Math.max(0,param2.§1!L§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§#Y§(),_loc14_ == param2.§!w§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§#Y§(),_loc13_ == param1.§!w§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§7v§(new b2Vec2(param2.§84§().GetLinearVelocity().x * _loc18_,param2.§84§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§7v§(new b2Vec2(param1.§84§().GetLinearVelocity().x * _loc19_,param1.§84§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §0Z§() : void
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = this.§0!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!7§[_loc1_] as §2!W§;
            if(_loc2_ != null && _loc2_.§+!2§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[D§() : void
      {
         var _loc2_:§2!W§ = null;
         var _loc1_:int = this.§0!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!7§[_loc1_] as §2!W§;
            if(_loc2_ != null && _loc2_.§&u§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §2$§() : int
      {
         return this.§0!7§.length;
      }
      
      public function §@!C§(param1:§&;§) : void
      {
         var _loc4_:§2!W§ = null;
         var _loc5_:§[+§ = null;
         var _loc6_:§?K§ = null;
         var _loc7_:§<p§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0!7§.length)
         {
            if((_loc4_ = this.§0!7§[_loc2_]).§-!#§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §[+§()).angle = _loc4_.§[!P§();
                  _loc5_.id = _loc4_.§<Y§;
                  _loc5_.x = _loc4_.§84§().GetPosition().x;
                  _loc5_.y = _loc4_.§84§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!,§.length)
         {
            _loc7_ = this.§!,§[_loc3_];
            _loc6_ = new §?K§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§3D§,_loc7_.§6V§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§-q§,_loc7_.motorSpeed,_loc7_.§ !T§,_loc7_.maxTorque);
            param1.§&!6§(_loc6_);
            _loc3_++;
         }
      }
      
      public function § l§() : void
      {
         var _loc1_:int = 0;
         while(this.§0!7§.length > _loc1_)
         {
            if(this.§0!7§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§1!;§(this.§0!7§[_loc1_]);
            }
         }
      }
      
      public function §97§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0!7§.length)
         {
            if(this.§0!7§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0!7§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§3!O§ = param1;
         this.§[;§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0!7§.length)
         {
            if(this.§0!7§[_loc2_].isTexture())
            {
               this.§0!7§[_loc2_].sprite.visible = !this.§3!O§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§<E§ = param1;
      }
      
      public function §3r§() : Boolean
      {
         return this.§<E§;
      }
      
      public function §2!^§() : int
      {
         return this.§6!>§;
      }
      
      public function §^!+§() : int
      {
         return this.§#v§;
      }
      
      public function §=k§(param1:String) : §2!W§
      {
         var _loc3_:§2!W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!7§.length)
         {
            _loc3_ = this.§0!7§[_loc2_] as §2!W§;
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
