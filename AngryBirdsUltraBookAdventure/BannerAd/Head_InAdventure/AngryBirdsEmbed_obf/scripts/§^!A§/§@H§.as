package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §1!-§.§@Z§;
   import §2!,§.§@!2§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§"6§;
   import §6A§.§#!E§;
   import §6A§.§0!'§;
   import §9K§.§,z§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import §^!L§.each;
   import §^G§.§4c§;
   import §^G§.§;u§;
   import §^G§.§=t§;
   import §^G§.§`8§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJoint;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@H§
   {
       
      
      protected var §82§:Vector.<§;!%§>;
      
      protected var §1!2§:int;
      
      public var §?V§:§ !§;
      
      public var § 8§:Vector.<§[!N§>;
      
      protected var §,M§:Sprite;
      
      protected var §7^§:Sprite;
      
      private var §-!!§:Sprite;
      
      private var §3i§:Sprite;
      
      private var §6_§:Sprite;
      
      protected var §]!J§:Vector.<Texture>;
      
      protected var §]J§:Vector.<§4c§>;
      
      protected var §]e§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §]_§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §5!I§:Boolean = false;
      
      protected var §3Z§:Number;
      
      protected var §4f§:int;
      
      protected var §>!!§:Vector.<§=t§>;
      
      protected var §]O§:int = 0;
      
      private var §5h§:int = 0;
      
      private var §@G§:int = 0;
      
      protected var §%_§:int;
      
      private var §2!=§:Boolean = true;
      
      private var §&r§:Boolean = true;
      
      public function §@H§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         var _loc5_:§4c§ = null;
         var _loc6_:§;u§ = null;
         var _loc7_:§;!%§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§;!%§ = null;
         var _loc11_:§;!%§ = null;
         this.§82§ = new Vector.<§;!%§>();
         this.§ 8§ = new Vector.<§[!N§>();
         this.§]!J§ = new Vector.<Texture>();
         this.§3Z§ = this.§#!E§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§>!!§ = new Vector.<§=t§>();
         super();
         this.§?V§ = param1;
         this.§1!2§ = 0;
         this.§7^§ = param3;
         this.§7^§.§3!D§ = false;
         this.§&r§ = true;
         this.§2!=§ = true;
         this.§,M§ = new Sprite();
         this.§-!!§ = new Sprite();
         this.§3i§ = new Sprite();
         this.§6_§ = new Sprite();
         this.§7^§.addChild(this.§,M§);
         this.§7^§.addChild(this.§-!!§);
         this.§7^§.addChild(this.§3i§);
         this.§7^§.addChild(this.§6_§);
         this.addObject(§@!2§.§"@§(param2.theme).§,!G§,(this.§?V§.§%>§.§3!G§ + this.§?V§.§%>§.§7r§) / 2,this.§?V§.§%>§.§,j§ + §"6§.§-H§);
         this.§%_§ = this.§82§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§-'§)
         {
            _loc6_ = param2.§1F§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§"l§();
         this.§5!E§(true);
         this.§]J§ = new Vector.<§4c§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§#,§)
         {
            this.§]J§.push(§4c§.§+^§(param2.§04§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§]J§)
         {
            _loc8_ = _loc5_.index1 + this.§%_§;
            _loc9_ = _loc5_.index2 + this.§%_§;
            if(_loc8_ < this.§82§.length && _loc9_ < this.§82§.length)
            {
               _loc10_ = this.§82§[_loc8_];
               _loc11_ = this.§82§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §`8§.§9!+§)
               {
                  _loc5_.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(_loc5_.§?7§(_loc10_,_loc11_));
               }
               else
               {
                  this.§>!!§.push(new §=t§(parseInt(_loc10_.uniqueID),parseInt(_loc11_.uniqueID),_loc5_.§=e§));
               }
            }
         }
      }
      
      protected function get §#!E§() : Class
      {
         return §#!E§;
      }
      
      public function get §`$§() : Sprite
      {
         return this.§6_§;
      }
      
      public function get §=V§() : Sprite
      {
         return this.§7^§;
      }
      
      public function get §?=§() : Sprite
      {
         return this.§3i§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§82§.length > 0)
         {
            this.§5k§(0);
         }
         this.§82§ = null;
         this.§>!!§ = null;
         if(this.§7^§)
         {
            this.§7^§.dispose();
            this.§7^§ = null;
            this.§,M§ = null;
            this.§6_§ = null;
            this.§-!!§ = null;
            this.§3i§ = null;
         }
         while(this.§]!J§.length > 0)
         {
            _loc1_ = this.§]!J§.pop();
            this.§?V§.textureManager.§<T§(_loc1_);
         }
      }
      
      private function §5!E§(param1:Boolean) : void
      {
         this.§,M§.visible = param1;
      }
      
      private function §"l§() : void
      {
         var _loc3_:§;!%§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§?T§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§;!%§> = new Vector.<§;!%§>();
         for each(_loc3_ in this.§82§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§7^§);
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
            this.§?&§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§[k§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§?V§.textureManager.§<o§(_loc10_);
            this.§]!J§.push(_loc12_);
            (_loc13_ = new §?T§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§,M§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §[k§(param1:Vector.<§;!%§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;!%§ = null;
         var _loc11_:§"c§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§;!+§.shape).§+#§();
            _loc13_ = new Rectangle(_loc12_[0].x / § !§.§`J§ * param6,_loc12_[0].y / § !§.§`J§ * param6,(_loc12_[1].x - _loc12_[0].x) / § !§.§`J§ * param6,(_loc12_[1].y - _loc12_[0].y) / § !§.§`J§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§>8§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §?&§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§?V§.background.§!C§();
         var _loc5_:§,z§;
         if(_loc5_ = this.§?V§.backgroundTextureManager.§3!'§(_loc4_))
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
      
      public function §14§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc10_:each = §6<§.§6H§(param2);
         return new §^!#§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc10_.particleJSONId,_loc10_.particleVariationCount);
      }
      
      public function §0!@§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc10_:§;!%§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §?B§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §5y§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §?g§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §#$§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new § $§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §'!B§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §@!J§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_ORANGE":
               _loc10_ = new §=!$§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §^`§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§]O§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!%§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§;!%§;
         if(!(_loc11_ = this.§6!L§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)))
         {
            return null;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§2!=§;
            this.§82§[this.§82§.length] = _loc11_;
         }
         else
         {
            this.§82§[this.§82§.length] = _loc11_;
         }
         if(_loc11_ is §^`§ && !_loc11_.§"!"§())
         {
            this.§-!!§.addChild(_loc10_);
            ++this.§]O§;
         }
         else if(_loc11_.front || param9)
         {
            this.§6_§.addChild(_loc10_);
         }
         else
         {
            this.§3i§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§?V§.§[?§(_loc11_);
         }
         if(param6)
         {
            this.§?V§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §+^§(param1:int, param2:§;!%§, param3:§;!%§, param4:Boolean = false, param5:Boolean = false, param6:Number = 0.0, param7:Number = 0.0, param8:Boolean = false, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Number = 0, param13:Number = 0.0, param14:Number = 0.0) : void
      {
         var _loc17_:§4c§ = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:§=t§ = null;
         var _loc15_:int = this.§82§.indexOf(param2) - this.§%_§;
         var _loc16_:int = this.§82§.indexOf(param3) - this.§%_§;
         if(_loc15_ >= 0 && _loc16_ >= 0)
         {
            _loc17_ = new §4c§(param1,_loc15_,_loc16_,new Point(0,0),new Point(0,0),param4,param5,param6,param7,param8,param9,param10,param11);
            this.§]J§.push(_loc17_);
            _loc17_.§=e§ = param12;
            _loc17_.axisX = param13;
            _loc17_.axisY = param14;
            if(param1 != §`8§.§9!+§)
            {
               _loc17_.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(_loc17_.§?7§(param2,param3));
            }
            else
            {
               _loc18_ = parseInt(param2.uniqueID);
               _loc19_ = parseInt(param3.uniqueID);
               _loc20_ = new §=t§(_loc18_,_loc19_,param12);
               this.§>!!§.push(_loc20_);
            }
         }
      }
      
      public function §=a§(param1:§4c§) : void
      {
         if(!(param1.§<,§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§;!%§ = this.§1F§(param1.index1 + this.§%_§);
         var _loc3_:§;!%§ = this.§1F§(param1.index2 + this.§%_§);
         this.§?V§.§'O§.§[!C§.DestroyJoint(param1.§<,§);
         param1.§<,§ = this.§?V§.§'O§.§[!C§.CreateJoint(param1.§?7§(_loc2_,_loc3_));
      }
      
      public function §>C§(param1:§;!%§) : Vector.<§4c§>
      {
         var _loc4_:§4c§ = null;
         var _loc2_:Vector.<§4c§> = new Vector.<§4c§>();
         var _loc3_:int = this.§82§.indexOf(param1) - this.§%_§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§]J§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §2!$§() : Vector.<§4c§>
      {
         return this.§]J§;
      }
      
      public function §4!§(param1:§;!%§) : void
      {
         var _loc2_:int = this.§82§.indexOf(param1) - this.§%_§;
         var _loc3_:int = this.§]J§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§]J§[_loc3_].index1 == _loc2_ || this.§]J§[_loc3_].index2 == _loc2_)
            {
               this.§]J§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      protected function §05§(param1:§;!%§) : void
      {
         var _loc2_:String = param1.uniqueID;
         var _loc3_:int = this.§>!!§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§>!!§[_loc3_].targetId.toString() == _loc2_)
            {
               this.§>!!§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §#`§(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc3_:int = this.§82§.indexOf(param1) - this.§%_§;
         var _loc4_:int = this.§82§.indexOf(param2) - this.§%_§;
         var _loc5_:int = this.§]J§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§]J§[_loc5_].index1 == _loc3_ && this.§]J§[_loc5_].index2 == _loc4_ || this.§]J§[_loc5_].index1 == _loc4_ && this.§]J§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function §6!L§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §;!%§
      {
         var _loc10_:§;!%§ = null;
         var _loc11_:each = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§0!@§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§@G§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = this.§14§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else
         {
            if((_loc11_ = §6<§.§6H§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §6<§.§6H§(param2);
            }
            if(!_loc11_)
            {
               return null;
            }
            if(_loc11_.§@%§ == each.§`V§ || _loc11_.§@%§ == each.§9R§)
            {
               _loc10_ = new §53§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc11_.front,_loc11_.particleJSONId,_loc11_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §;!%§(this,param1,this.§?V§.§'O§.§[!C§,this.§?V§,this.§1!2§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         _loc10_.uniqueID = this.§@L§();
         return _loc10_;
      }
      
      protected function §@L§() : String
      {
         var _loc3_:§;!%§ = null;
         var _loc1_:int = this.§82§.length;
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            _loc2_ = true;
            for each(_loc3_ in this.§82§)
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
      
      public function §!c§(param1:Number) : void
      {
         var _loc3_:§;!%§ = null;
         var _loc2_:int = this.§82§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§82§[_loc2_] as §;!%§;
            if(_loc3_)
            {
               if(_loc3_.§`Y§ <= 0)
               {
                  this.§5k§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§`§();
                  _loc3_.§'=§();
               }
            }
            _loc2_--;
         }
         this.§-t§(param1);
      }
      
      protected function §-t§(param1:Number) : void
      {
         this.§2§(param1);
         this.§]!<§();
      }
      
      private function §2§(param1:Number) : void
      {
         var _loc4_:§=t§ = null;
         var _loc5_:int = 0;
         var _loc6_:§;!%§ = null;
         if(this.§>!!§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§=t§> = this.§>!!§.concat();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = _loc2_[_loc3_]).§[!%§ && this.§>!!§.indexOf(_loc4_) != -1)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§!!M§("" + _loc5_))
                  {
                     this.§&I§(_loc6_,true,true,true);
                  }
               }
            }
            _loc3_--;
         }
      }
      
      private function §]!<§() : void
      {
         var _loc1_:§4c§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Class = null;
         var _loc5_:Boolean = false;
         for each(_loc1_ in this.§]J§)
         {
            if(_loc1_.type == §`8§.§#!K§ || _loc1_.type == §`8§.§12§ && _loc1_.§',§)
            {
               if(_loc1_.§<,§ is b2PrismaticJoint)
               {
                  _loc4_ = b2PrismaticJoint;
                  _loc2_ = (_loc1_.§<,§ as b2PrismaticJoint).GetJointTranslation();
                  _loc3_ = (_loc1_.§<,§ as b2PrismaticJoint).GetMotorSpeed();
               }
               else if(_loc1_.§<,§ is b2RevoluteJoint)
               {
                  _loc4_ = b2RevoluteJoint;
                  _loc2_ = (_loc1_.§<,§ as b2RevoluteJoint).GetJointAngle();
                  _loc3_ = (_loc1_.§<,§ as b2RevoluteJoint).GetMotorSpeed();
               }
               if(_loc5_ = _loc1_.§1D§ && _loc1_.§8l§ && (_loc3_ > 0 && _loc2_ >= _loc1_.upperLimit || _loc3_ < 0 && _loc2_ <= _loc1_.lowerLimit))
               {
                  (_loc1_.§<,§ as _loc4_).SetMotorSpeed(-_loc3_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : void
      {
         this.§ 8§.push(§[!N§.createExplosion(param1,param2,param3,param4));
         §,!F§.§;v§("TntExplosions","ChannelExplosions");
      }
      
      public function §@,§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;!%§ = null;
         var _loc3_:int = this.§82§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§82§[_loc3_])
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
      
      public function §'>§(param1:Number, param2:Number) : §;!%§
      {
         var _loc4_:§;!%§ = null;
         var _loc3_:int = this.§82§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§82§[_loc3_])
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
      
      public function §&!@§(param1:Number, param2:Number) : Vector.<§;!%§>
      {
         var _loc5_:§;!%§ = null;
         var _loc3_:Vector.<§;!%§> = new Vector.<§;!%§>();
         var _loc4_:int = this.§82§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§82§[_loc4_]) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function §1F§(param1:int) : §;!%§
      {
         return this.§82§[param1];
      }
      
      public function §]C§(param1:Number, param2:Number) : void
      {
         var _loc4_:§;!%§ = null;
         var _loc3_:int = this.§82§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§82§[_loc3_] as §;!%§).§]C§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §#!1§(param1:§;!%§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§;!%§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§`Y§ == param1.§@!§)
         {
            if(this.§3Z§ < this.§#!E§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§3Z§ += param2 * this.§#!E§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§'[§().SetAngularVelocity(param2 * this.§3Z§);
            this.§4f§ = 0;
         }
         else if(this.§4f§ == 0)
         {
            this.§4f§ = this.§?V§.§&!?§;
         }
         if(param1.§switch§() || this.§0u§(param1) || this.§4f§ > 0 && this.§?V§.§&!?§ > this.§4f§ + this.§#!E§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§#!E§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§#!E§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§#!E§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §,!F§.§;v§("Mighty_Eagle_Selected_1","ChannelBird");
                  §,!F§.§;v§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§#!E§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§'[§().GetPosition().x - this.§#!E§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§'[§().GetPosition().y - this.§#!E§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§#!E§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§0u§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§#!E§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§4f§ = 0;
                  _loc7_.§;S§.setScale(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §?t§(param1:§;!%§, param2:Number) : Boolean
      {
         var _loc5_:§;!%§ = null;
         if(this.§#!E§.MIGHTY_EAGLE_USE_SHADE && !this.§5!I§ && this.mMightyEagleTimer > this.§#!E§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§5!I§ = true;
            this.§?V§.§>!8§();
         }
         this.mMightyEagleTimer += param2;
         this.§?V§.particles.§4#§(§<!6§.§9<§,§2!H§.§"!5§,§<!6§.§!E§,param1.§'[§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§'[§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§<!6§.§4!8§(param1.§1>§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§2o§(this.§#!E§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§]_§)
            {
               this.§]_§ = false;
               this.§?V§.§4!N§();
               param1.§,H§(§%h§.§=c§);
               this.mSardineCanAdded = false;
               param1.§;S§.§`4§ = true;
               param1.§;S§.§;?§();
               for each(_loc5_ in this.§82§)
               {
                  if(_loc5_ && _loc5_.§72§())
                  {
                     _loc5_.§'[§().SetAwake(true);
                     _loc5_.§'[§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§=!=§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§82§)
               {
                  if(_loc5_ && _loc5_.§72§())
                  {
                     _loc5_.applyDamage(_loc5_.§@!§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§'[§().GetPosition().y >= -5.5;
            this.§]_§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§"!@§(param2,new Point(this.§#!E§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§#!E§.MIGHTY_EAGLE_Y_CHANGE),this.§#!E§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §<V§() : void
      {
         var _loc1_:§[!N§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§;!%§ = null;
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
         while(this.§ 8§.length > 0)
         {
            _loc1_ = this.§ 8§.shift();
            _loc2_ = _loc1_.§!i§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§82§)
            {
               if(!(_loc1_.§8!L§ != null && _loc1_.§8!L§.indexOf(_loc6_) != -1))
               {
                  _loc8_ = _loc6_.§'[§().GetPosition().x - _loc3_;
                  _loc9_ = _loc6_.§'[§().GetPosition().y - _loc4_;
                  if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§!i§)
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
                        _loc6_.§'[§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                     }
                  }
                  if(_loc10_ <= _loc1_.§[!I§)
                  {
                     _loc14_ = _loc5_;
                     if(_loc10_ > 1)
                     {
                        _loc14_ /= _loc10_;
                     }
                     this.§,C§(_loc6_,_loc14_);
                  }
               }
            }
            this.§?V§.particles.§4#§(this.§?!G§(_loc1_.type),§2!H§.§"!5§,§<!6§.§8!<§,_loc3_,_loc4_,600,"",§<!6§.§4Q§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§?V§.particles.§4#§(§<!6§.§=,§,§2!H§.§"!5§,§<!6§.§!E§,_loc3_,_loc4_,_loc16_,"",§<!6§.§4Q§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §,C§(param1:§;!%§, param2:Number) : void
      {
         param1.applyDamage(param2,false,false,false,true);
      }
      
      protected function §?!G§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §<!6§.§#7§;
      }
      
      public function §;2§(param1:Number) : void
      {
         var _loc2_:§;!%§ = null;
         var _loc3_:int = this.§82§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§82§[_loc3_];
            if(_loc2_.§@!-§())
            {
               if(this.§#!1§(_loc2_,param1))
               {
                  this.§5k§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§"!"§())
            {
               this.§?t§(_loc2_,param1);
            }
            else if(this.§0u§(_loc2_))
            {
               _loc2_.§,H§(§%h§.§"h§);
               this.§5k§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§,H§(§%h§.§"h§);
               this.§5k§(_loc3_,false,true,true);
            }
            else if(_loc2_.§-!+§() || _loc2_.§;8§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§<V§();
      }
      
      private function §=!=§() : void
      {
         var _loc1_:§4c§ = null;
         for each(_loc1_ in this.§]J§)
         {
            if(_loc1_.type != §`8§.§9!+§)
            {
               this.§?V§.§'O§.§[!C§.DestroyJoint(_loc1_.§<,§);
            }
         }
      }
      
      public function §`W§() : Boolean
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§82§.length)
         {
            _loc2_ = this.§82§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §0u§(param1:§;!%§) : Boolean
      {
         if(param1 && param1.§;!+§.§"7§() != §5b§.§-!G§ && this.§?V§.§%>§.§^2§(param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §5k§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§4c§ = null;
         var _loc7_:§=t§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§;!%§;
         if((_loc5_ = this.§82§[param1]).§72§())
         {
            ++this.§5h§;
         }
         else if(_loc5_.§-!+§())
         {
            --this.§]O§;
         }
         if(_loc5_ == this.§?V§.activeObject)
         {
            this.§?V§.activeObject = null;
         }
         if(param2 && _loc5_.§;!+§.score > 0)
         {
            this.§?V§.addScore(_loc5_.§;!+§.score,§0!'§.§=!E§,true,_loc5_.§'[§().GetPosition().x,_loc5_.§'[§().GetPosition().y - 3,§<!6§.§-S§(_loc5_.§1>§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§?V§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§4t§(_loc5_.sprite);
         this.§4!§(_loc5_);
         this.§05§(_loc5_);
         for each(_loc6_ in this.§]J§)
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
         for each(_loc7_ in this.§>!!§)
         {
            if(_loc7_.§#!?§ == param1)
            {
               _loc7_.§[!%§ = true;
            }
            if(_loc7_.§#!?§ >= param1)
            {
               --_loc7_.§#!?§;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§82§[param1] = null;
         this.§82§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§;!%§, param2:§2!H§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      protected function §4t§(param1:Sprite) : void
      {
         if(this.§3i§.contains(param1))
         {
            this.§3i§.removeChild(param1);
            return;
         }
         if(this.§-!!§.contains(param1))
         {
            this.§-!!§.removeChild(param1);
            return;
         }
         if(this.§,M§.contains(param1))
         {
            this.§,M§.removeChild(param1);
            return;
         }
         if(this.§6_§.contains(param1))
         {
            this.§6_§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§;!%§) : void
      {
         if(param1.§@]§().toUpperCase() == "WHITE_EGG" || param1.§&d§())
         {
            if(param1.§1>§.toUpperCase() == §#$§.§"!!§)
            {
               this.addExplosions(§[!N§.§1!9§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§[!N§.§%-§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
            }
         }
      }
      
      public function §&I§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§5k§(this.§82§.indexOf(param1),param2,param3,param4);
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         this.§7^§.x = -param1;
         this.§7^§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§;!%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§82§.length)
         {
            _loc3_ = this.§82§[_loc2_] as §;!%§;
            if(_loc3_ && _loc3_.§72§() && _loc3_.§`Y§ > 0)
            {
               if(!param1 || _loc3_.§;S§.mTryToBlink <= 0 && _loc3_.§;S§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §,v§(param1:Boolean = false) : int
      {
         var _loc4_:§;!%§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§82§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§82§[_loc3_] as §;!%§) && _loc4_.§72§() && _loc4_.§`Y§ > 0)
            {
               if(!param1 || _loc4_.§;S§.mTryToBlink <= 0 && _loc4_.§;S§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §3`§() : int
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§82§)
         {
            if(_loc2_ && (_loc2_.§-A§() || _loc2_.§?8§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §9!2§() : int
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§82§)
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
         var _loc3_:§;!%§ = null;
         var _loc2_:int = this.§82§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§82§[_loc2_];
            if(_loc3_ && _loc3_.§72§() && _loc3_.§`Y§ > 0)
            {
               _loc3_.§;S§.mTryToScream = §[!J§.§`"§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §@#§() : Boolean
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = this.§82§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc2_ && _loc2_.§-!+§() && _loc2_.§`Y§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = this.§82§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc2_ && _loc2_.§`Y§ > 0 && _loc2_.§@%§ != each.§@i§)
            {
               if(_loc2_.§'<§() && !_loc2_.§switch§())
               {
                  return false;
               }
               if(_loc2_.§-!+§() && _loc2_.§`Y§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §!!D§(param1:Boolean = false) : §;!%§
      {
         var _loc7_:§;!%§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§82§.length;
         var _loc3_:int = this.§,v§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§82§[_loc6_] as §;!%§) && _loc7_.§72§() && _loc7_.§`Y§ > 0)
            {
               if(!param1 || _loc7_.§;S§.mTryToBlink <= 0 && _loc7_.§;S§.mTryToScream <= 0)
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
      
      public function §+v§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§82§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§82§[_loc2_] as §;!%§).§;!+§.score;
            if((this.§82§[_loc2_] as §;!%§).§'<§())
            {
               _loc1_ += § !§.§6]§.getValue() * int((this.§82§[_loc2_] as §;!%§).§@!§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§?V§.slingshot.§+v§());
      }
      
      public function §>w§(param1:§;!%§, param2:§;!%§) : Boolean
      {
         if(param2 is §5y§ && param1 is §5y§)
         {
            return true;
         }
         if(!param1.§4Z§() && !param2.§4Z§())
         {
            return true;
         }
         return false;
      }
      
      public function §"i§() : void
      {
         this.mSardineCanAdded = true;
         this.§]O§ = 0;
      }
      
      public function objectCollision(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§"!"§() || param2.§72§())
            {
               param2.applyDamage(param2.§@!§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§"!"§() || param1.§72§())
            {
               param1.applyDamage(param1.§@!§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§#!E§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§@!-§() || param2.§@!-§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§>w§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§?]§(param2.§@]§());
         var _loc5_:Number = param1.§#!&§(param2.§@]§());
         var _loc6_:Number = param2.§?]§(param1.§@]§());
         var _loc7_:Number = param2.§#!&§(param1.§@]§());
         var _loc8_:Number = param1.§'[§().GetMass() * param1.§'[§().GetLinearVelocity().x - param2.§'[§().GetMass() * param2.§'[§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§'[§().GetMass() * param1.§'[§().GetLinearVelocity().y - param2.§'[§().GetMass() * param2.§'[§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§`Y§);
         var _loc14_:Number = Math.max(0,param2.§`Y§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§-!+§(),_loc14_ == param2.§@!§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§-!+§(),_loc13_ == param1.§@!§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§ =§(new b2Vec2(param2.§'[§().GetLinearVelocity().x * _loc18_,param2.§'[§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§ =§(new b2Vec2(param1.§'[§().GetLinearVelocity().x * _loc19_,param1.§'[§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §26§(param1:§;!%§, param2:§;!%§) : void
      {
      }
      
      public function §`!>§() : void
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = this.§82§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc2_ != null && _loc2_.§72§())
            {
               this.§5k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §#R§() : void
      {
         var _loc2_:§;!%§ = null;
         var _loc1_:int = this.§82§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§82§[_loc1_] as §;!%§;
            if(_loc2_ != null && _loc2_.§&d§())
            {
               this.§5k§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §!l§() : int
      {
         return this.§82§.length;
      }
      
      public function §@g§(param1:§@Z§) : void
      {
         var _loc2_:§;!%§ = null;
         var _loc3_:§4c§ = null;
         var _loc4_:§;u§ = null;
         var _loc5_:§`8§ = null;
         for each(_loc2_ in this.§82§)
         {
            if(!_loc2_.isGround())
            {
               (_loc4_ = new §;u§()).angle = _loc2_.§>8§();
               _loc4_.id = _loc2_.§1>§;
               _loc4_.x = _loc2_.§'[§().GetPosition().x;
               _loc4_.y = _loc2_.§'[§().GetPosition().y;
               _loc4_.uniqueID = _loc2_.uniqueID;
               param1.addObject(_loc4_);
            }
         }
         for each(_loc3_ in this.§]J§)
         {
            (_loc5_ = new §`8§(_loc3_.type,_loc3_.index1,_loc3_.index2,_loc3_.point1,_loc3_.point2,_loc3_.§@=§,_loc3_.§1D§,_loc3_.lowerLimit,_loc3_.upperLimit,_loc3_.§8l§,_loc3_.motorSpeed,_loc3_.§',§,_loc3_.maxTorque)).§=e§ = _loc3_.§=e§;
            param1.§,f§(_loc5_);
         }
      }
      
      public function §&!D§() : void
      {
         var _loc1_:int = 0;
         while(this.§82§.length > _loc1_)
         {
            if(this.§82§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§&I§(this.§82§[_loc1_]);
            }
         }
      }
      
      public function §-!C§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§82§.length)
         {
            if(this.§82§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§82§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§2!=§ = param1;
         this.§5!E§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§82§.length)
         {
            if(this.§82§[_loc2_].isTexture())
            {
               this.§82§[_loc2_].sprite.visible = !this.§2!=§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§&r§ = param1;
      }
      
      public function §],§() : Boolean
      {
         return this.§&r§;
      }
      
      public function §]%§() : int
      {
         return this.§@G§;
      }
      
      public function §'I§() : int
      {
         return this.§5h§;
      }
      
      public function §!!M§(param1:String) : §;!%§
      {
         var _loc3_:§;!%§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§82§.length)
         {
            _loc3_ = this.§82§[_loc2_] as §;!%§;
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
