package §<!=§
{
   import §&#S§.§""Z§;
   import §?§.§>"$§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#!A§ extends Sprite
   {
      
      public static const §]!a§:int = 0;
      
      public static const §`!x§:int = 1;
      
      public static const §3"O§:int = 2;
      
      public static const §&$<§:int = 3;
      
      private static const §%!s§:String = "all";
      
      public static const §1"y§:uint = 40;
       
      
      private const §^!`§:Number = 0.3;
      
      private const §8"B§:Number = 25;
      
      private const §&#r§:Number = 10;
      
      private const §<#E§:Number = 9;
      
      private var §]#=§:int;
      
      private var §>!N§:int;
      
      private var §7#F§:Vector.<§`#w§>;
      
      private var §0"1§:Vector.<§`#w§>;
      
      private var §9!R§:Point;
      
      private var §4C§:int;
      
      public function §#!A§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§`#w§ = null;
         super();
         this.§]#=§ = param1;
         this.§>!N§ = param2;
         Number(Math.min(§>"$§.§`G§,§>"$§.§;!m§));
         var _loc9_:Number = Math.max(§>"$§.§`G§,§>"$§.§;!m§);
         param3 /= §>"$§.§;!m§;
         param4 /= §>"$§.§`G§;
         this.§4C§ = param5;
         this.§9!R§ = new Point(param3,param4);
         this.§7#F§ = new Vector.<§`#w§>(0);
         this.§0"1§ = new Vector.<§`#w§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §`#w§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§7#F§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §4#1§() : void
      {
         var _loc1_:§`#w§ = null;
         while(this.§7#F§.length > 0)
         {
            _loc1_ = this.§7#F§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§4#1§();
         }
         while(this.§0"1§.length > 0)
         {
            _loc1_ = this.§0"1§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§4#1§();
         }
         this.§7#F§ = new Vector.<§`#w§>(0);
         this.§0"1§ = new Vector.<§`#w§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§`#w§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§`#w§ = null;
         param1 /= 20;
         while(this.§7#F§.length > 0)
         {
            _loc5_ = this.§7#F§.shift();
            _loc6_ = Math.random() * (this.§8"B§ - this.§&#r§) + this.§&#r§;
            if(this.§4C§ == §]!a§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§4C§ == §`!x§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§4C§ == §3"O§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§4C§ == §&$<§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§&#r§ / 2;
               _loc13_ = this.§8"B§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§5"Y§ = _loc8_ * _loc6_;
            _loc5_.§5#D§ = _loc9_ * _loc6_;
            _loc5_.x = this.§9!R§.x;
            _loc5_.y = this.§9!R§.y;
            this.§0"1§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§+#P§ = §""Z§.§3!]§.§5"0§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§+#P§.play();
         }
         var _loc2_:int = this.§0"1§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§0"1§[_loc4_];
            _loc5_.§5#D§ += this.§^!`§ * param1;
            if(_loc5_.§5#D§ > this.§<#E§)
            {
               _loc5_.§5#D§ = this.§<#E§;
            }
            _loc5_.x += _loc5_.§5"Y§ * param1;
            _loc5_.y += _loc5_.§5#D§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§>!N§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§0"1§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§0"1§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§4#1§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
