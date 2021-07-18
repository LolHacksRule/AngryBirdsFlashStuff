package starling.events
{
   import §7!O§.§^!§;
   
   public final class §else§
   {
      
      public static const §+N§:String = "hover";
      
      public static const § R§:String = "began";
      
      public static const §&i§:String = "moved";
      
      public static const §=!,§:String = "stationary";
      
      public static const §1!9§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §else§))
         {
            §+N§ = "hover";
            while(true)
            {
               § R§ = "began";
               loop1:
               while(!_loc1_)
               {
                  §&i§ = "moved";
                  loop2:
                  do
                  {
                     §=!,§ = "stationary";
                     while(!_loc1_)
                     {
                        §1!9§ = "ended";
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_ && §else§);
                  
               }
            }
         }
      }
      
      public function §else§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §^!§();
      }
   }
}
