package starling.events
{
   import §`5§.§?g§;
   
   public final class §=<§
   {
      
      public static const §+!+§:String = "hover";
      
      public static const §4c§:String = "began";
      
      public static const §!!x§:String = "moved";
      
      public static const §![§:String = "stationary";
      
      public static const §<%§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §+!+§ = "hover";
            loop0:
            do
            {
               §4c§ = "began";
               while(true)
               {
                  §!!x§ = "moved";
                  while(!_loc2_)
                  {
                     §![§ = "stationary";
                     while(_loc1_)
                     {
                        §<%§ = "ended";
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!_loc1_);
            
         }
      }
      
      public function §=<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         throw new §?g§();
      }
   }
}
