package §2"Y§
{
   public class §-!Y§ extends §&!x§
   {
       
      
      private var §]!R§:Boolean;
      
      private var §5#"§:Boolean;
      
      private var §@!x§:String;
      
      private var §;i§:String;
      
      private var §%"o§:String;
      
      private var §<b§:String;
      
      private var §'!$§:String;
      
      private var §2"p§:String;
      
      private var §<#&§:int;
      
      public function §-!Y§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§]!R§ = param9;
         this.§5#"§ = param10;
         this.§@!x§ = param11;
         this.§;i§ = param12;
         this.§%"o§ = param13;
         this.§<b§ = param14;
         this.§'!$§ = param15;
         this.§2"p§ = param16;
         this.§<#&§ = param17;
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§]!R§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.§5#"§;
      }
      
      public function get §3!k§() : int
      {
         return this.§<#&§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§@!x§;
      }
      
      public function get rollingSound() : String
      {
         return this.§'!$§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§<b§;
      }
      
      public function get damageSound() : String
      {
         return this.§%"o§;
      }
      
      public function get collisionSound() : String
      {
         return this.§;i§;
      }
   }
}
