package §@[§
{
   public class §4"o§
   {
      
      private static var §7o§:§4"o§;
       
      
      private var §9!^§:Object;
      
      private var §8!F§:String;
      
      private var §9",§:String;
      
      public function §4"o§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§9!^§ = JSON.parse(param1);
         }
         this.§8!F§ = param2;
         this.§9",§ = param3;
         if(§7o§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §7o§ = this;
      }
      
      public static function get §!6§() : §4"o§
      {
         if(!§7o§)
         {
            §7o§ = new §4"o§("","","");
         }
         return §7o§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §4"o§(param1,param2,param3);
      }
      
      public function §^"X§(param1:String) : String
      {
         param1 = this.§8!F§ + param1;
         if(this.§9!^§ && this.§9!^§[param1])
         {
            return this.§9",§ + this.§9!^§[param1];
         }
         return this.§9",§ + param1;
      }
   }
}
