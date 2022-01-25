package §;+§
{
   import § !K§.§5+§;
   import § !K§.Sprite;
   import §"![§.Texture;
   import §&!L§.b2Vec2;
   import §4A§.§&_§;
   import §4A§.§-!3§;
   import §4A§.§0![§;
   import §4A§.§96§;
   import §6$§.b2PrismaticJoint;
   import §6$§.b2WeldJoint;
   import §7I§.§<!0§;
   import §86§.§9]§;
   import §9!Y§.§"#§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §^p§.§!!U§;
   import §^p§.§'!D§;
   import §^p§.§0u§;
   import §^p§.§=!3§;
   import §^p§.§[!P§;
   import §`! §.§1!#§;
   import §`!C§.§"7§;
   import §`!C§.§2!K§;
   import §`!C§.§8!9§;
   import §`!C§.§@!+§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!?§
   {
       
      
      protected var §,!U§:Vector.<§[!3§>;
      
      protected var §[U§:int;
      
      public var mLevelMain:§&_§;
      
      public var §3E§:Vector.<§ !M§>;
      
      protected var §#n§:Sprite;
      
      protected var §;x§:Sprite;
      
      private var §%]§:Sprite;
      
      private var §7!K§:Sprite;
      
      private var §]l§:Sprite;
      
      protected var §^!G§:Vector.<Texture>;
      
      protected var §8o§:Vector.<§@!+§>;
      
      protected var §4[§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §+!4§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §'L§:Boolean = false;
      
      protected var §9o§:Number = 0.07;
      
      protected var § !6§:int;
      
      protected var §,!§:Vector.<§"7§>;
      
      protected var §[;§:int = 0;
      
      private var §1B§:int = 0;
      
      private var §"a§:int = 0;
      
      private var § 4§:int;
      
      private var §`!`§:Boolean = true;
      
      private var §2!A§:Boolean = true;
      
      public function §+!?§(param1:§&_§, param2:§9]§, param3:Sprite)
      {
         var _loc5_:§@!+§ = null;
         var _loc6_:§8!9§ = null;
         var _loc7_:§[!3§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§[!3§ = null;
         var _loc11_:§[!3§ = null;
         this.§,!U§ = new Vector.<§[!3§>();
         this.§3E§ = new Vector.<§ !M§>();
         this.§^!G§ = new Vector.<Texture>();
         this.§,!§ = new Vector.<§"7§>();
         super();
         this.mLevelMain = param1;
         this.§[U§ = 0;
         this.§;x§ = param3;
         this.§;x§.§^Y§ = false;
         this.§2!A§ = true;
         this.§`!`§ = true;
         this.§#n§ = new Sprite();
         this.§%]§ = new Sprite();
         this.§7!K§ = new Sprite();
         this.§]l§ = new Sprite();
         this.§;x§.addChild(this.§#n§);
         this.§;x§.addChild(this.§%]§);
         this.§;x§.addChild(this.§7!K§);
         this.§;x§.addChild(this.§]l§);
         this.§,j§(§1!#§.§extends§(param2.theme).§1§,(this.mLevelMain.§@I§.§2!2§ + this.mLevelMain.§@I§.§]G§) / 2,this.mLevelMain.§@I§.§>R§ + §0![§.§]M§);
         this.§ 4§ = this.§,!U§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§;r§)
         {
            _loc6_ = param2.§&!+§(_loc4_);
            if(_loc7_ = this.§,j§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§;!1§();
         this.§5!,§(true);
         this.§8o§ = new Vector.<§@!+§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§4]§)
         {
            this.§8o§.push(§@!+§.§4!Z§(param2.§+W§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§8o§)
         {
            _loc8_ = _loc5_.index1 + this.§ 4§;
            _loc9_ = _loc5_.index2 + this.§ 4§;
            if(_loc8_ < this.§,!U§.length && _loc9_ < this.§,!U§.length)
            {
               _loc10_ = this.§,!U§[_loc8_];
               _loc11_ = this.§,!U§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §2!K§.§6m§)
               {
                  _loc5_.§3!&§ = this.mLevelMain.mLevelEngine.mWorld.§0h§(_loc5_.§2!Z§(_loc10_,_loc11_));
               }
               else
               {
                  this.§,!§.push(new §"7§(_loc8_,_loc9_,_loc5_.§`y§));
               }
            }
         }
      }
      
      public function get §,!#§() : Sprite
      {
         return this.§]l§;
      }
      
      public function get §]8§() : Sprite
      {
         return this.§;x§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§,!U§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§,!U§ = null;
         this.§,!§ = null;
         if(this.§;x§)
         {
            this.§;x§.dispose();
            this.§;x§ = null;
            this.§#n§ = null;
            this.§]l§ = null;
            this.§%]§ = null;
            this.§7!K§ = null;
         }
         while(this.§^!G§.length > 0)
         {
            _loc1_ = this.§^!G§.pop();
            this.mLevelMain.textureManager.§&X§(_loc1_);
         }
      }
      
      private function §5!,§(param1:Boolean) : void
      {
         this.§#n§.visible = param1;
      }
      
      private function §;!1§() : void
      {
         var _loc3_:§[!3§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§5+§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§[!3§> = new Vector.<§[!3§>();
         for each(_loc3_ in this.§,!U§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§;x§);
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
            this.§,!a§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§7<§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.mLevelMain.textureManager.§+!>§(_loc10_);
            this.§^!G§.push(_loc12_);
            (_loc13_ = new §5+§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§#n§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §7<§(param1:Vector.<§[!3§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§[!3§ = null;
         var _loc11_:§!!U§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§-!$§.shape).§,o§();
            _loc13_ = new Rectangle(_loc12_[0].x / §&_§.§5-§ * param6,_loc12_[0].y / §&_§.§5-§ * param6,(_loc12_[1].x - _loc12_[0].x) / §&_§.§5-§ * param6,(_loc12_[1].y - _loc12_[0].y) / §&_§.§5-§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§7V§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §,!a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.mLevelMain.background.§<5§();
         var _loc5_:§"#§;
         if(_loc5_ = this.mLevelMain.backgroundTextureManager.§?!&§(_loc4_))
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
      
      public function §&e§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!3§
      {
         var _loc10_:§[!3§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §"!9§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §7!F§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §@!1§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §"d§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §<c§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §]!F§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §+!]§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §"!R§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§[;§ > 0;
      }
      
      public function §,j§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[!3§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§[!3§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§`!`§;
            this.§,!U§[this.§,!U§.length] = _loc11_;
         }
         else
         {
            this.§,!U§[this.§,!U§.length] = _loc11_;
         }
         if(_loc11_ is §"!R§ && !_loc11_.§=N§())
         {
            this.§%]§.addChild(_loc10_);
            ++this.§[;§;
         }
         else if(_loc11_.front || param9)
         {
            this.§]l§.addChild(_loc10_);
         }
         else
         {
            this.§7!K§.addChild(_loc10_);
         }
         if(param5)
         {
            this.mLevelMain.§[A§(_loc11_);
         }
         if(param6)
         {
            this.mLevelMain.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §4!Z§(param1:int, param2:§[!3§, param3:§[!3§) : §@!+§
      {
         var _loc6_:§@!+§ = null;
         var _loc4_:int = this.§,!U§.indexOf(param2) - this.§ 4§;
         var _loc5_:int = this.§,!U§.indexOf(param3) - this.§ 4§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §@!+§(§2!K§.§%!Y§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§3!&§ = this.mLevelMain.mLevelEngine.mWorld.§0h§(_loc6_.§2!Z§(param2,param3));
            this.§8o§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §,!C§(param1:§@!+§) : void
      {
         if(!(param1.§3!&§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§[!3§ = this.§&!+§(param1.index1 + this.§ 4§);
         var _loc3_:§[!3§ = this.§&!+§(param1.index2 + this.§ 4§);
         this.mLevelMain.mLevelEngine.mWorld.§7!X§(param1.§3!&§);
         param1.§3!&§ = this.mLevelMain.mLevelEngine.mWorld.§0h§(param1.§2!Z§(_loc2_,_loc3_));
      }
      
      public function §%!+§(param1:§[!3§) : Vector.<§@!+§>
      {
         var _loc4_:§@!+§ = null;
         var _loc2_:Vector.<§@!+§> = new Vector.<§@!+§>();
         var _loc3_:int = this.§,!U§.indexOf(param1) - this.§ 4§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§8o§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §-!+§() : Vector.<§@!+§>
      {
         return this.§8o§;
      }
      
      public function §"W§(param1:§[!3§) : void
      {
         var _loc2_:int = this.§,!U§.indexOf(param1) - this.§ 4§;
         var _loc3_:int = this.§8o§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§8o§[_loc3_].index1 == _loc2_ || this.§8o§[_loc3_].index2 == _loc2_)
            {
               this.§8o§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §;P§(param1:§[!3§, param2:§[!3§) : Boolean
      {
         var _loc3_:int = this.§,!U§.indexOf(param1) - this.§ 4§;
         var _loc4_:int = this.§,!U§.indexOf(param2) - this.§ 4§;
         var _loc5_:int = this.§8o§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§8o§[_loc5_].index1 == _loc3_ && this.§8o§[_loc5_].index2 == _loc4_ || this.§8o§[_loc5_].index1 == _loc4_ && this.§8o§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!3§
      {
         var _loc10_:§[!3§ = null;
         var _loc11_:§'!D§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§&e§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§"a§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §^!;§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §[!P§.§!I§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §[!P§.§!I§(param2);
            }
            if(_loc11_.§[w§ == §'!D§.§?!C§ || _loc11_.§[w§ == §'!D§.§&!>§)
            {
               _loc10_ = new §&h§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §[!3§(this,param1,this.mLevelMain.mLevelEngine.mWorld,this.mLevelMain,this.§[U§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function § !2§(param1:Number) : void
      {
         var _loc3_:§[!3§ = null;
         var _loc2_:int = this.§,!U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,!U§[_loc2_] as §[!3§;
            if(_loc3_)
            {
               if(_loc3_.§"!D§ <= 0)
               {
                  this.removeObjectWithIndex(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§#d§();
                  _loc3_.§]J§();
               }
            }
            _loc2_--;
         }
         this.§@!S§(param1);
      }
      
      protected function §@!S§(param1:Number) : void
      {
         var _loc3_:§@!+§ = null;
         var _loc4_:§"7§ = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:int = this.§,!§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§,!§[_loc2_]).§>i§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc5_ < this.§,!U§.length && this.§,!U§[_loc5_] != null)
                  {
                     this.removeObjectWithIndex(_loc5_,true,true,true);
                  }
                  this.§,!§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§8o§)
         {
            if(_loc3_.type == §2!K§.§^!`§ && _loc3_.§;!7§)
            {
               _loc6_ = (_loc3_.§3!&§ as b2PrismaticJoint).§"1§();
               _loc7_ = (_loc3_.§3!&§ as b2PrismaticJoint).§ 1§();
               if(_loc3_.§6x§ && _loc3_.§5H§ && (_loc7_ > 0 && _loc6_ >= _loc3_.upperLimit || _loc7_ < 0 && _loc6_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§3!&§ as b2PrismaticJoint).§-!a§(-_loc7_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§3E§.push(§ !M§.createExplosion(param1,param2,param3));
         §<!0§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §'!b§(param1:Number, param2:Number) : int
      {
         var _loc4_:§[!3§ = null;
         var _loc3_:int = this.§,!U§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,!U§[_loc3_])
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
      
      public function §+"§(param1:Number, param2:Number) : §[!3§
      {
         var _loc4_:§[!3§ = null;
         var _loc3_:int = this.§,!U§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,!U§[_loc3_])
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
      
      public function §&!+§(param1:int) : §[!3§
      {
         return this.§,!U§[param1];
      }
      
      public function §,t§(param1:Number, param2:Number) : void
      {
         var _loc4_:§[!3§ = null;
         var _loc3_:int = this.§,!U§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§,!U§[_loc3_] as §[!3§).§,t§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §^0§(param1:§[!3§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§[!3§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§"!D§ == param1.§?L§)
         {
            if(this.§9o§ < §96§.§-u§)
            {
               this.§9o§ += param2 * §96§.§&!E§;
            }
            param1.§1!d§().§%! §(param2 * this.§9o§);
            this.§ !6§ = 0;
         }
         else if(this.§ !6§ == 0)
         {
            this.§ !6§ = this.mLevelMain.§@&§;
         }
         if(param1.§]C§() || this.§[!2§(param1) || this.§ !6§ > 0 && this.mLevelMain.§@&§ > this.§ !6§ + §96§.§-!Z§)
         {
            if(this.mMightyEagleTimer < §96§.§"!<§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §96§.§<!_§ && _loc4_ > §96§.§<!_§)
               {
                  §<!0§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §<!0§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §96§.§"!<§)
               {
                  _loc5_ = param1.§1!d§().GetPosition().x - §96§.§9!C§;
                  _loc6_ = param1.§1!d§().GetPosition().y - §96§.§9!C§ * §96§.§6&§ * 1.07;
                  if(this.§[!2§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§,j§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§96§.§8Y§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§ !6§ = 0;
                  _loc7_.§4!%§.§1?§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §;=§(param1:§[!3§, param2:Number) : Boolean
      {
         var _loc5_:§[!3§ = null;
         if(!this.§'L§ && this.mMightyEagleTimer > §96§.§[3§)
         {
            this.§'L§ = true;
            this.mLevelMain.§ '§();
         }
         this.mMightyEagleTimer += param2;
         this.mLevelMain.particles.§#!Q§(§;Z§.§8+§,§1D§.§%d§,§;Z§.§>!H§,param1.§1!d§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§1!d§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§;Z§.§"!a§(param1.§1T§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§^^§(§96§.§7!1§ * param2);
            _loc4_ = -1;
            if(this.§+!4§)
            {
               this.§+!4§ = false;
               this.mLevelMain.§4!X§();
               param1.§@!@§(§0u§.§3a§);
               this.mSardineCanAdded = false;
               param1.§4!%§.§2[§ = true;
               param1.§4!%§.§92§();
               for each(_loc5_ in this.§,!U§)
               {
                  if(_loc5_ && _loc5_.§,m§())
                  {
                     _loc5_.§1!d§().SetAwake(true);
                     _loc5_.§1!d§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§ S§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§,!U§)
               {
                  if(_loc5_ && _loc5_.§,m§())
                  {
                     _loc5_.applyDamage(_loc5_.§?L§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§1!d§().GetPosition().y >= -5.5;
            this.§+!4§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§2!%§(param2,new Point(1,_loc4_ * §96§.§6&§),§96§.§%q§);
         return false;
      }
      
      private function §>[§() : void
      {
         var _loc1_:§ !M§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§[!3§ = null;
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
         while(this.§3E§.length > 0)
         {
            _loc1_ = this.§3E§.shift();
            _loc2_ = _loc1_.§3'§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§,!U§)
            {
               _loc8_ = _loc6_.§1!d§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§1!d§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§3'§)
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
                     _loc6_.§1!d§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§1!T§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.mLevelMain.particles.§#!Q§(this.getMainExplosionCoreName(_loc1_.type),§1D§.§%d§,§;Z§.§=!c§,_loc3_,_loc4_,600,"",§;Z§.§%!$§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.mLevelMain.particles.§#!Q§(§;Z§.§function§,§1D§.§%d§,§;Z§.§>!H§,_loc3_,_loc4_,_loc16_,"",§;Z§.§%!$§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §;Z§.§%#§;
      }
      
      public function §-!C§(param1:Number) : void
      {
         var _loc2_:§[!3§ = null;
         var _loc3_:int = this.§,!U§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,!U§[_loc3_];
            if(_loc2_.§,p§())
            {
               if(this.§^0§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§=N§())
            {
               this.§;=§(_loc2_,param1);
            }
            else if(this.§[!2§(_loc2_))
            {
               _loc2_.§@!@§(§0u§.§&"§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§@!@§(§0u§.§&"§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§[!U§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§>[§();
      }
      
      private function § S§() : void
      {
         var _loc1_:§@!+§ = null;
         for each(_loc1_ in this.§8o§)
         {
            this.mLevelMain.mLevelEngine.mWorld.§7!X§(_loc1_.§3!&§);
         }
      }
      
      public function §,!V§() : Boolean
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!U§.length)
         {
            _loc2_ = this.§,!U§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §[!2§(param1:§[!3§) : Boolean
      {
         if(param1 && param1.§-!$§.§?!7§() != §=!3§.§4! § && this.mLevelMain.§@I§.§+M§(param1.§1!d§().GetPosition().x,param1.§1!d§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§@!+§ = null;
         var _loc7_:§"7§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§[!3§;
         if((_loc5_ = this.§,!U§[param1]).§,m§())
         {
            ++this.§1B§;
         }
         else if(_loc5_.§[!U§())
         {
            --this.§[;§;
         }
         if(_loc5_ == this.mLevelMain.activeObject)
         {
            this.mLevelMain.activeObject = null;
         }
         if(param2)
         {
            this.mLevelMain.addScore(_loc5_.§-!$§.score,§-!3§.§0!U§,true,_loc5_.§1!d§().GetPosition().x,_loc5_.§1!d§().GetPosition().y - 3,§;Z§.§6%§(_loc5_.§1T§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.mLevelMain.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§1Y§(_loc5_.sprite);
         this.§"W§(_loc5_);
         for each(_loc6_ in this.§8o§)
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
         for each(_loc7_ in this.§,!§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§>i§ = true;
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
         this.§,!U§[param1] = null;
         this.§,!U§.splice(param1,1);
      }
      
      private function §1Y§(param1:Sprite) : void
      {
         if(this.§7!K§.contains(param1))
         {
            this.§7!K§.removeChild(param1);
            return;
         }
         if(this.§%]§.contains(param1))
         {
            this.§%]§.removeChild(param1);
            return;
         }
         if(this.§#n§.contains(param1))
         {
            this.§#n§.removeChild(param1);
            return;
         }
         if(this.§]l§.contains(param1))
         {
            this.§]l§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§[!3§) : void
      {
         if(param1.§]!<§().toUpperCase() == "WHITE_EGG" || param1.§8!H§())
         {
            if(param1.§1T§.toUpperCase() == §"d§.§]A§)
            {
               this.addExplosions(§ !M§.§"L§,param1.§1!d§().GetPosition().x,param1.§1!d§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§ !M§.§5x§,param1.§1!d§().GetPosition().x,param1.§1!d§().GetPosition().y);
            }
         }
      }
      
      public function §3A§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§,!U§.indexOf(param1),param2,param3,param4);
      }
      
      public function §'Q§(param1:Number, param2:Number) : void
      {
         this.§;x§.x = -param1;
         this.§;x§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§[!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!U§.length)
         {
            _loc3_ = this.§,!U§[_loc2_] as §[!3§;
            if(_loc3_ && _loc3_.§,m§() && _loc3_.§"!D§ > 0)
            {
               if(!param1 || _loc3_.§4!%§.mTryToBlink <= 0 && _loc3_.§4!%§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §-,§(param1:Boolean = false) : int
      {
         var _loc4_:§[!3§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,!U§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,!U§[_loc3_] as §[!3§) && _loc4_.§,m§() && _loc4_.§"!D§ > 0)
            {
               if(!param1 || _loc4_.§4!%§.mTryToBlink <= 0 && _loc4_.§4!%§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §%!3§() : int
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!U§)
         {
            if(_loc2_ && (_loc2_.§]e§() || _loc2_.§;Y§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §9!G§() : int
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,!U§)
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
         var _loc3_:§[!3§ = null;
         var _loc2_:int = this.§,!U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,!U§[_loc2_];
            if(_loc3_ && _loc3_.§,m§() && _loc3_.§"!D§ > 0)
            {
               _loc3_.§4!%§.mTryToScream = §5!P§.§]5§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §[t§() : Boolean
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = this.§,!U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!U§[_loc1_] as §[!3§;
            if(_loc2_ && _loc2_.§[!U§() && _loc2_.§"!D§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = this.§,!U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!U§[_loc1_] as §[!3§;
            if(_loc2_ && _loc2_.§"!D§ > 0 && _loc2_.§[w§ != §'!D§.§&!'§)
            {
               if(_loc2_.§'!-§() && !_loc2_.§]C§())
               {
                  return false;
               }
               if(_loc2_.§[!U§() && _loc2_.§"!D§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §]c§(param1:Boolean = false) : §[!3§
      {
         var _loc5_:int = 0;
         var _loc6_:§[!3§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§,!U§.length;
         var _loc3_:int = 1 + Math.random() * this.§-,§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§,!U§[_loc5_]) && _loc6_.§,m§() && _loc6_.§"!D§ > 0)
               {
                  if(!param1 || _loc6_.§4!%§.mTryToBlink <= 0 && _loc6_.§4!%§.mTryToScream <= 0)
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
      
      public function §`q§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§,!U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§,!U§[_loc2_] as §[!3§).§-!$§.score;
            if((this.§,!U§[_loc2_] as §[!3§).§'!-§())
            {
               _loc1_ += §&_§.§<!'§.getValue() * int((this.§,!U§[_loc2_] as §[!3§).§?L§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.mLevelMain.slingshot.§`q§());
      }
      
      public function §?!D§(param1:§[!3§, param2:§[!3§) : Boolean
      {
         if(param1.§[!U§() && param2.§[!U§())
         {
            return true;
         }
         if(!param1.§!,§() && !param2.§!,§())
         {
            return true;
         }
         return false;
      }
      
      public function §!b§() : void
      {
         this.mSardineCanAdded = true;
         this.§[;§ = 0;
      }
      
      public function §9[§(param1:§[!3§, param2:§[!3§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§=N§() || param2.§,m§())
            {
               param2.applyDamage(param2.§?L§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§=N§() || param1.§,m§())
            {
               param1.applyDamage(param1.§?L§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §96§.§"!<§)
         {
            if(param1.§,p§() || param2.§,p§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§?!D§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%!A§(param2.§]!<§());
         var _loc5_:Number = param1.§!!`§(param2.§]!<§());
         var _loc6_:Number = param2.§%!A§(param1.§]!<§());
         var _loc7_:Number = param2.§!!`§(param1.§]!<§());
         var _loc8_:Number = param1.§1!d§().GetMass() * param1.§1!d§().GetLinearVelocity().x - param2.§1!d§().GetMass() * param2.§1!d§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§1!d§().GetMass() * param1.§1!d§().GetLinearVelocity().y - param2.§1!d§().GetMass() * param2.§1!d§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§"!D§);
         var _loc14_:Number = Math.max(0,param2.§"!D§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§[!U§(),_loc14_ == param2.§?L§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§[!U§(),_loc13_ == param1.§?L§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§7!2§(new b2Vec2(param2.§1!d§().GetLinearVelocity().x * _loc18_,param2.§1!d§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§7!2§(new b2Vec2(param1.§1!d§().GetLinearVelocity().x * _loc19_,param1.§1!d§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function static() : void
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = this.§,!U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!U§[_loc1_] as §[!3§;
            if(_loc2_ != null && _loc2_.§,m§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §?!U§() : void
      {
         var _loc2_:§[!3§ = null;
         var _loc1_:int = this.§,!U§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!U§[_loc1_] as §[!3§;
            if(_loc2_ != null && _loc2_.§8!H§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §4!G§() : int
      {
         return this.§,!U§.length;
      }
      
      public function § !T§(param1:§9]§) : void
      {
         var _loc4_:§[!3§ = null;
         var _loc5_:§8!9§ = null;
         var _loc6_:§2!K§ = null;
         var _loc7_:§@!+§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!U§.length)
         {
            if((_loc4_ = this.§,!U§[_loc2_]).§>!E§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §8!9§()).angle = _loc4_.§7V§();
                  _loc5_.id = _loc4_.§1T§;
                  _loc5_.x = _loc4_.§1!d§().GetPosition().x;
                  _loc5_.y = _loc4_.§1!d§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.§,j§(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§8o§.length)
         {
            _loc7_ = this.§8o§[_loc3_];
            _loc6_ = new §2!K§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§6;§,_loc7_.§6x§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§5H§,_loc7_.motorSpeed,_loc7_.§;!7§,_loc7_.maxTorque);
            param1.§8`§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §5!G§() : void
      {
         var _loc1_:int = 0;
         while(this.§,!U§.length > _loc1_)
         {
            if(this.§,!U§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§3A§(this.§,!U§[_loc1_]);
            }
         }
      }
      
      public function §9!5§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,!U§.length)
         {
            if(this.§,!U§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,!U§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§`!`§ = param1;
         this.§5!,§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!U§.length)
         {
            if(this.§,!U§[_loc2_].isTexture())
            {
               this.§,!U§[_loc2_].sprite.visible = !this.§`!`§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§2!A§ = param1;
      }
      
      public function §8s§() : Boolean
      {
         return this.§2!A§;
      }
      
      public function §!W§() : int
      {
         return this.§"a§;
      }
      
      public function §&!C§() : int
      {
         return this.§1B§;
      }
      
      public function §"5§(param1:String) : §[!3§
      {
         var _loc3_:§[!3§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!U§.length)
         {
            _loc3_ = this.§,!U§[_loc2_] as §[!3§;
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
