package §%Z§
{
   import § 2§.§&p§;
   import § 2§.§=+§;
   import § 2§.§@H§;
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §!m§.§8y§;
   import §,H§.b2JointEdge;
   import §,H§.b2PrismaticJoint;
   import §,H§.b2RevoluteJoint;
   import §0!_§.§+!?§;
   import §0!_§.§19§;
   import §2!s§.§!e§;
   import §2!s§.§'%§;
   import §2!s§.§+f§;
   import §2!s§.§1"'§;
   import §2!s§.§2!_§;
   import §2!s§.§4"1§;
   import §2!s§.§4=§;
   import §5!+§.§%"&§;
   import §6s§.Texture;
   import §8+§.§ !z§;
   import §8+§.§2" §;
   import §8+§.§2>§;
   import §8+§.§4!c§;
   import §8+§.§5"-§;
   import §;X§.§4!@§;
   import §<!c§.§0"0§;
   import §?"'§.b2Vec2;
   import §[K§.b2Contact;
   import §`!B§.§ l§;
   import §`!B§.Sprite;
   import §`!B§.§]!J§;
   import §`!s§.§4M§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7l§ implements §8!m§
   {
      
      private static const §`!>§:Boolean = false;
      
      public static const § ! §:int = 1000000000;
      
      public static const §`c§:int = -1;
      
      public static const §-u§:int = -2;
       
      
      protected var §2"3§:Vector.<§+!F§>;
      
      protected var §%9§:Vector.<§&"3§>;
      
      protected var §!0§:Vector.<§8y§>;
      
      protected var §0!0§:§4M§;
      
      private var §[0§:int = 1000000000;
      
      public var §false§:§=+§;
      
      protected var §?!]§:Vector.<§9!,§>;
      
      protected var §!V§:§`!B§.Sprite;
      
      protected var §;"§:§`!B§.Sprite;
      
      protected var § !M§:§`!B§.Sprite;
      
      protected var §65§:§`!B§.Sprite;
      
      protected var §;O§:§`!B§.Sprite;
      
      protected var §,!g§:Vector.<Texture>;
      
      protected var §46§:Vector.<§4!c§>;
      
      protected var §[I§:int = 1;
      
      protected var §?o§:Vector.<§ !z§>;
      
      protected var §>?§:int = 0;
      
      private var §@!T§:int = 0;
      
      private var §4"7§:int = 0;
      
      private var §,%§:§5"-§;
      
      private var §=!P§:§=!V§;
      
      private var §@L§:Boolean = true;
      
      private var §#;§:Boolean = true;
      
      private var §9!D§:§%"&§;
      
      private var §`"&§:Boolean = false;
      
      public function §7l§(param1:§=+§, param2:§[d§, param3:§`!B§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§2"3§ = new Vector.<§+!F§>();
         this.§%9§ = new Vector.<§&"3§>();
         this.§!0§ = new Vector.<§8y§>();
         this.§0!0§ = new §4M§();
         this.§?!]§ = new Vector.<§9!,§>();
         this.§,!g§ = new Vector.<Texture>();
         this.§?o§ = new Vector.<§ !z§>();
         this.§,%§ = new §5"-§();
         super();
         this.§false§ = param1;
         this.§!V§ = param3;
         this.§!V§.§!!z§ = false;
         this.§#;§ = true;
         this.§@L§ = true;
         this.§;"§ = new §`!B§.Sprite();
         this.§ !M§ = new §`!B§.Sprite();
         this.§;O§ = new §`!B§.Sprite();
         this.§65§ = new §`!B§.Sprite();
         this.§!V§.addChild(this.§;"§);
         this.§!V§.addChild(this.§ !M§);
         if(param2.§"!Z§)
         {
            _loc5_ = (this.§false§.§#"3§.§5v§ + this.§false§.§#"3§.§`=§) / 2;
            _loc6_ = 0 + §@H§.§`!3§;
            this.§'!%§(param4,_loc5_,_loc6_,0,§7l§.§`c§);
         }
         this.§2e§(param2);
      }
      
      public function get §&Y§() : §`!B§.Sprite
      {
         return this.§;O§;
      }
      
      public function get §]!s§() : §`!B§.Sprite
      {
         return this.§ !M§;
      }
      
      public function get §,!&§() : §`!B§.Sprite
      {
         return this.§65§;
      }
      
      public function get §1F§() : §`!B§.Sprite
      {
         return this.§!V§;
      }
      
      public function get activeObject() : §&!-§
      {
         return this.§=!P§;
      }
      
      public function get objectCount() : int
      {
         return this.§2"3§.length;
      }
      
      public function set §2!c§(param1:§%"&§) : void
      {
         if(param1 != this.§9!D§)
         {
            this.§9!D§ = param1;
            if(this.§`"&§ && this.§9!D§)
            {
               this.§9!D§.levelStarted();
            }
         }
      }
      
      public function §4]§() : void
      {
         if(!this.§`"&§)
         {
            this.§`"&§ = true;
            if(this.§9!D§)
            {
               this.§9!D§.levelStarted();
            }
         }
      }
      
      public function §^m§(param1:String) : §!e§
      {
         return this.§false§.levelItemManager.§-!X§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§=!P§)
         {
            _loc3_ = this.§=!P§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §2e§(param1:§[d§) : void
      {
         var _loc3_:§5"-§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§!e§ = null;
         var _loc6_:§2>§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§false§.levelItemManager.§-!X§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§"!v§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§4!5§();
         this.§!G§(true);
         this.§46§ = new Vector.<§4!c§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§`!!§)
         {
            _loc6_ = param1.§+g§(_loc2_);
            this.§'!@§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§2"3§.length > 0)
         {
            this.§?"5§(0,false,true);
         }
         while(this.§!0§.length > 0)
         {
            this.§'!]§(0);
         }
         this.§2"3§ = null;
         this.§%9§ = null;
         this.§!0§ = null;
         this.§0!0§ = null;
         this.§?o§ = null;
         if(this.§!V§)
         {
            this.§!V§.dispose();
            this.§!V§ = null;
         }
         this.§;"§ = null;
         this.§ !M§ = null;
         if(this.§;O§)
         {
            this.§;O§.dispose();
            this.§;O§ = null;
         }
         if(this.§65§)
         {
            this.§65§.dispose();
            this.§65§ = null;
         }
         while(this.§,!g§.length > 0)
         {
            _loc1_ = this.§,!g§.pop();
            this.§false§.§^!§.§1,§(_loc1_);
         }
      }
      
      private function §!G§(param1:Boolean) : void
      {
         this.§;"§.visible = param1;
      }
      
      private function §4!5§() : void
      {
         var _loc3_:§+!F§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§&!-§ = null;
         var _loc6_:§4"1§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§ l§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&!-§> = new Vector.<§&!-§>();
         for each(_loc3_ in this.§2"3§)
         {
            if((_loc5_ = _loc3_ as §&!-§) && _loc5_.§^8§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§3!s§(),_loc6_.§]!D§()) / §=+§.§5!w§ * Math.sqrt(2);
               _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
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
            _loc8_ = this.§false§.camera.§+!t§ / §=+§.§5!w§;
            _loc9_ = this.§false§.camera.§%!s§ / §=+§.§5!w§;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
            _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
            if(_loc1_.left >= _loc1_.right - 1)
            {
               return;
            }
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 1.05;
               _loc1_.top /= 1.05;
               _loc1_.right /= 1.05;
               _loc1_.bottom /= 1.05;
               _loc12_ /= 1.05;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.§ var§();
            this.§!M§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§?!'§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§false§.§^!§.§4"§(_loc17_);
            this.§,!g§.push(_loc20_);
            (_loc21_ = new § l§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§;"§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §?!'§(param1:Vector.<§&!-§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§&!-§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§4"1§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §4=§)
            {
               this.§%j§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!o§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §'%§)
            {
               if((_loc12_ as §'%§).§;!7§.length == 4)
               {
                  this.§%j§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!o§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §'%§).§;!7§.length == 3)
               {
                  this.§&x§(_loc12_ as §'%§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§[!o§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §1"'§)
            {
               this.§&!!§(_loc12_ as §1"'§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §%j§(param1:§4"1§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§3!s§() / §=+§.§5!w§ * param9;
         var _loc13_:Number = param1.§]!D§() / §=+§.§5!w§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §&x§(param1:§'%§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§;!7§.length)
         {
            _loc14_ = param1.§;!7§[_loc13_];
            _loc12_.push(_loc14_.x / §=+§.§5!w§ * param8,_loc14_.y / §=+§.§5!w§ * param8);
            _loc13_++;
         }
         _loc11_.graphics.drawTriangles(_loc12_);
         _loc11_.graphics.endFill();
         param3.rotate(param6);
         param3.translate(param4 * param7 - param9,param5 * param7 - param10);
         param2.draw(_loc11_,param3);
         _loc11_.graphics.clear();
         _loc11_ = null;
      }
      
      protected function §&!!§(param1:§1"'§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §=+§.§5!w§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §<7§() : String
      {
         return this.§false§.background.§"!N§();
      }
      
      protected function § var§() : Number
      {
         return 1;
      }
      
      private function §!M§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§<7§();
         var _loc5_:§19§;
         if(_loc5_ = this.§false§.§64§.§<!z§(_loc4_))
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
      
      protected function addObjectBird(param1:§5"-§, param2:§`!B§.Sprite, param3:§+!?§, param4:§!e§, param5:Number = 1.0, param6:Boolean = true) : §=!V§
      {
         var _loc11_:§=!V§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §<V§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §`!p§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §`!7§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §4!L§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §=H§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §6!r§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §[b§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §!p§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §'!M§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §2h§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §=!V§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§>?§ > 0;
      }
      
      protected function §6!O§(param1:§5"-§, param2:§`!B§.Sprite, param3:§+!?§, param4:§!e§, param5:Number = 1.0) : §+!!§
      {
         return new §+!!§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param5);
      }
      
      public function §'!%§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §+!F§
      {
         this.§,%§.type = param1;
         this.§,%§.x = param2;
         this.§,%§.y = param3;
         this.§,%§.angle = param4;
         this.§,%§.§92§ = 0;
         this.§,%§.§6!E§ = 0;
         return this.§"!v§(this.§,%§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §?!1§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §+!F§
      {
         this.§,%§.type = param1;
         this.§,%§.x = param2;
         this.§,%§.y = param3;
         this.§,%§.angle = param4;
         this.§,%§.§92§ = param6;
         this.§,%§.§6!E§ = param7;
         return this.§"!v§(this.§,%§,param5,false,false,false,param8,param9);
      }
      
      protected function §"!v§(param1:§5"-§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §+!F§
      {
         var _loc8_:§`!B§.Sprite = new §`!B§.Sprite();
         var _loc9_:§+!F§;
         if((_loc9_ = this.§>K§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §&!-§ && (_loc9_ as §&!-§).§^8§())
         {
            _loc8_.visible = !this.§@L§;
         }
         if(_loc9_ is §=!V§ && !(_loc9_ is §2h§))
         {
            ++this.§>?§;
         }
         if(!param7)
         {
            this.§ !M§.§=!Z§(_loc8_);
         }
         else
         {
            this.§;O§.§=!Z§(_loc8_);
         }
         if(param3)
         {
            this.§false§.§,`§(_loc9_);
         }
         if(param4 && _loc9_ is §=!V§)
         {
            this.§=!P§ = §=!V§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §>K§(param1:§5"-§, param2:int, param3:§`!B§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §+!F§
      {
         var _loc7_:§&!-§ = null;
         if(param2 == §-u§)
         {
            param2 = this.§[0§;
            ++this.§[0§;
         }
         else
         {
            if(param2 >= § ! §)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + § ! §);
            }
            if(this.§2K§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§+!F§;
         if((_loc6_ = this.§8!<§(param1,param3,param4,param5)) is §=!V§)
         {
            ++this.§4"7§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §&!-§;
            if(_loc6_ is §8y§)
            {
               this.§!0§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§5!d§(param2);
                  this.§0!0§[param1.instanceName] = _loc6_;
               }
               this.§2"3§.push(_loc6_);
               if(_loc6_ is §&"3§)
               {
                  this.§%9§.push(_loc6_);
               }
            }
            if(this.§9!D§)
            {
               this.§9!D§.§ null§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §0§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §4v§(param1:§5"-§, param2:§`!B§.Sprite, param3:§+!?§, param4:§!e§, param5:int, param6:Number = 1.0) : §+!F§
      {
         return new §-!b§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param6,param5);
      }
      
      protected function §6!S§(param1:§5"-§, param2:§`!B§.Sprite, param3:§+!?§, param4:§!e§, param5:int, param6:Number = 1.0) : §+!F§
      {
         return new §[!#§(param2,param3,this.§false§.§4P§.§?F§,param4,param1,param6,param5);
      }
      
      protected function §8!<§(param1:§5"-§, param2:§`!B§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §+!F§
      {
         var _loc5_:§!e§;
         if(!(_loc5_ = this.§false§.levelItemManager.§-!X§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§0§();
         }
         var _loc7_:§+!?§ = this.§false§.§%!E§.§%h§(_loc6_);
         var _loc8_:§+!F§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §!e§.§<!t§)
         {
            _loc8_ = this.§6!O§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §!e§.§;'§ || _loc5_.itemType == §!e§.§?M§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§4v§(param1,param2,_loc7_,_loc5_,§9!,§.§%c§,param4);
            }
            else if(_loc5_.itemName == §4!L§.§&l§)
            {
               _loc8_ = this.§6!S§(param1,param2,_loc7_,_loc5_,§9!,§.§ !q§,param4);
            }
            else
            {
               _loc8_ = new §1H§(param2,_loc7_,this.§false§.§4P§.§?F§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §&!-§(param2,_loc7_,this.§false§.§4P§.§?F§,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§false§.addScore(param1,§&p§.§1p§,param3,param4,param5,param6);
      }
      
      public function §+<§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§false§.particles.§+<§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §>D§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§false§.particles.§>D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §&!P§(param1:§&!-§) : void
      {
         var _loc4_:§4!c§ = null;
         var _loc5_:§4!c§ = null;
         var _loc6_:§+!F§ = null;
         var _loc7_:§+!F§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§46§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§46§[_loc3_];
            if(this.§46§[_loc3_].id1 == _loc2_ || this.§46§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§6"§)
               {
                  _loc6_ = _loc4_.§6"§.§5!c§().GetUserData() as §+!F§;
                  _loc7_ = _loc4_.§6"§.§^7§().GetUserData() as §+!F§;
                  if(_loc6_)
                  {
                     _loc6_.§?"$§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§?"$§(_loc6_);
                  }
               }
               _loc5_ = this.§46§.pop();
               if(_loc3_ < this.§46§.length)
               {
                  this.§46§[_loc3_] = _loc5_;
               }
               this.§>!+§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §'!@§(param1:§2>§) : §4!c§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§4!c§ = §4!c§.§'!@§(param1);
         this.§46§.push(_loc4_);
         var _loc5_:§+!F§ = this.§2K§(_loc2_);
         var _loc6_:§+!F§ = this.§2K§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §2>§.§%"#§)
            {
               _loc4_.§6"§ = this.§false§.§4P§.§?F§.§5U§(_loc4_.§+q§(_loc5_,_loc6_));
            }
            else
            {
               this.§?o§.push(new § !z§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§;!O§));
            }
            _loc5_.§9I§(_loc6_);
            _loc6_.§9I§(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §>!+§(param1:§4!c§) : void
      {
         if(param1.§6"§)
         {
            this.§false§.§4P§.§?F§.§+K§(param1.§6"§);
         }
         if(param1.§`!W§)
         {
            if(this.§ !M§.contains(param1.§`!W§))
            {
               this.§ !M§.removeChild(param1.§`!W§,true);
            }
         }
      }
      
      public function §8!U§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§?!]§.push(§9!,§.§3!8§(param1,param2,param3));
         this.§-1§(param1);
      }
      
      protected function §-1§(param1:int) : void
      {
         §4!@§.§`!w§("TntExplosions","ChannelExplosions");
      }
      
      public function §4!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§?!]§.push(§9!,§.§2!e§(param1,param2,param3,param4,param5,param6));
         §4!@§.§`!w§("TntExplosions","ChannelExplosions");
      }
      
      public function §1o§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§false§.§4P§.§?F§.§!!e§());
         return param4;
      }
      
      public function get §>y§() : Number
      {
         return this.§false§.§>y§;
      }
      
      public function §`"'§(param1:Number, param2:Number) : int
      {
         var _loc4_:§&!-§ = null;
         var _loc3_:int = this.§2"3§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2"3§[_loc3_] as §&!-§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §&!-§
      {
         var _loc4_:§&!-§ = null;
         var _loc3_:int = this.§2"3§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2"3§[_loc3_] as §&!-§)
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
      
      public function §^"3§(param1:Number, param2:Number) : Vector.<§&!-§>
      {
         var _loc5_:§&!-§ = null;
         var _loc3_:Vector.<§&!-§> = new Vector.<§&!-§>();
         var _loc4_:int = this.§2"3§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§2"3§[_loc4_] as §&!-§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §+!F§
      {
         return this.§2"3§[param1];
      }
      
      public function §2K§(param1:int) : §&!-§
      {
         var _loc2_:§+!F§ = null;
         var _loc3_:§&!-§ = null;
         for each(_loc2_ in this.§2"3§)
         {
            _loc3_ = _loc2_ as §&!-§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §;d§(param1:String) : §&!-§
      {
         return this.§0!0§[param1];
      }
      
      public function §6!8§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§2"3§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§2"3§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§1!H§(param1);
         _loc4_ = this.§!0§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§!0§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §%s§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §>a§(param1:Number, param2:Number, param3:§&!-§) : §0"0§
      {
         var _loc4_:Number = param3.§-!N§().GetPosition().x - param1;
         var _loc5_:Number = param3.§-!N§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§0"0§;
         (_loc7_ = new §0"0§()).§&!c§ = _loc6_;
         _loc7_.§1!z§ = new Point(param3.§-!N§().GetPosition().x,param3.§-!N§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §?O§(param1:§&!-§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §0""§(param1:§&!-§) : Boolean
      {
         return false;
      }
      
      protected function §4!I§() : void
      {
         var _loc1_:§9!,§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§+!F§ = null;
         var _loc7_:§&!-§ = null;
         var _loc8_:§0"0§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§#;§)
         {
            return;
         }
         while(this.§?!]§.length > 0)
         {
            _loc1_ = this.§?!]§.shift();
            _loc2_ = _loc1_.§`!`§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§!!D§(_loc1_.push);
            for each(_loc6_ in this.§2"3§)
            {
               if((_loc7_ = _loc6_ as §&!-§) && !this.§0""§(_loc7_))
               {
                  if((_loc8_ = this.§>a§(_loc3_,_loc4_,_loc7_)).§&!c§ <= _loc1_.§`!`§)
                  {
                     _loc9_ = _loc1_.push * this.§%s§(_loc8_.§&!c§,_loc1_.§`!`§);
                     if(_loc8_.§&!c§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§1!z§.x - _loc3_,_loc8_.§1!z§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§-!N§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§1!z§.x,_loc8_.§1!z§.y));
                     }
                  }
                  if(_loc8_.§&!c§ <= _loc1_.§2!h§)
                  {
                     _loc13_ = _loc5_ * this.§%s§(_loc8_.§&!c§,_loc1_.§2!h§);
                     this.§?O§(_loc7_,_loc13_);
                  }
               }
            }
            this.§?""§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §?""§(param1:§9!,§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§false§.particles.§+<§(this.§4!l§(param1.type),§2!k§.§ g§,§'!P§.§8"0§,param2,param3,600,"",§'!P§.§0!2§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§false§.particles.§+<§(§'!P§.§5!$§,§2!k§.§ g§,§'!P§.§>]§,param2,param3,_loc7_,"",§'!P§.§0!2§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §4!l§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §'!P§.§,!A§;
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc4_:§&!-§ = null;
         var _loc2_:§+!F§ = null;
         var _loc3_:int = this.§2"3§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2"3§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§?"5§(_loc3_,true);
            }
            else
            {
               this.§#!b§(_loc2_,param1);
               _loc4_ = _loc2_ as §&!-§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§9!9§(§2!_§.§ V§);
                  }
                  this.§?"5§(_loc3_,!(_loc4_ is §=!V§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§9!9§(§2!_§.§ V§);
                  this.§?"5§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§^k§(param1);
         this.§4!I§();
         if(this.§9!D§)
         {
            this.§9!D§.update(param1);
         }
      }
      
      protected function §#!b§(param1:§+!F§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §1!H§(param1:Number) : void
      {
         var _loc2_:§8y§ = null;
         var _loc3_:int = this.§!0§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!0§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§'!]§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §^k§(param1:Number) : void
      {
         this.§9K§(param1);
         this.§1!r§();
      }
      
      protected function §9K§(param1:Number) : void
      {
         var _loc3_:§ !z§ = null;
         var _loc4_:§+!F§ = null;
         var _loc2_:int = this.§?o§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?o§[_loc2_];
            if(_loc3_.§1!@§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§=!n§)
                  {
                     _loc4_ = this.§2K§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§2K§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§?o§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §6!A§(param1:§4!c§) : void
      {
         var _loc2_:§&!-§ = param1.debug_object_1;
         var _loc3_:§&!-§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§2K§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§2K§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§`!W§ == null)
         {
            param1.§`!W§ = new §]!J§(4,4,4294901760);
            this.§ !M§.addChild(param1.§`!W§);
         }
         param1.§`!W§.x = _loc4_;
         param1.§`!W§.y = _loc5_;
         param1.§`!W§.width = _loc8_;
         param1.§`!W§.rotation = _loc9_;
      }
      
      protected function §[+§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §1!r§() : void
      {
         var _loc1_:§4!c§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§46§)
         {
            if(§`!>§)
            {
               this.§6!A§(_loc1_);
            }
            if(_loc1_.§=i§ && _loc1_.§&!§ && _loc1_.§,!r§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §2>§.§>!E§)
               {
                  _loc4_ = (_loc1_.§6"§ as b2PrismaticJoint).§"!@§();
                  _loc5_ = (_loc1_.§6"§ as b2PrismaticJoint).§,!s§();
                  _loc6_ = this.§[+§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§6"§ as b2PrismaticJoint).§;o§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §2>§.§!!H§)
               {
                  _loc7_ = (_loc1_.§6"§ as b2RevoluteJoint).§=!;§();
                  if((_loc5_ = (_loc1_.§6"§ as b2RevoluteJoint).§,!s§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§6"§ as b2RevoluteJoint).§;o§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §18§() : void
      {
         var _loc1_:§4!c§ = null;
         while(this.§46§.length > 0)
         {
            _loc1_ = this.§46§.pop();
            this.§>!+§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§+!F§) : Boolean
      {
         this.§%"$§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §+f§.§,!6§) && param1.§-!N§() && this.§!!]§(param1.§-!N§().GetPosition().x,param1.§-!N§().GetPosition().y))
         {
            if(param1 is §&!-§)
            {
               §&!-§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §%"$§(param1:§+!F§) : void
      {
      }
      
      public function §[§(param1:Number, param2:Number) : Boolean
      {
         return this.§false§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §!!]§(param1:Number, param2:Number) : Boolean
      {
         return this.§false§.§#"3§.§4q§(param1,param2);
      }
      
      public function §'!]§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§8y§ = this.§!0§[param1];
         this.§;!+§(_loc2_.sprite);
         this.§!0§[param1] = null;
         this.§!0§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §9"#§(param1:§&!-§) : Boolean
      {
         return true;
      }
      
      protected function §7"%§(param1:§&!-§) : Point
      {
         var _loc2_:Number = param1.§-!N§().GetPosition().x;
         var _loc3_:Number = param1.§-!N§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §?"5§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§&!-§ = null;
         var _loc6_:§ !z§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§+!F§;
         if((_loc4_ = this.§2"3§[param1]) is §+!!§)
         {
            ++this.§@!T§;
         }
         else if(_loc4_ is §=!V§)
         {
            --this.§>?§;
         }
         if(_loc4_ == this.§=!P§)
         {
            this.§=!P§ = null;
         }
         if(_loc4_ is §&!-§)
         {
            _loc5_ = _loc4_ as §&!-§;
            if(param2)
            {
               _loc7_ = this.§7"%§(_loc5_);
               _loc8_ = §'!P§.§^!l§(_loc5_.itemName);
               _loc9_ = this.§9"#§(_loc5_);
               if(_loc5_.levelItem.score > 0)
               {
                  this.§false§.addScore(_loc5_.levelItem.score,§&p§.§6!y§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
               }
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§&!P§(_loc5_);
            for each(_loc6_ in this.§?o§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§1!@§ = true;
               }
            }
            delete this.§0!0§[_loc5_.§+"$§.instanceName];
         }
         this.§;!+§(_loc4_.sprite);
         this.§2"3§[param1] = null;
         this.§2"3§.splice(param1,1);
         if(_loc4_ is §&"3§)
         {
            if((_loc10_ = this.§%9§.indexOf(_loc4_)) >= 0)
            {
               this.§%9§.splice(_loc10_,1);
            }
         }
         if(this.§9!D§)
         {
            this.§9!D§.§<z§(_loc4_);
         }
         this.§<z§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §<z§(param1:§+!F§) : void
      {
         var _loc2_:§&!-§ = null;
         var _loc3_:§2" § = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§&!-§ = null;
         if(param1 is §&!-§)
         {
            _loc2_ = param1 as §&!-§;
            _loc3_ = _loc2_.§+"$§ as §2" §;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§6!s§.§<"'§)
               {
                  _loc5_ = _loc3_.§6!s§.§<"'§[_loc4_];
                  _loc6_ = this.§;d§(_loc4_);
                  this.§]!^§(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function §]!^§(param1:§&!-§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§3!x§(param2,param3,this);
         }
      }
      
      private function §;!+§(param1:§`!B§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§+!F§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§?"5§(this.§2"3§.indexOf(param1),param2,param3);
         }
      }
      
      public function §["'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§false§.§1'§();
         }
      }
      
      public function §<!;§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§false§.§<!;§(param1,param2,param3,param4);
      }
      
      public function §#X§(param1:Number, param2:Number) : void
      {
         this.§!V§.x = -param1;
         this.§!V§.y = -param2;
         this.§;O§.x = -param1;
         this.§;O§.y = -param2;
         this.§65§.x = -param1;
         this.§65§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§+!F§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2"3§.length)
         {
            _loc2_ = this.§2"3§[_loc1_];
            if(_loc2_ && _loc2_ is §+!!§ && (_loc2_ as §+!!§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §5&§(param1:Boolean = false) : int
      {
         var _loc4_:§+!!§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§2"3§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2"3§[_loc3_] as §+!!§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§ !B§ && !_loc4_.§'!f§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §[!Y§() : int
      {
         var _loc2_:§&!-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2"3§)
         {
            if(_loc2_ is §1H§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>!4§() : int
      {
         var _loc2_:§&!-§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2"3§)
         {
            if(_loc2_ && _loc2_.§^8§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§+!!§ = null;
         var _loc2_:int = this.§2"3§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2"3§[_loc2_] as §+!!§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §4H§() : Boolean
      {
         var _loc2_:§=!V§ = null;
         var _loc1_:int = this.§2"3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2"3§[_loc1_] as §=!V§;
            if(_loc2_ && _loc2_.health > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§&!-§ = null;
         var _loc1_:int = this.§2"3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2"3§[_loc1_] as §&!-§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§5[§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§7G§())
               {
                  return false;
               }
               if(_loc2_ is §=!V§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[z§(param1:Boolean = false) : §+!!§
      {
         var _loc7_:§+!!§ = null;
         var _loc2_:int = this.§2"3§.length;
         var _loc3_:int = this.§5&§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§2"3§[_loc6_] as §+!!§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§ !B§ && !_loc7_.§'!f§)
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
      
      public function §"@§() : int
      {
         var _loc3_:§&!-§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§2"3§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2"3§[_loc2_] as §&!-§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.score;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += this.damageScoreMultiplier * int(_loc3_.healthMax);
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§false§.slingshot.§"@§());
      }
      
      protected function §]"+§(param1:§+!F§, param2:§+!F§) : Boolean
      {
         if(param1 is §&!-§ && param2 is §&!-§ && !(param1 as §&!-§).§]6§() && !(param2 as §&!-§).§]6§())
         {
            return false;
         }
         return true;
      }
      
      protected function §'d§(param1:§+!F§, param2:§+!F§) : Boolean
      {
         return this.§]"+§(param1,param2);
      }
      
      public function §1![§() : void
      {
         this.§>?§ = 0;
      }
      
      protected function §;D§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §!!D§(param1:Number) : void
      {
      }
      
      protected function §+!C§(param1:§&!-§, param2:§&!-§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §=!V§)
         {
            return 1;
         }
         if(param1 is §=!V§)
         {
            return Number(param1.§!U§(param2.§,",§()));
         }
         return 1;
      }
      
      protected function §&§(param1:§&!-§, param2:§&!-§) : Number
      {
         if(param2 is §=!V§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §0D§(param1:§&!-§, param2:§&!-§) : Number
      {
         var _loc4_:Number = this.§&§(param1,param2);
         var _loc5_:Number = this.§&§(param2,param1);
         var _loc6_:Number = param1.§-!N§().GetMass();
         var _loc7_:Number = param2.§-!N§().GetMass();
         var _loc8_:b2Vec2 = param1.§<"%§();
         var _loc9_:b2Vec2 = param2.§<"%§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function § "6§(param1:§&!-§, param2:§&!-§) : Boolean
      {
         if(param2 is §`!p§ && param1 is §`!p§)
         {
            return true;
         }
         return false;
      }
      
      public function §=5§(param1:§+!F§, param2:§+!F§, param3:b2Contact) : Boolean
      {
         var _loc15_:§4!c§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(!this.§#;§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§&!-§ = param1 as §&!-§;
         var _loc5_:§&!-§ = param2 as §&!-§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§"!t§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§"!t§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.§'d§(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§ "6§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§0D§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§#"0§ && !_loc5_.§#"0§)
         {
            this.§;D§(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.§+!C§(_loc4_,_loc5_);
         var _loc10_:Number = this.§+!C§(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§46§)
         {
            if(_loc15_.isBreakable && _loc6_ >= _loc15_.minBreakForce)
            {
               _loc16_ = _loc4_.§-!N§().GetJointList();
               _loc17_ = _loc5_.§-!N§().GetJointList();
               if(_loc16_ != null && _loc16_.§^1§ == _loc15_.§6"§ || _loc17_ != null && _loc17_.§^1§ == _loc15_.§6"§)
               {
                  this.§>!+§(_loc15_);
               }
            }
         }
         if(_loc13_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc14_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §=!V§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc18_ = _loc4_.§=K§(_loc5_.§,",§());
                  this.§,U§(_loc4_ as §=!V§,_loc6_ * _loc9_,_loc8_,_loc18_);
               }
               return false;
            }
         }
         if(_loc5_ is §=!V§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc19_ = _loc5_.§=K§(_loc4_.§,",§());
                  this.§,U§(_loc5_ as §=!V§,_loc6_ * _loc10_,_loc7_,_loc19_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function §8P§(param1:§+!F§, param2:§+!F§) : void
      {
         if(param1)
         {
            param1.collisionEnded(param2);
         }
         if(param2)
         {
            param2.collisionEnded(param1);
         }
      }
      
      protected function §,U§(param1:§=!V§, param2:Number, param3:Number, param4:Number) : void
      {
         if(param2 == 0)
         {
            return;
         }
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§<"%§();
         param1.§-C§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §!"$§() : void
      {
         var _loc2_:§&!-§ = null;
         var _loc1_:int = this.§2"3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2"3§[_loc1_] as §&!-§;
            if(_loc2_ != null && _loc2_ is §+!!§)
            {
               this.§?"5§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §>I§() : void
      {
         var _loc2_:§&!-§ = null;
         var _loc1_:int = this.§2"3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2"3§[_loc1_] as §&!-§;
            if(_loc2_ != null && _loc2_.§<!o§())
            {
               this.§?"5§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §?!x§() : int
      {
         return this.§2"3§.length;
      }
      
      public function §,!d§(param1:§[d§) : void
      {
         var _loc4_:§&!-§ = null;
         var _loc5_:§5"-§ = null;
         var _loc6_:§2>§ = null;
         var _loc7_:§4!c§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2"3§.length)
         {
            if(_loc4_ = this.§2"3§[_loc2_] as §&!-§)
            {
               if(_loc4_.§1"5§)
               {
                  if(!_loc4_.§5[§())
                  {
                     (_loc5_ = new §5"-§()).angle = _loc4_.§[!o§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§-!N§().GetPosition().x;
                     _loc5_.y = _loc4_.§-!N§().GetPosition().y;
                     param1.§'!%§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§46§.length)
         {
            _loc7_ = this.§46§[_loc3_];
            _loc6_ = new §2>§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§?!C§,_loc7_.§&!§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§,!r§,_loc7_.motorSpeed,_loc7_.§=i§,_loc7_.maxTorque);
            param1.§=!9§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §1!J§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2"3§.length)
         {
            if(this.§2"3§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2"3§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§&!-§ = null;
         this.§@L§ = param1;
         this.§!G§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2"3§.length)
         {
            _loc3_ = this.§2"3§[_loc2_] as §&!-§;
            if(_loc3_ && _loc3_.§^8§())
            {
               _loc3_.sprite.visible = !this.§@L§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§#;§ = param1;
      }
      
      public function §?"4§() : int
      {
         return this.§4"7§;
      }
      
      public function §=!+§() : int
      {
         return this.§@!T§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§false§.damageScoreMultiplier;
      }
   }
}
