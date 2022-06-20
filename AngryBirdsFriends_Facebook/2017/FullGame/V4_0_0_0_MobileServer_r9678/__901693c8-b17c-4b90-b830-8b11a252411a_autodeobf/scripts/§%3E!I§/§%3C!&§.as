package §>!I§
{
   public class §<!&§
   {
      
      private static var §%#b§:§<!&§;
       
      
      private var §,#Z§:Object;
      
      private var §9#;§:String;
      
      private var §0!p§:String;
      
      public function §<!&§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§,#Z§ = JSON.parse(param1);
         }
         this.§9#;§ = param2;
         this.§0!p§ = param3;
         if(§%#b§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §%#b§ = this;
      }
      
      public static function get § "D§() : §<!&§
      {
         if(!§%#b§)
         {
            §%#b§ = new §<!&§("","","");
         }
         return §%#b§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §<!&§(param1,param2,param3);
      }
      
      public function §^q§(param1:String) : String
      {
         param1 = this.§9#;§ + param1;
         if(this.§,#Z§ && this.§,#Z§[param1])
         {
            return this.§0!p§ + this.§,#Z§[param1];
         }
         return this.§0!p§ + param1;
      }
   }
}
