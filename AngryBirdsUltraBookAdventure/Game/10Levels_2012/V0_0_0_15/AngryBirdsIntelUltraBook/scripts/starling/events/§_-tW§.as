package starling.events
{
   import §_-JM§.§_-03y§;
   
   public final class §_-tW§
   {
      
      public static const §for §:String = "hover";
      
      public static const §_-h4§:String = "began";
      
      public static const §_-Ua§:String = "moved";
      
      public static const §_-jl§:String = "stationary";
      
      public static const §_-0Cc§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §for § = "hover";
            loop0:
            while(true)
            {
               §_-h4§ = "began";
               while(true)
               {
                  §_-Ua§ = "moved";
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        §_-jl§ = "stationary";
                        do
                        {
                           §_-0Cc§ = "ended";
                        }
                        while(_loc2_);
                        
                        if(_loc1_)
                        {
                           if(_loc1_)
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
         §§goto(addr65);
      }
      
      public function §_-tW§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §_-03y§();
      }
   }
}
