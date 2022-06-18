package §<[§
{
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §&!7§.Texture;
   import §+!%§.§'!"§;
   import §+!%§.§'p§;
   import §+!%§.§>3§;
   import §+!%§.§use§;
   import §,Y§.§%[§;
   import §,Y§.§32§;
   import §,Y§.§5F§;
   import §,Y§.§]b§;
   import §,Y§.§^!1§;
   import §->§.§2! §;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §<!@§.§+!-§;
   import §>0§.§+!1§;
   import §[!$§.§89§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import §finally§.§+I§;
   import §finally§.§2-§;
   import §finally§.§97§;
   import §finally§.§>!$§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6q§
   {
       
      
      protected var § !,§:Vector.<§>!4§>;
      
      protected var §in §:int;
      
      public var §]U§:§'!"§;
      
      public var §>!@§:Vector.<§=t§>;
      
      protected var §-K§:Sprite;
      
      protected var §4G§:Sprite;
      
      private var §,N§:Sprite;
      
      private var §6F§:Sprite;
      
      private var §2t§:Sprite;
      
      protected var §-!0§:Vector.<Texture>;
      
      protected var §5c§:Vector.<§+I§>;
      
      protected var §9!<§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §8R§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §72§:Boolean = false;
      
      protected var §3i§:Number = 0.07;
      
      protected var §!=§:int;
      
      protected var §,y§:Vector.<§97§>;
      
      protected var §1e§:int = 0;
      
      private var §4! §:int = 0;
      
      private var §;!2§:int = 0;
      
      private var §'!1§:int;
      
      private var §94§:Boolean = true;
      
      private var §#!=§:Boolean = true;
      
      public function §6q§(param1:§'!"§, param2:§+!-§, param3:Sprite)
      {
         var _loc5_:§+I§ = null;
         var _loc6_:§>!$§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§>!4§ = null;
         var _loc10_:§>!4§ = null;
         this.§ !,§ = new Vector.<§>!4§>();
         this.§>!@§ = new Vector.<§=t§>();
         this.§-!0§ = new Vector.<Texture>();
         this.§,y§ = new Vector.<§97§>();
         super();
         this.§]U§ = param1;
         this.§in § = 0;
         this.§4G§ = param3;
         this.§4G§.§'!D§ = false;
         this.§#!=§ = true;
         this.§94§ = true;
         this.§-K§ = new Sprite();
         this.§,N§ = new Sprite();
         this.§6F§ = new Sprite();
         this.§2t§ = new Sprite();
         this.§4G§.addChild(this.§-K§);
         this.§4G§.addChild(this.§,N§);
         this.§4G§.addChild(this.§6F§);
         this.§4G§.addChild(this.§2t§);
         this.addObject(§+!1§.§ "§(param2.theme).§!!C§,(this.§]U§.§6s§.§ !D§ + this.§]U§.§6s§.§";§) / 2,this.§]U§.§6s§.§'>§ + §'p§.§1!F§);
         this.§'!1§ = this.§ !,§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§ E§)
         {
            _loc6_ = param2.§ #§(_loc4_);
            this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front);
            _loc4_++;
         }
         this.§7w§();
         this.§@j§(true);
         this.§5c§ = new Vector.<§+I§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§6[§)
         {
            this.§5c§.push(§+I§.§2M§(param2.§0+§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§5c§)
         {
            _loc7_ = _loc5_.index1 + this.§'!1§;
            _loc8_ = _loc5_.index2 + this.§'!1§;
            if(_loc7_ < this.§ !,§.length && _loc8_ < this.§ !,§.length)
            {
               _loc9_ = this.§ !,§[_loc7_];
               _loc10_ = this.§ !,§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               if(_loc5_.type != §2-§.§0U§)
               {
                  _loc5_.§-F§ = this.§]U§.§&5§.§6U§.CreateJoint(_loc5_.§&T§(_loc9_,_loc10_));
               }
               else
               {
                  this.§,y§.push(new §97§(_loc7_,_loc8_,_loc5_.§;l§));
               }
            }
         }
      }
      
      public function get §]$§() : Sprite
      {
         return this.§2t§;
      }
      
      public function get §#!#§() : Sprite
      {
         return this.§4G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§ !,§.length > 0)
         {
            this.§<!7§(0);
         }
         this.§ !,§ = null;
         this.§,y§ = null;
         if(this.§4G§)
         {
            this.§4G§.dispose();
            this.§4G§ = null;
            this.§-K§ = null;
            this.§2t§ = null;
            this.§,N§ = null;
            this.§6F§ = null;
         }
         while(this.§-!0§.length > 0)
         {
            _loc1_ = this.§-!0§.pop();
            this.§]U§.textureManager.§]V§(_loc1_);
         }
      }
      
      private function §@j§(param1:Boolean) : void
      {
         this.§-K§.visible = param1;
      }
      
      private function §7w§() : void
      {
         var _loc3_:§>!4§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§2! § = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§>!4§> = new Vector.<§>!4§>();
         for each(_loc3_ in this.§ !,§)
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
            this.§+S§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§5'§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§]U§.textureManager.§%a§(_loc10_);
            this.§-!0§.push(_loc12_);
            (_loc13_ = new §2! §(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§-K§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §5'§(param1:Vector.<§>!4§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§>!4§ = null;
         var _loc11_:§^!1§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§super§.shape).§4w§();
            _loc13_ = new Rectangle(_loc12_[0].x / §'!"§.§%!8§ * param6,_loc12_[0].y / §'!"§.§%!8§ * param6,(_loc12_[1].x - _loc12_[0].x) / §'!"§.§%!8§ * param6,(_loc12_[1].y - _loc12_[0].y) / §'!"§.§%!8§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§"!,§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §+S§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§]U§.background.§@s§();
         var _loc5_:§89§;
         if(_loc5_ = this.§]U§.backgroundTextureManager.§<I§(_loc4_))
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
      
      public function §!!7§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>!4§
      {
         var _loc10_:§>!4§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §#K§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §5w§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §!z§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §@;§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §@!0§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §"!=§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §!!+§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §<!9§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§1e§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>!4§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§>!4§;
         if((_loc11_ = this.§,e§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§94§;
            this.§ !,§[this.§ !,§.length] = _loc11_;
         }
         else
         {
            this.§ !,§[this.§ !,§.length] = _loc11_;
         }
         if(_loc11_ is §<!9§ && !_loc11_.§3!F§())
         {
            this.§,N§.addChild(_loc10_);
            ++this.§1e§;
         }
         else if(_loc11_.front || param9)
         {
            this.§2t§.addChild(_loc10_);
         }
         else
         {
            this.§6F§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§]U§.§64§(_loc11_);
         }
         if(param6)
         {
            this.§]U§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §2M§(param1:int, param2:§>!4§, param3:§>!4§) : §+I§
      {
         var _loc6_:§+I§ = null;
         var _loc4_:int = this.§ !,§.indexOf(param2) - this.§'!1§;
         var _loc5_:int = this.§ !,§.indexOf(param3) - this.§'!1§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §+I§(§2-§.§+<§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§-F§ = this.§]U§.§&5§.§6U§.CreateJoint(_loc6_.§&T§(param2,param3));
            this.§5c§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §"i§(param1:§+I§) : void
      {
         if(!(param1.§-F§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§>!4§ = this.§ #§(param1.index1 + this.§'!1§);
         var _loc3_:§>!4§ = this.§ #§(param1.index2 + this.§'!1§);
         this.§]U§.§&5§.§6U§.DestroyJoint(param1.§-F§);
         param1.§-F§ = this.§]U§.§&5§.§6U§.CreateJoint(param1.§&T§(_loc2_,_loc3_));
      }
      
      public function §'!-§(param1:§>!4§) : Vector.<§+I§>
      {
         var _loc4_:§+I§ = null;
         var _loc2_:Vector.<§+I§> = new Vector.<§+I§>();
         var _loc3_:int = this.§ !,§.indexOf(param1) - this.§'!1§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§5c§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §]o§() : Vector.<§+I§>
      {
         return this.§5c§;
      }
      
      public function §?]§(param1:§>!4§) : void
      {
         var _loc2_:int = this.§ !,§.indexOf(param1) - this.§'!1§;
         var _loc3_:int = this.§5c§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§5c§[_loc3_].index1 == _loc2_ || this.§5c§[_loc3_].index2 == _loc2_)
            {
               this.§5c§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §<T§(param1:§>!4§, param2:§>!4§) : Boolean
      {
         var _loc3_:int = this.§ !,§.indexOf(param1) - this.§'!1§;
         var _loc4_:int = this.§ !,§.indexOf(param2) - this.§'!1§;
         var _loc5_:int = this.§5c§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§5c§[_loc5_].index1 == _loc3_ && this.§5c§[_loc5_].index2 == _loc4_ || this.§5c§[_loc5_].index1 == _loc4_ && this.§5c§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §,e§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §>!4§
      {
         var _loc10_:§>!4§ = null;
         var _loc11_:§%[§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§!!7§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§;!2§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §;;§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §32§.§&V§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §32§.§&V§(param2);
            }
            if(_loc11_.§?B§ == §%[§.§"!8§ || _loc11_.§?B§ == §%[§.§@@§)
            {
               _loc10_ = new §1d§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §>!4§(this,param1,this.§]U§.§&5§.§6U§,this.§]U§,this.§in §,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §&Q§(param1:Number) : void
      {
         var _loc3_:§>!4§ = null;
         var _loc2_:int = this.§ !,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !,§[_loc2_] as §>!4§;
            if(_loc3_)
            {
               if(_loc3_.§;%§ <= 0)
               {
                  this.§<!7§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§^Y§();
                  _loc3_.§7!§();
               }
            }
            _loc2_--;
         }
         this.§]'§(param1);
      }
      
      protected function §]'§(param1:Number) : void
      {
         var _loc3_:§97§ = null;
         var _loc4_:int = 0;
         var _loc2_:int = this.§,y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,y§[_loc2_];
            if(_loc3_.§-!$§)
            {
               if((_loc4_ = _loc3_.update(param1)) != -1)
               {
                  if(_loc4_ < this.§ !,§.length && this.§ !,§[_loc4_] != null)
                  {
                     this.§<!7§(_loc4_,true,true,true);
                  }
                  this.§,y§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§>!@§.push(§=t§.createExplosion(param1,param2,param3));
         §;!>§.§>t§("TntExplosions","ChannelExplosions");
      }
      
      public function §,h§(param1:Number, param2:Number) : int
      {
         var _loc4_:§>!4§ = null;
         var _loc3_:int = this.§ !,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !,§[_loc3_])
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
      
      public function §>M§(param1:Number, param2:Number) : §>!4§
      {
         var _loc4_:§>!4§ = null;
         var _loc3_:int = this.§ !,§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§ !,§[_loc3_])
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
      
      public function § #§(param1:int) : §>!4§
      {
         return this.§ !,§[param1];
      }
      
      public function §;H§(param1:Number, param2:Number) : void
      {
         var _loc4_:§>!4§ = null;
         var _loc3_:int = this.§ !,§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§ !,§[_loc3_] as §>!4§).§;H§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §?!E§(param1:§>!4§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§>!4§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§;%§ == param1.§&?§)
         {
            if(this.§3i§ < §use§.§1?§)
            {
               this.§3i§ += param2 * §use§.§@! §;
            }
            param1.§27§().SetAngularVelocity(param2 * this.§3i§);
            this.§!=§ = 0;
         }
         else if(this.§!=§ == 0)
         {
            this.§!=§ = this.§]U§.§65§;
         }
         if(param1.§-§() || this.§,!7§(param1) || this.§!=§ > 0 && this.§]U§.§65§ > this.§!=§ + §use§.§]w§)
         {
            if(this.mMightyEagleTimer < §use§.§9H§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §use§.§#]§ && _loc4_ > §use§.§#]§)
               {
                  §;!>§.§>t§("Mighty_Eagle_Selected_1","ChannelBird");
                  §;!>§.§>t§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §use§.§9H§)
               {
                  _loc5_ = param1.§27§().GetPosition().x - §use§.§9i§;
                  _loc6_ = param1.§27§().GetPosition().y - §use§.§9i§ * §use§.§%t§ * 1.07;
                  if(this.§,!7§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§use§.§#4§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§!=§ = 0;
                  _loc7_.§2!0§.§;8§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §4x§(param1:§>!4§, param2:Number) : Boolean
      {
         var _loc5_:§>!4§ = null;
         if(!this.§72§ && this.mMightyEagleTimer > §use§.§1%§)
         {
            this.§72§ = true;
            this.§]U§.§7!5§();
         }
         this.mMightyEagleTimer += param2;
         this.§]U§.particles.§#!&§(§9!E§.§!M§,§#g§.§%!H§,§9!E§.§9u§,param1.§27§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§27§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§9!E§.§2b§(param1.§5!#§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§ [§(§use§.§!>§ * param2);
            _loc4_ = -1;
            if(this.§8R§)
            {
               this.§8R§ = false;
               this.§]U§.§"!G§();
               param1.§#!7§(§5F§.§?!+§);
               this.mSardineCanAdded = false;
               param1.§2!0§.§8?§ = true;
               param1.§2!0§.§2!9§();
               for each(_loc5_ in this.§ !,§)
               {
                  if(_loc5_ && _loc5_.§+L§())
                  {
                     _loc5_.§27§().SetAwake(true);
                     _loc5_.§27§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§9j§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§ !,§)
               {
                  if(_loc5_ && _loc5_.§+L§())
                  {
                     _loc5_.applyDamage(_loc5_.§&?§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§27§().GetPosition().y >= -5.5;
            this.§8R§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§0F§(param2,new Point(1,_loc4_ * §use§.§%t§),§use§.§else§);
         return false;
      }
      
      private function §=!@§() : void
      {
         var _loc1_:§=t§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§>!4§ = null;
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
         while(this.§>!@§.length > 0)
         {
            _loc1_ = this.§>!@§.shift();
            _loc2_ = _loc1_.§2!#§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§ !,§)
            {
               _loc8_ = _loc6_.§27§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§27§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§2!#§)
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
                     _loc6_.§27§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§6^§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§]U§.particles.§#!&§(this.§=4§(_loc1_.type),§#g§.§%!H§,§9!E§.§`V§,_loc3_,_loc4_,600,"",§9!E§.§]k§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§]U§.particles.§#!&§(§9!E§.§>!2§,§#g§.§%!H§,§9!E§.§9u§,_loc3_,_loc4_,_loc16_,"",§9!E§.§]k§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §=4§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §9!E§.§#!!§;
      }
      
      public function §`4§(param1:Number) : void
      {
         var _loc2_:§>!4§ = null;
         var _loc3_:int = this.§ !,§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§ !,§[_loc3_];
            if(_loc2_.§0!?§())
            {
               if(this.§?!E§(_loc2_,param1))
               {
                  this.§<!7§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§3!F§())
            {
               this.§4x§(_loc2_,param1);
            }
            else if(this.§,!7§(_loc2_))
            {
               _loc2_.§#!7§(§5F§.§'L§);
               this.§<!7§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§#!7§(§5F§.§'L§);
               this.§<!7§(_loc3_,false,true,true);
            }
            else if(_loc2_.§ in§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§=!@§();
      }
      
      private function §9j§() : void
      {
         var _loc1_:§+I§ = null;
         for each(_loc1_ in this.§5c§)
         {
            this.§]U§.§&5§.§6U§.DestroyJoint(_loc1_.§-F§);
         }
      }
      
      public function §[!D§() : Boolean
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !,§.length)
         {
            _loc2_ = this.§ !,§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §,!7§(param1:§>!4§) : Boolean
      {
         if(param1 && param1.§super§.§^H§() != §]b§.§5!@§ && this.§]U§.§6s§.§#1§(param1.§27§().GetPosition().x,param1.§27§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §<!7§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§+I§ = null;
         var _loc7_:§97§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§>!4§;
         if((_loc5_ = this.§ !,§[param1]).§+L§())
         {
            ++this.§4! §;
         }
         else if(_loc5_.§ in§())
         {
            --this.§1e§;
         }
         if(_loc5_ == this.§]U§.activeObject)
         {
            this.§]U§.activeObject = null;
         }
         if(param2)
         {
            this.§]U§.addScore(_loc5_.§super§.score,§>3§.§]!?§,true,_loc5_.§27§().GetPosition().x,_loc5_.§27§().GetPosition().y - 3,§9!E§.§>$§(_loc5_.§5!#§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§]U§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§"$§(_loc5_.sprite);
         this.§?]§(_loc5_);
         for each(_loc6_ in this.§5c§)
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
         for each(_loc7_ in this.§,y§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§-!$§ = true;
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
         this.§ !,§[param1] = null;
         this.§ !,§.splice(param1,1);
      }
      
      private function §"$§(param1:Sprite) : void
      {
         if(this.§6F§.contains(param1))
         {
            this.§6F§.removeChild(param1);
            return;
         }
         if(this.§,N§.contains(param1))
         {
            this.§,N§.removeChild(param1);
            return;
         }
         if(this.§-K§.contains(param1))
         {
            this.§-K§.removeChild(param1);
            return;
         }
         if(this.§2t§.contains(param1))
         {
            this.§2t§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§>!4§) : void
      {
         if(param1.§3$§().toUpperCase() == "WHITE_EGG" || param1.§9!A§())
         {
            if(param1.§5!#§.toUpperCase() == §@;§.§`q§)
            {
               this.addExplosions(§=t§.§[w§,param1.§27§().GetPosition().x,param1.§27§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§=t§.§%`§,param1.§27§().GetPosition().x,param1.§27§().GetPosition().y);
            }
         }
      }
      
      public function §^5§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§<!7§(this.§ !,§.indexOf(param1),param2,param3,param4);
      }
      
      public function §<+§(param1:Number, param2:Number) : void
      {
         this.§4G§.x = -param1;
         this.§4G§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§>!4§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !,§.length)
         {
            _loc3_ = this.§ !,§[_loc2_] as §>!4§;
            if(_loc3_ && _loc3_.§+L§() && _loc3_.§;%§ > 0)
            {
               if(!param1 || _loc3_.§2!0§.mTryToBlink <= 0 && _loc3_.§2!0§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §+s§(param1:Boolean = false) : int
      {
         var _loc4_:§>!4§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§ !,§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§ !,§[_loc3_] as §>!4§) && _loc4_.§+L§() && _loc4_.§;%§ > 0)
            {
               if(!param1 || _loc4_.§2!0§.mTryToBlink <= 0 && _loc4_.§2!0§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §,9§() : int
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !,§)
         {
            if(_loc2_ && (_loc2_.§'!!§() || _loc2_.§6!A§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §51§() : int
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§ !,§)
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
         var _loc3_:§>!4§ = null;
         var _loc2_:int = this.§ !,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !,§[_loc2_];
            if(_loc3_ && _loc3_.§+L§() && _loc3_.§;%§ > 0)
            {
               _loc3_.§2!0§.mTryToScream = §;+§.§@2§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §?!D§() : Boolean
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = this.§ !,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !,§[_loc1_] as §>!4§;
            if(_loc2_ && _loc2_.§ in§() && _loc2_.§;%§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = this.§ !,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !,§[_loc1_] as §>!4§;
            if(_loc2_ && _loc2_.§;%§ > 0 && _loc2_.§?B§ != §%[§.§;G§)
            {
               if(_loc2_.§7y§() && !_loc2_.§-§())
               {
                  return false;
               }
               if(_loc2_.§ in§() && _loc2_.§;%§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>R§(param1:Boolean = false) : §>!4§
      {
         var _loc5_:int = 0;
         var _loc6_:§>!4§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§ !,§.length;
         var _loc3_:int = 1 + Math.random() * this.§+s§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§ !,§[_loc5_]) && _loc6_.§+L§() && _loc6_.§;%§ > 0)
               {
                  if(!param1 || _loc6_.§2!0§.mTryToBlink <= 0 && _loc6_.§2!0§.mTryToScream <= 0)
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
      
      public function §"S§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§ !,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§ !,§[_loc2_] as §>!4§).§super§.score;
            if((this.§ !,§[_loc2_] as §>!4§).§7y§())
            {
               _loc1_ += §'!"§.§5!F§.getValue() * int((this.§ !,§[_loc2_] as §>!4§).§&?§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§]U§.slingshot.§"S§());
      }
      
      public function §+!&§(param1:§>!4§, param2:§>!4§) : Boolean
      {
         if(param1.§ in§() && param2.§ in§())
         {
            return true;
         }
         if(!param1.§>s§() && !param2.§>s§())
         {
            return true;
         }
         return false;
      }
      
      public function §70§() : void
      {
         this.mSardineCanAdded = true;
         this.§1e§ = 0;
      }
      
      public function objectCollision(param1:§>!4§, param2:§>!4§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§3!F§() || param2.§+L§())
            {
               param2.applyDamage(param2.§&?§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§3!F§() || param1.§+L§())
            {
               param1.applyDamage(param1.§&?§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §use§.§9H§)
         {
            if(param1.§0!?§() || param2.§0!?§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§+!&§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§;7§(param2.§3$§());
         var _loc5_:Number = param1.§2!=§(param2.§3$§());
         var _loc6_:Number = param2.§;7§(param1.§3$§());
         var _loc7_:Number = param2.§2!=§(param1.§3$§());
         var _loc8_:Number = param1.§27§().GetMass() * param1.§27§().GetLinearVelocity().x - param2.§27§().GetMass() * param2.§27§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§27§().GetMass() * param1.§27§().GetLinearVelocity().y - param2.§27§().GetMass() * param2.§27§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§;%§);
         var _loc14_:Number = Math.max(0,param2.§;%§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§ in§(),_loc14_ == param2.§&?§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§ in§(),_loc13_ == param1.§&?§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§^!3§(new b2Vec2(param2.§27§().GetLinearVelocity().x * _loc18_,param2.§27§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§^!3§(new b2Vec2(param1.§27§().GetLinearVelocity().x * _loc19_,param1.§27§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §'!§() : void
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = this.§ !,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !,§[_loc1_] as §>!4§;
            if(_loc2_ != null && _loc2_.§+L§())
            {
               this.§<!7§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §=^§() : void
      {
         var _loc2_:§>!4§ = null;
         var _loc1_:int = this.§ !,§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !,§[_loc1_] as §>!4§;
            if(_loc2_ != null && _loc2_.§9!A§())
            {
               this.§<!7§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §package§() : int
      {
         return this.§ !,§.length;
      }
      
      public function §5!G§(param1:§+!-§) : void
      {
         var _loc4_:§>!4§ = null;
         var _loc5_:§>!$§ = null;
         var _loc6_:§2-§ = null;
         var _loc7_:§+I§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !,§.length)
         {
            if((_loc4_ = this.§ !,§[_loc2_]).§3e§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §>!$§()).angle = _loc4_.§"!,§();
                  _loc5_.id = _loc4_.§5!#§;
                  _loc5_.x = _loc4_.§27§().GetPosition().x;
                  _loc5_.y = _loc4_.§27§().GetPosition().y;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5c§.length)
         {
            _loc7_ = this.§5c§[_loc3_];
            _loc6_ = new §2-§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§#a§,_loc7_.§48§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§]! §,_loc7_.motorSpeed,_loc7_.§`>§,_loc7_.maxTorque);
            param1.§+!F§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §"^§() : void
      {
         var _loc1_:int = 0;
         while(this.§ !,§.length > _loc1_)
         {
            if(this.§ !,§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§^5§(this.§ !,§[_loc1_]);
            }
         }
      }
      
      public function §@!'§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§ !,§.length)
         {
            if(this.§ !,§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§ !,§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§94§ = param1;
         this.§@j§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ !,§.length)
         {
            if(this.§ !,§[_loc2_].isTexture())
            {
               this.§ !,§[_loc2_].sprite.visible = !this.§94§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§#!=§ = param1;
      }
      
      public function §1u§() : Boolean
      {
         return this.§#!=§;
      }
      
      public function §7z§() : int
      {
         return this.§;!2§;
      }
      
      public function §+0§() : int
      {
         return this.§4! §;
      }
   }
}
