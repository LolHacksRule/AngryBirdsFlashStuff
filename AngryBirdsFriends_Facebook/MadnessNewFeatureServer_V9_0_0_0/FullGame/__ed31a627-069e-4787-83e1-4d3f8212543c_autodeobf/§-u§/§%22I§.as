package §-u§
{
   public class §"I§
   {
      
      private static var §1$8§:§"I§;
       
      
      private var §%K§:Object;
      
      private var §4T§:String;
      
      private var §,+§:String;
      
      public function §"I§(param1:String, param2:String, param3:String)
      {
         super();
         if(param1)
         {
            this.§%K§ = JSON.parse(param1);
         }
         this.§4T§ = param2;
         this.§,+§ = param3;
         if(§1$8§)
         {
            throw new Error("FileNameMapper must be singleton");
         }
         §1$8§ = this;
      }
      
      public static function get §`"H§() : §"I§
      {
         if(!§1$8§)
         {
            §1$8§ = new §"I§("","","");
         }
         return §1$8§;
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         new §"I§(param1,param2,param3);
      }
      
      public function §2$3§(param1:String) : String
      {
         param1 = this.§4T§ + param1;
         if(this.§%K§ && this.§%K§[param1])
         {
            return this.§,+§ + this.§%K§[param1];
         }
         return this.§,+§ + param1;
      }
   }
}
