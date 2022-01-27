package §<_§
{
   import §!!]§.Avatar;
   import §]_§.Characters;
   import §]_§.Items;
   
   public class §5!2§
   {
      
      public static var VERSION_NUMBER:String = "Tue 04/26";
      
      private static var smAvatar:Avatar = null;
      
      private static var smItems:Items = null;
      
      private static var smCharacters:Characters = null;
       
      
      public function §5!2§()
      {
         super();
      }
      
      public static function get §<R§() : Avatar
      {
         return smAvatar;
      }
      
      public static function set §<R§(value:Avatar) : void
      {
         smAvatar = value;
      }
      
      public static function §]W§() : Items
      {
         if(smItems == null)
         {
            smItems = new Items();
         }
         return smItems;
      }
      
      public static function §<o§() : Characters
      {
         if(smCharacters == null)
         {
            smCharacters = new Characters();
         }
         return smCharacters;
      }
   }
}
