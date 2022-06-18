package §4n§
{
   import §"X§.Texture;
   import §1!A§.§+V§;
   import §1!A§.§4Z§;
   import §1!A§.§9P§;
   import §1!A§.§>p§;
   import §8T§.§@o§;
   import §9!#§.§+5§;
   import §9!#§.§-!'§;
   import §9!#§.§4!6§;
   import §9!#§.§5y§;
   import §9!#§.§8U§;
   import §;!;§.§7F§;
   import §;'§.§+U§;
   import §;'§.§3,§;
   import §;'§.§>-§;
   import §;'§.§?!D§;
   import §;^§.§ @§;
   import §;^§.Sprite;
   import §<!M§.§1!&§;
   import §=!K§.§@p§;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8y§
   {
       
      
      protected var § !'§:Vector.<§@!4§>;
      
      protected var §<Z§:int;
      
      public var §2I§:§?!D§;
      
      public var §!!9§:Vector.<§!b§>;
      
      protected var §&R§:Sprite;
      
      protected var §^z§:Sprite;
      
      private var §^J§:Sprite;
      
      private var §[+§:Sprite;
      
      private var §8!L§:Sprite;
      
      protected var §]`§:Vector.<Texture>;
      
      protected var §<-§:Vector.<§+V§>;
      
      protected var §+#§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §1Q§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §2"§:Boolean = false;
      
      protected var §9W§:Number;
      
      protected var §+L§:int;
      
      protected var §3m§:Vector.<§>p§>;
      
      protected var §#V§:int = 0;
      
      private var § N§:int = 0;
      
      private var §1!§:int = 0;
      
      protected var §!6§:int;
      
      private var §<!@§:Boolean = true;
      
      private var §!l§:Boolean = true;
      
      public function §8y§(param1:§?!D§, param2:§1!&§, param3:Sprite)
      {
         var _loc5_:§+V§ = null;
         var _loc6_:§4Z§ = null;
         var _loc7_:§@!4§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§@!4§ = null;
         var _loc11_:§@!4§ = null;
         this.§ !'§ = new Vector.<§@!4§>();
         this.§!!9§ = new Vector.<§!b§>();
         this.§]`§ = new Vector.<Texture>();
         this.§9W§ = this.§>-§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§3m§ = new Vector.<§>p§>();
         super();
         this.§2I§ = param1;
         this.§<Z§ = 0;
         this.§^z§ = param3;
         this.§^z§.§3_§ = false;
         this.§!l§ = true;
         this.§<!@§ = true;
         this.§&R§ = new Sprite();
         this.§^J§ = new Sprite();
         this.§[+§ = new Sprite();
         this.§8!L§ = new Sprite();
         this.§^z§.addChild(this.§&R§);
         this.§^z§.addChild(this.§^J§);
         this.§^z§.addChild(this.§[+§);
         this.§^z§.addChild(this.§8!L§);
         this.addObject(§7F§.§=#§(param2.theme).§1O§,(this.§2I§.§-!>§.§+!?§ + this.§2I§.§-!>§.§?Q§) / 2,this.§2I§.§-!>§.§-1§ + §+U§.§+!=§);
         this.§!6§ = this.§ !'§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§=!=§)
         {
            _loc6_ = param2.§,,§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§1J§();
         this.§>2§(true);
         this.§<-§ = new Vector.<§+V§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§5P§)
         {
            this.§<-§.push(§+V§.§1Y§(param2.§^L§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§<-§)
         {
            _loc8_ = _loc5_.index1 + this.§!6§;
            _loc9_ = _loc5_.index2 + this.§!6§;
            if(_loc8_ < this.§ !'§.length && _loc9_ < this.§ !'§.length)
            {
               _loc10_ = this.§ !'§[_loc8_];
               _loc11_ = this.§ !'§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §9P§.§7!7§)
               {
                  _loc5_.§]!,§ = this.§2I§.§#S§.§ k§.CreateJoint(_loc5_.§?`§(_loc10_,_loc11_));
               }
               else
               {
                  this.§3m§.push(new §>p§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§&!!§));
               }
            }
         }
      }
      
      protected function get §>-§() : Class
      {
         return §>-§;
      }
      
      public function get §=j§() : Sprite
      {
         return this.§8!L§;
      }
      
      public function get §&!9§() : Sprite
      {
         return this.§^z§;
      }
      
      public function get §<H§() : Sprite
      {
         return this.§[+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ !'§.length > 0)
         {
            this.§?!<§(0);
         }
         this.§ !'§ = null;
         this.§3m§ = null;
         if(this.§^z§)
         {
            this.§^z§.dispose();
            this.§^z§ = null;
            this.§&R§ = null;
            this.§8!L§ = null;
            this.§^J§ = null;
            this.§[+§ = null;
         }
         while(this.§]`§.length > 0)
         {
            _loc1_ = this.§]`§.pop();
            this.§2I§.textureManager.§1!5§(_loc1_);
         }
      }
      
      private function §>2§(param1:Boolean) : void
      {
         this.§&R§.visible = param1;
      }
      
      private function §1J§() : void
      {
         var _loc3_:§@!4§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§ @§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@!4§> = new Vector.<§@!4§>();
         for each(_loc3_ in this.§ !'§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§^z§);
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
            this.§?y§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§9O§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§2I§.textureManager.§8!H§(_loc10_);
            this.§]`§.push(_loc12_);
            (_loc13_ = new § @§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§&R§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §9O§(param1:Vector.<§@!4§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§@!4§ = null;
         var _loc11_:§8U§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§2!"§.shape).§[k§();
            _loc13_ = new Rectangle(_loc12_[0].x / §?!D§.§@!I§ * param6,_loc12_[0].y / §?!D§.§@!I§ * param6,(_loc12_[1].x - _loc12_[0].x) / §?!D§.§@!I§ * param6,(_loc12_[1].y - _loc12_[0].y) / §?!D§.§@!I§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§1&§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §?y§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§2I§.background.§3!M§();
         var _loc5_:§@p§;
         if(_loc5_ = this.§2I§.backgroundTextureManager.§=!B§(_loc4_))
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
      
      public function §6+§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!4§
      {
         var _loc10_:§4!6§ = §5y§.§6!%§(param2);
         return new §3^§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §"!G§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!4§
      {
         var _loc10_:§@!4§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §#p§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §`;§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §>y§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §]!-§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §>j§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §2y§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §=!'§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §<!9§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §>!4§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#V§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@!4§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§@!4§;
         if(!(_loc11_ = this.§#!8§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§<!@§;
            this.§ !'§[this.§ !'§.length] = _loc11_;
         }
         else
         {
            this.§ !'§[this.§ !'§.length] = _loc11_;
         }
         if(_loc11_ is §>!4§ && !_loc11_.§=!9§())
         {
            this.§^J§.addChild(_loc10_);
            ++this.§#V§;
         }
         else if(_loc11_.front || param9)
         {
            this.§8!L§.addChild(_loc10_);
         }
         else
         {
            this.§[+§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§2I§.§^4§(_loc11_);
         }
         if(param6)
         {
            this.§2I§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §1Y§(param1:int, param2:§@!4§, param3:§@!4§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§+V§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§>p§ = null;
         var _loc15_:int = this.§ !'§.indexOf(param2) - this.§!6§;
         var _loc16_:int = this.§ !'§.indexOf(param3) - this.§!6§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §+V§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§<-§.push(_loc17_);
            _loc17_.§&!!§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §9P§.§7!7§)
            {
               _loc17_.§]!,§ = this.§2I§.§#S§.§ k§.CreateJoint(_loc17_.§?`§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §>p§(_loc18_,_loc19_,param12);
               this.§3m§.push(_loc20_);
            }
         }
      }
      
      public function §?!>§(param1:§+V§) : void
      {
         if(!(param1.§]!,§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§@!4§ = this.§,,§(param1.index1 + this.§!6§);
         var _loc3_:§@!4§ = this.§,,§(param1.index2 + this.§!6§);
         this.§2I§.§#S§.§ k§.DestroyJoint(param1.§]!,§);
         param1.§]!,§ = this.§2I§.§#S§.§ k§.CreateJoint(param1.§?`§(_loc2_,_loc3_));
      }
      
      public function §!!L§(param1:§@!4§) : Vector.<§+V§>
      {
         var _loc4_:§+V§ = null;
         var _loc2_:Vector.<§+V§> = new Vector.<§+V§>();
         var _loc3_:int = this.§ !'§.indexOf(param1) - this.§!6§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§<-§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §'Z§() : Vector.<§+V§>
      {
         return this.§<-§;
      }
      
      public function §4!$§(param1:§@!4§) : void
      {
         var _loc2_:int = this.§ !'§.indexOf(param1) - this.§!6§;
         var _loc3_:int = this.§<-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§<-§[_loc3_].index1 == _loc2_ || this.§<-§[_loc3_].index2 == _loc2_)
            {
               this.§<-§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §'!4§(param1:§@!4§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§3m§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§3m§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§3m§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §9[§(param1:§@!4§, param2:§@!4§) : Boolean
      {
         var _loc3_:int = this.§ !'§.indexOf(param1) - this.§!6§;
         var _loc4_:int = this.§ !'§.indexOf(param2) - this.§!6§;
         var _loc5_:int = this.§<-§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§<-§[_loc5_].index1 == _loc3_ && this.§<-§[_loc5_].index2 == _loc4_ || this.§<-§[_loc5_].index1 == _loc4_ && this.§<-§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §#!8§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!4§
      {
         var _loc10_:§@!4§ = null;
         var _loc11_:§4!6§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§"!G§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§1!§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§6+§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §5y§.§6!%§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §5y§.§6!%§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§^x§ == §4!6§.§>i§ || _loc11_.§^x§ == §4!6§.§ !A§)
            {
               _loc10_ = new §5m§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §@!4§(this,param1,this.§2I§.§#S§.§ k§,this.§2I§,this.§<Z§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§=9§();
         return _loc10_;
      }
      
      protected function §=9§() : String
      {
         var _loc3_:§@!4§ = null;
         var _loc1_:int = this.§ !'§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§ !'§)
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
      
      public function §3F§(param1:Number) : void
      {
         var _loc3_:§@!4§ = null;
         var _loc2_:int = this.§ !'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !'§[_loc2_] as §@!4§;
            if(_loc3_)
            {
               if(_loc3_.§'s§ <= 0)
               {
                  this.§?!<§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§3E§();
                  _loc3_.§9c§();
               }
            }
            _loc2_--;
         }
         this.§'!D§(param1);
      }
      
      protected function §'!D§(param1:Number) : void
      {
         this.§@L§(param1);
         this.§2@§();
      }
      
      private function §@L§(param1:Number) : void
      {
         var _loc4_:§>p§ = null;
         var _loc5_:int = 0;
         var _loc6_:§@!4§ = null;
         if(this.§3m§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§>p§> = this.§3m§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§^8§ && this.§3m§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§,0§("" + _loc5_))
                  {
                     this.§ t§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §2@§() : void
      {
         var _loc1_:§+V§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§<-§)
         {
            if(_loc1_.type == §9P§.§1p§ || _loc1_.type == §9P§.§@M§ && _loc1_.§!!!§)
            {
               if(_loc1_.§]!,§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§]!,§ as b2PrismaticJoint).GetJointTranslation();
                  _loc3_ = (_loc1_.§]!,§ as b2PrismaticJoint).GetMotorSpeed();
               }
               else if(_loc1_.§]!,§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§]!,§ as b2RevoluteJoint).GetJointAngle();
                  _loc3_ = (_loc1_.§]!,§ as b2RevoluteJoint).GetMotorSpeed();
               }
               if(_loc5_ = _loc1_.§-$§ && _loc1_.§<D§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§]!,§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§@!4§> = null) : void
      {
         this.§!!9§.push(§!b§.createExplosion(param1,param2,param3,param4));
         §@o§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §`!A§(param1:Number, param2:Number) : int
      {
         var _loc4_:§@!4§ = null;
         var _loc3_:int = this.§ !'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !'§[_loc3_])
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
      
      public function §@&§(param1:Number, param2:Number) : §@!4§
      {
         var _loc4_:§@!4§ = null;
         var _loc3_:int = this.§ !'§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !'§[_loc3_])
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
      
      public function §?A§(param1:Number, param2:Number) : Vector.<§@!4§>
      {
         var _loc5_:§@!4§ = null;
         var _loc3_:Vector.<§@!4§> = new Vector.<§@!4§>();
         var _loc4_:int = this.§ !'§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§ !'§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §,,§(param1:int) : §@!4§
      {
         return this.§ !'§[param1];
      }
      
      public function §[]§(param1:Number, param2:Number) : void
      {
         var _loc4_:§@!4§ = null;
         var _loc3_:int = this.§ !'§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ !'§[_loc3_] as §@!4§).§[]§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §4!E§(param1:§@!4§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§@!4§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§'s§ == param1.§@g§)
         {
            if(this.§9W§ < this.§>-§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§9W§ += param2 * this.§>-§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§^C§().SetAngularVelocity(param2 * this.§9W§);
            this.§+L§ = 0;
         }
         else if(this.§+L§ == 0)
         {
            this.§+L§ = this.§2I§.§5R§;
         }
         if(param1.§@!5§() || this.§-5§(param1) || this.§+L§ > 0 && this.§2I§.§5R§ > this.§+L§ + this.§>-§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§>-§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§>-§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§>-§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §@o§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §@o§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§>-§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§^C§().GetPosition().x - this.§>-§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§^C§().GetPosition().y - this.§>-§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§>-§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§-5§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§>-§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§+L§ = 0;
                  _loc7_.§`V§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §91§(param1:§@!4§, param2:Number) : Boolean
      {
         var _loc5_:§@!4§ = null;
         if(this.§>-§.MIGHTY_EAGLE_USE_SHADE && !this.§2"§ && this.mMightyEagleTimer > this.§>-§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§2"§ = true;
            this.§2I§.§`!I§();
         }
         this.mMightyEagleTimer += param2;
         this.§2I§.particles.§48§(§>Z§.§5e§,§3r§.§"H§,§>Z§.§%t§,param1.§^C§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§^C§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§>Z§.§'T§(param1.§"!!§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§+!#§(this.§>-§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§1Q§)
            {
               this.§1Q§ = false;
               this.§2I§.§3!F§();
               param1.§2!%§(§+5§.§5!-§);
               this.mSardineCanAdded = false;
               param1.§`V§.§1!H§ = true;
               param1.§`V§.§0f§();
               for each(_loc5_ in this.§ !'§)
               {
                  if(_loc5_ && _loc5_.§'P§())
                  {
                     _loc5_.§^C§().SetAwake(true);
                     _loc5_.§^C§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§7!=§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§ !'§)
               {
                  if(_loc5_ && _loc5_.§'P§())
                  {
                     _loc5_.applyDamage(_loc5_.§@g§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§^C§().GetPosition().y >= -5.5;
            this.§1Q§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§%!<§(param2,new Point(this.§>-§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§>-§.MIGHTY_EAGLE_Y_CHANGE),this.§>-§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function § x§() : void
      {
         var _loc1_:§!b§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§@!4§ = null;
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
         while(this.§!!9§.length > 0)
         {
            _loc1_ = this.§!!9§.shift();
            _loc2_ = _loc1_.§@$§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§ !'§)
            {
               if(!(_loc1_.§#7§ != null && _loc1_.§#7§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§^C§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§^C§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§@$§)
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
                        _loc6_.§^C§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§5!7§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§[!2§(_loc6_,_loc14_);
                  }
               }
            }
            this.§2I§.particles.§48§(this.§3h§(_loc1_.type),§3r§.§"H§,§>Z§.§]!J§,_loc3_,_loc4_,600,"",§>Z§.§&N§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§2I§.particles.§48§(§>Z§.§<&§,§3r§.§"H§,§>Z§.§%t§,_loc3_,_loc4_,_loc16_,"",§>Z§.§&N§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §[!2§(param1:§@!4§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §3h§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §>Z§.§=g§;
      }
      
      public function §2!#§(param1:Number) : void
      {
         var _loc2_:§@!4§ = null;
         var _loc3_:int = this.§ !'§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ !'§[_loc3_];
            if(_loc2_.§-g§())
            {
               if(this.§4!E§(_loc2_,param1))
               {
                  this.§?!<§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§=!9§())
            {
               this.§91§(_loc2_,param1);
            }
            else if(this.§-5§(_loc2_))
            {
               _loc2_.§2!%§(§+5§.§1s§);
               this.§?!<§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§2!%§(§+5§.§1s§);
               this.§?!<§(_loc3_,false,true,true);
            }
            else if(_loc2_.§3!+§() || _loc2_.§1x§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§ x§();
      }
      
      private function §7!=§() : void
      {
         var _loc1_:§+V§ = null;
         for each(_loc1_ in this.§<-§)
         {
            if(_loc1_.type != §9P§.§7!7§)
            {
               this.§2I§.§#S§.§ k§.DestroyJoint(_loc1_.§]!,§);
            }
         }
      }
      
      public function §7!%§() : Boolean
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !'§.length)
         {
            _loc2_ = this.§ !'§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §-5§(param1:§@!4§) : Boolean
      {
         if(param1 && param1.§2!"§.§33§() != §-!'§.§6^§ && this.§2I§.§-!>§.§'K§(param1.§^C§().GetPosition().x,param1.§^C§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §?!<§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§+V§ = null;
         var _loc7_:§>p§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§@!4§;
         if((_loc5_ = this.§ !'§[param1]).§'P§())
         {
            ++this.§ N§;
         }
         else if(_loc5_.§3!+§())
         {
            --this.§#V§;
         }
         if(_loc5_ == this.§2I§.activeObject)
         {
            this.§2I§.activeObject = null;
         }
         if(param2 && _loc5_.§2!"§.score > 0)
         {
            this.§2I§.addScore(_loc5_.§2!"§.score,§3,§.§=!N§,true,_loc5_.§^C§().GetPosition().x,_loc5_.§^C§().GetPosition().y - 3,§>Z§.§<!C§(_loc5_.§"!!§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§2I§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§]b§(_loc5_.sprite);
         this.§4!$§(_loc5_);
         this.§'!4§(_loc5_);
         for each(_loc6_ in this.§<-§)
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
         for each(_loc7_ in this.§3m§)
         {
            if(_loc7_.§;!G§ == param1)
            {
               _loc7_.§^8§ = true;
            }
            if(_loc7_.§;!G§ >= param1)
            {
               --_loc7_.§;!G§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§ !'§[param1] = null;
         this.§ !'§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§@!4§, param2:§3r§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §]b§(param1:Sprite) : void
      {
         if(this.§[+§.contains(param1))
         {
            this.§[+§.removeChild(param1);
            return;
         }
         if(this.§^J§.contains(param1))
         {
            this.§^J§.removeChild(param1);
            return;
         }
         if(this.§&R§.contains(param1))
         {
            this.§&R§.removeChild(param1);
            return;
         }
         if(this.§8!L§.contains(param1))
         {
            this.§8!L§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§@!4§) : void
      {
         if(param1.§0!%§().toUpperCase() == "WHITE_EGG" || param1.§!!-§())
         {
            if(param1.§"!!§.toUpperCase() == §]!-§.§6n§)
            {
               this.addExplosions(§!b§.§4!G§,param1.§^C§().GetPosition().x,param1.§^C§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§!b§.§!!@§,param1.§^C§().GetPosition().x,param1.§^C§().GetPosition().y);
            }
         }
      }
      
      public function § t§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§?!<§(this.§ !'§.indexOf(param1),param2,param3,param4);
      }
      
      public function §+!>§(param1:Number, param2:Number) : void
      {
         this.§^z§.x = -param1;
         this.§^z§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§@!4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !'§.length)
         {
            _loc3_ = this.§ !'§[_loc2_] as §@!4§;
            if(_loc3_ && _loc3_.§'P§() && _loc3_.§'s§ > 0)
            {
               if(!param1 || _loc3_.§`V§.mTryToBlink <= 0 && _loc3_.§`V§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,!9§(param1:Boolean = false) : int
      {
         var _loc4_:§@!4§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ !'§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !'§[_loc3_] as §@!4§) && _loc4_.§'P§() && _loc4_.§'s§ > 0)
            {
               if(!param1 || _loc4_.§`V§.mTryToBlink <= 0 && _loc4_.§`V§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §1_§() : int
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !'§)
         {
            if(_loc2_ && (_loc2_.§%+§() || _loc2_.§>[§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §6Z§() : int
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !'§)
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
         var _loc3_:§@!4§ = null;
         var _loc2_:int = this.§ !'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !'§[_loc2_];
            if(_loc3_ && _loc3_.§'P§() && _loc3_.§'s§ > 0)
            {
               _loc3_.§`V§.mTryToScream = §8X§.§4k§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §<?§() : Boolean
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = this.§ !'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !'§[_loc1_] as §@!4§;
            if(_loc2_ && _loc2_.§3!+§() && _loc2_.§'s§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = this.§ !'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !'§[_loc1_] as §@!4§;
            if(_loc2_ && _loc2_.§'s§ > 0 && _loc2_.§^x§ != §4!6§.§?"§)
            {
               if(_loc2_.§1-§() && !_loc2_.§@!5§())
               {
                  return false;
               }
               if(_loc2_.§3!+§() && _loc2_.§'s§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!!<§(param1:Boolean = false) : §@!4§
      {
         var _loc7_:§@!4§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§ !'§.length;
         var _loc3_:int = this.§,!9§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§ !'§[_loc6_] as §@!4§) && _loc7_.§'P§() && _loc7_.§'s§ > 0)
            {
               if(!param1 || _loc7_.§`V§.mTryToBlink <= 0 && _loc7_.§`V§.mTryToScream <= 0)
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
      
      public function §]u§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§ !'§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§ !'§[_loc2_] as §@!4§).§2!"§.score;
            if((this.§ !'§[_loc2_] as §@!4§).§1-§())
            {
               _loc1_ += §?!D§.§,!@§.getValue() * int((this.§ !'§[_loc2_] as §@!4§).§@g§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§2I§.slingshot.§]u§());
      }
      
      public function §;!L§(param1:§@!4§, param2:§@!4§) : Boolean
      {
         if(param2 is §`;§ && param1 is §`;§)
         {
            return true;
         }
         if(!param1.§5!K§() && !param2.§5!K§())
         {
            return true;
         }
         return false;
      }
      
      public function §5x§() : void
      {
         this.mSardineCanAdded = true;
         this.§#V§ = 0;
      }
      
      public function objectCollision(param1:§@!4§, param2:§@!4§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§=!9§() || param2.§'P§())
            {
               param2.applyDamage(param2.§@g§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§=!9§() || param1.§'P§())
            {
               param1.applyDamage(param1.§@g§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§>-§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§-g§() || param2.§-g§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§;!L§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§<d§(param2.§0!%§());
         var _loc5_:Number = param1.§1F§(param2.§0!%§());
         var _loc6_:Number = param2.§<d§(param1.§0!%§());
         var _loc7_:Number = param2.§1F§(param1.§0!%§());
         var _loc8_:Number = param1.§^C§().GetMass() * param1.§^C§().GetLinearVelocity().x - param2.§^C§().GetMass() * param2.§^C§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§^C§().GetMass() * param1.§^C§().GetLinearVelocity().y - param2.§^C§().GetMass() * param2.§^C§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§'s§);
         var _loc14_:Number = Math.max(0,param2.§'s§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§3!+§(),_loc14_ == param2.§@g§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§3!+§(),_loc13_ == param1.§@g§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§2!H§(new b2Vec2(param2.§^C§().GetLinearVelocity().x * _loc18_,param2.§^C§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§2!H§(new b2Vec2(param1.§^C§().GetLinearVelocity().x * _loc19_,param1.§^C§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §'!E§(param1:§@!4§, param2:§@!4§) : void
      {
      }
      
      public function § 8§() : void
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = this.§ !'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !'§[_loc1_] as §@!4§;
            if(_loc2_ != null && _loc2_.§'P§())
            {
               this.§?!<§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §7!C§() : void
      {
         var _loc2_:§@!4§ = null;
         var _loc1_:int = this.§ !'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !'§[_loc1_] as §@!4§;
            if(_loc2_ != null && _loc2_.§!!-§())
            {
               this.§?!<§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §59§() : int
      {
         return this.§ !'§.length;
      }
      
      public function §;!'§(param1:§1!&§) : void
      {
         var _loc2_:§@!4§ = null;
         var _loc3_:§+V§ = null;
         var _loc4_:§4Z§ = null;
         var _loc5_:§9P§ = null;
         for each(_loc2_ in this.§ !'§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §4Z§()).angle = _loc2_.§1&§();
               _loc4_.id = _loc2_.§"!!§;
               _loc4_.x = _loc2_.§^C§().GetPosition().x;
               _loc4_.y = _loc2_.§^C§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§<-§)
         {
            (_loc5_ = new §9P§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§2!9§,_loc3_.§-$§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§<D§,_loc3_.motorSpeed,_loc3_.§!!!§,_loc3_.maxTorque)).§&!!§ = _loc3_.§&!!§;
            param1.§9!I§(_loc5_);
         }
      }
      
      public function §@@§() : void
      {
         var _loc1_:int = 0;
         while(this.§ !'§.length > _loc1_)
         {
            if(this.§ !'§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§ t§(this.§ !'§[_loc1_]);
            }
         }
      }
      
      public function §68§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ !'§.length)
         {
            if(this.§ !'§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ !'§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§<!@§ = param1;
         this.§>2§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !'§.length)
         {
            if(this.§ !'§[_loc2_].isTexture())
            {
               this.§ !'§[_loc2_].sprite.visible = !this.§<!@§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§!l§ = param1;
      }
      
      public function §<!<§() : Boolean
      {
         return this.§!l§;
      }
      
      public function §8,§() : int
      {
         return this.§1!§;
      }
      
      public function §5!1§() : int
      {
         return this.§ N§;
      }
      
      public function §,0§(param1:String) : §@!4§
      {
         var _loc3_:§@!4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !'§.length)
         {
            _loc3_ = this.§ !'§[_loc2_] as §@!4§;
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
