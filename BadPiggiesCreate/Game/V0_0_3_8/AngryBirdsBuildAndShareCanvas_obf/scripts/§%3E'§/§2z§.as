package §>'§
{
   import §"!0§.§"!5§;
   import §`%§.§8!0§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2z§ extends Sprite
   {
      
      public static const §;!V§:int = 0;
      
      public static const §?!p§:int = 1;
      
      public static const §%"§:int = 2;
      
      public static const §&!;§:int = 3;
       
      
      private const §1`§:uint = 40;
      
      private const §!n§:Number = 0.3;
      
      private const §?6§:Number = 25;
      
      private const §;!w§:Number = 10;
      
      private const §#!<§:Number = 9;
      
      private var §]!m§:int;
      
      private var §3!9§:int;
      
      private var §7"1§:Array;
      
      private var §6"5§:Array;
      
      private var §3V§:Point;
      
      private var §`z§:int;
      
      private var §"Y§:Number;
      
      public function §2z§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§^h§ = null;
         super();
         this.§]!m§ = param1 * §8!0§.§&!_§;
         this.§3!9§ = param2 * §8!0§.§6S§;
         this.scrollRect = new Rectangle(0,0,this.§]!m§,this.§3!9§);
         this.§`z§ = param5;
         this.§3V§ = new Point(param3,param4);
         this.§7"1§ = [];
         this.§6"5§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < param6)
         {
            (_loc8_ = new §^h§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§7"1§[_loc9_] = _loc8_;
            _loc9_++;
         }
         this.§"Y§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§^h§ = null;
         while(this.§7"1§.length > 0)
         {
            _loc1_ = this.§7"1§.shift();
            _loc1_.clean();
         }
         while(this.§6"5§.length > 0)
         {
            _loc1_ = this.§6"5§.shift();
            _loc1_.clean();
         }
         this.§7"1§ = [];
         this.§6"5§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§^h§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§"Y§ -= param1;
         if(this.§"Y§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§7"1§.length > 0)
         {
            _loc5_ = this.§7"1§.shift();
            _loc6_ = Math.random() * (this.§?6§ - this.§;!w§) + this.§;!w§;
            if(this.§`z§ == §;!V§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§`z§ == §?!p§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§`z§ == §%"§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§`z§ == §&!;§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§;!w§ / 2;
               _loc13_ = this.§?6§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§!S§ = _loc8_ * _loc6_;
            _loc5_.§4!u§ = _loc9_ * _loc6_;
            _loc5_.x = this.§3V§.x;
            _loc5_.y = this.§3V§.y;
            this.§6"5§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§,!'§ = §"!5§.§9j§.§4!p§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§,!'§.play();
         }
         var _loc2_:int = this.§6"5§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6"5§[_loc4_];
            _loc5_.§4!u§ += this.§!n§ * param1;
            if(_loc5_.§4!u§ > this.§#!<§)
            {
               _loc5_.§4!u§ = this.§#!<§;
            }
            _loc5_.x += _loc5_.§!S§ * param1;
            _loc5_.y += _loc5_.§4!u§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§]!m§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§3!9§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6"5§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§6"5§.splice(_loc4_,1)) is §^h§)
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
