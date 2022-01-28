package §_-3c§
{
   import §_-cJ§.§_-xx§;
   import §_-pm§.§_-gb§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-4H§ extends Sprite
   {
      
      public static const §_-iU§:int = 0;
      
      public static const §_-Pz§:int = 1;
      
      public static const §_-Bi§:int = 2;
      
      public static const §_-EU§:int = 3;
       
      
      private const §_-bb§:uint = 40;
      
      private const §_-fM§:Number = 0.3;
      
      private const §_-2t§:Number = 25;
      
      private const §_-5a§:Number = 10;
      
      private const §_-jt§:Number = 9;
      
      private var §_-MH§:int;
      
      private var §_-0I§:int;
      
      private var §_-p2§:Array;
      
      private var §_-UD§:Array;
      
      private var § get§:Point;
      
      private var §_-Wu§:int;
      
      public function §_-4H§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc7_:§_-8Z§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         super();
         this.§_-MH§ = param1 * §_-gb§.§_-EZ§;
         this.§_-0I§ = param2 * §_-gb§.§_-Kx§;
         this.§_-Wu§ = param5;
         this.§ get§ = new Point(param3,param4);
         this.§_-p2§ = [];
         this.§_-UD§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            (_loc7_ = new §_-8Z§(Math.random() * 40 + 10)).x = -2000;
            _loc7_.y = -2000;
            this.addChild(_loc7_);
            this.§_-p2§[_loc10_] = _loc7_;
            _loc10_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§_-8Z§ = null;
         while(this.§_-p2§.length > 0)
         {
            _loc1_ = this.§_-p2§.shift();
            _loc1_.clean();
         }
         while(this.§_-UD§.length > 0)
         {
            _loc1_ = this.§_-UD§.shift();
            _loc1_.clean();
         }
         this.§_-p2§ = [];
         this.§_-UD§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-8Z§ = null;
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
         while(this.§_-p2§.length > 0)
         {
            _loc5_ = this.§_-p2§.shift();
            _loc6_ = Math.random() * (this.§_-2t§ - this.§_-5a§) + this.§_-5a§;
            if(this.§_-Wu§ == §_-iU§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-Wu§ == §_-Pz§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-Wu§ == §_-Bi§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§_-Wu§ == §_-EU§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§_-5a§ / 2;
               _loc13_ = this.§_-2t§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§_-ul§ = _loc8_ * _loc6_;
            _loc5_.§_-w1§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ get§.x;
            _loc5_.y = this.§ get§.y;
            this.§_-UD§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§_-RP§ = §_-xx§.§_-uP§.§_-Vb§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§_-RP§.play();
         }
         var _loc2_:int = this.§_-UD§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-UD§[_loc4_];
            _loc5_.§_-w1§ += this.§_-fM§ * param1;
            if(_loc5_.§_-w1§ > this.§_-jt§)
            {
               _loc5_.§_-w1§ = this.§_-jt§;
            }
            _loc5_.x += _loc5_.§_-ul§ * param1;
            _loc5_.y += _loc5_.§_-w1§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-MH§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-0I§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-UD§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§_-UD§.splice(_loc4_,1)) is §_-8Z§)
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
