package starling.events
{
   import §8E§.§6g§;
   
   public final class §9j§
   {
      
      public static const §"s§:String = "hover";
      
      public static const §3L§:String = "began";
      
      public static const §#U§:String = "moved";
      
      public static const §2c§:String = "stationary";
      
      public static const §@q§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"s§ = "hover";
            if(!(_loc2_ && _loc1_))
            {
               §3L§ = "began";
               if(_loc1_)
               {
                  §#U§ = "moved";
                  if(_loc1_)
                  {
                     §2c§ = "stationary";
                     if(_loc1_)
                     {
                        addr68:
                        §@q§ = "ended";
                     }
                  }
                  §§goto(addr68);
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §9j§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §6g§();
      }
   }
}
