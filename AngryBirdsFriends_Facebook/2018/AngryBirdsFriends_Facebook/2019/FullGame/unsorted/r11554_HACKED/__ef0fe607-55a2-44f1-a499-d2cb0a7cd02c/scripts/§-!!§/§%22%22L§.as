package §-!!§
{
   import § !D§.§'"u§;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9#K§.§=#f§;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   
   public class §""L§ extends §1#B§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §;!q§:Number = Math.PI * 2;
       
      
      private var §?#e§:Number;
      
      private var §!"%§:Number;
      
      private var §["F§:Number;
      
      private var §"!H§:Number;
      
      private var §!#F§:Number;
      
      private var §0!%§:Number;
      
      private var §-!m§:Number = 0;
      
      private var §?!D§:Number = 0;
      
      protected var §4!_§:§9"4§;
      
      protected var §-##§:Number = 0;
      
      protected var §0#[§:Number = 0;
      
      protected var §%"b§:Number = 0;
      
      public function §""L§(param1:Sprite, param2:b2World, param3:§,Y§, param4:§9"4§)
      {
         this.§4!_§ = param4;
         super(param1,param2,param3);
         this.§0!%§ = this.§4!_§.angle;
         this.§["F§ = this.§4!_§.angle;
         this.§"!H§ = this.§4!_§.x / §'"u§.§'#e§;
         this.§!#F§ = this.§4!_§.y / §'"u§.§'#e§;
         this.§?#e§ = this.§4!_§.x / §'"u§.§'#e§;
         this.§!"%§ = this.§4!_§.y / §'"u§.§'#e§;
         if(this.§4!_§.z != §8"J§.§9$9§)
         {
            §,4§(this.§4!_§.z);
         }
      }
      
      public function get §?#=§() : §9"4§
      {
         return this.§4!_§;
      }
      
      public function §"s§() : Number
      {
         return this.§-##§ * §'"u§.§'#e§;
      }
      
      public function §7"7§() : Number
      {
         return this.§0#[§ * §'"u§.§'#e§;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§4"g§(this.§["F§);
         this.§"!H§ = this.§?#e§;
         this.§!#F§ = this.§!"%§;
         this.§["F§ = getBody().GetAngle();
         this.§?#e§ = _loc3_ / §'"u§.§'#e§;
         this.§!"%§ = _loc4_ / §'"u§.§'#e§;
      }
      
      protected function §4"g§(param1:Number) : void
      {
         this.§0!%§ = param1;
         this.§["F§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§-!w§(param2,param3);
      }
      
      protected function §-!w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §=#f§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§?#e§ == this.§"!H§ || param2 == 0)
         {
            this.§-!m§ = 0;
            this.§-##§ = this.§?#e§;
         }
         else
         {
            this.§-!m§ = param2 * (this.§"!H§ - this.§?#e§) / param1;
            this.§-##§ = this.§?#e§ + this.§-!m§;
         }
         if(this.§!"%§ == this.§!#F§ || param2 == 0)
         {
            this.§?!D§ = 0;
            this.§0#[§ = this.§!"%§;
         }
         else
         {
            this.§?!D§ = param2 * (this.§!#F§ - this.§!"%§) / param1;
            this.§0#[§ = this.§!"%§ + this.§?!D§;
         }
         if(this.§["F§ == this.§0!%§ || param2 == 0)
         {
            this.§%"b§ = this.§["F§;
         }
         else
         {
            _loc3_ = this.§["F§ - this.§0!%§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §;!q§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §;!q§;
            }
            this.§%"b§ = this.§0!%§ + (param1 - param2) / param1 * _loc3_;
            if(this.§%"b§ >= §;!q§)
            {
               this.§%"b§ -= §;!q§;
            }
            else if(this.§%"b§ < 0)
            {
               this.§%"b§ += §;!q§;
            }
         }
      }
   }
}
