package §]#p§
{
   public class §1#]§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public var §0#i§:Object;
      
      public function §1#]§(param1:String, param2:String, param3:Object)
      {
         super();
         this.userID = param1;
         this.name = param2;
         this.§0#i§ = param3;
      }
      
      public static function §2u§(param1:Object) : §1#]§
      {
         return new §1#]§(param1.id,param1.name,param1.picture);
      }
      
      public function §#S§() : String
      {
         if(this.§0#i§ && this.§0#i§.data)
         {
            return this.§0#i§.data.url;
         }
         return "";
      }
   }
}
