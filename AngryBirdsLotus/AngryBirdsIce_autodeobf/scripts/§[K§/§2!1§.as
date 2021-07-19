package §[K§
{
   import §!Y§.§[o§;
   import §3"§.§8+§;
   import §3"§.§?!&§;
   import §9_§.§+>§;
   import §;8§.§3f§;
   import §[x§.§%!>§;
   import §[x§.§2^§;
   
   public class §2!1§
   {
      
      public static const §[! §:Number = 1.25;
      
      public static const §6Z§:Number = 0.15;
      
      public static const §%!+§:Number = §[o§.static * §2^§.§,]§;
      
      public static const §2s§:Number = §[o§.§for§ * §2^§.§,]§;
      
      public static const each:Number = 0.1;
      
      public static const §<V§:int = 1500;
      
      public static const §]u§:int = 10;
      
      public static const § `§:int = 15;
      
      public static const § !;§:int = 300;
      
      public static const § m§:int = 1000;
      
      public static const §,J§:int = 10000;
      
      public static const §%5§:int = §,J§ / 50;
      
      public static const §07§:int = 0;
      
      public static const §;!0§:int = 1;
      
      public static const §`B§:int = 2;
      
      public static const §-9§:int = 3;
      
      public static const §^4§:int = 4;
      
      public static const §5X§:int = 5;
      
      public static const §+I§:String = "CASTLE";
      
      public static const §=B§:String = "SLINGSHOT";
      
      protected static var §true§:Number;
      
      public static var § !B§:Number;
      
      public static var §false§:Number;
      
      public static const §'!6§:Number = 2000;
       
      
      private var § !2§:Number = 1.0;
      
      private var §#R§:Number = 0.2;
      
      protected var §7l§:Number;
      
      protected var §3!1§:Number;
      
      protected var §>z§:Number;
      
      public var §1! §:§2^§;
      
      public var §0Y§:Number;
      
      public var §&!C§:Number;
      
      private var §?z§:§%!H§;
      
      private var § w§:§%!H§;
      
      public var §6v§:Number;
      
      public var §^_§:Number;
      
      public var mDragging:Boolean = false;
      
      public var §]!?§:Number;
      
      public var §;o§:Number;
      
      public var §7^§:Number;
      
      public var §^@§:Number;
      
      private var §^j§:Number;
      
      private var §^!1§:§5!;§;
      
      private var §+!!§:§5!;§;
      
      protected var §;b§:Number = 0;
      
      protected var §+!=§:Number = 0;
      
      protected var §6F§:Number = 0;
      
      public var mCurrentCameraSliderLocation:int = 0;
      
      public var mCurrentAction:int = 0;
      
      public var §`,§:Number = 0;
      
      public var §9!,§:Boolean = true;
      
      public var §#E§:Number = 0;
      
      public var §`%§:Number = 0;
      
      public var §3y§:Number = 0;
      
      public var §8!9§:Number = 0;
      
      public var §;c§:Number = 0;
      
      public var §!!4§:Number = 0;
      
      public var §-O§:Number = 0;
      
      public var §^p§:Number = 0;
      
      public var §^G§:Number = 0;
      
      private var §,'§:§5!;§;
      
      public var §&!9§:Number = 0;
      
      private var §5n§:Number = 0;
      
      private var §9`§:Number = 0;
      
      private var §#!'§:§?!&§ = null;
      
      private var §%!&§:§?!&§ = null;
      
      public function §2!1§(param1:§2^§, param2:§8+§, param3:Number = 1.0)
      {
         this.§,'§ = new §5!;§(0,0,1,false);
         super();
         this.§3!1§ = 0;
         this.§>z§ = 0;
         this.§1! § = param1;
         §2!1§.§true§ = 1;
         this.§ !2§ = Math.max(1,Math.min(2,param3));
         this.§7l§ = this.§ !2§;
         this.§^D§(param2);
         if(this.§?z§ && this.§ w§)
         {
            this.§#!5§();
            this.§;b§ = this.§?z§.x - this.§ w§.x;
            this.§+!=§ = this.§?z§.y - this.§ w§.y;
            this.§6F§ = this.§?z§.scale - this.§ w§.scale;
            this.§3!1§ = this.§?z§.x;
            this.§>z§ = this.§?z§.y;
            §true§ = this.§?z§.scale * this.§7l§;
         }
         this.mCurrentCameraSliderLocation = §,J§;
         this.§9!,§ = true;
         this.§`,§ = §,J§ / 500;
      }
      
      private static function §2o§() : Number
      {
         var _loc1_:Number = §[o§.§<T§ / §[o§.§>k§;
         if(_loc1_ > 1)
         {
            return 1 / Math.pow(_loc1_,0.7);
         }
         return 1;
      }
      
      public static function get §;l§() : Number
      {
         return §true§ * §2o§();
      }
      
      public function get §=[§() : Number
      {
         return this.§7l§;
      }
      
      public function set §=[§(param1:Number) : void
      {
         this.§7l§ = param1;
      }
      
      public function get §['§() : Number
      {
         return this.§^j§;
      }
      
      public function §';§() : Number
      {
         return §%!+§ / (this.§;o§ - this.§]!?§);
      }
      
      public function get §9D§() : Number
      {
         return this.§ !2§;
      }
      
      public function get §^Y§() : Number
      {
         return this.§#R§;
      }
      
      public function §&!7§(param1:Number) : void
      {
         this.§7l§ = param1;
         this.§&-§();
         this.§^!3§(this.mCurrentCameraSliderLocation,1);
      }
      
      public function init() : void
      {
         if(this.mCurrentAction == §5X§)
         {
            return;
         }
         this.goToCastleView();
         this.§#E§ = 2000;
         this.§?!2§();
         this.§<M§();
         this.§%W§();
      }
      
      public function initSlowScroll(param1:Number = 1.0) : void
      {
         this.mCurrentCameraSliderLocation = 0;
         this.§3!1§ = this.§ w§.x;
         this.§>z§ = this.§ w§.y;
         this.§9!,§ = false;
         this.§`,§ = §,J§ / 160000 * param1;
         this.§^O§(§5X§);
      }
      
      public function §#!5§() : void
      {
         this.§]!?§ = this.§ w§.x - §%!+§ / this.§ w§.scale / 2;
         this.§;o§ = this.§?z§.x + §%!+§ / this.§?z§.scale / 2;
         this.§7^§ = this.§1! §.§1!6§.§&p§ - 20 * §2^§.§<!?§ * §2^§.§,]§;
         this.§^@§ = this.§1! §.§1!6§.§&p§ + 4;
         var _loc1_:Number = §%!+§ / (this.§;o§ - this.§]!?§);
         this.§^j§ = this.§^@§ - §2s§ * 0.8 / _loc1_;
      }
      
      public function clear() : void
      {
         this.§1! § = null;
      }
      
      public function §^D§(param1:§8+§) : void
      {
         var _loc3_:§?!&§ = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§6k§)
         {
            _loc3_ = param1.§;m§(_loc2_);
            _loc4_ = (_loc4_ = _loc3_.id).toUpperCase();
            if(_loc3_.scale.toString() != "" && _loc3_.scale.toString() != "null" && _loc3_.scale.toString() != "0")
            {
               this.§!!%§(_loc3_);
            }
            _loc5_ = _loc3_.left;
            _loc6_ = _loc3_.right;
            _loc7_ = _loc3_.top;
            _loc8_ = _loc3_.bottom;
            _loc9_ = _loc3_.x;
            _loc10_ = _loc3_.y;
            _loc11_ = §2s§ / (_loc8_ - _loc7_);
            _loc13_ = (_loc12_ = Number(§%!+§ / (_loc6_ - _loc5_))) < _loc11_ ? Number(_loc12_) : Number(_loc11_);
            if(_loc4_ == §=B§)
            {
               this.§ w§ = new §%!H§(_loc9_,_loc10_,_loc13_,true);
               this.§+!!§ = new §5!;§(_loc9_,_loc10_,_loc13_,true);
            }
            else if(_loc4_ == §+I§)
            {
               this.§?z§ = new §%!H§(_loc9_,_loc10_,_loc13_,false);
               this.§^!1§ = new §5!;§(_loc9_,_loc10_,_loc13_,false);
            }
            else
            {
               §3f§.log("WARNING: LevelCamera -> loadCameraInformation() wrong Camera information");
            }
            _loc2_++;
         }
      }
      
      public function §5!3§(param1:§8+§) : void
      {
         var _loc2_:§?!&§ = new §?!&§();
         _loc2_.id = §=B§;
         _loc2_.x = this.§ w§.x;
         _loc2_.y = this.§ w§.y;
         var _loc3_:Number = §%!+§ / this.§ w§.scale / 2;
         var _loc4_:Number = §2s§ / this.§ w§.scale / 2;
         _loc2_.left = this.§ w§.x - _loc3_;
         _loc2_.right = this.§ w§.x + _loc3_;
         _loc2_.top = _loc2_.y - _loc4_;
         _loc2_.bottom = _loc2_.y + _loc4_;
         var _loc5_:§?!&§;
         (_loc5_ = new §?!&§()).id = §+I§;
         _loc5_.x = this.§?z§.x;
         _loc5_.y = this.§?z§.y;
         var _loc6_:Number = §%!+§ / this.§?z§.scale / 2;
         var _loc7_:Number = §2s§ / this.§?z§.scale / 2;
         _loc5_.left = this.§?z§.x - _loc6_;
         _loc5_.right = this.§?z§.x + _loc6_;
         _loc5_.top = _loc5_.y - _loc7_;
         _loc5_.bottom = _loc5_.y + _loc7_;
         param1.§0X§();
         param1.§]^§(_loc2_);
         param1.§]^§(_loc5_);
      }
      
      public function §!!%§(param1:§?!&§) : void
      {
         var _loc2_:Number = param1.scale;
         var _loc3_:Number = param1.x - §[o§.static * 0.5 / _loc2_ * §2^§.§,]§;
         var _loc4_:Number = param1.y - §[o§.§for§ * 0.5 / _loc2_ * §2^§.§,]§;
         var _loc5_:Number = _loc3_ + §[o§.static / _loc2_ * §2^§.§,]§;
         var _loc6_:Number = _loc4_ + §[o§.§for§ / _loc2_ * §2^§.§,]§;
         param1.left = _loc3_;
         param1.top = _loc4_;
         param1.right = _loc5_;
         param1.bottom = _loc6_;
         param1.scale = 0;
      }
      
      protected function §+!8§(param1:§%!H§, param2:Number) : void
      {
         var _loc3_:Number = this.mCurrentCameraSliderLocation;
         _loc3_ += param2 * this.§`,§;
         if(_loc3_ >= §,J§)
         {
            _loc3_ = §,J§;
            this.§^O§(§07§);
         }
         else if(_loc3_ <= 0)
         {
            _loc3_ = 0;
            this.§^O§(§07§);
         }
         this.mCurrentCameraSliderLocation = _loc3_;
      }
      
      private function §!!§(param1:Number) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         _loc2_ += param1 * this.§`,§;
         var _loc4_:Number = -§,J§ * 0.7;
         if(_loc2_ >= §,J§ || _loc2_ < _loc4_)
         {
            if(_loc2_ < _loc4_)
            {
               _loc2_ = _loc4_;
            }
            else
            {
               _loc2_ = §,J§;
            }
            this.§`,§ = -this.§`,§;
         }
         this.mCurrentCameraSliderLocation = _loc2_;
      }
      
      protected function §<!2§(param1:Number) : void
      {
         if(this.mCurrentAction == §5X§)
         {
            this.§!!§(param1);
         }
         else if(this.mCurrentAction == §;!0§)
         {
            this.§+!8§(this.§?z§,param1);
         }
         else if(this.mCurrentAction == §`B§)
         {
            this.§+!8§(this.§ w§,-param1);
         }
         else if(this.mCurrentAction == §-9§)
         {
            this.§9!,§ = true;
         }
         else if(this.mCurrentAction == §^4§)
         {
            this.§[l§(param1);
         }
      }
      
      public function §,e§(param1:Number) : void
      {
         if(this.§#!'§)
         {
            this.§3!1§ = this.§#!'§.x;
            this.§>z§ = this.§#!'§.y;
            §true§ = §%!+§ / (this.§#!'§.right - this.§#!'§.left);
         }
         else
         {
            this.§&-§();
            this.§<!2§(param1);
            this.§=!D§(this.mCurrentCameraSliderLocation,param1);
         }
         this.§?!2§();
         this.§<M§();
         this.§%W§();
      }
      
      private function §4!'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§+!!§.scale + (this.§^!1§.scale - this.§+!!§.scale) * param1;
         var _loc4_:Number = this.§+!!§.x + (this.§^!1§.x - this.§+!!§.x) * param1;
         var _loc5_:Number = this.§+!!§.y + (this.§^!1§.y - this.§+!!§.y) * param1;
         this.§,'§.x -= (this.§,'§.x - _loc4_) * param2;
         this.§,'§.y -= (this.§,'§.y - _loc5_) * param2;
         this.§,'§.scale -= (this.§,'§.scale - _loc3_) * param2;
      }
      
      protected function §^!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;b§ != 0)
         {
            if(!this.§9!,§)
            {
               param2 = 1;
            }
            _loc3_ = param1 / §,J§;
            this.§4!'§(_loc3_,param2);
            this.§3!1§ = this.§,'§.x;
            this.§>z§ = this.§,'§.y;
            §true§ = this.§,'§.scale;
         }
      }
      
      public function §=!D§(param1:Number, param2:Number) : void
      {
         var _loc5_:§+>§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
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
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Boolean = false;
         var _loc3_:Number = param2 / 1000;
         var _loc4_:Number;
         if((_loc4_ = _loc3_ * 3.5) > 1)
         {
            _loc4_ = 1;
         }
         if(this.mCurrentCameraSliderLocation <= 0 || this.mCurrentCameraSliderLocation >= §,J§)
         {
            this.§9!,§ = true;
         }
         if(this.mCurrentAction == §-9§)
         {
            if(!this.§1! §.activeObject)
            {
               this.§^O§(§;!0§);
               this.§^G§ = § m§;
            }
            else
            {
               _loc6_ = (_loc5_ = this.§1! §.activeObject).§>b§().GetPosition().x + (!!_loc5_.§^d§ ? _loc5_.§^d§ * §2^§.§,]§ : 0);
               _loc7_ = _loc5_.§>b§().GetPosition().y + (!!_loc5_.§+p§ ? _loc5_.§+p§ * §2^§.§,]§ : 0);
               if((_loc8_ = _loc5_.§>b§().GetLinearVelocity().x) > 0 && this.§;b§ != 0)
               {
                  param1 += _loc3_ * _loc8_ * 10 / this.§;b§ * §,J§;
               }
               if(param1 >= §,J§)
               {
                  param1 = §,J§;
               }
               this.mCurrentCameraSliderLocation = param1;
               _loc9_ = param1 / §,J§;
               this.§4!'§(_loc9_,_loc4_);
               _loc10_ = this.§,'§.x - §%!+§ * 0.5 / this.§,'§.scale;
               _loc11_ = this.§,'§.y - §2s§ * 0.5 / this.§,'§.scale;
               _loc12_ = this.§,'§.x + §%!+§ * 0.5 / this.§,'§.scale;
               _loc13_ = this.§,'§.y + §2s§ * 0.5 / this.§,'§.scale;
               _loc14_ = 150 * §2^§.§,]§;
               _loc15_ = Math.min(_loc10_,_loc6_ - _loc14_);
               _loc16_ = Math.min(_loc11_,_loc7_ - _loc14_);
               _loc17_ = Math.max(_loc12_,_loc6_ + _loc14_);
               _loc18_ = Math.max(_loc13_,_loc7_ + _loc14_);
               _loc15_ = Math.max(this.§]!?§,_loc15_);
               _loc17_ = Math.min(this.§;o§,_loc17_);
               _loc19_ = Math.abs(§%!+§ / (_loc17_ - _loc15_));
               _loc20_ = Math.abs(§2s§ / (_loc18_ - _loc16_));
               if((_loc21_ = Math.min(_loc19_,_loc20_)) > this.§,'§.scale)
               {
                  _loc21_ = this.§,'§.scale;
               }
               _loc22_ = (_loc17_ + _loc15_) * 0.5;
               _loc23_ = (_loc18_ + _loc16_) * 0.5;
               _loc24_ = false;
               if(_loc22_ + §%!+§ * 0.5 / _loc21_ > this.§;o§)
               {
                  _loc15_ = (_loc17_ = this.§;o§) - §%!+§ / _loc21_;
                  _loc24_ = true;
                  if(_loc15_ < this.§]!?§)
                  {
                     _loc15_ = this.§]!?§;
                  }
               }
               if(_loc22_ - §%!+§ * 0.5 / _loc21_ < this.§]!?§)
               {
                  _loc17_ = (_loc15_ = this.§]!?§) + §%!+§ / _loc21_;
                  _loc24_ = true;
                  if(_loc17_ > this.§;o§)
                  {
                     _loc17_ = this.§;o§;
                  }
               }
               if(_loc24_)
               {
                  _loc22_ = (_loc17_ + _loc15_) * 0.5;
                  _loc21_ = Math.abs(§%!+§ / (_loc17_ - _loc15_));
               }
               if(_loc23_ - §%!+§ * 0.5 / _loc21_ < this.§7^§)
               {
                  _loc23_ = this.§7^§ + §%!+§ * 0.5 / _loc21_;
               }
               this.§3!1§ -= (this.§3!1§ - _loc22_) * _loc4_;
               this.§&!9§ -= (this.§&!9§ - _loc21_) * _loc4_;
               §true§ = this.§&!9§;
               this.§>z§ -= (this.§>z§ - _loc23_) * _loc4_;
               if(_loc6_ >= this.§;o§ || _loc6_ <= this.§]!?§)
               {
                  this.§,'§.scale = §true§;
                  this.§,'§.x = this.§3!1§;
                  this.§,'§.y = this.§>z§;
               }
            }
         }
         else
         {
            this.§^!3§(param1,_loc4_);
         }
      }
      
      public function §3Q§(param1:Number, param2:Number) : void
      {
         this.§5n§ = param1;
         this.§9`§ = param2;
      }
      
      private function §#K§(param1:§5!;§, param2:§%!H§) : Boolean
      {
         var _loc3_:Number = NaN;
         param1.scale = §6Z§ + (param2.scale - §6Z§) * this.§7l§ * §2!1§.§2o§();
         if(§%!+§ / param1.scale > this.§;o§ - this.§]!?§)
         {
            _loc3_ = §%!+§ / (this.§;o§ - this.§]!?§);
            param1.scale = _loc3_;
            return true;
         }
         return false;
      }
      
      private function §[#§(param1:§5!;§, param2:§%!H§) : Boolean
      {
         var _loc3_:Boolean = this.§#K§(param1,param2);
         param1.y = param2.y;
         var _loc4_:Number = param1.y + §2s§ * 0.5 / param1.scale;
         var _loc5_:Number = §2s§ * 0.25 / param1.scale;
         if(_loc4_ > _loc5_)
         {
            param1.y += _loc5_ - _loc4_;
         }
         param1.x = param2.x;
         var _loc6_:Number;
         if((_loc6_ = param1.x - §%!+§ * 0.5 / param1.scale) < this.§]!?§ && param1.§^!$§)
         {
            param1.x += this.§]!?§ - _loc6_;
         }
         var _loc7_:Number;
         if((_loc7_ = param1.x + §%!+§ * 0.5 / param1.scale) > this.§;o§ && !param1.§^!$§)
         {
            param1.x += this.§;o§ - _loc7_;
         }
         return _loc3_;
      }
      
      private function §[Q§(param1:§5!;§, param2:§%!H§) : Number
      {
         return (param1.scale - §6Z§) / (§2!1§.§2o§() * (param2.scale - §6Z§));
      }
      
      protected function §&-§() : void
      {
         this.§[#§(this.§+!!§,this.§ w§);
         var _loc1_:Number = this.§[Q§(this.§+!!§,this.§ w§);
         this.§[#§(this.§^!1§,this.§?z§);
         var _loc2_:Number = this.§[Q§(this.§^!1§,this.§?z§);
         this.§7l§ = Math.min(_loc1_,_loc2_);
      }
      
      public function §?!2§() : void
      {
         var _loc1_:Number = NaN;
         if(this.§1! §.sprite)
         {
            _loc1_ = §[o§.§=!&§() / §[o§.§<T§ - §[o§.§for§ >> 1;
            § !B§ = this.§1! §.sprite.x = §2^§.§!s§ * ((1 - §2!1§.§;l§) / 2);
            §false§ = this.§1! §.sprite.y = _loc1_ + §2^§.§<!?§ * (1 - §2!1§.§;l§) * §%!>§.§&!;§;
         }
      }
      
      public function §%W§() : void
      {
         if(this.§1! §.sprite)
         {
            this.§1! §.sprite.scaleX = §;l§;
            this.§1! §.sprite.scaleY = §;l§;
         }
      }
      
      public function §<M§() : void
      {
         var _loc1_:Number = this.§3!1§ / §2^§.§,]§ + this.§5n§;
         var _loc2_:Number = this.§>z§ / §2^§.§,]§ + this.§9`§;
         this.§6v§ = _loc1_ - §2^§.§!s§ / 2 * §[o§.§<T§ / §[o§.§#!9§;
         this.§^_§ = _loc2_ - §2^§.§<!?§ / 2 + §%!>§.§]"§;
         if(this.§1! §.background)
         {
            this.§1! §.background.§<E§(this.§6v§,this.§^_§);
         }
         if(this.§1! §.objects)
         {
            this.§1! §.objects.§<E§(this.§6v§,this.§^_§);
         }
         if(this.§1! §.§[f§)
         {
            this.§1! §.§[f§.§<E§(this.§6v§,this.§^_§);
         }
         if(this.§1! §.slingshot)
         {
            this.§1! §.slingshot.§<E§(this.§6v§,this.§^_§);
         }
         if(this.§1! §.particles)
         {
            this.§1! §.particles.§<E§(this.§6v§,this.§^_§);
         }
      }
      
      protected function §3!C§() : void
      {
         this.§^O§(§^4§);
      }
      
      public function startDragging(param1:Number, param2:Number) : void
      {
         this.§^G§ = -1;
         this.§3!C§();
         this.§;c§ = this.§-O§ = this.§3y§ = param1;
         this.§!!4§ = this.§^p§ = this.§8!9§ = param2;
         this.§`%§ = 0;
         this.§,'§.x = this.§3!1§;
         this.§,'§.y = this.§>z§;
         this.§,'§.scale = §true§;
         this.§&!9§ = §true§;
         if(Math.abs(this.§^!1§.x - this.§+!!§.x) > 0.001)
         {
            this.mCurrentCameraSliderLocation = (this.§3!1§ - this.§+!!§.x) / (this.§^!1§.x - this.§+!!§.x) * §,J§;
         }
         this.mDragging = true;
      }
      
      public function §[l§(param1:int) : void
      {
         var _loc2_:Number = this.mCurrentCameraSliderLocation;
         this.§`%§ += param1;
         var _loc3_:Number = this.§;c§ - this.§-O§;
         if(this.§;b§ > 0)
         {
            _loc2_ -= _loc3_ * §2^§.§,]§ / §;l§ / this.§;b§ * §,J§;
            this.§9!,§ = false;
            if(_loc2_ < 0)
            {
               _loc2_ -= _loc2_ * 0.3;
               this.§9!,§ = true;
            }
            if(_loc2_ > §,J§)
            {
               _loc2_ += (§,J§ - _loc2_) * 0.3;
               this.§9!,§ = true;
            }
            this.mCurrentCameraSliderLocation = _loc2_;
         }
         this.§-O§ = this.§;c§;
      }
      
      protected function §[T§() : Boolean
      {
         return this.mCurrentAction == §^4§;
      }
      
      public function dragToNewPoint(param1:Number, param2:Number) : void
      {
         if(this.mDragging)
         {
            this.§;c§ = param1;
            this.§!!4§ = param2;
         }
      }
      
      public function stopDragging(param1:Number = -1, param2:Number = -1) : void
      {
         var _loc3_:Number = NaN;
         if(this.mCurrentAction == §^4§)
         {
            this.§^O§(§07§);
            if(param1 > 0)
            {
               this.§;c§ = param1;
            }
            _loc3_ = Math.abs(this.§;c§ - this.§3y§);
            if(this.§`%§ < §<V§ && _loc3_ >= §]u§ && _loc3_ >= § `§ * this.§`%§ / 1000)
            {
               if(this.§;c§ < this.§3y§)
               {
                  this.§^O§(§;!0§);
               }
               else
               {
                  this.§^O§(§`B§);
               }
               this.§`,§ = _loc3_ / this.§`%§ * 10;
               this.§9!,§ = false;
               if(this.mCurrentCameraSliderLocation < 0)
               {
                  this.§9!,§ = true;
               }
               if(this.mCurrentCameraSliderLocation > §,J§)
               {
                  this.§9!,§ = true;
               }
            }
            else if(this.§`%§ < § !;§)
            {
               this.§6!0§();
               this.§`,§ = §,J§ / (§,J§ / 500);
               this.§9!,§ = true;
            }
            else
            {
               this.§[l§(0);
               this.§&v§(0);
               this.§`,§ = §,J§ / (§,J§ / 500);
               this.§9!,§ = true;
            }
         }
         this.mDragging = false;
      }
      
      public function §6!0§() : void
      {
         if(this.mCurrentAction == §;!0§)
         {
            this.§^O§(§`B§);
         }
         else if(this.mCurrentAction == §`B§)
         {
            this.§^O§(§;!0§);
         }
         else if(this.mCurrentCameraSliderLocation >= §,J§ / 2)
         {
            this.§^O§(§`B§);
         }
         else if(this.mCurrentCameraSliderLocation <= §,J§ / 2)
         {
            this.§^O§(§;!0§);
         }
      }
      
      public function §&v§(param1:int) : void
      {
         this.§^G§ = param1;
         if(this.mCurrentCameraSliderLocation < §,J§ / 2)
         {
            this.§^O§(§`B§);
         }
         else
         {
            this.§^O§(§;!0§);
         }
      }
      
      public function goToBirdView() : void
      {
         this.§^O§(§`B§);
      }
      
      public function goToCastleView() : void
      {
         this.§^O§(§;!0§);
      }
      
      public function §^O§(param1:int) : void
      {
         this.§,'§.x = this.§3!1§;
         this.§,'§.y = this.§>z§;
         this.§,'§.scale = §true§;
         this.§&!9§ = §true§;
         this.mCurrentAction = param1;
      }
      
      public function isOnCastleView(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == §,J§)
         {
            return true;
         }
         if(this.mCurrentAction == §;!0§)
         {
            return true;
         }
         return false;
      }
      
      public function §,s§(param1:Boolean = false) : Boolean
      {
         if(this.mCurrentCameraSliderLocation == 0)
         {
            return true;
         }
         if(this.mCurrentAction == §`B§)
         {
            return true;
         }
         return false;
      }
      
      public function §'!-§(param1:§?!&§) : void
      {
         this.§#!'§ = param1;
         if(this.§#!'§ != null)
         {
            this.§%!&§ = new §?!&§();
            this.§%!&§.x = this.§3!1§;
            this.§%!&§.y = this.§>z§;
            this.§%!&§.scale = §true§;
         }
         else
         {
            this.§3!1§ = this.§%!&§.x;
            this.§>z§ = this.§%!&§.y;
            §true§ = this.§%!&§.scale;
            this.§%!&§ = null;
         }
      }
      
      protected function §^>§() : void
      {
         if(this.isOnCastleView())
         {
            this.goToCastleView();
         }
         else
         {
            this.goToBirdView();
         }
      }
      
      public function adjustManualScale(param1:Boolean, param2:Number = 0.1) : void
      {
         var _loc3_:Number = this.§7l§;
         if(param1)
         {
            _loc3_ += param2;
         }
         else
         {
            _loc3_ -= param2;
         }
         _loc3_ = Math.max(this.§^Y§,Math.min(this.§9D§,_loc3_));
         if(_loc3_ != this.§7l§)
         {
            this.§7l§ = _loc3_;
            this.§^>§();
         }
      }
      
      public function §77§() : Number
      {
         return (this.§=[§ - this.§^Y§) / (this.§9D§ - this.§^Y§);
      }
      
      public function §6X§(param1:Number) : void
      {
         this.§=[§ = Math.min(Math.max(param1,0),1) * (this.§9D§ - this.§^Y§) + this.§^Y§;
      }
      
      public function §!d§() : void
      {
         this.§7l§ = Math.max(this.§7l§ - 0.5,0.5);
      }
      
      public function §?I§() : String
      {
         var _loc1_:String = "";
         _loc1_ += " mManualScale: " + this.§7l§;
         _loc1_ += " mXcenterB2: " + this.§3!1§;
         _loc1_ += " mYcenterB2: " + this.§>z§;
         _loc1_ += " mXcenterB2target: " + this.§7l§;
         _loc1_ += "\n mYcenterB2target: " + this.§7l§;
         _loc1_ += " mXcenterB2previous: " + this.§7l§;
         _loc1_ += " mYcenterB2previous: " + this.§7l§;
         _loc1_ += " mTimeNeededForCameraMovement: " + this.§7l§;
         _loc1_ += " mTimeUsedForCameraMovement: " + this.§7l§;
         _loc1_ += "\n mTimeNeededForScaleMovement: " + this.§7l§;
         _loc1_ += " mTimeUsedForScaleMovement: " + this.§7l§;
         _loc1_ += " mTargetScale: " + this.§7l§;
         _loc1_ += " mTargetScalePrevious: " + this.§7l§;
         _loc1_ += " mCastleCameraX: " + this.§7l§;
         _loc1_ += "\n mCastleCameraY: " + this.§7l§;
         _loc1_ += " mCastleCameraScale: " + this.§7l§;
         _loc1_ += " mBirdCameraX: " + this.§7l§;
         _loc1_ += " mBirdCameraY: " + this.§7l§;
         _loc1_ += " mBirdCameraScale: " + this.§7l§;
         _loc1_ += "\n mScreenLeftScroll: " + this.§7l§;
         _loc1_ += " mScreenTopScroll: " + this.§7l§;
         _loc1_ += " mDragging: " + this.§7l§;
         _loc1_ += " mDraggingPointPreviousX: " + this.§7l§;
         _loc1_ += " mDraggingPointPreviousY: " + this.§7l§;
         _loc1_ += "\n mDraggingPointCurrentX: " + this.§7l§;
         _loc1_ += " mDraggingPointCurrentY: " + this.§7l§;
         _loc1_ += " mDraggingPointOriginalX: " + this.§7l§;
         _loc1_ += " mDraggingPointOriginalY: " + this.§7l§;
         _loc1_ += " mDraggingTimer: " + this.§7l§;
         _loc1_ += "\n mCameraBorderLeft: " + this.§7l§;
         _loc1_ += " mCameraBorderRight: " + this.§7l§;
         _loc1_ += " mCameraBorderSky: " + this.§7l§;
         _loc1_ += " mCameraBorderGround: " + this.§7l§;
         return _loc1_ + (" mPigsAreOnRight: " + this.§7l§ + "\n ");
      }
   }
}
