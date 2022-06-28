package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §"!i§.§"!'§;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§4K§;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §2!'§.b2PrismaticJoint;
   import §2!'§.b2RevoluteJoint;
   import §2!'§.b2WeldJoint;
   import §2@§.§%E§;
   import §40§.§-!8§;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §40§.§[l§;
   import §5<§.§ r§;
   import §5<§.§-H§;
   import §5<§.§;!8§;
   import §5<§.§<n§;
   import §=`§.§#`§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § 4§
   {
       
      
      protected var §7-§:Vector.<§!u§>;
      
      protected var §"!5§:int;
      
      public var §#!U§:§5G§;
      
      public var §0T§:Vector.<§3!b§>;
      
      protected var §2r§:Sprite;
      
      protected var §4G§:Sprite;
      
      private var §;!j§:Sprite;
      
      private var §]@§:Sprite;
      
      private var §!![§:Sprite;
      
      protected var §import§:Vector.<Texture>;
      
      protected var §"!§:Vector.<§;!8§>;
      
      protected var §7_§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §!"§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §>A§:Boolean = false;
      
      protected var §4"#§:Number;
      
      protected var §@!b§:int;
      
      protected var §&!e§:Vector.<§ r§>;
      
      protected var §-!g§:int = 0;
      
      private var §,!^§:int = 0;
      
      private var §[I§:int = 0;
      
      protected var §3!S§:int;
      
      private var §"i§:Boolean = true;
      
      private var §<^§:Boolean = true;
      
      public function § 4§(param1:§5G§, param2:§"!'§, param3:Sprite)
      {
         var _loc5_:§;!8§ = null;
         var _loc6_:§<n§ = null;
         var _loc7_:§!u§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§!u§ = null;
         var _loc11_:§!u§ = null;
         this.§7-§ = new Vector.<§!u§>();
         this.§0T§ = new Vector.<§3!b§>();
         this.§import§ = new Vector.<Texture>();
         this.§4"#§ = this.§2!y§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§&!e§ = new Vector.<§ r§>();
         super();
         this.§#!U§ = param1;
         this.§"!5§ = 0;
         this.§4G§ = param3;
         this.§4G§.§&!U§ = false;
         this.§<^§ = true;
         this.§"i§ = true;
         this.§2r§ = new Sprite();
         this.§;!j§ = new Sprite();
         this.§]@§ = new Sprite();
         this.§!![§ = new Sprite();
         this.§4G§.addChild(this.§2r§);
         this.§4G§.addChild(this.§;!j§);
         this.§4G§.addChild(this.§]@§);
         this.§4G§.addChild(this.§!![§);
         this.addObject(§%E§.§8!G§(param2.theme).§0!y§,(this.§#!U§.§!#§.§;S§ + this.§#!U§.§!#§.§8W§) / 2,this.§#!U§.§!#§.§]!L§ + §[l§.§2J§);
         this.§3!S§ = this.§7-§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§^!b§)
         {
            _loc6_ = param2.§ !X§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§4n§();
         this.§]o§(true);
         this.§"!§ = new Vector.<§;!8§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§5!R§)
         {
            this.§"!§.push(§;!8§.§#^§(param2.§8[§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§"!§)
         {
            _loc8_ = _loc5_.index1 + this.§3!S§;
            _loc9_ = _loc5_.index2 + this.§3!S§;
            if(_loc8_ < this.§7-§.length && _loc9_ < this.§7-§.length)
            {
               _loc10_ = this.§7-§[_loc8_];
               _loc11_ = this.§7-§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §-H§.§1!4§)
               {
                  _loc5_.§1q§ = this.§#!U§.mLevelEngine.mWorld.§!<§(_loc5_.§`!h§(_loc10_,_loc11_));
               }
               else
               {
                  this.§&!e§.push(new § r§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§2,§));
               }
            }
         }
      }
      
      protected function get §2!y§() : Class
      {
         return §2!y§;
      }
      
      public function get §<f§() : Sprite
      {
         return this.§!![§;
      }
      
      public function get §1?§() : Sprite
      {
         return this.§4G§;
      }
      
      public function get §["§() : Sprite
      {
         return this.§]@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§7-§.length > 0)
         {
            this.§9!S§(0);
         }
         this.§7-§ = null;
         this.§&!e§ = null;
         if(this.§4G§)
         {
            this.§4G§.dispose();
            this.§4G§ = null;
            this.§2r§ = null;
            this.§!![§ = null;
            this.§;!j§ = null;
            this.§]@§ = null;
         }
         while(this.§import§.length > 0)
         {
            _loc1_ = this.§import§.pop();
            this.§#!U§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §]o§(param1:Boolean) : void
      {
         this.§2r§.visible = param1;
      }
      
      private function §4n§() : void
      {
         var _loc3_:§!u§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§"<§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§!u§> = new Vector.<§!u§>();
         for each(_loc3_ in this.§7-§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§4G§);
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
            this.§9k§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§!M§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§#!U§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§import§.push(_loc12_);
            (_loc13_ = new §"<§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§2r§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §!M§(param1:Vector.<§!u§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§!u§ = null;
         var _loc11_:§6R§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§2f§.shape).§4!6§();
            _loc13_ = new Rectangle(_loc12_[0].x / §5G§.§6+§ * param6,_loc12_[0].y / §5G§.§6+§ * param6,(_loc12_[1].x - _loc12_[0].x) / §5G§.§6+§ * param6,(_loc12_[1].y - _loc12_[0].y) / §5G§.§6+§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§3C§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §9k§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§#!U§.background.§&^§();
         var _loc5_:§#`§;
         if(_loc5_ = this.§#!U§.backgroundTextureManager.§&u§(_loc4_))
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
      
      public function §`1§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc10_:§4K§ = §7!Z§.§`!H§(param2);
         return new §%!"§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §7M§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc10_:§!u§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §7!u§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §^h§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new § !B§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §1!C§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §>!<§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §+4§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §1O§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new § !V§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §3!5§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§-!g§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §!u§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§!u§;
         if(!(_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§"i§;
            this.§7-§[this.§7-§.length] = _loc11_;
         }
         else
         {
            this.§7-§[this.§7-§.length] = _loc11_;
         }
         if(_loc11_ is §3!5§ && !_loc11_.§'!j§())
         {
            this.§;!j§.addChild(_loc10_);
            ++this.§-!g§;
         }
         else if(_loc11_.front || param9)
         {
            this.§!![§.addChild(_loc10_);
         }
         else
         {
            this.§]@§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§#!U§.§`6§(_loc11_);
         }
         if(param6)
         {
            this.§#!U§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §#^§(param1:int, param2:§!u§, param3:§!u§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§;!8§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§ r§ = null;
         var _loc15_:int = this.§7-§.indexOf(param2) - this.§3!S§;
         var _loc16_:int = this.§7-§.indexOf(param3) - this.§3!S§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §;!8§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§"!§.push(_loc17_);
            _loc17_.§2,§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §-H§.§1!4§)
            {
               _loc17_.§1q§ = this.§#!U§.mLevelEngine.mWorld.§!<§(_loc17_.§`!h§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new § r§(_loc18_,_loc19_,param12);
               this.§&!e§.push(_loc20_);
            }
         }
      }
      
      public function §`]§(param1:§;!8§) : void
      {
         if(!(param1.§1q§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§!u§ = this.§ !X§(param1.index1 + this.§3!S§);
         var _loc3_:§!u§ = this.§ !X§(param1.index2 + this.§3!S§);
         this.§#!U§.mLevelEngine.mWorld.§<!]§(param1.§1q§);
         param1.§1q§ = this.§#!U§.mLevelEngine.mWorld.§!<§(param1.§`!h§(_loc2_,_loc3_));
      }
      
      public function §`!Z§(param1:§!u§) : Vector.<§;!8§>
      {
         var _loc4_:§;!8§ = null;
         var _loc2_:Vector.<§;!8§> = new Vector.<§;!8§>();
         var _loc3_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§"!§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §7x§() : Vector.<§;!8§>
      {
         return this.§"!§;
      }
      
      public function §%_§(param1:§!u§) : void
      {
         var _loc2_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         var _loc3_:int = this.§"!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§"!§[_loc3_].index1 == _loc2_ || this.§"!§[_loc3_].index2 == _loc2_)
            {
               this.§"!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §&4§(param1:§!u§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§&!e§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§&!e§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§&!e§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §#+§(param1:§!u§, param2:§!u§) : Boolean
      {
         var _loc3_:int = this.§7-§.indexOf(param1) - this.§3!S§;
         var _loc4_:int = this.§7-§.indexOf(param2) - this.§3!S§;
         var _loc5_:int = this.§"!§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§"!§[_loc5_].index1 == _loc3_ && this.§"!§[_loc5_].index2 == _loc4_ || this.§"!§[_loc5_].index1 == _loc4_ && this.§"!§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         var _loc10_:§!u§ = null;
         var _loc11_:§4K§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§7M§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§[I§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§`1§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §7!Z§.§`!H§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §7!Z§.§`!H§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§-!o§ == §4K§.§^!Q§ || _loc11_.§-!o§ == §4K§.§!!U§)
            {
               _loc10_ = new §7F§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §!u§(this,param1,this.§#!U§.mLevelEngine.mWorld,this.§#!U§,this.§"!5§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§,d§();
         return _loc10_;
      }
      
      protected function §,d§() : String
      {
         var _loc3_:§!u§ = null;
         var _loc1_:int = this.§7-§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§7-§)
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
      
      public function §`!2§(param1:Number) : void
      {
         var _loc3_:§!u§ = null;
         var _loc2_:int = this.§7-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7-§[_loc2_] as §!u§;
            if(_loc3_)
            {
               if(_loc3_.§0M§ <= 0)
               {
                  this.§9!S§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§]!u§();
                  _loc3_.§>!d§();
               }
            }
            _loc2_--;
         }
         this.§,J§(param1);
      }
      
      protected function §,J§(param1:Number) : void
      {
         this.§3!T§(param1);
         this.§"O§();
      }
      
      private function §3!T§(param1:Number) : void
      {
         var _loc4_:§ r§ = null;
         var _loc5_:int = 0;
         var _loc6_:§!u§ = null;
         if(this.§&!e§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§ r§> = this.§&!e§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§!s§ && this.§&!e§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§;H§("" + _loc5_))
                  {
                     this.§&!l§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §"O§() : void
      {
         var _loc1_:§;!8§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§"!§)
         {
            if(_loc1_.type == §-H§.§'"#§ || _loc1_.type == §-H§.§2h§ && _loc1_.§9!O§)
            {
               if(_loc1_.§1q§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§1q§ as b2PrismaticJoint).§+t§();
                  _loc3_ = (_loc1_.§1q§ as b2PrismaticJoint).§3S§();
               }
               else if(_loc1_.§1q§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§1q§ as b2RevoluteJoint).§5M§();
                  _loc3_ = (_loc1_.§1q§ as b2RevoluteJoint).§3S§();
               }
               if(_loc5_ = _loc1_.§0![§ && _loc1_.§3A§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§1q§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : void
      {
         this.§0T§.push(§3!b§.createExplosion(param1,param2,param3,param4));
         §-!Q§.§#3§("TntExplosions","ChannelExplosions");
      }
      
      public function §3q§(param1:Number, param2:Number) : int
      {
         var _loc4_:§!u§ = null;
         var _loc3_:int = this.§7-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7-§[_loc3_])
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
      
      public function §&J§(param1:Number, param2:Number) : §!u§
      {
         var _loc4_:§!u§ = null;
         var _loc3_:int = this.§7-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§7-§[_loc3_])
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
      
      public function §-R§(param1:Number, param2:Number) : Vector.<§!u§>
      {
         var _loc5_:§!u§ = null;
         var _loc3_:Vector.<§!u§> = new Vector.<§!u§>();
         var _loc4_:int = this.§7-§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§7-§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function § !X§(param1:int) : §!u§
      {
         return this.§7-§[param1];
      }
      
      public function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc4_:§!u§ = null;
         var _loc3_:int = this.§7-§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§7-§[_loc3_] as §!u§).§?!5§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §2!`§(param1:§!u§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§!u§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§0M§ == param1.§]!3§)
         {
            if(this.§4"#§ < this.§2!y§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§4"#§ += param2 * this.§2!y§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§63§().§&e§(param2 * this.§4"#§);
            this.§@!b§ = 0;
         }
         else if(this.§@!b§ == 0)
         {
            this.§@!b§ = this.§#!U§.§0!6§;
         }
         if(param1.§,1§() || this.§4"!§(param1) || this.§@!b§ > 0 && this.§#!U§.§0!6§ > this.§@!b§ + this.§2!y§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§2!y§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§2!y§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§2!y§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §-!Q§.§#3§("Mighty_Eagle_Selected_1","ChannelBird");
                  §-!Q§.§#3§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§2!y§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§63§().GetPosition().x - this.§2!y§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§63§().GetPosition().y - this.§2!y§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§2!y§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§4"!§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§2!y§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§@!b§ = 0;
                  _loc7_.§+!j§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §7J§(param1:§!u§, param2:Number) : Boolean
      {
         var _loc5_:§!u§ = null;
         if(this.§2!y§.MIGHTY_EAGLE_USE_SHADE && !this.§>A§ && this.mMightyEagleTimer > this.§2!y§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§>A§ = true;
            this.§#!U§.§%!=§();
         }
         this.mMightyEagleTimer += param2;
         this.§#!U§.particles.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,param1.§63§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§63§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§>p§.§=!f§(param1.§-!>§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§@!v§(this.§2!y§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§!"§)
            {
               this.§!"§ = false;
               this.§#!U§.§=5§();
               param1.§'!S§(§6!D§.§@""§);
               this.mSardineCanAdded = false;
               param1.§+!j§.§ ^§ = true;
               param1.§+!j§.§=!2§();
               for each(_loc5_ in this.§7-§)
               {
                  if(_loc5_ && _loc5_.§^A§())
                  {
                     _loc5_.§63§().SetAwake(true);
                     _loc5_.§63§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§,"§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§7-§)
               {
                  if(_loc5_ && _loc5_.§^A§())
                  {
                     _loc5_.applyDamage(_loc5_.§]!3§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§63§().GetPosition().y >= -5.5;
            this.§!"§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§=!7§(param2,new Point(this.§2!y§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§2!y§.MIGHTY_EAGLE_Y_CHANGE),this.§2!y§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §-!9§() : void
      {
         var _loc1_:§3!b§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§!u§ = null;
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
            _loc2_ = _loc1_.§61§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§7-§)
            {
               if(!(_loc1_.§']§ != null && _loc1_.§']§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§63§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§63§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§61§)
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
                        _loc6_.§63§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§0!0§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§%+§(_loc6_,_loc14_);
                  }
               }
            }
            this.§#!U§.particles.§-M§(this.§@S§(_loc1_.type),§=!%§.§2k§,§>p§.§>b§,_loc3_,_loc4_,600,"",§>p§.§2!Z§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§#!U§.particles.§-M§(§>p§.§=!i§,§=!%§.§2k§,§>p§.§%§,_loc3_,_loc4_,_loc16_,"",§>p§.§2!Z§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §%+§(param1:§!u§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §@S§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §>p§.§4!#§;
      }
      
      public function §^!,§(param1:Number) : void
      {
         var _loc2_:§!u§ = null;
         var _loc3_:int = this.§7-§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§7-§[_loc3_];
            if(_loc2_.§1!b§())
            {
               if(this.§2!`§(_loc2_,param1))
               {
                  this.§9!S§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§'!j§())
            {
               this.§7J§(_loc2_,param1);
            }
            else if(this.§4"!§(_loc2_))
            {
               _loc2_.§'!S§(§6!D§.§84§);
               this.§9!S§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§'!S§(§6!D§.§84§);
               this.§9!S§(_loc3_,false,true,true);
            }
            else if(_loc2_.§]!?§() || _loc2_.§=C§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§-!9§();
      }
      
      private function §,"§() : void
      {
         var _loc1_:§;!8§ = null;
         for each(_loc1_ in this.§"!§)
         {
            if(_loc1_.type != §-H§.§1!4§)
            {
               this.§#!U§.mLevelEngine.mWorld.§<!]§(_loc1_.§1q§);
            }
         }
      }
      
      public function §9!4§() : Boolean
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7-§.length)
         {
            _loc2_ = this.§7-§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §4"!§(param1:§!u§) : Boolean
      {
         if(param1 && param1.§2f§.§4!a§() != § L§.§@8§ && this.§#!U§.§!#§.§2!d§(param1.§63§().GetPosition().x,param1.§63§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §9!S§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§;!8§ = null;
         var _loc7_:§ r§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§!u§;
         if((_loc5_ = this.§7-§[param1]).§^A§())
         {
            ++this.§,!^§;
         }
         else if(_loc5_.§]!?§())
         {
            --this.§-!g§;
         }
         if(_loc5_ == this.§#!U§.activeObject)
         {
            this.§#!U§.activeObject = null;
         }
         if(param2 && _loc5_.§2f§.score > 0)
         {
            this.§#!U§.addScore(_loc5_.§2f§.score,§-!8§.§const§,true,_loc5_.§63§().GetPosition().x,_loc5_.§63§().GetPosition().y - 3,§>p§.§?`§(_loc5_.§-!>§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§#!U§.particles);
         }
         if(param4)
         {
            this.§%O§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§0Z§(_loc5_.sprite);
         this.§%_§(_loc5_);
         this.§&4§(_loc5_);
         for each(_loc6_ in this.§"!§)
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
         for each(_loc7_ in this.§&!e§)
         {
            if(_loc7_.§`s§ == param1)
            {
               _loc7_.§!s§ = true;
            }
            if(_loc7_.§`s§ >= param1)
            {
               --_loc7_.§`s§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§7-§[param1] = null;
         this.§7-§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§!u§, param2:§=!%§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §0Z§(param1:Sprite) : void
      {
         if(this.§]@§.contains(param1))
         {
            this.§]@§.removeChild(param1);
            return;
         }
         if(this.§;!j§.contains(param1))
         {
            this.§;!j§.removeChild(param1);
            return;
         }
         if(this.§2r§.contains(param1))
         {
            this.§2r§.removeChild(param1);
            return;
         }
         if(this.§!![§.contains(param1))
         {
            this.§!![§.removeChild(param1);
            return;
         }
      }
      
      protected function §%O§(param1:§!u§) : void
      {
         if(param1.§#7§().toUpperCase() == "WHITE_EGG" || param1.§-!?§())
         {
            if(param1.§-!>§.toUpperCase() == §1!C§.§-!5§)
            {
               this.addExplosions(§3!b§.§ !>§,param1.§63§().GetPosition().x,param1.§63§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§3!b§.§1!+§,param1.§63§().GetPosition().x,param1.§63§().GetPosition().y);
            }
         }
      }
      
      public function §&!l§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§9!S§(this.§7-§.indexOf(param1),param2,param3,param4);
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         this.§4G§.x = -param1;
         this.§4G§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§!u§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7-§.length)
         {
            _loc3_ = this.§7-§[_loc2_] as §!u§;
            if(_loc3_ && _loc3_.§^A§() && _loc3_.§0M§ > 0)
            {
               if(!param1 || _loc3_.§+!j§.mTryToBlink <= 0 && _loc3_.§+!j§.mTryToScream <= 0)
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
         var _loc4_:§!u§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§7-§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§7-§[_loc3_] as §!u§) && _loc4_.§^A§() && _loc4_.§0M§ > 0)
            {
               if(!param1 || _loc4_.§+!j§.mTryToBlink <= 0 && _loc4_.§+!j§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §4W§() : int
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7-§)
         {
            if(_loc2_ && (_loc2_.§,!y§() || _loc2_.§]q§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §^C§() : int
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7-§)
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
         var _loc3_:§!u§ = null;
         var _loc2_:int = this.§7-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7-§[_loc2_];
            if(_loc3_ && _loc3_.§^A§() && _loc3_.§0M§ > 0)
            {
               _loc3_.§+!j§.mTryToScream = §7!r§.§<!c§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §="!§() : Boolean
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = this.§7-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc2_ && _loc2_.§]!?§() && _loc2_.§0M§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = this.§7-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc2_ && _loc2_.§0M§ > 0 && _loc2_.§-!o§ != §4K§.§&!8§)
            {
               if(_loc2_.§2b§() && !_loc2_.§,1§())
               {
                  return false;
               }
               if(_loc2_.§]!?§() && _loc2_.§0M§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function § !"§(param1:Boolean = false) : §!u§
      {
         var _loc7_:§!u§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§7-§.length;
         var _loc3_:int = this.§@P§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§7-§[_loc6_] as §!u§) && _loc7_.§^A§() && _loc7_.§0M§ > 0)
            {
               if(!param1 || _loc7_.§+!j§.mTryToBlink <= 0 && _loc7_.§+!j§.mTryToScream <= 0)
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
      
      public function §+!u§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§7-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§7-§[_loc2_] as §!u§).§2f§.score;
            if((this.§7-§[_loc2_] as §!u§).§2b§())
            {
               _loc1_ += §5G§.§'!4§.getValue() * int((this.§7-§[_loc2_] as §!u§).§]!3§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§#!U§.slingshot.§+!u§());
      }
      
      public function §0&§(param1:§!u§, param2:§!u§) : Boolean
      {
         if(param2 is §^h§ && param1 is §^h§)
         {
            return true;
         }
         if(!param1.§&V§() && !param2.§&V§())
         {
            return true;
         }
         return false;
      }
      
      public function § I§() : void
      {
         this.mSardineCanAdded = true;
         this.§-!g§ = 0;
      }
      
      public function §&!K§(param1:§!u§, param2:§!u§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§'!j§() || param2.§^A§())
            {
               param2.applyDamage(param2.§]!3§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§'!j§() || param1.§^A§())
            {
               param1.applyDamage(param1.§]!3§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§2!y§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§1!b§() || param2.§1!b§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§0&§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§%v§(param2.§#7§());
         var _loc5_:Number = param1.§-!K§(param2.§#7§());
         var _loc6_:Number = param2.§%v§(param1.§#7§());
         var _loc7_:Number = param2.§-!K§(param1.§#7§());
         var _loc8_:Number = param1.§63§().GetMass() * param1.§63§().GetLinearVelocity().x - param2.§63§().GetMass() * param2.§63§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§63§().GetMass() * param1.§63§().GetLinearVelocity().y - param2.§63§().GetMass() * param2.§63§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§0M§);
         var _loc14_:Number = Math.max(0,param2.§0M§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§]!?§(),_loc14_ == param2.§]!3§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§]!?§(),_loc13_ == param1.§]!3§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§'y§(new b2Vec2(param2.§63§().GetLinearVelocity().x * _loc18_,param2.§63§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§'y§(new b2Vec2(param1.§63§().GetLinearVelocity().x * _loc19_,param1.§63§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §33§(param1:§!u§, param2:§!u§) : void
      {
      }
      
      public function §?0§() : void
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = this.§7-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc2_ != null && _loc2_.§^A§())
            {
               this.§9!S§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §+!=§() : void
      {
         var _loc2_:§!u§ = null;
         var _loc1_:int = this.§7-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7-§[_loc1_] as §!u§;
            if(_loc2_ != null && _loc2_.§-!?§())
            {
               this.§9!S§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §[W§() : int
      {
         return this.§7-§.length;
      }
      
      public function §"!;§(param1:§"!'§) : void
      {
         var _loc2_:§!u§ = null;
         var _loc3_:§;!8§ = null;
         var _loc4_:§<n§ = null;
         var _loc5_:§-H§ = null;
         for each(_loc2_ in this.§7-§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §<n§()).angle = _loc2_.§3C§();
               _loc4_.id = _loc2_.§-!>§;
               _loc4_.x = _loc2_.§63§().GetPosition().x;
               _loc4_.y = _loc2_.§63§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§"!§)
         {
            (_loc5_ = new §-H§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§&!F§,_loc3_.§0![§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§3A§,_loc3_.motorSpeed,_loc3_.§9!O§,_loc3_.maxTorque)).§2,§ = _loc3_.§2,§;
            param1.§6!H§(_loc5_);
         }
      }
      
      public function §3N§() : void
      {
         var _loc1_:int = 0;
         while(this.§7-§.length > _loc1_)
         {
            if(this.§7-§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§&!l§(this.§7-§[_loc1_]);
            }
         }
      }
      
      public function §&!g§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§7-§.length)
         {
            if(this.§7-§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§7-§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§"i§ = param1;
         this.§]o§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7-§.length)
         {
            if(this.§7-§[_loc2_].isTexture())
            {
               this.§7-§[_loc2_].sprite.visible = !this.§"i§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§<^§ = param1;
      }
      
      public function § h§() : Boolean
      {
         return this.§<^§;
      }
      
      public function §!T§() : int
      {
         return this.§[I§;
      }
      
      public function §^M§() : int
      {
         return this.§,!^§;
      }
      
      public function §;H§(param1:String) : §!u§
      {
         var _loc3_:§!u§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§7-§.length)
         {
            _loc3_ = this.§7-§[_loc2_] as §!u§;
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
