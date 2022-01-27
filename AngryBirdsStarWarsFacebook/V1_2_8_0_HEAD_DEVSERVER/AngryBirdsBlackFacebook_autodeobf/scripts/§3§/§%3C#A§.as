package §3§#7
{
   import §6"G§.§-#C§;
   import com.angrybirds.§,!q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §<#A§ extends Sprite
   {
      
      public static const §=!D§:int = 0;
      
      public static const §!&§:int = 1;
      
      public static const §?b§:int = 2;
      
      public static const §=[§:int = 3;
      
      private static const §8#8§:String = "all";
      
      public static const §&"m§:uint = 40;
       
      
      private const §7!K§:Number = 0.3;
      
      private const §-"L§:Number = 25;
      
      private const §9#"§:Number = 10;
      
      private const §]!7§:Number = 9;
      
      private var §&]§:int;
      
      private var §]#T§:int;
      
      private var §5!j§:Vector.<§1"M§>;
      
      private var §7#L§:Vector.<§1"M§>;
      
      private var §!"g§:Point;
      
      private var § V§:int;
      
      public function §<#A§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§1"M§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§&]§ = param1;
         this.§]#T§ = param2;
         var _loc8_:Number = Math.min(§,!q§.§!"N§,§,!q§.§6G§);
         var _loc9_:Number = Math.max(§,!q§.§!"N§,§,!q§.§6G§);
         param3 /= §,!q§.§6G§;
         param4 /= §,!q§.§!"N§;
         this.§ V§ = param5;
         this.§!"g§ = new Point(param3,param4);
         this.§5!j§ = new Vector.<§1"M§>(0);
         this.§7#L§ = new Vector.<§1"M§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §1"M§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§5!j§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §%!G§() : void
      {
         var _loc1_:§1"M§ = null;
         while(this.§5!j§.length > 0)
         {
            _loc1_ = this.§5!j§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§%!G§();
         }
         while(this.§7#L§.length > 0)
         {
            _loc1_ = this.§7#L§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§%!G§();
         }
         this.§5!j§ = new Vector.<§1"M§>(0);
         this.§7#L§ = new Vector.<§1"M§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§1"M§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§1"M§ = null;
         param1 /= 20;
         while(this.§5!j§.length > 0)
         {
            _loc5_ = this.§5!j§.shift();
            _loc6_ = Math.random() * (this.§-"L§ - this.§9#"§) + this.§9#"§;
            if(this.§ V§ == §=!D§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§ V§ == §!&§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§ V§ == §?b§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§ V§ == §=[§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§9#"§ / 2;
               _loc13_ = this.§-"L§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§6#3§ = _loc8_ * _loc6_;
            _loc5_.§+!P§ = _loc9_ * _loc6_;
            _loc5_.x = this.§!"g§.x;
            _loc5_.y = this.§!"g§.y;
            this.§7#L§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§,#0§ = §-#C§.§%!E§.§^!H§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§,#0§.play();
         }
         var _loc2_:int = this.§7#L§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§7#L§[_loc4_];
            _loc5_.§+!P§ += this.§7!K§ * param1;
            if(_loc5_.§+!P§ > this.§]!7§)
            {
               _loc5_.§+!P§ = this.§]!7§;
            }
            _loc5_.x += _loc5_.§6#3§ * param1;
            _loc5_.y += _loc5_.§+!P§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§]#T§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§7#L§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§7#L§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§%!G§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
