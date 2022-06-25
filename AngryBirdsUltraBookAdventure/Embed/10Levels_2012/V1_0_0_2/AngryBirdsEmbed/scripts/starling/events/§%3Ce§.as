package starling.events
{
   import §8k§.§@B§;
   
   public final class §<e§
   {
      
      public static const §8;§:String = "hover";
      
      public static const §"=§:String = "began";
      
      public static const §!C§:String = "moved";
      
      public static const §1[§:String = "stationary";
      
      public static const §4[§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8;§ = "hover";
            if(!(_loc2_ && _loc1_))
            {
               §"=§ = "began";
               if(_loc1_)
               {
                  §!C§ = "moved";
                  if(_loc1_)
                  {
                     §1[§ = "stationary";
                     if(_loc1_)
                     {
                        addr68:
                        §4[§ = "ended";
                     }
                  }
                  §§goto(addr68);
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §<e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §@B§();
      }
   }
}
