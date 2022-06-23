package starling.events
{
   import §]c§.§^!"§;
   
   public final class §,R§
   {
      
      public static const §+!8§:String = "hover";
      
      public static const §99§:String = "began";
      
      public static const §&5§:String = "moved";
      
      public static const §"!@§:String = "stationary";
      
      public static const §?!>§:String = "ended";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §+!8§ = "hover";
            if(!(_loc2_ && _loc1_))
            {
               §99§ = "began";
               if(_loc1_)
               {
                  §&5§ = "moved";
                  if(_loc1_)
                  {
                     §"!@§ = "stationary";
                     if(_loc1_)
                     {
                        addr68:
                        §?!>§ = "ended";
                     }
                  }
                  §§goto(addr68);
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §,R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §^!"§();
      }
   }
}
