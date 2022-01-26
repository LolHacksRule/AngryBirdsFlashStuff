package §@=§
{
   import §3-§.§1L§;
   import §>!_§.§9!+§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § S§ extends Sprite
   {
      
      public static const §,;§:int = 0;
      
      public static const §^z§:int = 1;
      
      public static const §]B§:int = 2;
      
      public static const §!k§:int = 3;
       
      
      private const §-F§:uint = 40;
      
      private const §'!C§:Number = 0.3;
      
      private const §0!6§:Number = 25;
      
      private const §&X§:Number = 10;
      
      private const §-5§:Number = 9;
      
      private var §!S§:int;
      
      private var §3!T§:int;
      
      private var §<!'§:Array;
      
      private var §#s§:Array;
      
      private var §]!F§:Point;
      
      private var §1R§:int;
      
      private var §]H§:Number;
      
      public function § S§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§!Y§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§!S§ = param1 * §1L§.§%v§;
         this.§3!T§ = param2 * §1L§.§1t§;
         this.§1R§ = param5;
         this.§]!F§ = new Point(param3,param4);
         this.§<!'§ = [];
         this.§#s§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §!Y§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§<!'§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§]H§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§!Y§ = null;
         while(this.§<!'§.length > 0)
         {
            _loc1_ = this.§<!'§.shift();
            _loc1_.clean();
         }
         while(this.§#s§.length > 0)
         {
            _loc1_ = this.§#s§.shift();
            _loc1_.clean();
         }
         this.§<!'§ = [];
         this.§#s§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§!Y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§]H§ -= param1;
         if(this.§]H§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§<!'§.length > 0)
         {
            _loc5_ = this.§<!'§.shift();
            _loc6_ = Math.random() * (this.§0!6§ - this.§&X§) + this.§&X§;
            if(this.§1R§ == §,;§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§1R§ == §^z§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§1R§ == §]B§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§1R§ == §!k§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§&X§ / 2;
               _loc13_ = this.§0!6§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&S§ = _loc8_ * _loc6_;
            _loc5_.§'s§ = _loc9_ * _loc6_;
            _loc5_.x = this.§]!F§.x;
            _loc5_.y = this.§]!F§.y;
            this.§#s§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§=;§ = §9!+§.§;!F§.§`!'§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§=;§.play();
         }
         var _loc2_:int = this.§#s§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§#s§[_loc4_];
            _loc5_.§'s§ += this.§'!C§ * param1;
            if(_loc5_.§'s§ > this.§-5§)
            {
               _loc5_.§'s§ = this.§-5§;
            }
            _loc5_.x += _loc5_.§&S§ * param1;
            _loc5_.y += _loc5_.§'s§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§!S§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§3!T§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§#s§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§#s§.splice(_loc4_,1)) is §!Y§)
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
