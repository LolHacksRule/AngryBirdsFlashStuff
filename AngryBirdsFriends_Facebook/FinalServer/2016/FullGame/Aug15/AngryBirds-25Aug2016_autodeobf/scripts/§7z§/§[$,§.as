package §7z§
{
   public class §[$,§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public var §8#;§:Object;
      
      public function §[$,§(param1:String, param2:String, param3:Object)
      {
         super();
         this.userID = param1;
         this.name = param2;
         this.§8#;§ = param3;
      }
      
      public static function §>!§(param1:Object) : §[$,§
      {
         return new §[$,§(param1.id,param1.name,param1.picture);
      }
      
      public function §+!Y§() : String
      {
         if(this.§8#;§ && this.§8#;§.data)
         {
            return this.§8#;§.data.url;
         }
         return "";
      }
   }
}
