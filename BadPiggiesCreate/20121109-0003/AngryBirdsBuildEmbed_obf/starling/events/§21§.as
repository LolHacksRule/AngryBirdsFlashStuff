package starling.events
{
   import §6!@§.§;!%§;
   
   public final class §21§
   {
      
      public static const §&i§:String = "hover";
      
      public static const §%@§:String = "began";
      
      public static const §#!`§:String = "moved";
      
      public static const §2m§:String = "stationary";
      
      public static const §<w§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §21§)
         {
            §&i§ = "hover";
            if(!(_loc1_ && §21§))
            {
               §%@§ = "began";
               if(!(_loc1_ && §21§))
               {
                  §§goto(addr64);
               }
               §§goto(addr69);
            }
            addr64:
            §#!`§ = "moved";
            if(!_loc1_)
            {
               addr69:
               §2m§ = "stationary";
               if(_loc2_)
               {
                  addr74:
                  §<w§ = "ended";
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §21§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         throw new §;!%§();
      }
   }
}
