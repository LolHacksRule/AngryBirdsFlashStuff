package §&?§
{
   public class §4#M§
   {
      
      private static var §+#!§:§4#M§;
       
      
      private var §4!j§:Object;
      
      private var §+!K§:String;
      
      private var §3G§:String;
      
      public function §4#M§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§4!j§ = JSON.parse(param1);
         }
         this.§+!K§ = param2;
         this.§3G§ = param3;
         if(§+#!§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §+#!§ = this;
      }
      
      public static function get §+!,§() : §4#M§
      {
         if(!§+#!§)
         {
            §+#!§ = new §4#M§("","","");
         }
         return §+#!§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §4#M§(param1,param2,param3);
      }
      
      public function §]!8§(param1:String) : String
      {
         param1 = this.§+!K§ + param1;
         if(this.§4!j§ && this.§4!j§[param1])
         {
            return this.§3G§ + this.§4!j§[param1];
         }
         return this.§3G§ + param1;
      }
   }
}
