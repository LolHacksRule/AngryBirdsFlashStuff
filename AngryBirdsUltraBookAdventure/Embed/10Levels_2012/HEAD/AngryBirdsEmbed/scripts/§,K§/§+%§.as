package §,K§
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §+%§ extends Sprite
   {
      
      public static const §=!B§:int = 0;
      
      public static const §`!<§:int = 1;
      
      public static const §^W§:int = 2;
      
      public static const §?A§:int = 3;
       
      
      private const §-y§:uint = 40;
      
      private const §<#§:Number = 0.3;
      
      private const §8!%§:Number = 25;
      
      private const §extends§:Number = 10;
      
      private const §4l§:Number = 9;
      
      private var §@v§:int;
      
      private var §4U§:int;
      
      private var §6!C§:Array;
      
      private var §+Q§:Array;
      
      private var § g§:Point;
      
      private var §9"§:int;
      
      public function §+%§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§2H§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§@v§ = param1;
         this.§4U§ = param2;
         var _loc7_:Number = Math.min(§,!!§.§,`§,§,!!§.§0!3§);
         var _loc8_:Number = Math.max(§,!!§.§,`§,§,!!§.§0!3§);
         param3 /= §,!!§.§0!3§;
         param4 /= §,!!§.§,`§;
         this.§9"§ = param5;
         this.§ g§ = new Point(param3,param4);
         this.§6!C§ = [];
         this.§+Q§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §2H§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§6!C§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§2H§ = null;
         while(this.§6!C§.length > 0)
         {
            _loc1_ = this.§6!C§.shift();
            _loc1_.clean();
         }
         while(this.§+Q§.length > 0)
         {
            _loc1_ = this.§+Q§.shift();
            _loc1_.clean();
         }
         this.§6!C§ = [];
         this.§+Q§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§2H§ = null;
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
         while(this.§6!C§.length > 0)
         {
            _loc5_ = this.§6!C§.shift();
            _loc6_ = Math.random() * (this.§8!%§ - this.§extends§) + this.§extends§;
            if(this.§9"§ == §=!B§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§9"§ == §`!<§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§9"§ == §^W§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§9"§ == §?A§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§extends§ / 2;
               _loc13_ = this.§8!%§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§,W§ = _loc8_ * _loc6_;
            _loc5_.§5!<§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ g§.x;
            _loc5_.y = this.§ g§.y;
            this.§+Q§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§6k§ = §%!>§.§-]§.§?U§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§6k§.play();
         }
         var _loc2_:int = this.§+Q§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§+Q§[_loc4_];
            _loc5_.§5!<§ += this.§<#§ * param1;
            if(_loc5_.§5!<§ > this.§4l§)
            {
               _loc5_.§5!<§ = this.§4l§;
            }
            _loc5_.x += _loc5_.§,W§ * param1;
            _loc5_.y += _loc5_.§5!<§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§@v§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§4U§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§+Q§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§+Q§.splice(_loc4_,1)) is §2H§)
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
