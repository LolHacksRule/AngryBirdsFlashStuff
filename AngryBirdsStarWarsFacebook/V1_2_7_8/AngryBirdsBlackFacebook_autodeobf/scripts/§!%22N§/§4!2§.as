package §!"N§
{
   public class §4!2§
   {
      
      private static var §9"r§:§4!2§;
       
      
      private var § "u§:Object;
      
      private var §5#4§:String;
      
      private var §4!§:String;
      
      public function §4!2§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§ "u§ = JSON.parse(param1);
         }
         this.§5#4§ = param2;
         this.§4!§ = param3;
         if(§9"r§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §9"r§ = this;
      }
      
      public static function get §-G§() : §4!2§
      {
         if(!§9"r§)
         {
            §9"r§ = new §4!2§("","","");
         }
         return §9"r§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §4!2§(param1,param2,param3);
      }
      
      public function §2"Y§(param1:String) : String
      {
         param1 = this.§5#4§ + param1;
         if(this.§ "u§ && this.§ "u§[param1])
         {
            return this.§4!§ + this.§ "u§[param1];
         }
         return this.§4!§ + param1;
      }
   }
}
