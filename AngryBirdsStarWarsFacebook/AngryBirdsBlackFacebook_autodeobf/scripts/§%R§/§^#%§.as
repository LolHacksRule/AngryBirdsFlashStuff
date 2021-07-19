package §%R§
{
   public class §^#%§
   {
      
      private static var §=!h§:§^#%§;
       
      
      private var §="^§:Object;
      
      private var §+" §:String;
      
      private var §^g§:String;
      
      public function §^#%§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§="^§ = JSON.parse(param1);
         }
         this.§+" § = param2;
         this.§^g§ = param3;
         if(§=!h§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §=!h§ = this;
      }
      
      public static function get §%!E§() : §^#%§
      {
         if(!§=!h§)
         {
            §=!h§ = new §^#%§("","","");
         }
         return §=!h§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §^#%§(param1,param2,param3);
      }
      
      public function §2G§(param1:String) : String
      {
         param1 = this.§+" § + param1;
         if(this.§="^§ && this.§="^§[param1])
         {
            return this.§^g§ + this.§="^§[param1];
         }
         return this.§^g§ + param1;
      }
   }
}
