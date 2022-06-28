package §_-y7§
{
   import §_-4§.Items;
   import §_-4§.§_-4H§;
   import §_-Mc§.§_-059§;
   
   public class §_-xe§
   {
      
      public static var §_-6Y§:String = "Tue 04/26";
      
      private static var §_-hM§:§_-059§ = null;
      
      private static var §_-np§:Items = null;
      
      private static var §_-0B2§:§_-4H§ = null;
       
      
      public function §_-xe§()
      {
         super();
      }
      
      public static function get §_-0Ec§() : §_-059§
      {
         return §_-hM§;
      }
      
      public static function set §_-0Ec§(param1:§_-059§) : void
      {
         §_-hM§ = param1;
      }
      
      public static function §_-eA§() : Items
      {
         if(§_-np§ == null)
         {
            §_-np§ = new Items();
         }
         return §_-np§;
      }
      
      public static function §_-s2§() : §_-4H§
      {
         if(§_-0B2§ == null)
         {
            §_-0B2§ = new §_-4H§();
         }
         return §_-0B2§;
      }
   }
}
