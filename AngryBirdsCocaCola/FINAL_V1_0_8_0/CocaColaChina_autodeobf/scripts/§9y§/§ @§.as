package §9y§
{
   import §&!9§.§,,§;
   import §&F§.§>!2§;
   import §0!b§.§#!=§;
   import §48§.§#i§;
   import §48§.§4a§;
   import §6!4§.Texture;
   import §?=§.§8S§;
   import §^=§.§5e§;
   
   public class § @§ extends §8S§
   {
      
      public static const §1!6§:int = 4;
      
      public static const §?`§:int = 5;
       
      
      private var §catch§:Number;
      
      private var §[H§:Number;
      
      private var §-!;§:int;
      
      public function § @§(param1:§#i§, param2:§4a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§catch§ = param6 + Math.random() * param18;
         this.§-!;§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§=X§ == §1!6§)
         {
            §+!7§ = §#!=§.§&![§.§&!D§.§]![§ + §@!+§.height * §>!2§.§9d§;
         }
         else if(this.§=X§ == §?`§)
         {
            this.§catch§ = param6;
            this.§[H§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§=X§ == §1!6§)
         {
            if(§+!7§ > 0 && §@;§ > §+!7§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§=X§ == §1!6§)
         {
            §@!+§.alpha = Math.max(0,Math.min(1,2 * §5e§.§1f§((§#-§ - §]!4§) / §#-§,false)));
            _loc2_ = Math.atan2(-§1Y§,§;X§) * (180 / Math.PI);
            §@!+§.scaleX = Math.max(0.2,§@!+§.alpha);
            §@!+§.scaleY = Math.max(0.2,§@!+§.alpha);
            §@!+§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §@;§ += §1Y§ * param1 / 1000;
            §!f§ = this.§catch§ + Math.sin(§@;§) * this.§-!;§;
            return true;
         }
         if(§=X§ == §?`§)
         {
            §@!+§.alpha = Math.max(0,Math.min(1,2 * §5e§.§1f§((§#-§ - §]!4§) / §#-§,false)));
            §@!+§.scaleX = §@!+§.scaleY = §5e§.§1f§((§#-§ + (§]!4§ + 0.2)) / §#-§,false);
            §!f§ = this.§catch§;
            §@;§ = this.§[H§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §,,§
      {
         return new §,,§(param1,true);
      }
   }
}
