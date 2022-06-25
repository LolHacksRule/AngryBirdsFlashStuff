package starling.events
{
   import §"v§.§2!;§;
   
   public final class §!!j§
   {
      
      public static const §^!R§:String = "hover";
      
      public static const § 0§:String = "began";
      
      public static const §4!^§:String = "moved";
      
      public static const §@Y§:String = "stationary";
      
      public static const §?c§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!R§ = "hover";
            while(true)
            {
               § 0§ = "began";
               while(!_loc2_)
               {
                  §4!^§ = "moved";
                  if(!(_loc2_ && §!!j§))
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         while(true)
         {
            §@Y§ = "stationary";
            while(_loc1_)
            {
               §?c§ = "ended";
               if(_loc2_ && §!!j§)
               {
                  continue;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr61);
      }
      
      public function §!!j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §2!;§();
      }
   }
}
