package §>#G§
{
   public class §#!I§
   {
      
      private static var §!c§:§#!I§;
       
      
      private var §3#J§:Object;
      
      private var §2#r§:String;
      
      private var §6Z§:String;
      
      public function §#!I§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§3#J§ = JSON.parse(param1);
         }
         this.§2#r§ = param2;
         this.§6Z§ = param3;
         if(§!c§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §!c§ = this;
      }
      
      public static function get §6!§() : §#!I§
      {
         if(!§!c§)
         {
            §!c§ = new §#!I§("","","");
         }
         return §!c§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §#!I§(param1,param2,param3);
      }
      
      public function §!"i§(param1:String) : String
      {
         param1 = this.§2#r§ + param1;
         if(this.§3#J§ && this.§3#J§[param1])
         {
            return this.§6Z§ + this.§3#J§[param1];
         }
         return this.§6Z§ + param1;
      }
   }
}
