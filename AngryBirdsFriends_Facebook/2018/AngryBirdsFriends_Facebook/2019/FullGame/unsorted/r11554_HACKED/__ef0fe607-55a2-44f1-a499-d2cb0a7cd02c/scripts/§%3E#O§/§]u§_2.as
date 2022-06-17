package §>#O§
{
   import §6§.§'#n§;
   import §=!2§.§%"T§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §]u§ extends Sprite
   {
      
      public static const §,#=§:int = 0;
      
      public static const §>"n§:int = 1;
      
      public static const §3!`§:int = 2;
      
      public static const §?!q§:int = 3;
      
      private static const §>!e§:String = "all";
      
      public static const §!#_§:uint = 40;
       
      
      private const §8$#§:Number = 0.3;
      
      private const §2!V§:Number = 25;
      
      private const § "S§:Number = 10;
      
      private const §6!o§:Number = 9;
      
      private var §""8§:int;
      
      private var §,Q§:int;
      
      private var §1!V§:Vector.<§'##§>;
      
      private var §"X§:Vector.<§'##§>;
      
      private var §%!K§:Point;
      
      private var §%!v§:int;
      
      public function §]u§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§'##§ = null;
         super();
         this.§""8§ = param1;
         this.§,Q§ = param2;
         Number(Math.min(§%"T§.§"x§,§%"T§.§7#W§));
         var _loc9_:Number = Math.max(§%"T§.§"x§,§%"T§.§7#W§);
         param3 /= §%"T§.§7#W§;
         param4 /= §%"T§.§"x§;
         this.§%!v§ = param5;
         this.§%!K§ = new Point(param3,param4);
         this.§1!V§ = new Vector.<§'##§>(0);
         this.§"X§ = new Vector.<§'##§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §'##§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§1!V§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §4#y§() : void
      {
         var _loc1_:§'##§ = null;
         while(this.§1!V§.length > 0)
         {
            _loc1_ = this.§1!V§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§4#y§();
         }
         while(this.§"X§.length > 0)
         {
            _loc1_ = this.§"X§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§4#y§();
         }
         this.§1!V§ = new Vector.<§'##§>(0);
         this.§"X§ = new Vector.<§'##§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'##§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§'##§ = null;
         param1 /= 20;
         while(this.§1!V§.length > 0)
         {
            _loc5_ = this.§1!V§.shift();
            _loc6_ = Math.random() * (this.§2!V§ - this.§ "S§) + this.§ "S§;
            if(this.§%!v§ == §,#=§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§%!v§ == §>"n§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§%!v§ == §3!`§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§%!v§ == §?!q§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§ "S§ / 2;
               _loc13_ = this.§2!V§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§=![§ = _loc8_ * _loc6_;
            _loc5_.§<#V§ = _loc9_ * _loc6_;
            _loc5_.x = this.§%!K§.x;
            _loc5_.y = this.§%!K§.y;
            this.§"X§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§;7§ = §'#n§.§?q§.§9!N§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§;7§.play();
         }
         var _loc2_:int = this.§"X§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"X§[_loc4_];
            _loc5_.§<#V§ += this.§8$#§ * param1;
            if(_loc5_.§<#V§ > this.§6!o§)
            {
               _loc5_.§<#V§ = this.§6!o§;
            }
            _loc5_.x += _loc5_.§=![§ * param1;
            _loc5_.y += _loc5_.§<#V§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§,Q§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"X§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"X§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§4#y§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
