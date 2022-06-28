package §_-0Ar§
{
   import §_-0AB§.§_-cx§;
   import §_-qO§.§ in§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-0F0§ extends Sprite
   {
      
      public static const §_-CV§:int = 0;
      
      public static const §_-01f§:int = 1;
      
      public static const §_-0Ba§:int = 2;
      
      public static const §_-J1§:int = 3;
       
      
      private const §_-bb§:uint = 40;
      
      private const §_-CI§:Number = 0.3;
      
      private const §_-VQ§:Number = 25;
      
      private const §_-6u§:Number = 10;
      
      private const §_-08t§:Number = 9;
      
      private var §_-mG§:int;
      
      private var §_-th§:int;
      
      private var §_-cT§:Array;
      
      private var §_-01I§:Array;
      
      private var §_-Pd§:Point;
      
      private var §_-06B§:int;
      
      public function §_-0F0§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§_-6t§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§_-mG§ = param1;
         this.§_-th§ = param2;
         var _loc7_:Number = Math.min(§ in§.§_-Sr§,§ in§.§_-57§);
         var _loc8_:Number = Math.max(§ in§.§_-Sr§,§ in§.§_-57§);
         param3 /= § in§.§_-57§;
         param4 /= § in§.§_-Sr§;
         this.§_-06B§ = param5;
         this.§_-Pd§ = new Point(param3,param4);
         this.§_-cT§ = [];
         this.§_-01I§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §_-6t§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§_-cT§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§_-6t§ = null;
         while(this.§_-cT§.length > 0)
         {
            _loc1_ = this.§_-cT§.shift();
            _loc1_.clean();
         }
         while(this.§_-01I§.length > 0)
         {
            _loc1_ = this.§_-01I§.shift();
            _loc1_.clean();
         }
         this.§_-cT§ = [];
         this.§_-01I§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§_-6t§ = null;
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
         while(this.§_-cT§.length > 0)
         {
            _loc5_ = this.§_-cT§.shift();
            _loc6_ = Math.random() * (this.§_-VQ§ - this.§_-6u§) + this.§_-6u§;
            if(this.§_-06B§ == §_-CV§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§_-06B§ == §_-01f§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§_-06B§ == §_-0Ba§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§_-06B§ == §_-J1§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§_-6u§ / 2;
               _loc13_ = this.§_-VQ§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§_-Zo§ = _loc8_ * _loc6_;
            _loc5_.§_-Vp§ = _loc9_ * _loc6_;
            _loc5_.x = this.§_-Pd§.x;
            _loc5_.y = this.§_-Pd§.y;
            this.§_-01I§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§_-fU§ = §_-cx§.§_-3S§.§_-Wf§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§_-fU§.play();
         }
         var _loc2_:int = this.§_-01I§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§_-01I§[_loc4_];
            _loc5_.§_-Vp§ += this.§_-CI§ * param1;
            if(_loc5_.§_-Vp§ > this.§_-08t§)
            {
               _loc5_.§_-Vp§ = this.§_-08t§;
            }
            _loc5_.x += _loc5_.§_-Zo§ * param1;
            _loc5_.y += _loc5_.§_-Vp§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§_-mG§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§_-th§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§_-01I§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§_-01I§.splice(_loc4_,1)) is §_-6t§)
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
