package §'",§
{
   import §!#"§.§&"H§;
   import §;#D§.§3#U§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §8$7§ extends Sprite
   {
      
      public static const §5!l§:int = 0;
      
      public static const §%!L§:int = 1;
      
      public static const §!$-§:int = 2;
      
      public static const §-"4§:int = 3;
      
      private static const §9!w§:String = "all";
      
      public static const §8#s§:uint = 40;
       
      
      private const §,"R§:Number = 0.3;
      
      private const §3#P§:Number = 25;
      
      private const §^"O§:Number = 10;
      
      private const §-e§:Number = 9;
      
      private var §try§:int;
      
      private var §5!6§:int;
      
      private var §?I§:Vector.<§@#e§>;
      
      private var §+!'§:Vector.<§@#e§>;
      
      private var §7e§:Point;
      
      private var §8">§:int;
      
      public function §8$7§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§@#e§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§try§ = param1;
         this.§5!6§ = param2;
         var _loc8_:Number = Math.min(§3#U§.§>!p§,§3#U§.§<!K§);
         var _loc9_:Number = Math.max(§3#U§.§>!p§,§3#U§.§<!K§);
         param3 /= §3#U§.§<!K§;
         param4 /= §3#U§.§>!p§;
         this.§8">§ = param5;
         this.§7e§ = new Point(param3,param4);
         this.§?I§ = new Vector.<§@#e§>(0);
         this.§+!'§ = new Vector.<§@#e§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §@#e§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§?I§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §,"I§() : void
      {
         var _loc1_:§@#e§ = null;
         while(this.§?I§.length > 0)
         {
            _loc1_ = this.§?I§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§,"I§();
         }
         while(this.§+!'§.length > 0)
         {
            _loc1_ = this.§+!'§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§,"I§();
         }
         this.§?I§ = new Vector.<§@#e§>(0);
         this.§+!'§ = new Vector.<§@#e§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§@#e§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§@#e§ = null;
         param1 /= 20;
         while(this.§?I§.length > 0)
         {
            _loc5_ = this.§?I§.shift();
            _loc6_ = Math.random() * (this.§3#P§ - this.§^"O§) + this.§^"O§;
            if(this.§8">§ == §5!l§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§8">§ == §%!L§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§8">§ == §!$-§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§8">§ == §-"4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§^"O§ / 2;
               _loc13_ = this.§3#P§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§[$&§ = _loc8_ * _loc6_;
            _loc5_.§<#7§ = _loc9_ * _loc6_;
            _loc5_.x = this.§7e§.x;
            _loc5_.y = this.§7e§.y;
            this.§+!'§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§7$!§ = §&"H§.§6!§.§6C§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§7$!§.play();
         }
         var _loc2_:int = this.§+!'§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§+!'§[_loc4_];
            _loc5_.§<#7§ += this.§,"R§ * param1;
            if(_loc5_.§<#7§ > this.§-e§)
            {
               _loc5_.§<#7§ = this.§-e§;
            }
            _loc5_.x += _loc5_.§[$&§ * param1;
            _loc5_.y += _loc5_.§<#7§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§5!6§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§+!'§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§+!'§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§,"I§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
