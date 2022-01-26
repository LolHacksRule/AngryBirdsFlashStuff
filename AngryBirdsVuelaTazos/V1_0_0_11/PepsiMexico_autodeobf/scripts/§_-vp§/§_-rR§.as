package §_-vp§
{
   import §_-Ah§.§_-b§;
   import §_-bg§.§_-xF§;
   import §_-uz§.§_-wX§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-rR§ extends Sprite
   {
      
      public static const §_-06§:int = 0;
      
      public static const §_-G7§:int = 1;
      
      public static const §_-Qo§:int = 2;
       
      
      private const §_-4W§:uint = 40;
      
      private const §_-ev§:Number = 0.3;
      
      private const §_-k§:Number = 25;
      
      private const §_-1n§:Number = 10;
      
      private const §_-9M§:Number = 9;
      
      private var §_-7l§:int;
      
      private var §_-9K§:int;
      
      private var §_-IP§:Array;
      
      private var §_-qJ§:Array;
      
      private var §_-rg§:Point;
      
      private var §_-8§:int;
      
      public function §_-rR§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§_-R§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-7l§ = param1 * §_-b§.§_-X4§;
         this.§_-9K§ = param2 * §_-b§.§_-Hu§;
         this.§_-8§ = param5;
         this.§_-rg§ = new Point(param3,param4);
         this.§_-IP§ = [];
         this.§_-qJ§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-4W§)
         {
            (_loc6_ = new §_-R§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§_-IP§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-R§ = null;
         while(this.§_-IP§.length > 0)
         {
            _loc1_ = this.§_-IP§.shift();
            _loc1_.clean();
         }
         while(this.§_-qJ§.length > 0)
         {
            _loc1_ = this.§_-qJ§.shift();
            _loc1_.clean();
         }
         this.§_-IP§ = [];
         this.§_-qJ§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-wX§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§_-IP§.length > 0)
         {
            _loc5_ = this.§_-IP§.shift();
            _loc6_ = Math.random() * (this.§_-k§ - this.§_-1n§) + this.§_-1n§;
            if(this.§_-8§ == §_-06§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-8§ == §_-G7§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-8§ == §_-Qo§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§_-Az§ = _loc8_ * _loc6_;
            _loc5_.§_-56§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-rg§.x;
            _loc5_.y = this.§_-rg§.y;
            this.§_-qJ§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §_-xF§.§_-JE§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§_-qJ§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-qJ§[_loc4_];
            _loc5_.§_-56§ += this.§_-ev§ * param1;
            if(_loc5_.§_-56§ > this.§_-9M§)
            {
               _loc5_.§_-56§ = this.§_-9M§;
            }
            _loc5_.x += _loc5_.§_-Az§ * param1;
            _loc5_.y += _loc5_.§_-56§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-7l§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-9K§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-qJ§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§_-qJ§.splice(_loc4_,1)) is §_-R§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
