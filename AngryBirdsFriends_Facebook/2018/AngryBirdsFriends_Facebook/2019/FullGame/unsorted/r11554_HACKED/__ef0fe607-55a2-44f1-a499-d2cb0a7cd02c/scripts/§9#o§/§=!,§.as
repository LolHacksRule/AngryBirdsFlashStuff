package §9#o§
{
   public class §=!,§
   {
      
      private static var §#!5§:§=!,§;
       
      
      private var §!#K§:Object;
      
      private var §7!u§:String;
      
      private var §null§:String;
      
      public function §=!,§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§!#K§ = JSON.parse(param1);
         }
         this.§7!u§ = param2;
         this.§null§ = param3;
         if(§#!5§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §#!5§ = this;
      }
      
      public static function get §?q§() : §=!,§
      {
         if(!§#!5§)
         {
            §#!5§ = new §=!,§("","","");
         }
         return §#!5§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §=!,§(param1,param2,param3);
      }
      
      public function §6#^§(param1:String) : String
      {
         param1 = this.§7!u§ + param1;
         if(this.§!#K§ && this.§!#K§[param1])
         {
            return this.§null§ + this.§!#K§[param1];
         }
         return this.§null§ + param1;
      }
   }
}
