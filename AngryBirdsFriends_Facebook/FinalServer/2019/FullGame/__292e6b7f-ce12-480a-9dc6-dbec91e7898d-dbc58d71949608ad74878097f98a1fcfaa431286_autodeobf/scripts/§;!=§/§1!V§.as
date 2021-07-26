package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §6"p§.§^"t§;
   import §8#K§.§&2§;
   
   public class §1!V§ extends §'#N§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §""k§:Number = Math.PI * 2;
       
      
      private var §6#+§:Number;
      
      private var §&#?§:Number;
      
      private var §["T§:Number;
      
      private var §6-§:Number;
      
      private var §'!K§:Number;
      
      private var §1#Q§:Number;
      
      private var §3"=§:Number = 0;
      
      private var §?"u§:Number = 0;
      
      protected var §9y§:§5"?§;
      
      protected var §&$'§:Number = 0;
      
      protected var §<#-§:Number = 0;
      
      protected var §^]§:Number = 0;
      
      public function §1!V§(param1:Sprite, param2:b2World, param3:§&2§, param4:§5"?§)
      {
         this.§9y§ = param4;
         super(param1,param2,param3);
         this.§1#Q§ = this.§9y§.angle;
         this.§["T§ = this.§9y§.angle;
         this.§6-§ = this.§9y§.x / §8#3§.§2K§;
         this.§'!K§ = this.§9y§.y / §8#3§.§2K§;
         this.§6#+§ = this.§9y§.x / §8#3§.§2K§;
         this.§&#?§ = this.§9y§.y / §8#3§.§2K§;
         if(this.§9y§.z != §>"G§.§-$"§)
         {
            §%#>§(this.§9y§.z);
         }
      }
      
      public function get §8!E§() : §5"?§
      {
         return this.§9y§;
      }
      
      public function §;!$§() : Number
      {
         return this.§&$'§ * §8#3§.§2K§;
      }
      
      public function §?#>§() : Number
      {
         return this.§<#-§ * §8#3§.§2K§;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§7t§(this.§["T§);
         this.§6-§ = this.§6#+§;
         this.§'!K§ = this.§&#?§;
         this.§["T§ = getBody().GetAngle();
         this.§6#+§ = _loc3_ / §8#3§.§2K§;
         this.§&#?§ = _loc4_ / §8#3§.§2K§;
      }
      
      protected function §7t§(param1:Number) : void
      {
         this.§1#Q§ = param1;
         this.§["T§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§4p§(param2,param3);
      }
      
      protected function §4p§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §^"t§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§6#+§ == this.§6-§ || param2 == 0)
         {
            this.§3"=§ = 0;
            this.§&$'§ = this.§6#+§;
         }
         else
         {
            this.§3"=§ = param2 * (this.§6-§ - this.§6#+§) / param1;
            this.§&$'§ = this.§6#+§ + this.§3"=§;
         }
         if(this.§&#?§ == this.§'!K§ || param2 == 0)
         {
            this.§?"u§ = 0;
            this.§<#-§ = this.§&#?§;
         }
         else
         {
            this.§?"u§ = param2 * (this.§'!K§ - this.§&#?§) / param1;
            this.§<#-§ = this.§&#?§ + this.§?"u§;
         }
         if(this.§["T§ == this.§1#Q§ || param2 == 0)
         {
            this.§^]§ = this.§["T§;
         }
         else
         {
            _loc3_ = this.§["T§ - this.§1#Q§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §""k§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §""k§;
            }
            this.§^]§ = this.§1#Q§ + (param1 - param2) / param1 * _loc3_;
            if(this.§^]§ >= §""k§)
            {
               this.§^]§ -= §""k§;
            }
            else if(this.§^]§ < 0)
            {
               this.§^]§ += §""k§;
            }
         }
      }
   }
}
