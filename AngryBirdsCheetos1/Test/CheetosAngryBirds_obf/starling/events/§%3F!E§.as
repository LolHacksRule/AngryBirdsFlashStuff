package starling.events
{
   import §]u§.§<=§;
   
   public final class §?!E§
   {
      
      public static const §4R§:String = "hover";
      
      public static const §^2§:String = "began";
      
      public static const §-!"§:String = "moved";
      
      public static const §^%§:String = "stationary";
      
      public static const §'s§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §?!E§)
         {
            §4R§ = "hover";
            loop0:
            while(true)
            {
               §^2§ = "began";
               do
               {
                  §-!"§ = "moved";
                  loop2:
                  do
                  {
                     §^%§ = "stationary";
                     while(!_loc1_)
                     {
                        §'s§ = "ended";
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(!_loc2_);
               
            }
         }
      }
      
      public function §?!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §<=§();
      }
   }
}
