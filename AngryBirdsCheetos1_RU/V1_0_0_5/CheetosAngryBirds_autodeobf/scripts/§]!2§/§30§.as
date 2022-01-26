package §]!2§
{
   import §'d§.§3>§;
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §30§ extends Sprite
   {
      
      public static const §8!D§:int = 0;
      
      public static const §7!_§:int = 1;
      
      public static const § 5§:int = 2;
       
      
      private const §[!!§:uint = 40;
      
      private const §7!^§:Number = 0.3;
      
      private const §<3§:Number = 25;
      
      private const §;!S§:Number = 10;
      
      private const §@a§:Number = 9;
      
      private var §#Q§:int;
      
      private var §=!9§:int;
      
      private var §]!V§:Array;
      
      private var §[r§:Array;
      
      private var §"!'§:Point;
      
      private var §8+§:int;
      
      public function §30§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§'X§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§#Q§ = param1 * §3>§.§5F§;
         this.§=!9§ = param2 * §3>§.§&e§;
         this.§8+§ = param5;
         this.§"!'§ = new Point(param3,param4);
         this.§]!V§ = [];
         this.§[r§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§[!!§)
         {
            (_loc6_ = new §'X§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§]!V§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§'X§ = null;
         while(this.§]!V§.length > 0)
         {
            _loc1_ = this.§]!V§.shift();
            _loc1_.clean();
         }
         while(this.§[r§.length > 0)
         {
            _loc1_ = this.§[r§.shift();
            _loc1_.clean();
         }
         this.§]!V§ = [];
         this.§[r§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'X§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§=! § = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§]!V§.length > 0)
         {
            _loc5_ = this.§]!V§.shift();
            _loc6_ = Math.random() * (this.§<3§ - this.§;!S§) + this.§;!S§;
            if(this.§8+§ == §8!D§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§8+§ == §7!_§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§8+§ == § 5§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§54§ = _loc8_ * _loc6_;
            _loc5_.§`!+§ = _loc9_ * _loc6_;
            _loc5_.x = this.§"!'§.x;
            _loc5_.y = this.§"!'§.y;
            this.§[r§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §+!&§.§,§.§9x§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§[r§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§[r§[_loc4_];
            _loc5_.§`!+§ += this.§7!^§ * param1;
            if(_loc5_.§`!+§ > this.§@a§)
            {
               _loc5_.§`!+§ = this.§@a§;
            }
            _loc5_.x += _loc5_.§54§ * param1;
            _loc5_.y += _loc5_.§`!+§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§#Q§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§=!9§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§[r§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§[r§.splice(_loc4_,1)) is §'X§)
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
