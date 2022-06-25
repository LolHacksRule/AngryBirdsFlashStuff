package starling.events
{
   import §4!S§.§#!s§;
   
   public final class §^K§
   {
      
      public static const §[!7§:String = "hover";
      
      public static const §5i§:String = "began";
      
      public static const §6!A§:String = "moved";
      
      public static const §9z§:String = "stationary";
      
      public static const §3!p§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[!7§ = "hover";
            while(true)
            {
               §5i§ = "began";
               loop1:
               for(; _loc2_; if(!(_loc2_ || _loc2_))
               {
                  continue;
               })
               {
                  §6!A§ = "moved";
                  while(true)
                  {
                     §9z§ = "stationary";
                     while(_loc2_ || §^K§)
                     {
                        §3!p§ = "ended";
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §^K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §#!s§();
      }
   }
}
