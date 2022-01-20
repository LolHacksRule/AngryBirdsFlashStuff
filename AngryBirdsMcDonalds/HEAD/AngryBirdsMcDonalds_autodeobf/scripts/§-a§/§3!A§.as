package §-a§
{
   import §4!A§.§7#§;
   import §7F§.§2M§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!A§ extends Sprite
   {
      
      public static const §false§:int = 0;
      
      public static const §^!7§:int = 1;
      
      public static const §]1§:int = 2;
      
      public static const §<!3§:int = 3;
       
      
      private const §4a§:uint = 40;
      
      private const §>!^§:Number = 0.3;
      
      private const §3u§:Number = 25;
      
      private const §83§:Number = 10;
      
      private const §6>§:Number = 9;
      
      private var §]!]§:int;
      
      private var §%!T§:int;
      
      private var §3?§:Array;
      
      private var §5!9§:Array;
      
      private var §?![§:Point;
      
      private var §"h§:int;
      
      private var §?x§:Number;
      
      public function §3!A§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§2!q§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§]!]§ = param1 * §2M§.§4f§;
         this.§%!T§ = param2 * §2M§.§50§;
         this.§"h§ = param5;
         this.§?![§ = new Point(param3,param4);
         this.§3?§ = [];
         this.§5!9§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §2!q§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§3?§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§?x§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§2!q§ = null;
         while(this.§3?§.length > 0)
         {
            _loc1_ = this.§3?§.shift();
            _loc1_.clean();
         }
         while(this.§5!9§.length > 0)
         {
            _loc1_ = this.§5!9§.shift();
            _loc1_.clean();
         }
         this.§3?§ = [];
         this.§5!9§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§2!q§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§?x§ -= param1;
         if(this.§?x§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§3?§.length > 0)
         {
            _loc5_ = this.§3?§.shift();
            _loc6_ = Math.random() * (this.§3u§ - this.§83§) + this.§83§;
            if(this.§"h§ == §false§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§"h§ == §^!7§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§"h§ == §]1§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§"h§ == §<!3§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§83§ / 2;
               _loc13_ = this.§3u§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§7q§ = _loc8_ * _loc6_;
            _loc5_.§;!g§ = _loc9_ * _loc6_;
            _loc5_.x = this.§?![§.x;
            _loc5_.y = this.§?![§.y;
            this.§5!9§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§4+§ = §7#§.§5!!§.§30§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§4+§.play();
         }
         var _loc2_:int = this.§5!9§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§5!9§[_loc4_];
            _loc5_.§;!g§ += this.§>!^§ * param1;
            if(_loc5_.§;!g§ > this.§6>§)
            {
               _loc5_.§;!g§ = this.§6>§;
            }
            _loc5_.x += _loc5_.§7q§ * param1;
            _loc5_.y += _loc5_.§;!g§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§]!]§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§%!T§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§5!9§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§5!9§.splice(_loc4_,1)) is §2!q§)
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
