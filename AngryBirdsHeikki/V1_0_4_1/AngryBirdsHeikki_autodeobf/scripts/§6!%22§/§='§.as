package §6!"§
{
   import §6-§.§"H§;
   import §?!P§.§@@§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §='§ extends Sprite
   {
      
      public static const §<n§:int = 0;
      
      public static const §,!V§:int = 1;
      
      public static const §]Q§:int = 2;
      
      public static const §#"§:int = 3;
       
      
      private const §8O§:uint = 40;
      
      private const §;y§:Number = 0.3;
      
      private const §[!a§:Number = 25;
      
      private const §+!2§:Number = 10;
      
      private const §;a§:Number = 9;
      
      private var §0;§:int;
      
      private var §3^§:int;
      
      private var §3!&§:Array;
      
      private var §"!d§:Array;
      
      private var § !>§:Point;
      
      private var §7&§:int;
      
      private var §>+§:Number;
      
      public function §='§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§47§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§0;§ = param1 * §@@§.§0!D§;
         this.§3^§ = param2 * §@@§.§@H§;
         this.§7&§ = param5;
         this.§ !>§ = new Point(param3,param4);
         this.§3!&§ = [];
         this.§"!d§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §47§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§3!&§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§>+§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§47§ = null;
         while(this.§3!&§.length > 0)
         {
            _loc1_ = this.§3!&§.shift();
            _loc1_.clean();
         }
         while(this.§"!d§.length > 0)
         {
            _loc1_ = this.§"!d§.shift();
            _loc1_.clean();
         }
         this.§3!&§ = [];
         this.§"!d§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§47§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§>+§ -= param1;
         if(this.§>+§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§3!&§.length > 0)
         {
            _loc5_ = this.§3!&§.shift();
            _loc6_ = Math.random() * (this.§[!a§ - this.§+!2§) + this.§+!2§;
            if(this.§7&§ == §<n§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§7&§ == §,!V§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§7&§ == §]Q§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§7&§ == §#"§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§+!2§ / 2;
               _loc13_ = this.§[!a§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§;!N§ = _loc8_ * _loc6_;
            _loc5_.§'x§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ !>§.x;
            _loc5_.y = this.§ !>§.y;
            this.§"!d§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§`d§ = §"H§.§'![§.§8Y§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§`d§.play();
         }
         var _loc2_:int = this.§"!d§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"!d§[_loc4_];
            _loc5_.§'x§ += this.§;y§ * param1;
            if(_loc5_.§'x§ > this.§;a§)
            {
               _loc5_.§'x§ = this.§;a§;
            }
            _loc5_.x += _loc5_.§;!N§ * param1;
            _loc5_.y += _loc5_.§'x§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§0;§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§3^§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"!d§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"!d§.splice(_loc4_,1)) is §47§)
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
