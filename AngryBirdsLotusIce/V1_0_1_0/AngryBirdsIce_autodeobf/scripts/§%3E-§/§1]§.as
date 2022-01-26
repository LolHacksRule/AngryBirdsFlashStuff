package §>-§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §1]§ extends Sprite
   {
      
      public static const override:int = 0;
      
      public static const final:int = 1;
      
      public static const §@b§:int = 2;
      
      public static const §]!>§:int = 3;
       
      
      private const §each §:uint = 40;
      
      private const §^W§:Number = 0.3;
      
      private const §7!#§:Number = 25;
      
      private const §5@§:Number = 10;
      
      private const §?E§:Number = 9;
      
      private var §break§:int;
      
      private var §71§:int;
      
      private var §7@§:Array;
      
      private var §6o§:Array;
      
      private var §=!8§:Point;
      
      private var §5!+§:int;
      
      public function §1]§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§6%§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§break§ = param1;
         this.§71§ = param2;
         var _loc7_:Number = Math.min(§[o§.§>k§,§[o§.§<T§);
         var _loc8_:Number = Math.max(§[o§.§>k§,§[o§.§<T§);
         param3 /= §[o§.§<T§;
         param4 /= §[o§.§>k§;
         this.§5!+§ = param5;
         this.§=!8§ = new Point(param3,param4);
         this.§7@§ = [];
         this.§6o§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §6%§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§7@§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§6%§ = null;
         while(this.§7@§.length > 0)
         {
            _loc1_ = this.§7@§.shift();
            _loc1_.clean();
         }
         while(this.§6o§.length > 0)
         {
            _loc1_ = this.§6o§.shift();
            _loc1_.clean();
         }
         this.§7@§ = [];
         this.§6o§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§6%§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         param1 /= 20;
         while(this.§7@§.length > 0)
         {
            _loc5_ = this.§7@§.shift();
            _loc6_ = Math.random() * (this.§7!#§ - this.§5@§) + this.§5@§;
            if(this.§5!+§ == override)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§5!+§ == final)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§5!+§ == §@b§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§5!+§ == §]!>§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§5@§ / 2;
               _loc13_ = this.§7!#§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§8e§ = _loc8_ * _loc6_;
            _loc5_.§ !1§ = _loc9_ * _loc6_;
            _loc5_.x = this.§=!8§.x;
            _loc5_.y = this.§=!8§.y;
            this.§6o§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§-H§ = §";§.§[8§.§6!$§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§-H§.play();
         }
         var _loc2_:int = this.§6o§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6o§[_loc4_];
            _loc5_.§ !1§ += this.§^W§ * param1;
            if(_loc5_.§ !1§ > this.§?E§)
            {
               _loc5_.§ !1§ = this.§?E§;
            }
            _loc5_.x += _loc5_.§8e§ * param1;
            _loc5_.y += _loc5_.§ !1§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§break§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§71§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6o§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§6o§.splice(_loc4_,1)) is §6%§)
               {
                  _loc14_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
