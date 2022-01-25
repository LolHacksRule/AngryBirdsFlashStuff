package §0!_§
{
   import §0!b§.§#!=§;
   import §7H§.§8Q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!F§ extends Sprite
   {
      
      public static const §"C§:int = 0;
      
      public static const §&p§:int = 1;
      
      public static const §6!`§:int = 2;
      
      public static const §#7§:int = 3;
       
      
      private const §"O§:uint = 40;
      
      private const §^!a§:Number = 0.3;
      
      private const §>%§:Number = 25;
      
      private const § q§:Number = 10;
      
      private const §[<§:Number = 9;
      
      private var §!!B§:int;
      
      private var §5F§:int;
      
      private var §7d§:Array;
      
      private var §2!P§:Array;
      
      private var §>Q§:Point;
      
      private var §^U§:int;
      
      private var §@H§:Number;
      
      public function §-!F§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§#!$§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§!!B§ = param1 * §#!=§.§,@§;
         this.§5F§ = param2 * §#!=§.§>0§;
         this.§^U§ = param5;
         this.§>Q§ = new Point(param3,param4);
         this.§7d§ = [];
         this.§2!P§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §#!$§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§7d§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§@H§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§#!$§ = null;
         while(this.§7d§.length > 0)
         {
            _loc1_ = this.§7d§.shift();
            _loc1_.clean();
         }
         while(this.§2!P§.length > 0)
         {
            _loc1_ = this.§2!P§.shift();
            _loc1_.clean();
         }
         this.§7d§ = [];
         this.§2!P§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§#!$§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§@H§ -= param1;
         if(this.§@H§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§7d§.length > 0)
         {
            _loc5_ = this.§7d§.shift();
            _loc6_ = Math.random() * (this.§>%§ - this.§ q§) + this.§ q§;
            if(this.§^U§ == §"C§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§^U§ == §&p§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§^U§ == §6!`§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§^U§ == §#7§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§ q§ / 2;
               _loc13_ = this.§>%§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§^4§ = _loc8_ * _loc6_;
            _loc5_.§'@§ = _loc9_ * _loc6_;
            _loc5_.x = this.§>Q§.x;
            _loc5_.y = this.§>Q§.y;
            this.§2!P§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§1p§ = §8Q§.§]!D§.§^w§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§1p§.play();
         }
         var _loc2_:int = this.§2!P§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§2!P§[_loc4_];
            _loc5_.§'@§ += this.§^!a§ * param1;
            if(_loc5_.§'@§ > this.§[<§)
            {
               _loc5_.§'@§ = this.§[<§;
            }
            _loc5_.x += _loc5_.§^4§ * param1;
            _loc5_.y += _loc5_.§'@§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§!!B§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§5F§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§2!P§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§2!P§.splice(_loc4_,1)) is §#!$§)
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
