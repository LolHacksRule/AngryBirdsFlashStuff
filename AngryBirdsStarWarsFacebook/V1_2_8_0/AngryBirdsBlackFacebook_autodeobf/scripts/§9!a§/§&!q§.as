package §9!a§
{
   import §0"g§.§5!%§;
   import com.angrybirds.§<!J§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §&!q§ extends Sprite
   {
      
      public static const §[0§:int = 0;
      
      public static const §=!N§:int = 1;
      
      public static const §[">§:int = 2;
      
      public static const §`@§:int = 3;
      
      private static const §@#&§:String = "all";
      
      public static const §9?§:uint = 40;
       
      
      private const §8Q§:Number = 0.3;
      
      private const §6"D§:Number = 25;
      
      private const §,"u§:Number = 10;
      
      private const §%"j§:Number = 9;
      
      private var §&"V§:int;
      
      private var §@!r§:int;
      
      private var §9L§:Vector.<§]a§>;
      
      private var §-!0§:Vector.<§]a§>;
      
      private var §#!r§:Point;
      
      private var §#"x§:int;
      
      public function §&!q§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§]a§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§&"V§ = param1;
         this.§@!r§ = param2;
         var _loc8_:Number = Math.min(§<!J§.§`1§,§<!J§.§^K§);
         var _loc9_:Number = Math.max(§<!J§.§`1§,§<!J§.§^K§);
         param3 /= §<!J§.§^K§;
         param4 /= §<!J§.§`1§;
         this.§#"x§ = param5;
         this.§#!r§ = new Point(param3,param4);
         this.§9L§ = new Vector.<§]a§>(0);
         this.§-!0§ = new Vector.<§]a§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §]a§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§9L§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function § "!§() : void
      {
         var _loc1_:§]a§ = null;
         while(this.§9L§.length > 0)
         {
            _loc1_ = this.§9L§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§ "!§();
         }
         while(this.§-!0§.length > 0)
         {
            _loc1_ = this.§-!0§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§ "!§();
         }
         this.§9L§ = new Vector.<§]a§>(0);
         this.§-!0§ = new Vector.<§]a§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§]a§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§]a§ = null;
         param1 /= 20;
         while(this.§9L§.length > 0)
         {
            _loc5_ = this.§9L§.shift();
            _loc6_ = Math.random() * (this.§6"D§ - this.§,"u§) + this.§,"u§;
            if(this.§#"x§ == §[0§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§#"x§ == §=!N§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§#"x§ == §[">§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§#"x§ == §`@§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§,"u§ / 2;
               _loc13_ = this.§6"D§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§1K§ = _loc8_ * _loc6_;
            _loc5_.§["l§ = _loc9_ * _loc6_;
            _loc5_.x = this.§#!r§.x;
            _loc5_.y = this.§#!r§.y;
            this.§-!0§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§1!V§ = §5!%§.§!6§.§4!M§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§1!V§.play();
         }
         var _loc2_:int = this.§-!0§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§-!0§[_loc4_];
            _loc5_.§["l§ += this.§8Q§ * param1;
            if(_loc5_.§["l§ > this.§%"j§)
            {
               _loc5_.§["l§ = this.§%"j§;
            }
            _loc5_.x += _loc5_.§1K§ * param1;
            _loc5_.y += _loc5_.§["l§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§@!r§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§-!0§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§-!0§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§ "!§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
