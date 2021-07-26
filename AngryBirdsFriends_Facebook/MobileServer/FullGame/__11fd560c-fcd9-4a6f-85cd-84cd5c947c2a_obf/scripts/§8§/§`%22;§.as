package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §]!6§.§6Y§;
   import §^"S§.Sprite;
   
   public class §`";§ extends §,#5§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §'!T§:Number = Math.PI * 2;
       
      
      private var §;$6§:Number;
      
      private var §8"E§:Number;
      
      private var §8"G§:Number;
      
      private var §!#q§:Number;
      
      private var §#!+§:Number;
      
      private var §@#6§:Number;
      
      private var §!"H§:Number = 0;
      
      private var §-$4§:Number = 0;
      
      protected var §%!@§:§["z§;
      
      protected var §8u§:Number = 0;
      
      protected var §!#§:Number = 0;
      
      protected var §]#8§:Number = 0;
      
      public function §`";§(param1:Sprite, param2:b2World, param3:§4U§, param4:§["z§)
      {
         this.§%!@§ = param4;
         super(param1,param2,param3);
         this.§@#6§ = this.§%!@§.angle;
         this.§8"G§ = this.§%!@§.angle;
         this.§!#q§ = this.§%!@§.x / §%!q§.§6q§;
         this.§#!+§ = this.§%!@§.y / §%!q§.§6q§;
         this.§;$6§ = this.§%!@§.x / §%!q§.§6q§;
         this.§8"E§ = this.§%!@§.y / §%!q§.§6q§;
         if(this.§%!@§.z != §4!y§.§8[§)
         {
            §%"r§(this.§%!@§.z);
         }
      }
      
      public function get §9"f§() : §["z§
      {
         return this.§%!@§;
      }
      
      public function §&"0§() : Number
      {
         return this.§8u§ * §%!q§.§6q§;
      }
      
      public function §5"l§() : Number
      {
         return this.§!#§ * §%!q§.§6q§;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§+!G§(this.§8"G§);
         this.§!#q§ = this.§;$6§;
         this.§#!+§ = this.§8"E§;
         this.§8"G§ = getBody().GetAngle();
         this.§;$6§ = _loc3_ / §%!q§.§6q§;
         this.§8"E§ = _loc4_ / §%!q§.§6q§;
      }
      
      protected function §+!G§(param1:Number) : void
      {
         this.§@#6§ = param1;
         this.§8"G§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§4'§(param2,param3);
      }
      
      protected function §4'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §6Y§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§;$6§ == this.§!#q§ || param2 == 0)
         {
            this.§!"H§ = 0;
            this.§8u§ = this.§;$6§;
         }
         else
         {
            this.§!"H§ = param2 * (this.§!#q§ - this.§;$6§) / param1;
            this.§8u§ = this.§;$6§ + this.§!"H§;
         }
         if(this.§8"E§ == this.§#!+§ || param2 == 0)
         {
            this.§-$4§ = 0;
            this.§!#§ = this.§8"E§;
         }
         else
         {
            this.§-$4§ = param2 * (this.§#!+§ - this.§8"E§) / param1;
            this.§!#§ = this.§8"E§ + this.§-$4§;
         }
         if(this.§8"G§ == this.§@#6§ || param2 == 0)
         {
            this.§]#8§ = this.§8"G§;
         }
         else
         {
            _loc3_ = this.§8"G§ - this.§@#6§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §'!T§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §'!T§;
            }
            this.§]#8§ = this.§@#6§ + (param1 - param2) / param1 * _loc3_;
            if(this.§]#8§ >= §'!T§)
            {
               this.§]#8§ -= §'!T§;
            }
            else if(this.§]#8§ < 0)
            {
               this.§]#8§ += §'!T§;
            }
         }
      }
   }
}
