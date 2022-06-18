package §>!5§
{
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7"&§.§!"v§;
   import §<"p§.§?!T§;
   
   public class §1!C§ extends §#-§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §5"B§:Number = Math.PI * 2;
       
      
      private var § $#§:Number;
      
      private var §]!9§:Number;
      
      private var §`"L§:Number;
      
      private var §=#@§:Number;
      
      private var §[!6§:Number;
      
      private var §3!y§:Number;
      
      private var §5m§:Number = 0;
      
      private var §-!J§:Number = 0;
      
      protected var §=@§:§]"o§;
      
      protected var §?!l§:Number = 0;
      
      protected var §`"T§:Number = 0;
      
      protected var §,!H§:Number = 0;
      
      public function §1!C§(param1:Sprite, param2:b2World, param3:§!"v§, param4:§]"o§)
      {
         this.§=@§ = param4;
         super(param1,param2,param3);
         this.§3!y§ = this.§=@§.angle;
         this.§`"L§ = this.§=@§.angle;
         this.§=#@§ = this.§=@§.x / §!!S§.§,"3§;
         this.§[!6§ = this.§=@§.y / §!!S§.§,"3§;
         this.§ $#§ = this.§=@§.x / §!!S§.§,"3§;
         this.§]!9§ = this.§=@§.y / §!!S§.§,"3§;
         if(this.§=@§.z != §^"9§.§!"V§)
         {
            §;!2§(this.§=@§.z);
         }
      }
      
      public function get §]#<§() : §]"o§
      {
         return this.§=@§;
      }
      
      public function §["b§() : Number
      {
         return this.§?!l§ * §!!S§.§,"3§;
      }
      
      public function §@W§() : Number
      {
         return this.§`"T§ * §!!S§.§,"3§;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§[O§(this.§`"L§);
         this.§=#@§ = this.§ $#§;
         this.§[!6§ = this.§]!9§;
         this.§`"L§ = getBody().GetAngle();
         this.§ $#§ = _loc3_ / §!!S§.§,"3§;
         this.§]!9§ = _loc4_ / §!!S§.§,"3§;
      }
      
      protected function §[O§(param1:Number) : void
      {
         this.§3!y§ = param1;
         this.§`"L§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§"!C§(param2,param3);
      }
      
      protected function §"!C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §?!T§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§ $#§ == this.§=#@§ || param2 == 0)
         {
            this.§5m§ = 0;
            this.§?!l§ = this.§ $#§;
         }
         else
         {
            this.§5m§ = param2 * (this.§=#@§ - this.§ $#§) / param1;
            this.§?!l§ = this.§ $#§ + this.§5m§;
         }
         if(this.§]!9§ == this.§[!6§ || param2 == 0)
         {
            this.§-!J§ = 0;
            this.§`"T§ = this.§]!9§;
         }
         else
         {
            this.§-!J§ = param2 * (this.§[!6§ - this.§]!9§) / param1;
            this.§`"T§ = this.§]!9§ + this.§-!J§;
         }
         if(this.§`"L§ == this.§3!y§ || param2 == 0)
         {
            this.§,!H§ = this.§`"L§;
         }
         else
         {
            _loc3_ = this.§`"L§ - this.§3!y§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §5"B§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §5"B§;
            }
            this.§,!H§ = this.§3!y§ + (param1 - param2) / param1 * _loc3_;
            if(this.§,!H§ >= §5"B§)
            {
               this.§,!H§ -= §5"B§;
            }
            else if(this.§,!H§ < 0)
            {
               this.§,!H§ += §5"B§;
            }
         }
      }
   }
}
