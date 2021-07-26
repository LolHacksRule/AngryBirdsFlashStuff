package §6!3§
{
   import §-#X§.§,!B§;
   import §1#v§.§;!Y§;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §+0§ extends §!y§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §6!i§:Number = Math.PI * 2;
       
      
      private var §&![§:Number;
      
      private var §8#^§:Number;
      
      private var §""l§:Number;
      
      private var § !l§:Number;
      
      private var §0#C§:Number;
      
      private var §0!`§:Number;
      
      private var §>!1§:Number = 0;
      
      private var §6"H§:Number = 0;
      
      protected var §@#h§:§,!B§;
      
      protected var §["d§:Number = 0;
      
      protected var §%#z§:Number = 0;
      
      protected var §'$5§:Number = 0;
      
      public function §+0§(param1:Sprite, param2:b2World, param3:§?$>§, param4:§,!B§)
      {
         this.§@#h§ = param4;
         super(param1,param2,param3);
         this.§0!`§ = this.§@#h§.angle;
         this.§""l§ = this.§@#h§.angle;
         this.§ !l§ = this.§@#h§.x / §!6§.§[#v§;
         this.§0#C§ = this.§@#h§.y / §!6§.§[#v§;
         this.§&![§ = this.§@#h§.x / §!6§.§[#v§;
         this.§8#^§ = this.§@#h§.y / §!6§.§[#v§;
         if(this.§@#h§.z != §;!U§.§@#X§)
         {
            §6!l§(this.§@#h§.z);
         }
      }
      
      public function get §&#r§() : §,!B§
      {
         return this.§@#h§;
      }
      
      public function §["]§() : Number
      {
         return this.§["d§ * §!6§.§[#v§;
      }
      
      public function §;"y§() : Number
      {
         return this.§%#z§ * §!6§.§[#v§;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§9"b§(this.§""l§);
         this.§ !l§ = this.§&![§;
         this.§0#C§ = this.§8#^§;
         this.§""l§ = getBody().GetAngle();
         this.§&![§ = _loc3_ / §!6§.§[#v§;
         this.§8#^§ = _loc4_ / §!6§.§[#v§;
      }
      
      protected function §9"b§(param1:Number) : void
      {
         this.§0!`§ = param1;
         this.§""l§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§7"[§(param2,param3);
      }
      
      protected function §7"[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §;!Y§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§&![§ == this.§ !l§ || param2 == 0)
         {
            this.§>!1§ = 0;
            this.§["d§ = this.§&![§;
         }
         else
         {
            this.§>!1§ = param2 * (this.§ !l§ - this.§&![§) / param1;
            this.§["d§ = this.§&![§ + this.§>!1§;
         }
         if(this.§8#^§ == this.§0#C§ || param2 == 0)
         {
            this.§6"H§ = 0;
            this.§%#z§ = this.§8#^§;
         }
         else
         {
            this.§6"H§ = param2 * (this.§0#C§ - this.§8#^§) / param1;
            this.§%#z§ = this.§8#^§ + this.§6"H§;
         }
         if(this.§""l§ == this.§0!`§ || param2 == 0)
         {
            this.§'$5§ = this.§""l§;
         }
         else
         {
            _loc3_ = this.§""l§ - this.§0!`§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §6!i§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §6!i§;
            }
            this.§'$5§ = this.§0!`§ + (param1 - param2) / param1 * _loc3_;
            if(this.§'$5§ >= §6!i§)
            {
               this.§'$5§ -= §6!i§;
            }
            else if(this.§'$5§ < 0)
            {
               this.§'$5§ += §6!i§;
            }
         }
      }
   }
}
