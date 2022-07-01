package §@!"§
{
   import §!!R§.§4#§;
   import §%!B§.§5L§;
   import §%8§.§%!S§;
   import §%8§.§4"+§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §%8§.§]!o§;
   import §%8§.§^f§;
   import §'!&§.§!x§;
   import §0N§.§ !A§;
   import §0N§.§,!A§;
   import §0N§.§-C§;
   import §0N§.§5D§;
   import §0N§.§8![§;
   import §23§.b2Contact;
   import §2`§.§5E§;
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.§8!l§;
   import §3!J§.Sprite;
   import §4!i§.§0]§;
   import §=!4§.Texture;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§52§;
   import §@V§.§9h§;
   import §@h§.b2JointEdge;
   import §@h§.b2PrismaticJoint;
   import §@h§.b2RevoluteJoint;
   import §[!Z§.§>D§;
   import §`2§.§"w§;
   import §`2§.§3[§;
   import §`2§.§`""§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!l§ implements §`!m§
   {
      
      private static const §@+§:Boolean = false;
      
      public static const §,J§:int = 1000000000;
      
      public static const §^a§:int = -1;
      
      public static const §0"+§:int = -2;
       
      
      protected var §-"2§:Vector.<§#!v§>;
      
      protected var §82§:Vector.<§+!z§>;
      
      protected var §53§:Vector.<§3[§>;
      
      protected var §-L§:§0]§;
      
      private var §7!,§:int = 1000000000;
      
      public var §!`§:§#=§;
      
      protected var § !k§:Vector.<§=q§>;
      
      protected var §0%§:§3!J§.Sprite;
      
      protected var §&!b§:§3!J§.Sprite;
      
      protected var §1!f§:§3!J§.Sprite;
      
      protected var §]3§:§3!J§.Sprite;
      
      protected var §+"#§:§3!J§.Sprite;
      
      protected var §^!6§:Vector.<Texture>;
      
      protected var §>]§:Vector.<§5D§>;
      
      protected var §9!V§:int = 1;
      
      protected var §]!P§:Vector.<§ !A§>;
      
      protected var §2;§:int = 0;
      
      private var §[a§:int = 0;
      
      private var §09§:int = 0;
      
      private var §]1§:§,!A§;
      
      private var §6!j§:§^"2§;
      
      private var §]!n§:Boolean = true;
      
      private var §8C§:Boolean = true;
      
      private var §<!%§:§4#§;
      
      private var §]x§:Boolean = false;
      
      public function §<!l§(param1:§#=§, param2:§5L§, param3:§3!J§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§-"2§ = new Vector.<§#!v§>();
         this.§82§ = new Vector.<§+!z§>();
         this.§53§ = new Vector.<§3[§>();
         this.§-L§ = new §0]§();
         this.§ !k§ = new Vector.<§=q§>();
         this.§^!6§ = new Vector.<Texture>();
         this.§]!P§ = new Vector.<§ !A§>();
         this.§]1§ = new §,!A§();
         super();
         this.§!`§ = param1;
         this.§0%§ = param3;
         this.§0%§.§6!U§ = false;
         this.§8C§ = true;
         this.§]!n§ = true;
         this.§&!b§ = new §3!J§.Sprite();
         this.§1!f§ = new §3!J§.Sprite();
         this.§+"#§ = new §3!J§.Sprite();
         this.§]3§ = new §3!J§.Sprite();
         this.§0%§.addChild(this.§&!b§);
         this.§0%§.addChild(this.§1!f§);
         if(param2.§7!H§)
         {
            _loc5_ = (this.§!`§.§];§.§]6§ + this.§!`§.§];§.§const§) / 2;
            _loc6_ = 0 + §9h§.§3" §;
            this.§&w§(param4,_loc5_,_loc6_,0,§<!l§.§^a§);
         }
         this.§85§(param2);
      }
      
      public function get §<!5§() : §3!J§.Sprite
      {
         return this.§+"#§;
      }
      
      public function get §,""§() : §3!J§.Sprite
      {
         return this.§1!f§;
      }
      
      public function get §]![§() : §3!J§.Sprite
      {
         return this.§]3§;
      }
      
      public function get §&!h§() : §3!J§.Sprite
      {
         return this.§0%§;
      }
      
      public function get activeObject() : §@_§
      {
         return this.§6!j§;
      }
      
      public function get objectCount() : int
      {
         return this.§-"2§.length;
      }
      
      public function set §8x§(param1:§4#§) : void
      {
         if(param1 != this.§<!%§)
         {
            this.§<!%§ = param1;
            if(this.§]x§ && this.§<!%§)
            {
               this.§<!%§.levelStarted();
            }
         }
      }
      
      public function §"!Y§() : void
      {
         if(!this.§]x§)
         {
            this.§]x§ = true;
            if(this.§<!%§)
            {
               this.§<!%§.levelStarted();
            }
         }
      }
      
      public function §+"%§(param1:String) : §@-§
      {
         return this.§!`§.levelItemManager.§1!e§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§6!j§)
         {
            _loc3_ = this.§6!j§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §85§(param1:§5L§) : void
      {
         var _loc3_:§,!A§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§@-§ = null;
         var _loc6_:§-C§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§!`§.levelItemManager.§1!e§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§?"%§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§%2§();
         this.§3"!§(true);
         this.§>]§ = new Vector.<§5D§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§7!f§)
         {
            _loc6_ = param1.§-"1§(_loc2_);
            this.§@!t§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§-"2§.length > 0)
         {
            this.§;a§(0,false,true);
         }
         while(this.§53§.length > 0)
         {
            this.§3V§(0);
         }
         this.§-"2§ = null;
         this.§82§ = null;
         this.§53§ = null;
         this.§-L§ = null;
         this.§]!P§ = null;
         if(this.§0%§)
         {
            this.§0%§.dispose();
            this.§0%§ = null;
         }
         this.§&!b§ = null;
         this.§1!f§ = null;
         if(this.§+"#§)
         {
            this.§+"#§.dispose();
            this.§+"#§ = null;
         }
         if(this.§]3§)
         {
            this.§]3§.dispose();
            this.§]3§ = null;
         }
         while(this.§^!6§.length > 0)
         {
            _loc1_ = this.§^!6§.pop();
            this.§!`§.§]!z§.§ f§(_loc1_);
         }
      }
      
      private function §3"!§(param1:Boolean) : void
      {
         this.§&!b§.visible = param1;
      }
      
      private function §%2§() : void
      {
         var _loc3_:§#!v§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§@_§ = null;
         var _loc6_:§[_§ = null;
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
         var _loc21_:§4!2§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§@_§> = new Vector.<§@_§>();
         for each(_loc3_ in this.§-"2§)
         {
            if((_loc5_ = _loc3_ as §@_§) && _loc5_.§]^§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§=!q§(),_loc6_.§%!r§()) / §#=§.§^!2§ * Math.sqrt(2);
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
            _loc8_ = this.§!`§.camera.§%h§ / §#=§.§^!2§;
            _loc9_ = this.§!`§.camera.§!v§ / §#=§.§^!2§;
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
            _loc18_ = this.§1g§();
            this.§!!C§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§5^§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§!`§.§]!z§.§@!;§(_loc17_);
            this.§^!6§.push(_loc20_);
            (_loc21_ = new §4!2§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§&!b§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §5^§(param1:Vector.<§@_§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§@_§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§[_§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §]!o§)
            {
               this.§[K§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §4"+§)
            {
               if((_loc12_ as §4"+§).§1t§.length == 4)
               {
                  this.§[K§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §4"+§).§1t§.length == 3)
               {
                  this.§+g§(_loc12_ as §4"+§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`p§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §%!S§)
            {
               this.§'M§(_loc12_ as §%!S§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §[K§(param1:§[_§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§=!q§() / §#=§.§^!2§ * param9;
         var _loc13_:Number = param1.§%!r§() / §#=§.§^!2§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §+g§(param1:§4"+§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§1t§.length)
         {
            _loc14_ = param1.§1t§[_loc13_];
            _loc12_.push(_loc14_.x / §#=§.§^!2§ * param8,_loc14_.y / §#=§.§^!2§ * param8);
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
      
      protected function §'M§(param1:§%!S§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §#=§.§^!2§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §;!V§() : String
      {
         return this.§!`§.background.§4V§();
      }
      
      protected function §1g§() : Number
      {
         return 1;
      }
      
      private function §!!C§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§;!V§();
         var _loc5_:§5E§;
         if(_loc5_ = this.§!`§.§<x§.§5!X§(_loc4_))
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
      
      protected function addObjectBird(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:Number = 1.0, param6:Boolean = true) : §^"2§
      {
         var _loc11_:§^"2§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §'!R§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §!r§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new § "+§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §=1§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §21§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §3i§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §>"7§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §45§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §>S§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §[!J§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §^"2§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§2;§ > 0;
      }
      
      protected function §1!W§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:Number = 1.0) : §7k§
      {
         return new §7k§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param5);
      }
      
      public function §&w§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §#!v§
      {
         this.§]1§.type = param1;
         this.§]1§.x = param2;
         this.§]1§.y = param3;
         this.§]1§.angle = param4;
         this.§]1§.§4!Y§ = 0;
         this.§]1§.§]5§ = 0;
         return this.§?"%§(this.§]1§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §+"5§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §#!v§
      {
         this.§]1§.type = param1;
         this.§]1§.x = param2;
         this.§]1§.y = param3;
         this.§]1§.angle = param4;
         this.§]1§.§4!Y§ = param6;
         this.§]1§.§]5§ = param7;
         return this.§?"%§(this.§]1§,param5,false,false,false,param8,param9);
      }
      
      protected function §?"%§(param1:§,!A§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §#!v§
      {
         var _loc8_:§3!J§.Sprite = new §3!J§.Sprite();
         var _loc9_:§#!v§;
         if((_loc9_ = this.§^!#§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §@_§ && (_loc9_ as §@_§).§]^§())
         {
            _loc8_.visible = !this.§]!n§;
         }
         if(_loc9_ is §^"2§ && !(_loc9_ is §[!J§))
         {
            ++this.§2;§;
         }
         if(!param7)
         {
            this.§1!f§.§#!a§(_loc8_);
         }
         else
         {
            this.§+"#§.§#!a§(_loc8_);
         }
         if(param3)
         {
            this.§!`§.§2!;§(_loc9_);
         }
         if(param4 && _loc9_ is §^"2§)
         {
            this.§6!j§ = §^"2§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §^!#§(param1:§,!A§, param2:int, param3:§3!J§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §#!v§
      {
         var _loc7_:§@_§ = null;
         if(param2 == §0"+§)
         {
            param2 = this.§7!,§;
            ++this.§7!,§;
         }
         else
         {
            if(param2 >= §,J§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §,J§);
            }
            if(this.§,!]§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§#!v§;
         if((_loc6_ = this.§-!&§(param1,param3,param4,param5)) is §^"2§)
         {
            ++this.§09§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §@_§;
            if(_loc6_ is §3[§)
            {
               this.§53§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§=G§(param2);
                  this.§-L§[param1.instanceName] = _loc6_;
               }
               this.§-"2§.push(_loc6_);
               if(_loc6_ is §+!z§)
               {
                  this.§82§.push(_loc6_);
               }
            }
            if(this.§<!%§)
            {
               this.§<!%§.§<!r§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §`"3§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §>!v§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:int, param6:Number = 1.0) : §#!v§
      {
         return new §7@§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param6,param5);
      }
      
      protected function §<,§(param1:§,!A§, param2:§3!J§.Sprite, param3:§;!Q§, param4:§@-§, param5:int, param6:Number = 1.0) : §#!v§
      {
         return new §#+§(param2,param3,this.§!`§.§>!&§.§^d§,param4,param1,param6,param5);
      }
      
      protected function §-!&§(param1:§,!A§, param2:§3!J§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §#!v§
      {
         var _loc5_:§@-§;
         if(!(_loc5_ = this.§!`§.levelItemManager.§1!e§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§`"3§();
         }
         var _loc7_:§;!Q§ = this.§!`§.§13§.§6"%§(_loc6_);
         var _loc8_:§#!v§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §@-§.§[$§)
         {
            _loc8_ = this.§1!W§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §@-§.§=6§ || _loc5_.itemType == §@-§.§0?§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§>!v§(param1,param2,_loc7_,_loc5_,§=q§.§^2§,param4);
            }
            else if(_loc5_.itemName == §=1§.§+R§)
            {
               _loc8_ = this.§<,§(param1,param2,_loc7_,_loc5_,§=q§.§'!`§,param4);
            }
            else
            {
               _loc8_ = new §4!X§(param2,_loc7_,this.§!`§.§>!&§.§^d§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §@_§(param2,_loc7_,this.§!`§.§>!&§.§^d§,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§!`§.addScore(param1,§52§.§^Y§,param3,param4,param5,param6);
      }
      
      public function §9!@§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§!`§.particles.§9!@§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §=9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§!`§.particles.§=9§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §3"'§(param1:§@_§) : void
      {
         var _loc4_:§5D§ = null;
         var _loc5_:§5D§ = null;
         var _loc6_:§#!v§ = null;
         var _loc7_:§#!v§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§>]§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§>]§[_loc3_];
            if(this.§>]§[_loc3_].id1 == _loc2_ || this.§>]§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§7!Q§)
               {
                  _loc6_ = _loc4_.§7!Q§.§>!y§().GetUserData() as §#!v§;
                  _loc7_ = _loc4_.§7!Q§.§5!0§().GetUserData() as §#!v§;
                  if(_loc6_)
                  {
                     _loc6_.§8"0§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§8"0§(_loc6_);
                  }
               }
               _loc5_ = this.§>]§.pop();
               if(_loc3_ < this.§>]§.length)
               {
                  this.§>]§[_loc3_] = _loc5_;
               }
               this.§;b§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §@!t§(param1:§-C§) : §5D§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§5D§ = §5D§.§@!t§(param1);
         this.§>]§.push(_loc4_);
         var _loc5_:§#!v§ = this.§,!]§(_loc2_);
         var _loc6_:§#!v§ = this.§,!]§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §-C§.§-!R§)
            {
               _loc4_.§7!Q§ = this.§!`§.§>!&§.§^d§.§>!g§(_loc4_.§5",§(_loc5_,_loc6_));
            }
            else
            {
               this.§]!P§.push(new § !A§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§#!j§));
            }
            _loc5_.§#$§(_loc6_);
            _loc6_.§#$§(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §;b§(param1:§5D§) : void
      {
         if(param1.§7!Q§)
         {
            this.§!`§.§>!&§.§^d§.§!U§(param1.§7!Q§);
         }
         if(param1.§ !B§)
         {
            if(this.§1!f§.contains(param1.§ !B§))
            {
               this.§1!f§.removeChild(param1.§ !B§,true);
            }
         }
      }
      
      public function §<!Q§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§ !k§.push(§=q§.§7",§(param1,param2,param3));
         this.§&<§(param1);
      }
      
      protected function §&<§(param1:int) : void
      {
         §>D§.§9!q§("TntExplosions","ChannelExplosions");
      }
      
      public function §2"!§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§ !k§.push(§=q§.§4!A§(param1,param2,param3,param4,param5,param6));
         §>D§.§9!q§("TntExplosions","ChannelExplosions");
      }
      
      public function §3!K§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§!`§.§>!&§.§^d§.§2§());
         return param4;
      }
      
      public function get §4U§() : Number
      {
         return this.§!`§.§4U§;
      }
      
      public function §?!_§(param1:Number, param2:Number) : int
      {
         var _loc4_:§@_§ = null;
         var _loc3_:int = this.§-"2§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-"2§[_loc3_] as §@_§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §@_§
      {
         var _loc4_:§@_§ = null;
         var _loc3_:int = this.§-"2§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§-"2§[_loc3_] as §@_§)
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
      
      public function §+s§(param1:Number, param2:Number) : Vector.<§@_§>
      {
         var _loc5_:§@_§ = null;
         var _loc3_:Vector.<§@_§> = new Vector.<§@_§>();
         var _loc4_:int = this.§-"2§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§-"2§[_loc4_] as §@_§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §#!v§
      {
         return this.§-"2§[param1];
      }
      
      public function §,!]§(param1:int) : §@_§
      {
         var _loc2_:§#!v§ = null;
         var _loc3_:§@_§ = null;
         for each(_loc2_ in this.§-"2§)
         {
            _loc3_ = _loc2_ as §@_§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §'-§(param1:String) : §@_§
      {
         return this.§-L§[param1];
      }
      
      public function §&!N§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§-"2§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§-"2§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§[!;§(param1);
         _loc4_ = this.§53§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§53§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §-!,§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §5@§(param1:Number, param2:Number, param3:§@_§) : §!x§
      {
         var _loc4_:Number = param3.§!!I§().GetPosition().x - param1;
         var _loc5_:Number = param3.§!!I§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§!x§;
         (_loc7_ = new §!x§()).§2!7§ = _loc6_;
         _loc7_.§@"6§ = new Point(param3.§!!I§().GetPosition().x,param3.§!!I§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §`F§(param1:§@_§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §!t§(param1:§@_§) : Boolean
      {
         return false;
      }
      
      protected function §@!a§() : void
      {
         var _loc1_:§=q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§#!v§ = null;
         var _loc7_:§@_§ = null;
         var _loc8_:§!x§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§8C§)
         {
            return;
         }
         while(this.§ !k§.length > 0)
         {
            _loc1_ = this.§ !k§.shift();
            _loc2_ = _loc1_.§#!m§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§4$§(_loc1_.push);
            for each(_loc6_ in this.§-"2§)
            {
               if((_loc7_ = _loc6_ as §@_§) && !this.§!t§(_loc7_))
               {
                  if((_loc8_ = this.§5@§(_loc3_,_loc4_,_loc7_)).§2!7§ <= _loc1_.§#!m§)
                  {
                     _loc9_ = _loc1_.push * this.§-!,§(_loc8_.§2!7§,_loc1_.§#!m§);
                     if(_loc8_.§2!7§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§@"6§.x - _loc3_,_loc8_.§@"6§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§!!I§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§@"6§.x,_loc8_.§@"6§.y));
                     }
                  }
                  if(_loc8_.§2!7§ <= _loc1_.§,!+§)
                  {
                     _loc13_ = _loc5_ * this.§-!,§(_loc8_.§2!7§,_loc1_.§,!+§);
                     this.§`F§(_loc7_,_loc13_);
                  }
               }
            }
            this.§!!X§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §!!X§(param1:§=q§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§!`§.particles.§9!@§(this.§]!5§(param1.type),§"w§.§,§,§`""§.§%!9§,param2,param3,600,"",§`""§.§2"4§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§!`§.particles.§9!@§(§`""§.§?E§,§"w§.§,§,§`""§.§@b§,param2,param3,_loc7_,"",§`""§.§2"4§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §]!5§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §`""§.§#i§;
      }
      
      public function §8" §(param1:Number) : void
      {
         var _loc4_:§@_§ = null;
         var _loc2_:§#!v§ = null;
         var _loc3_:int = this.§-"2§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§;a§(_loc3_,true);
            }
            else
            {
               this.§+Q§(_loc2_,param1);
               _loc4_ = _loc2_ as §@_§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§8!U§(§89§.§6K§);
                  }
                  this.§;a§(_loc3_,!(_loc4_ is §^"2§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§8!U§(§89§.§6K§);
                  this.§;a§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§#;§(param1);
         this.§@!a§();
         if(this.§<!%§)
         {
            this.§<!%§.update(param1);
         }
      }
      
      protected function §+Q§(param1:§#!v§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §[!;§(param1:Number) : void
      {
         var _loc2_:§3[§ = null;
         var _loc3_:int = this.§53§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§53§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§3V§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §#;§(param1:Number) : void
      {
         this.§9t§(param1);
         this.§`O§();
      }
      
      protected function §9t§(param1:Number) : void
      {
         var _loc3_:§ !A§ = null;
         var _loc4_:§#!v§ = null;
         var _loc2_:int = this.§]!P§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!P§[_loc2_];
            if(_loc3_.§^5§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§'&§)
                  {
                     _loc4_ = this.§,!]§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§,!]§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§]!P§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function override(param1:§5D§) : void
      {
         var _loc2_:§@_§ = param1.debug_object_1;
         var _loc3_:§@_§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§,!]§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§,!]§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§ !B§ == null)
         {
            param1.§ !B§ = new §8!l§(4,4,4294901760);
            this.§1!f§.addChild(param1.§ !B§);
         }
         param1.§ !B§.x = _loc4_;
         param1.§ !B§.y = _loc5_;
         param1.§ !B§.width = _loc8_;
         param1.§ !B§.rotation = _loc9_;
      }
      
      protected function §5S§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §`O§() : void
      {
         var _loc1_:§5D§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§>]§)
         {
            if(§@+§)
            {
               this.override(_loc1_);
            }
            if(_loc1_.§`!]§ && _loc1_.§,i§ && _loc1_.§4!r§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §-C§.§0g§)
               {
                  _loc4_ = (_loc1_.§7!Q§ as b2PrismaticJoint).§%!-§();
                  _loc5_ = (_loc1_.§7!Q§ as b2PrismaticJoint).§>g§();
                  _loc6_ = this.§5S§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§7!Q§ as b2PrismaticJoint).§2",§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §-C§.§6`§)
               {
                  _loc7_ = (_loc1_.§7!Q§ as b2RevoluteJoint).§"!4§();
                  if((_loc5_ = (_loc1_.§7!Q§ as b2RevoluteJoint).§>g§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§7!Q§ as b2RevoluteJoint).§2",§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §0!7§() : void
      {
         var _loc1_:§5D§ = null;
         while(this.§>]§.length > 0)
         {
            _loc1_ = this.§>]§.pop();
            this.§;b§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§#!v§) : Boolean
      {
         this.§extends§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §^f§.§7!C§) && param1.§!!I§() && this.§="$§(param1.§!!I§().GetPosition().x,param1.§!!I§().GetPosition().y))
         {
            if(param1 is §@_§)
            {
               §@_§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §extends§(param1:§#!v§) : void
      {
      }
      
      public function §@6§(param1:Number, param2:Number) : Boolean
      {
         return this.§!`§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §="$§(param1:Number, param2:Number) : Boolean
      {
         return this.§!`§.§];§.§]!^§(param1,param2);
      }
      
      public function §3V§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§3[§ = this.§53§[param1];
         this.§<!g§(_loc2_.sprite);
         this.§53§[param1] = null;
         this.§53§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §do §(param1:§@_§) : Boolean
      {
         return true;
      }
      
      protected function §6"+§(param1:§@_§) : Point
      {
         var _loc2_:Number = param1.§!!I§().GetPosition().x;
         var _loc3_:Number = param1.§!!I§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §;a§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§@_§ = null;
         var _loc6_:§ !A§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§#!v§;
         if((_loc4_ = this.§-"2§[param1]) is §7k§)
         {
            ++this.§[a§;
         }
         else if(_loc4_ is §^"2§)
         {
            --this.§2;§;
         }
         if(_loc4_ == this.§6!j§)
         {
            this.§6!j§ = null;
         }
         if(_loc4_ is §@_§)
         {
            _loc5_ = _loc4_ as §@_§;
            if(param2)
            {
               _loc7_ = this.§6"+§(_loc5_);
               _loc8_ = §`""§.§?!7§(_loc5_.itemName);
               _loc9_ = this.§do §(_loc5_);
               if(_loc5_.levelItem.score > 0)
               {
                  this.§!`§.addScore(_loc5_.levelItem.score,§52§.§[!g§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
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
            this.§3"'§(_loc5_);
            for each(_loc6_ in this.§]!P§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§^5§ = true;
               }
            }
            delete this.§-L§[_loc5_.§;"4§.instanceName];
         }
         this.§<!g§(_loc4_.sprite);
         this.§-"2§[param1] = null;
         this.§-"2§.splice(param1,1);
         if(_loc4_ is §+!z§)
         {
            if((_loc10_ = this.§82§.indexOf(_loc4_)) >= 0)
            {
               this.§82§.splice(_loc10_,1);
            }
         }
         if(this.§<!%§)
         {
            this.§<!%§.§5!A§(_loc4_);
         }
         this.§5!A§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §5!A§(param1:§#!v§) : void
      {
         var _loc2_:§@_§ = null;
         var _loc3_:§8![§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§@_§ = null;
         if(param1 is §@_§)
         {
            _loc2_ = param1 as §@_§;
            _loc3_ = _loc2_.§;"4§ as §8![§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§'p§.§;!Y§)
               {
                  _loc5_ = _loc3_.§'p§.§;!Y§[_loc4_];
                  _loc6_ = this.§'-§(_loc4_);
                  this.§`J§(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function §`J§(param1:§@_§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§^!3§(param2,param3,this);
         }
      }
      
      private function §<!g§(param1:§3!J§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§#!v§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§;a§(this.§-"2§.indexOf(param1),param2,param3);
         }
      }
      
      public function §+!M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!`§.§""2§();
         }
      }
      
      public function §8%§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§!`§.§8%§(param1,param2,param3,param4);
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         this.§0%§.x = -param1;
         this.§0%§.y = -param2;
         this.§+"#§.x = -param1;
         this.§+"#§.y = -param2;
         this.§]3§.x = -param1;
         this.§]3§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§#!v§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§-"2§.length)
         {
            _loc2_ = this.§-"2§[_loc1_];
            if(_loc2_ && _loc2_ is §7k§ && (_loc2_ as §7k§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §&!D§(param1:Boolean = false) : int
      {
         var _loc4_:§7k§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§-"2§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§-"2§[_loc3_] as §7k§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§7!s§ && !_loc4_.§+!3§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §%"!§() : int
      {
         var _loc2_:§@_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-"2§)
         {
            if(_loc2_ is §4!X§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §;M§() : int
      {
         var _loc2_:§@_§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-"2§)
         {
            if(_loc2_ && _loc2_.§]^§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§7k§ = null;
         var _loc2_:int = this.§-"2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-"2§[_loc2_] as §7k§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §>!k§() : Boolean
      {
         var _loc2_:§^"2§ = null;
         var _loc1_:int = this.§-"2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §^"2§;
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
         var _loc2_:§@_§ = null;
         var _loc1_:int = this.§-"2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§ "7§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§!'§())
               {
                  return false;
               }
               if(_loc2_ is §^"2§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §>a§(param1:Boolean = false) : §7k§
      {
         var _loc7_:§7k§ = null;
         var _loc2_:int = this.§-"2§.length;
         var _loc3_:int = this.§&!D§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§-"2§[_loc6_] as §7k§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§7!s§ && !_loc7_.§+!3§)
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
      
      public function §=U§() : int
      {
         var _loc3_:§@_§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§-"2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-"2§[_loc2_] as §@_§;
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
         return int(_loc1_ + this.§!`§.slingshot.§=U§());
      }
      
      protected function §7p§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         if(param1 is §@_§ && param2 is §@_§ && !(param1 as §@_§).§&!x§() && !(param2 as §@_§).§&!x§())
         {
            return false;
         }
         return true;
      }
      
      protected function §@l§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         return this.§7p§(param1,param2);
      }
      
      public function §5H§() : void
      {
         this.§2;§ = 0;
      }
      
      protected function §'v§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §4$§(param1:Number) : void
      {
      }
      
      protected function §<!a§(param1:§@_§, param2:§@_§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §^"2§)
         {
            return 1;
         }
         if(param1 is §^"2§)
         {
            return Number(param1.§>!@§(param2.§;!F§()));
         }
         return 1;
      }
      
      protected function §7J§(param1:§@_§, param2:§@_§) : Number
      {
         if(param2 is §^"2§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §#!S§(param1:§@_§, param2:§@_§) : Number
      {
         var _loc4_:Number = this.§7J§(param1,param2);
         var _loc5_:Number = this.§7J§(param2,param1);
         var _loc6_:Number = param1.§!!I§().GetMass();
         var _loc7_:Number = param2.§!!I§().GetMass();
         var _loc8_:b2Vec2 = param1.§=m§();
         var _loc9_:b2Vec2 = param2.§=m§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §4!j§(param1:§@_§, param2:§@_§) : Boolean
      {
         if(param2 is §!r§ && param1 is §!r§)
         {
            return true;
         }
         return false;
      }
      
      public function §?!g§(param1:§#!v§, param2:§#!v§, param3:b2Contact) : Boolean
      {
         var _loc15_:§5D§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(!this.§8C§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§@_§ = param1 as §@_§;
         var _loc5_:§@_§ = param2 as §@_§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§]!Q§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§]!Q§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.§@l§(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§4!j§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§#!S§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§<!;§ && !_loc5_.§<!;§)
         {
            this.§'v§(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.§<!a§(_loc4_,_loc5_);
         var _loc10_:Number = this.§<!a§(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§>]§)
         {
            if(_loc15_.isBreakable && _loc6_ >= _loc15_.minBreakForce)
            {
               _loc16_ = _loc4_.§!!I§().GetJointList();
               _loc17_ = _loc5_.§!!I§().GetJointList();
               if(_loc16_ != null && _loc16_.§@P§ == _loc15_.§7!Q§ || _loc17_ != null && _loc17_.§@P§ == _loc15_.§7!Q§)
               {
                  this.§;b§(_loc15_);
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
         if(_loc4_ is §^"2§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc18_ = _loc4_.§3$§(_loc5_.§;!F§());
                  this.§7f§(_loc4_ as §^"2§,_loc6_ * _loc9_,_loc8_,_loc18_);
               }
               return false;
            }
         }
         if(_loc5_ is §^"2§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc19_ = _loc5_.§3$§(_loc4_.§;!F§());
                  this.§7f§(_loc5_ as §^"2§,_loc6_ * _loc10_,_loc7_,_loc19_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function §""7§(param1:§#!v§, param2:§#!v§) : void
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
      
      protected function §7f§(param1:§^"2§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§=m§();
         param1.§<!j§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §[!K§() : void
      {
         var _loc2_:§@_§ = null;
         var _loc1_:int = this.§-"2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(_loc2_ != null && _loc2_ is §7k§)
            {
               this.§;a§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §?"1§() : void
      {
         var _loc2_:§@_§ = null;
         var _loc1_:int = this.§-"2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-"2§[_loc1_] as §@_§;
            if(_loc2_ != null && _loc2_.§<!M§())
            {
               this.§;a§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §^]§() : int
      {
         return this.§-"2§.length;
      }
      
      public function § !c§(param1:§5L§) : void
      {
         var _loc4_:§@_§ = null;
         var _loc5_:§,!A§ = null;
         var _loc6_:§-C§ = null;
         var _loc7_:§5D§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-"2§.length)
         {
            if(_loc4_ = this.§-"2§[_loc2_] as §@_§)
            {
               if(_loc4_.§50§)
               {
                  if(!_loc4_.§ "7§())
                  {
                     (_loc5_ = new §,!A§()).angle = _loc4_.§`p§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§!!I§().GetPosition().x;
                     _loc5_.y = _loc4_.§!!I§().GetPosition().y;
                     param1.§&w§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>]§.length)
         {
            _loc7_ = this.§>]§[_loc3_];
            _loc6_ = new §-C§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§>!f§,_loc7_.§,i§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§4!r§,_loc7_.motorSpeed,_loc7_.§`!]§,_loc7_.maxTorque);
            param1.§?!w§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §?y§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§-"2§.length)
         {
            if(this.§-"2§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§-"2§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§@_§ = null;
         this.§]!n§ = param1;
         this.§3"!§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-"2§.length)
         {
            _loc3_ = this.§-"2§[_loc2_] as §@_§;
            if(_loc3_ && _loc3_.§]^§())
            {
               _loc3_.sprite.visible = !this.§]!n§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§8C§ = param1;
      }
      
      public function §2!D§() : int
      {
         return this.§09§;
      }
      
      public function §"! §() : int
      {
         return this.§[a§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§!`§.damageScoreMultiplier;
      }
   }
}
