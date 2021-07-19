package starling.events
{
   import §;8§.§["T§;
   
   public final class §5X§
   {
      
      public static const §;!s§:String = "hover";
      
      public static const §<!A§:String = "began";
      
      public static const §!!Z§:String = "moved";
      
      public static const §@#6§:String = "stationary";
      
      public static const §"!u§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;!s§ = "hover";
         }
         loop0:
         do
         {
            §<!A§ = "began";
            loop1:
            while(true)
            {
               §!!Z§ = "moved";
               do
               {
                  §@#6§ = "stationary";
                  continue loop1;
               }
               while(!_loc2_);
               
               continue loop0;
            }
         }
         while(!_loc2_);
         
      }
      
      public function §5X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §["T§();
      }
   }
}
