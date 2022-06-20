package §%#^§
{
   public class §2$-§
   {
      
      private static var §!#m§:§2$-§;
       
      
      private var §<"-§:Object;
      
      private var §6!v§:String;
      
      private var §!m§:String;
      
      public function §2$-§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§<"-§ = JSON.parse(param1);
         }
         this.§6!v§ = param2;
         this.§!m§ = param3;
         if(§!#m§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §!#m§ = this;
      }
      
      public static function get §3"1§() : §2$-§
      {
         if(!§!#m§)
         {
            §!#m§ = new §2$-§("","","");
         }
         return §!#m§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §2$-§(param1,param2,param3);
      }
      
      public function §4!a§(param1:String) : String
      {
         param1 = this.§6!v§ + param1;
         if(this.§<"-§ && this.§<"-§[param1])
         {
            return this.§!m§ + this.§<"-§[param1];
         }
         return this.§!m§ + param1;
      }
   }
}
