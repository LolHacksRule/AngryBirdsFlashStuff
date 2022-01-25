package §43§
{
   import §#!a§.Texture;
   import §5!?§.§>"§;
   import §6!Q§.§8!_§;
   import §8r§.§ "§;
   import §8r§.§@V§;
   import §;t§.§=_§;
   import §=F§.§"n§;
   import §@!>§.§<!J§;
   
   public class §@r§ extends §<!J§
   {
      
      public static const §"5§:int = 4;
      
      public static const §>!Q§:int = 5;
       
      
      private var §2Z§:Number;
      
      private var §6Y§:Number;
      
      private var §5w§:int;
      
      public function §@r§(param1:§ "§, param2:§@V§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§2Z§ = param6 + Math.random() * param18;
         this.§5w§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§[R§ == §"5§)
         {
            §6!c§ = §"n§.§[b§.§>!J§.§09§ + §=o§.height * §>"§.§'!S§;
         }
         else if(this.§[R§ == §>!Q§)
         {
            this.§2Z§ = param6;
            this.§6Y§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§[R§ == §"5§)
         {
            if(§6!c§ > 0 && §>!a§ > §6!c§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§[R§ == §"5§)
         {
            §=o§.alpha = Math.max(0,Math.min(1,2 * §8!_§.§9R§((§69§ - §0+§) / §69§,false)));
            _loc2_ = Math.atan2(-§1O§,§@!X§) * (180 / Math.PI);
            §=o§.scaleX = Math.max(0.2,§=o§.alpha);
            §=o§.scaleY = Math.max(0.2,§=o§.alpha);
            §=o§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §>!a§ += §1O§ * param1 / 1000;
            §?H§ = this.§2Z§ + Math.sin(§>!a§) * this.§5w§;
            return true;
         }
         if(§[R§ == §>!Q§)
         {
            §=o§.alpha = Math.max(0,Math.min(1,2 * §8!_§.§9R§((§69§ - §0+§) / §69§,false)));
            §=o§.scaleX = §=o§.scaleY = §8!_§.§9R§((§69§ + (§0+§ + 0.2)) / §69§,false);
            §?H§ = this.§2Z§;
            §>!a§ = this.§6Y§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §=_§
      {
         return new §=_§(param1,true);
      }
   }
}
