package starling.events
{
   import §<t§.§ !'§;
   
   public final class §>;§
   {
      
      public static const §+S§:String = "hover";
      
      public static const §7!=§:String = "began";
      
      public static const §"%§:String = "moved";
      
      public static const §0!9§:String = "stationary";
      
      public static const §1!@§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+S§ = "hover";
            if(!(_loc1_ && _loc2_))
            {
               §7!=§ = "began";
               if(!(_loc1_ && _loc1_))
               {
                  addr59:
                  §"%§ = "moved";
                  if(_loc2_)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr69);
               }
            }
            addr64:
            §0!9§ = "stationary";
            if(!_loc1_)
            {
               addr69:
               §1!@§ = "ended";
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §>;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new § !'§();
      }
   }
}
