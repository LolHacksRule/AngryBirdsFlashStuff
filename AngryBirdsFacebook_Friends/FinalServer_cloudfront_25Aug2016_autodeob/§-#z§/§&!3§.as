package §-#z§
{
   public class §&!3§
   {
      
      private static var §,!m§:§&!3§;
       
      
      private var §1#=§:Object;
      
      private var §;"J§:String;
      
      private var §2$"§:String;
      
      public function §&!3§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§1#=§ = JSON.parse(param1);
         }
         this.§;"J§ = param2;
         this.§2$"§ = param3;
         if(§,!m§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §,!m§ = this;
      }
      
      public static function get §3!]§() : §&!3§
      {
         if(!§,!m§)
         {
            §,!m§ = new §&!3§("","","");
         }
         return §,!m§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §&!3§(param1,param2,param3);
      }
      
      public function § $0§(param1:String) : String
      {
         param1 = this.§;"J§ + param1;
         if(this.§1#=§ && this.§1#=§[param1])
         {
            return this.§2$"§ + this.§1#=§[param1];
         }
         return this.§2$"§ + param1;
      }
   }
}
