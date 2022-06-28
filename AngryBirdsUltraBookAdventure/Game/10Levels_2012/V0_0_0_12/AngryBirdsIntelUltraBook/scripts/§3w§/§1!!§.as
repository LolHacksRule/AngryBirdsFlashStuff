package §3w§
{
   import §[!H§.Avatar;
   import §^B§.Characters;
   import §^B§.Items;
   
   public class §1!!§
   {
      
      public static var VERSION_NUMBER:String = "Tue 04/26";
      
      private static var smAvatar:Avatar = null;
      
      private static var smItems:Items = null;
      
      private static var smCharacters:Characters = null;
       
      
      public function §1!!§()
      {
         super();
      }
      
      public static function get §1!S§() : Avatar
      {
         return smAvatar;
      }
      
      public static function set §1!S§(value:Avatar) : void
      {
         smAvatar = value;
      }
      
      public static function §[!Y§() : Items
      {
         if(smItems == null)
         {
            smItems = new Items();
         }
         return smItems;
      }
      
      public static function §=x§() : Characters
      {
         if(smCharacters == null)
         {
            smCharacters = new Characters();
         }
         return smCharacters;
      }
   }
}
