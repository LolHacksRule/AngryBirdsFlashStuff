package §5!5§
{
   import §#!T§.§&2§;
   import §2!D§.§'!7§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §68§ extends Sprite
   {
      
      public static const §1!=§:int = 0;
      
      public static const §5!A§:int = 1;
      
      public static const §-Q§:int = 2;
      
      public static const §0!%§:int = 3;
       
      
      private const §";§:uint = 40;
      
      private const §,!3§:Number = 0.3;
      
      private const §#!%§:Number = 25;
      
      private const §,!C§:Number = 10;
      
      private const § null§:Number = 9;
      
      private var §=k§:int;
      
      private var §5b§:int;
      
      private var §<V§:Array;
      
      private var §]$§:Array;
      
      private var §]"§:Point;
      
      private var §;%§:int;
      
      private var §5L§:Number;
      
      public function §68§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§;y§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§=k§ = param1 * §&2§.§]!`§;
         this.§5b§ = param2 * §&2§.§ `§;
         this.§;%§ = param5;
         this.§]"§ = new Point(param3,param4);
         this.§<V§ = [];
         this.§]$§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §;y§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§<V§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§5L§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§;y§ = null;
         while(this.§<V§.length > 0)
         {
            _loc1_ = this.§<V§.shift();
            _loc1_.clean();
         }
         while(this.§]$§.length > 0)
         {
            _loc1_ = this.§]$§.shift();
            _loc1_.clean();
         }
         this.§<V§ = [];
         this.§]$§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§;y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§5L§ -= param1;
         if(this.§5L§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§<V§.length > 0)
         {
            _loc5_ = this.§<V§.shift();
            _loc6_ = Math.random() * (this.§#!%§ - this.§,!C§) + this.§,!C§;
            if(this.§;%§ == §1!=§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§;%§ == §5!A§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§;%§ == §-Q§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§;%§ == §0!%§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§,!C§ / 2;
               _loc13_ = this.§#!%§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§;m§ = _loc8_ * _loc6_;
            _loc5_.§5D§ = _loc9_ * _loc6_;
            _loc5_.x = this.§]"§.x;
            _loc5_.y = this.§]"§.y;
            this.§]$§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§=5§ = §'!7§.§=,§.§5Z§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§=5§.play();
         }
         var _loc2_:int = this.§]$§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§]$§[_loc4_];
            _loc5_.§5D§ += this.§,!3§ * param1;
            if(_loc5_.§5D§ > this.§ null§)
            {
               _loc5_.§5D§ = this.§ null§;
            }
            _loc5_.x += _loc5_.§;m§ * param1;
            _loc5_.y += _loc5_.§5D§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§=k§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§5b§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§]$§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§]$§.splice(_loc4_,1)) is §;y§)
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
