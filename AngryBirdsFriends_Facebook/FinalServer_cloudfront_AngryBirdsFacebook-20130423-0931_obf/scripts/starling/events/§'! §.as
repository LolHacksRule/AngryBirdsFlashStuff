package starling.events
{
   import §`#§.§7!p§;
   
   public final class §'! §
   {
      
      public static const §5"G§:String = "hover";
      
      public static const §?""§:String = "began";
      
      public static const §8!Y§:String = "moved";
      
      public static const §#!i§:String = "stationary";
      
      public static const §2!3§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'! §)
         {
            §5"G§ = "hover";
            while(true)
            {
               §?""§ = "began";
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  §8!Y§ = "moved";
                  loop2:
                  do
                  {
                     §#!i§ = "stationary";
                     while(!_loc1_)
                     {
                        §2!3§ = "ended";
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc2_);
                  
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §'! §()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §7!p§();
      }
   }
}
