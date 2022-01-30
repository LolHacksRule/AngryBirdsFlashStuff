package §"P§
{
   import § U§.§5Q§;
   import §!"+§.§ !S§;
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!"+§.§,D§;
   import §!"+§.§2N§;
   import §!"+§.§8!r§;
   import §!"+§.§]!G§;
   import §!f§.§=!i§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §"s§.b2JointEdge;
   import §"s§.b2PrismaticJoint;
   import §"s§.b2RevoluteJoint;
   import §%f§.§ n§;
   import §&!;§.Texture;
   import §&=§.§20§;
   import §-![§.§3!i§;
   import §-![§.§5!<§;
   import §-![§.Sprite;
   import §0"1§.§!U§;
   import §0"1§.§#,§;
   import §0"1§.§+!^§;
   import §0"1§.§,M§;
   import §0"1§.§0B§;
   import §2"%§.b2Contact;
   import §6`§.§-!i§;
   import §6`§.§8"&§;
   import §8!e§.§!!E§;
   import §8q§.§]d§;
   import §9G§.§2F§;
   import §9G§.§7!y§;
   import §9G§.§94§;
   import §[K§.b2Vec2;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&"0§ implements §0w§
   {
      
      private static const §5!Z§:Boolean = false;
      
      private static const §7"2§:int = 1000000000;
      
      public static const §7!D§:int = -1;
      
      public static const §&g§:int = -2;
       
      
      protected var §0I§:Vector.<§,Y§>;
      
      protected var §4!H§:Vector.<§9"3§>;
      
      protected var §]!`§:Vector.<§=!i§>;
      
      protected var §>!N§:§ n§;
      
      private var §,9§:int = 1000000000;
      
      public var §5M§:§2F§;
      
      protected var §9"-§:Vector.<§7"$§>;
      
      protected var §9m§:§-![§.Sprite;
      
      protected var §3!C§:§-![§.Sprite;
      
      protected var §<m§:§-![§.Sprite;
      
      protected var §3!1§:§-![§.Sprite;
      
      protected var §!!b§:Vector.<Texture>;
      
      protected var §,>§:Vector.<§0B§>;
      
      protected var §]!8§:int = 1;
      
      protected var §?!2§:Vector.<§,M§>;
      
      protected var §%B§:int = 0;
      
      private var §7#§:int = 0;
      
      private var §+§:int = 0;
      
      private var §'!W§:§#,§;
      
      private var §"!O§:§?!§;
      
      private var § !H§:Boolean = true;
      
      private var §^%§:Boolean = true;
      
      private var §%!m§:§5Q§;
      
      private var §;!d§:Boolean = false;
      
      public function §&"0§(param1:§2F§, param2:§!!E§, param3:§-![§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§0I§ = new Vector.<§,Y§>();
         this.§4!H§ = new Vector.<§9"3§>();
         this.§]!`§ = new Vector.<§=!i§>();
         this.§>!N§ = new § n§();
         this.§9"-§ = new Vector.<§7"$§>();
         this.§!!b§ = new Vector.<Texture>();
         this.§?!2§ = new Vector.<§,M§>();
         this.§'!W§ = new §#,§();
         super();
         this.§5M§ = param1;
         this.§9m§ = param3;
         this.§9m§.§%!<§ = false;
         this.§^%§ = true;
         this.§ !H§ = true;
         this.§3!C§ = new §-![§.Sprite();
         this.§<m§ = new §-![§.Sprite();
         this.§3!1§ = new §-![§.Sprite();
         this.§9m§.addChild(this.§3!C§);
         this.§9m§.addChild(this.§<m§);
         if(param2.§if§)
         {
            _loc5_ = (this.§5M§.§&"§.§'b§ + this.§5M§.§&"§.§&![§) / 2;
            _loc6_ = 0 + §94§.§"!K§;
            this.§5!t§(param4,_loc5_,_loc6_,0,§&"0§.§7!D§);
         }
         this.§--§(param2);
      }
      
      public function get § ""§() : §-![§.Sprite
      {
         return this.§3!1§;
      }
      
      public function get §"1§() : §-![§.Sprite
      {
         return this.§9m§;
      }
      
      public function get activeObject() : §^!x§
      {
         return this.§"!O§;
      }
      
      public function get objectCount() : int
      {
         return this.§0I§.length;
      }
      
      public function set §9!p§(param1:§5Q§) : void
      {
         if(param1 != this.§%!m§)
         {
            this.§%!m§ = param1;
            if(this.§;!d§ && this.§%!m§)
            {
               this.§%!m§.levelStarted();
            }
         }
      }
      
      public function §`!"§() : void
      {
         if(!this.§;!d§)
         {
            this.§;!d§ = true;
            if(this.§%!m§)
            {
               this.§%!m§.levelStarted();
            }
         }
      }
      
      public function §2!f§(param1:String) : §!o§
      {
         return this.§5M§.levelItemManager.§8!f§(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§"!O§)
         {
            _loc3_ = this.§"!O§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function §--§(param1:§!!E§) : void
      {
         var _loc3_:§#,§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§!o§ = null;
         var _loc6_:§+!^§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§5M§.levelItemManager.§8!f§(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§-T§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§%4§();
         this.§"!u§(true);
         this.§,>§ = new Vector.<§0B§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§0]§)
         {
            _loc6_ = param1.§5§(_loc2_);
            this.§!]§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§0I§.length > 0)
         {
            this.§&!9§(0,false,true);
         }
         while(this.§]!`§.length > 0)
         {
            this.§;L§(0);
         }
         this.§0I§ = null;
         this.§4!H§ = null;
         this.§]!`§ = null;
         this.§>!N§ = null;
         this.§?!2§ = null;
         if(this.§9m§)
         {
            this.§9m§.dispose();
            this.§9m§ = null;
         }
         this.§3!C§ = null;
         this.§<m§ = null;
         if(this.§3!1§)
         {
            this.§3!1§.dispose();
            this.§3!1§ = null;
         }
         while(this.§!!b§.length > 0)
         {
            _loc1_ = this.§!!b§.pop();
            this.§5M§.§ X§.§1!H§(_loc1_);
         }
      }
      
      private function §"!u§(param1:Boolean) : void
      {
         this.§3!C§.visible = param1;
      }
      
      private function §%4§() : void
      {
         var _loc3_:§,Y§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§^!x§ = null;
         var _loc6_:§ !S§ = null;
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
         var _loc21_:§3!i§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§^!x§> = new Vector.<§^!x§>();
         for each(_loc3_ in this.§0I§)
         {
            if((_loc5_ = _loc3_ as §^!x§) && _loc5_.§6!V§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.§8!I§(),_loc6_.§]!$§()) / §2F§.§6+§ * Math.sqrt(2);
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
            _loc8_ = this.§5M§.camera.§@!u§ / §2F§.§6+§;
            _loc9_ = this.§5M§.camera.§class§ / §2F§.§6+§;
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
            _loc18_ = this.§5"+§();
            this.§'!K§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§4!K§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§5M§.§ X§.§6"8§(_loc17_);
            this.§!!b§.push(_loc20_);
            (_loc21_ = new §3!i§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§3!C§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §4!K§(param1:Vector.<§^!x§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§^!x§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§ !S§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §]!G§)
            {
               this.§9E§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"$§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §8!r§)
            {
               if((_loc12_ as §8!r§).§-!n§.length == 4)
               {
                  this.§9E§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"$§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §8!r§).§-!n§.length == 3)
               {
                  this.§0_§(_loc12_ as §8!r§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<"$§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §2N§)
            {
               this.§5"-§(_loc12_ as §2N§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §9E§(param1:§ !S§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.§8!I§() / §2F§.§6+§ * param9;
         var _loc13_:Number = param1.§]!$§() / §2F§.§6+§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §0_§(param1:§8!r§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.§-!n§.length)
         {
            _loc14_ = param1.§-!n§[_loc13_];
            _loc12_.push(_loc14_.x / §2F§.§6+§ * param8,_loc14_.y / §2F§.§6+§ * param8);
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
      
      protected function §5"-§(param1:§2N§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §2F§.§6+§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §-x§() : String
      {
         return this.§5M§.background.§^v§();
      }
      
      protected function §5"+§() : Number
      {
         return 1;
      }
      
      private function §'!K§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§-x§();
         var _loc5_:§8"&§;
         if(_loc5_ = this.§5M§.§`"%§.§&l§(_loc4_))
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
      
      protected function addObjectBird(param1:§#,§, param2:§-![§.Sprite, param3:§-!i§, param4:§!o§, param5:Number = 1.0, param6:Boolean = true) : §?!§
      {
         var _loc11_:§?!§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §52§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new § "%§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §,!7§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §1!&§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §@!o§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §^e§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §7"0§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §2!§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §[!U§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §'!2§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §?!§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§%B§ > 0;
      }
      
      protected function § G§(param1:§#,§, param2:§-![§.Sprite, param3:§-!i§, param4:§!o§, param5:Number = 1.0) : §=!E§
      {
         return new §=!E§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param5);
      }
      
      public function §5!t§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §,Y§
      {
         this.§'!W§.type = param1;
         this.§'!W§.x = param2;
         this.§'!W§.y = param3;
         this.§'!W§.angle = param4;
         this.§'!W§.§%V§ = 0;
         this.§'!W§.§5!W§ = 0;
         return this.§-T§(this.§'!W§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §@!J§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §,Y§
      {
         this.§'!W§.type = param1;
         this.§'!W§.x = param2;
         this.§'!W§.y = param3;
         this.§'!W§.angle = param4;
         this.§'!W§.§%V§ = param6;
         this.§'!W§.§5!W§ = param7;
         return this.§-T§(this.§'!W§,param5,false,false,false,param8,param9);
      }
      
      protected function §-T§(param1:§#,§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §,Y§
      {
         var _loc8_:§-![§.Sprite = new §-![§.Sprite();
         var _loc9_:§,Y§;
         if((_loc9_ = this.§,P§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §^!x§ && (_loc9_ as §^!x§).§6!V§())
         {
            _loc8_.visible = !this.§ !H§;
         }
         if(_loc9_ is §?!§ && !(_loc9_ is §'!2§))
         {
            ++this.§%B§;
         }
         if(!param7)
         {
            this.§<m§.§"p§(_loc8_);
         }
         else
         {
            this.§3!1§.§"p§(_loc8_);
         }
         if(param3)
         {
            this.§5M§.§[P§(_loc9_);
         }
         if(param4 && _loc9_ is §?!§)
         {
            this.§"!O§ = §?!§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §,P§(param1:§#,§, param2:int, param3:§-![§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §,Y§
      {
         var _loc7_:§^!x§ = null;
         if(param2 == §&g§)
         {
            param2 = this.§,9§;
            ++this.§,9§;
         }
         else
         {
            if(param2 >= §7"2§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §7"2§);
            }
            if(this.§"@§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§,Y§;
         if((_loc6_ = this.§'h§(param1,param3,param4,param5)) is §?!§)
         {
            ++this.§+§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §^!x§;
            if(_loc6_ is §=!i§)
            {
               this.§]!`§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§2"'§(param2);
                  this.§>!N§[param1.instanceName] = _loc6_;
               }
               this.§0I§.push(_loc6_);
               if(_loc6_ is §9"3§)
               {
                  this.§4!H§.push(_loc6_);
               }
            }
            if(this.§%!m§)
            {
               this.§%!m§.§^[§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §;f§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function §@"6§(param1:§#,§, param2:§-![§.Sprite, param3:§-!i§, param4:§!o§, param5:int, param6:Number = 1.0) : §,Y§
      {
         return new §^L§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param6,param5);
      }
      
      protected function §9!h§(param1:§#,§, param2:§-![§.Sprite, param3:§-!i§, param4:§!o§, param5:int, param6:Number = 1.0) : §,Y§
      {
         return new §@+§(param2,param3,this.§5M§.§ "$§.§>%§,param4,param1,param6,param5);
      }
      
      protected function §'h§(param1:§#,§, param2:§-![§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §,Y§
      {
         var _loc5_:§!o§;
         if(!(_loc5_ = this.§5M§.levelItemManager.§8!f§(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§;f§();
         }
         var _loc7_:§-!i§ = this.§5M§.§<a§.§#!r§(_loc6_);
         var _loc8_:§,Y§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §!o§.§6!$§)
         {
            _loc8_ = this.§ G§(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §!o§.§14§ || _loc5_.itemType == §!o§.§4!<§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.§@"6§(param1,param2,_loc7_,_loc5_,§7"$§.§!"1§,param4);
            }
            else if(_loc5_.itemName == §1!&§.§?!K§)
            {
               _loc8_ = this.§9!h§(param1,param2,_loc7_,_loc5_,§7"$§.§-%§,param4);
            }
            else
            {
               _loc8_ = new §[z§(param2,_loc7_,this.§5M§.§ "$§.§>%§,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §^!x§(param2,_loc7_,this.§5M§.§ "$§.§>%§,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§5M§.addScore(param1,§7!y§.§%p§,param3,param4,param5,param6);
      }
      
      public function §8" §(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§5M§.particles.§8" §(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §`H§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§5M§.particles.§`H§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function § !u§(param1:§^!x§) : void
      {
         var _loc4_:§0B§ = null;
         var _loc5_:§0B§ = null;
         var _loc6_:§,Y§ = null;
         var _loc7_:§,Y§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§,>§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§,>§[_loc3_];
            if(this.§,>§[_loc3_].id1 == _loc2_ || this.§,>§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§5v§)
               {
                  _loc6_ = _loc4_.§5v§.§,f§().GetUserData() as §,Y§;
                  _loc7_ = _loc4_.§5v§.§ e§().GetUserData() as §,Y§;
                  if(_loc6_)
                  {
                     _loc6_.§5!7§(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.§5!7§(_loc6_);
                  }
               }
               _loc5_ = this.§,>§.pop();
               if(_loc3_ < this.§,>§.length)
               {
                  this.§,>§[_loc3_] = _loc5_;
               }
               this.§?"#§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §!]§(param1:§+!^§) : void
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§0B§ = §0B§.§!]§(param1);
         this.§,>§.push(_loc4_);
         var _loc5_:§,Y§ = this.§"@§(_loc2_);
         var _loc6_:§,Y§ = this.§"@§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §+!^§.§6!w§)
            {
               _loc4_.§5v§ = this.§5M§.§ "$§.§>%§.§^"%§(_loc4_.§`$§(_loc5_,_loc6_));
            }
            else
            {
               this.§?!2§.push(new §,M§(_loc2_,_loc3_,_loc4_.§'!p§,param1.§+!u§));
            }
            _loc5_.§'=§(_loc6_);
            _loc6_.§'=§(_loc5_);
         }
      }
      
      protected function §?"#§(param1:§0B§) : void
      {
         if(param1.§5v§)
         {
            this.§5M§.§ "$§.§>%§.§+Y§(param1.§5v§);
         }
         if(param1.§^!]§)
         {
            if(this.§<m§.contains(param1.§^!]§))
            {
               this.§<m§.removeChild(param1.§^!]§,true);
            }
         }
      }
      
      public function §=!Y§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§9"-§.push(§7"$§.§0",§(param1,param2,param3));
         this.§=T§(param1);
      }
      
      protected function §=T§(param1:int) : void
      {
         §]d§.§^!J§("TntExplosions","ChannelExplosions");
      }
      
      public function §%H§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§9"-§.push(§7"$§.§ !x§(param1,param2,param3,param4,param5,param6));
         §]d§.§^!J§("TntExplosions","ChannelExplosions");
      }
      
      public function § "'§(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§5M§.§ "$§.§>%§.§2!c§());
         return param4;
      }
      
      public function get §;2§() : Number
      {
         return this.§5M§.§;2§;
      }
      
      public function §@d§(param1:Number, param2:Number) : int
      {
         var _loc4_:§^!x§ = null;
         var _loc3_:int = this.§0I§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0I§[_loc3_] as §^!x§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §^!x§
      {
         var _loc4_:§^!x§ = null;
         var _loc3_:int = this.§0I§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§0I§[_loc3_] as §^!x§)
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
      
      public function getObject(param1:int) : §,Y§
      {
         return this.§0I§[param1];
      }
      
      public function §"@§(param1:int) : §^!x§
      {
         var _loc2_:§,Y§ = null;
         var _loc3_:§^!x§ = null;
         for each(_loc2_ in this.§0I§)
         {
            _loc3_ = _loc2_ as §^!x§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §"!+§(param1:String) : §^!x§
      {
         return this.§>!N§[param1];
      }
      
      public function §&C§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§0I§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§0I§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§2""§(param1);
         _loc4_ = this.§]!`§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§]!`§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function §4!x§(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function §-!w§(param1:Number, param2:Number, param3:§^!x§) : §20§
      {
         var _loc4_:Number = param3.§7J§().GetPosition().x - param1;
         var _loc5_:Number = param3.§7J§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§20§;
         (_loc7_ = new §20§()).§9d§ = _loc6_;
         _loc7_.§`Z§ = new Point(param3.§7J§().GetPosition().x,param3.§7J§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §<!G§(param1:§^!x§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §]!J§(param1:§^!x§) : Boolean
      {
         return false;
      }
      
      protected function §;"6§() : void
      {
         var _loc1_:§7"$§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§,Y§ = null;
         var _loc7_:§^!x§ = null;
         var _loc8_:§20§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§^%§)
         {
            return;
         }
         while(this.§9"-§.length > 0)
         {
            _loc1_ = this.§9"-§.shift();
            _loc2_ = _loc1_.§=!T§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.§+<§(_loc1_.push);
            for each(_loc6_ in this.§0I§)
            {
               if((_loc7_ = _loc6_ as §^!x§) && !this.§]!J§(_loc7_))
               {
                  if((_loc8_ = this.§-!w§(_loc3_,_loc4_,_loc7_)).§9d§ <= _loc1_.§=!T§)
                  {
                     _loc9_ = _loc1_.push * this.§4!x§(_loc8_.§9d§,_loc1_.§=!T§);
                     if(_loc8_.§9d§ > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§`Z§.x - _loc3_,_loc8_.§`Z§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§7J§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§`Z§.x,_loc8_.§`Z§.y));
                     }
                  }
                  if(_loc8_.§9d§ <= _loc1_.§?_§)
                  {
                     _loc13_ = _loc5_ * this.§4!x§(_loc8_.§9d§,_loc1_.§?_§);
                     this.§<!G§(_loc7_,_loc13_);
                  }
               }
            }
            this.§@!k§(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function §@!k§(param1:§7"$§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§5M§.particles.§8" §(this.§^!c§(param1.type),§>!s§.§>M§,§@"§.§2"+§,param2,param3,600,"",§@"§.§>H§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§5M§.particles.§8" §(§@"§.§3_§,§>!s§.§>M§,§@"§.§7![§,param2,param3,_loc7_,"",§@"§.§>H§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function §^!c§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §@"§.§'V§;
      }
      
      public function §9$§(param1:Number) : void
      {
         var _loc4_:§^!x§ = null;
         var _loc2_:§,Y§ = null;
         var _loc3_:int = this.§0I§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§0I§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§&!9§(_loc3_,true);
            }
            else
            {
               this.§2!s§(_loc2_,param1);
               _loc4_ = _loc2_ as §^!x§;
               if(this.objectIsOutOfBounds(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§5E§(§'!7§.§^!Q§);
                  }
                  this.§&!9§(_loc3_,!(_loc4_ is §?!§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§5E§(§'!7§.§^!Q§);
                  this.§&!9§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§ !P§(param1);
         this.§;"6§();
         if(this.§%!m§)
         {
            this.§%!m§.update(param1);
         }
      }
      
      protected function §2!s§(param1:§,Y§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §2""§(param1:Number) : void
      {
         var _loc2_:§=!i§ = null;
         var _loc3_:int = this.§]!`§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§]!`§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§;L§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function § !P§(param1:Number) : void
      {
         this.§&!s§(param1);
         this.§`!H§();
      }
      
      protected function §&!s§(param1:Number) : void
      {
         var _loc3_:§,M§ = null;
         var _loc4_:§,Y§ = null;
         var _loc2_:int = this.§?!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?!2§[_loc2_];
            if(_loc3_.§["3§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§6!4§)
                  {
                     _loc4_ = this.§"@§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§"@§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§?!2§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §5" §(param1:§0B§) : void
      {
         var _loc2_:§^!x§ = param1.debug_object_1;
         var _loc3_:§^!x§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§"@§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§"@§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§^!]§ == null)
         {
            param1.§^!]§ = new §5!<§(4,4,4294901760);
            this.§<m§.addChild(param1.§^!]§);
         }
         param1.§^!]§.x = _loc4_;
         param1.§^!]§.y = _loc5_;
         param1.§^!]§.width = _loc8_;
         param1.§^!]§.rotation = _loc9_;
      }
      
      protected function §-!§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §`!H§() : void
      {
         var _loc1_:§0B§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§,>§)
         {
            if(§5!Z§)
            {
               this.§5" §(_loc1_);
            }
            if(_loc1_.§<!H§ && _loc1_.§0c§ && _loc1_.§4^§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §+!^§.§>5§)
               {
                  _loc4_ = (_loc1_.§5v§ as b2PrismaticJoint).§ "§();
                  _loc5_ = (_loc1_.§5v§ as b2PrismaticJoint).§5k§();
                  _loc6_ = this.§-!§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§5v§ as b2PrismaticJoint).§case§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §+!^§.§"!>§)
               {
                  _loc7_ = (_loc1_.§5v§ as b2RevoluteJoint).§^8§();
                  if((_loc5_ = (_loc1_.§5v§ as b2RevoluteJoint).§5k§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§5v§ as b2RevoluteJoint).§case§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §3N§() : void
      {
         var _loc1_:§0B§ = null;
         while(this.§,>§.length > 0)
         {
            _loc1_ = this.§,>§.pop();
            this.§?"#§(_loc1_);
         }
      }
      
      public function objectIsOutOfBounds(param1:§,Y§) : Boolean
      {
         this.§"!4§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §,D§.§?4§) && param1.§7J§() && this.§`"+§(param1.§7J§().GetPosition().x,param1.§7J§().GetPosition().y))
         {
            if(param1 is §^!x§)
            {
               §^!x§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §"!4§(param1:§,Y§) : void
      {
      }
      
      public function §+"4§(param1:Number, param2:Number) : Boolean
      {
         return this.§5M§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §`"+§(param1:Number, param2:Number) : Boolean
      {
         return this.§5M§.§&"§.§?Q§(param1,param2);
      }
      
      public function §;L§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§=!i§ = this.§]!`§[param1];
         this.§;E§(_loc2_.sprite);
         this.§]!`§[param1] = null;
         this.§]!`§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function §9!d§(param1:§^!x§) : Boolean
      {
         return true;
      }
      
      protected function §?5§(param1:§^!x§) : Point
      {
         var _loc2_:Number = param1.§7J§().GetPosition().x;
         var _loc3_:Number = param1.§7J§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §&!9§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§^!x§ = null;
         var _loc6_:§,M§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§,Y§;
         if((_loc4_ = this.§0I§[param1]) is §=!E§)
         {
            ++this.§7#§;
         }
         else if(_loc4_ is §?!§)
         {
            --this.§%B§;
         }
         if(_loc4_ == this.§"!O§)
         {
            this.§"!O§ = null;
         }
         if(_loc4_ is §^!x§)
         {
            _loc5_ = _loc4_ as §^!x§;
            if(param2)
            {
               _loc7_ = this.§?5§(_loc5_);
               _loc8_ = §@"§.§'9§(_loc5_.itemName);
               _loc9_ = this.§9!d§(_loc5_);
               this.§5M§.addScore(_loc5_.levelItem.score,§7!y§.§?! §,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§ !u§(_loc5_);
            for each(_loc6_ in this.§?!2§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§["3§ = true;
               }
            }
            delete this.§>!N§[_loc5_.§7"%§.instanceName];
         }
         this.§;E§(_loc4_.sprite);
         this.§0I§[param1] = null;
         this.§0I§.splice(param1,1);
         if(_loc4_ is §9"3§)
         {
            if((_loc10_ = this.§4!H§.indexOf(_loc4_)) >= 0)
            {
               this.§4!H§.splice(_loc10_,1);
            }
         }
         if(this.§%!m§)
         {
            this.§%!m§.§3!^§(_loc4_);
         }
         this.§3!^§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §3!^§(param1:§,Y§) : void
      {
         var _loc2_:§^!x§ = null;
         var _loc3_:§!U§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§^!x§ = null;
         if(param1 is §^!x§)
         {
            _loc2_ = param1 as §^!x§;
            _loc3_ = _loc2_.§7"%§ as §!U§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§7Z§.§1!f§)
               {
                  _loc5_ = _loc3_.§7Z§.§1!f§[_loc4_];
                  _loc6_ = this.§"!+§(_loc4_);
                  this.§-I§(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function §-I§(param1:§^!x§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§[!j§(param2,param3,this);
         }
      }
      
      private function §;E§(param1:§-![§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§,Y§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§&!9§(this.§0I§.indexOf(param1),param2);
         }
      }
      
      public function §@e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5M§.§2S§();
         }
      }
      
      public function §+!W§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§5M§.§+!W§(param1,param2,param3,param4);
      }
      
      public function §`!Z§(param1:Number, param2:Number) : void
      {
         this.§9m§.x = -param1;
         this.§9m§.y = -param2;
         this.§3!1§.x = -param1;
         this.§3!1§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§,Y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0I§.length)
         {
            _loc2_ = this.§0I§[_loc1_];
            if(_loc2_ && _loc2_ is §=!E§ && (_loc2_ as §=!E§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §;,§(param1:Boolean = false) : int
      {
         var _loc4_:§=!E§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§0I§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§0I§[_loc3_] as §=!E§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§ !k§ && !_loc4_.§1!A§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §?F§() : int
      {
         var _loc2_:§^!x§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0I§)
         {
            if(_loc2_ is §[z§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §;k§() : int
      {
         var _loc2_:§^!x§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§0I§)
         {
            if(_loc2_ && _loc2_.§6!V§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§=!E§ = null;
         var _loc2_:int = this.§0I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0I§[_loc2_] as §=!E§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §"!F§() : Boolean
      {
         var _loc2_:§?!§ = null;
         var _loc1_:int = this.§0I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0I§[_loc1_] as §?!§;
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
         var _loc2_:§^!x§ = null;
         var _loc1_:int = this.§0I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0I§[_loc1_] as §^!x§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§+F§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§%!;§())
               {
                  return false;
               }
               if(_loc2_ is §?!§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §&!'§(param1:Boolean = false) : §=!E§
      {
         var _loc7_:§=!E§ = null;
         var _loc2_:int = this.§0I§.length;
         var _loc3_:int = this.§;,§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§0I§[_loc6_] as §=!E§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§ !k§ && !_loc7_.§1!A§)
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
      
      public function §5B§() : int
      {
         var _loc3_:§^!x§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§0I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0I§[_loc2_] as §^!x§;
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
         return int(_loc1_ + this.§5M§.slingshot.§5B§());
      }
      
      protected function §-?§(param1:§,Y§, param2:§,Y§) : Boolean
      {
         if(param1 is §^!x§ && param2 is §^!x§ && !(param1 as §^!x§).§&!^§() && !(param2 as §^!x§).§&!^§())
         {
            return false;
         }
         return true;
      }
      
      public function §7!#§() : void
      {
         this.§%B§ = 0;
      }
      
      protected function §6!,§(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function §+<§(param1:Number) : void
      {
      }
      
      protected function §%&§(param1:§^!x§, param2:§^!x§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §?!§)
         {
            return 1;
         }
         if(param1 is §?!§)
         {
            return Number(param1.§,!5§(param2.§'R§()));
         }
         return 1;
      }
      
      protected function §"!L§(param1:§^!x§, param2:§^!x§) : Number
      {
         if(param2 is §?!§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §]3§(param1:§^!x§, param2:§^!x§) : Number
      {
         var _loc4_:Number = this.§"!L§(param1,param2);
         var _loc5_:Number = this.§"!L§(param2,param1);
         var _loc6_:Number = param1.§7J§().GetMass();
         var _loc7_:Number = param2.§7J§().GetMass();
         var _loc8_:b2Vec2 = param1.§5"#§();
         var _loc9_:b2Vec2 = param2.§5"#§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function § "&§(param1:§,Y§, param2:§,Y§, param3:b2Contact) : Boolean
      {
         var _loc13_:§0B§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.§^%§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§^!x§ = param1 as §^!x§;
         var _loc5_:§^!x§ = param2 as §^!x§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§?!N§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§?!N§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.§-?§(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §?!§ && _loc5_ is §?!§)
         {
            return true;
         }
         var _loc6_:Number = this.§]3§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.§6!,§(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.§%&§(_loc4_,_loc5_);
         var _loc10_:Number = this.§%&§(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.§,>§)
         {
            if(_loc13_.§2!`§ && _loc6_ >= _loc13_.§>!A§)
            {
               _loc14_ = _loc4_.§7J§().GetJointList();
               _loc15_ = _loc5_.§7J§().GetJointList();
               if(_loc14_ != null && _loc14_.§!!q§ == _loc13_.§5v§ || _loc15_ != null && _loc15_.§!!q§ == _loc13_.§5v§)
               {
                  this.§?"#§(_loc13_);
               }
            }
         }
         if(_loc11_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc12_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §?!§)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.§ "5§(_loc5_.§'R§());
               this.§9!H§(_loc4_ as §?!§,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is §?!§)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.§ "5§(_loc4_.§'R§());
               this.§9!H§(_loc5_ as §?!§,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function §2!_§(param1:§,Y§, param2:§,Y§) : void
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
      
      protected function §9!H§(param1:§?!§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§5"#§();
         param1.§]!d§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §+!Q§() : void
      {
         var _loc2_:§^!x§ = null;
         var _loc1_:int = this.§0I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0I§[_loc1_] as §^!x§;
            if(_loc2_ != null && _loc2_ is §=!E§)
            {
               this.§&!9§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §^U§() : void
      {
         var _loc2_:§^!x§ = null;
         var _loc1_:int = this.§0I§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0I§[_loc1_] as §^!x§;
            if(_loc2_ != null && _loc2_.§7!?§())
            {
               this.§&!9§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §9A§() : int
      {
         return this.§0I§.length;
      }
      
      public function §7"§(param1:§!!E§) : void
      {
         var _loc4_:§^!x§ = null;
         var _loc5_:§#,§ = null;
         var _loc6_:§+!^§ = null;
         var _loc7_:§0B§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0I§.length)
         {
            if(_loc4_ = this.§0I§[_loc2_] as §^!x§)
            {
               if(_loc4_.§@a§)
               {
                  if(!_loc4_.§+F§())
                  {
                     (_loc5_ = new §#,§()).angle = _loc4_.§<"$§() / (Math.PI / 180);
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§7J§().GetPosition().x;
                     _loc5_.y = _loc4_.§7J§().GetPosition().y;
                     param1.§5!t§(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,>§.length)
         {
            _loc7_ = this.§,>§[_loc3_];
            _loc6_ = new §+!^§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§-g§,_loc7_.§0c§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§4^§,_loc7_.motorSpeed,_loc7_.§<!H§,_loc7_.maxTorque);
            param1.§1!"§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §7!^§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§0I§.length)
         {
            if(this.§0I§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§0I§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§^!x§ = null;
         this.§ !H§ = param1;
         this.§"!u§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0I§.length)
         {
            _loc3_ = this.§0I§[_loc2_] as §^!x§;
            if(_loc3_ && _loc3_.§6!V§())
            {
               _loc3_.sprite.visible = !this.§ !H§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§^%§ = param1;
      }
      
      public function §#!3§() : int
      {
         return this.§+§;
      }
      
      public function §1R§() : int
      {
         return this.§7#§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§5M§.damageScoreMultiplier;
      }
   }
}
