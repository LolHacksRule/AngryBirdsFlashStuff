package starling.events
{
   import §]!R§.§'3§;
   
   public final class §-!#§
   {
      
      public static const §#-§:String = "hover";
      
      public static const §-""§:String = "began";
      
      public static const §8!U§:String = "moved";
      
      public static const §[!#§:String = "stationary";
      
      public static const §&i§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#-§ = "hover";
            loop0:
            while(true)
            {
               §-""§ = "began";
               while(true)
               {
                  §8!U§ = "moved";
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §[!#§ = "stationary";
                        do
                        {
                           §&i§ = "ended";
                        }
                        while(!_loc2_);
                        
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §-!#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §'3§();
      }
   }
}
