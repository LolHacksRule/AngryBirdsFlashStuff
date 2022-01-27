package §>P§
{
   public class §"s§ extends §1C§
   {
       
      
      private var §>"#§:Boolean;
      
      private var §=!b§:Boolean;
      
      private var §break§:String;
      
      private var §74§:String;
      
      private var §8`§:String;
      
      private var §3!X§:String;
      
      private var §#"`§:String;
      
      private var §^!W§:String;
      
      private var §;#%§:int;
      
      public function §"s§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Boolean, param11:String, param12:String, param13:String, param14:String, param15:String, param16:String, param17:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§>"#§ = param9;
         this.§=!b§ = param10;
         this.§break§ = param11;
         this.§74§ = param12;
         this.§8`§ = param13;
         this.§3!X§ = param14;
         this.§#"`§ = param15;
         this.§^!W§ = param16;
         this.§;#%§ = param17;
      }
      
      public function get bouncesLaser() : Boolean
      {
         return this.§>"#§;
      }
      
      public function get bouncesLaserTargeted() : Boolean
      {
         return this.§=!b§;
      }
      
      public function get §^Y§() : int
      {
         return this.§;#%§;
      }
      
      public function get particlesDestroyed() : String
      {
         return this.§break§;
      }
      
      public function get rollingSound() : String
      {
         return this.§#"`§;
      }
      
      public function get destroyedSound() : String
      {
         return this.§3!X§;
      }
      
      public function get damageSound() : String
      {
         return this.§8`§;
      }
      
      public function get collisionSound() : String
      {
         return this.§74§;
      }
   }
}
