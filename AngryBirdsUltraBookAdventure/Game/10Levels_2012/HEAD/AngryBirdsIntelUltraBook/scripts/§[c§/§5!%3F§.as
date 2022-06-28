package §[c§
{
   import §03§.Avatar;
   import §;0§.Characters;
   import §;0§.Items;
   
   public class §5!?§
   {
      
      public static var VERSION_NUMBER:String = "Tue 04/26";
      
      private static var smAvatar:Avatar = null;
      
      private static var smItems:Items = null;
      
      private static var smCharacters:Characters = null;
       
      
      public function §5!?§()
      {
         super();
      }
      
      public static function get §'d§() : Avatar
      {
         return smAvatar;
      }
      
      public static function set §'d§(value:Avatar) : void
      {
         smAvatar = value;
      }
      
      public static function §'%§() : Items
      {
         if(smItems == null)
         {
            smItems = new Items();
         }
         return smItems;
      }
      
      public static function §5+§() : Characters
      {
         if(smCharacters == null)
         {
            smCharacters = new Characters();
         }
         return smCharacters;
      }
   }
}
