package §6!M§
{
   public class §"!O§ extends §8!]§
   {
       
      
      private var §]!f§:Boolean;
      
      private var §5!8§:Boolean;
      
      private var §=">§:String;
      
      private var §@j§:String;
      
      private var §-S§:String;
      
      private var §%!H§:String;
      
      private var §0!,§:String;
      
      private var §!!f§:String;
      
      private var §!"?§:int;
      
      public function §"!O§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§]!f§ = param9;
         this.§5!8§ = param10;
         this.§=">§ = param11;
         this.§@j§ = param12;
         this.§-S§ = param13;
         this.§%!H§ = param14;
         this.§0!,§ = param15;
         this.§!!f§ = param16;
         this.§!"?§ = param17;
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§]!f§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.§5!8§;
      }
      
      public function get §;U§() : int
      {
         return this.§!"?§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§=">§;
      }
      
      public function get rollingSound() : String
      {
         return this.§0!,§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§%!H§;
      }
      
      public function get damageSound() : String
      {
         return this.§-S§;
      }
      
      public function get collisionSound() : String
      {
         return this.§@j§;
      }
   }
}
