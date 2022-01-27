package §3>§
{
   public class §1!0§ extends §!4§
   {
       
      
      private var §>!"§:Boolean;
      
      private var §3!v§:Boolean;
      
      private var §8>§:String;
      
      private var §=V§:String;
      
      private var §7B§:String;
      
      private var §@">§:String;
      
      private var §%!,§:String;
      
      private var §@"2§:String;
      
      private var §7N§:int;
      
      public function §1!0§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§>!"§ = param9;
         this.§3!v§ = param10;
         this.§8>§ = param11;
         this.§=V§ = param12;
         this.§7B§ = param13;
         this.§@">§ = param14;
         this.§%!,§ = param15;
         this.§@"2§ = param16;
         this.§7N§ = param17;
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§>!"§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.§3!v§;
      }
      
      public function get §<! §() : int
      {
         return this.§7N§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§8>§;
      }
      
      public function get rollingSound() : String
      {
         return this.§%!,§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§@">§;
      }
      
      public function get damageSound() : String
      {
         return this.§7B§;
      }
      
      public function get collisionSound() : String
      {
         return this.§=V§;
      }
   }
}
