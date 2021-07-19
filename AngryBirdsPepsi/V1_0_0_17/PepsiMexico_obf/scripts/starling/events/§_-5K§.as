package starling.events
{
   import §_-HT§.§_-rU§;
   
   public final class §_-5K§
   {
      
      public static const §_-d2§:String = "hover";
      
      public static const §_-RF§:String = "began";
      
      public static const §_-qP§:String = "moved";
      
      public static const §_-CC§:String = "stationary";
      
      public static const §_-an§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-d2§ = "hover";
            if(!(_loc2_ && _loc1_))
            {
               §_-RF§ = "began";
               if(_loc1_)
               {
                  §_-qP§ = "moved";
                  if(_loc1_ || _loc1_)
                  {
                  }
                  §§goto(addr62);
               }
               §_-CC§ = "stationary";
               if(!_loc1_)
               {
               }
               §§goto(addr62);
            }
            §_-an§ = "ended";
         }
         addr62:
      }
      
      public function §_-5K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §_-rU§();
      }
   }
}
