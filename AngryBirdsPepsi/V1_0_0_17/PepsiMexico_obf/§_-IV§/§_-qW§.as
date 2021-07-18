package §_-IV§
{
   import §_-O7§.§_-zR§;
   
   public class §_-qW§
   {
      
      private static const §_-qo§:String = "trackEvent";
      
      private static const §_-zX§:String = "flash";
      
      public static const §_-cZ§:String = "initialized";
      
      public static const §_-wV§:String = "loaded";
      
      public static const §_-Wp§:String = "level-selection";
      
      public static const §_-2Y§:String = "level-started";
      
      public static const §_-5S§:String = "level-completed";
      
      public static const §_-Qz§:String = "gpu-rendering";
      
      public static const §_-X§:String = "cpu-rendering";
      
      public static const §_-8g§:String = "registration-success";
      
      public static const §_-Uy§:String = "registration-failure";
      
      public static const §_-Ub§:String = "crashed";
      
      public static const §_-bn§:String = "crash-log";
      
      public static const §_-ZT§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-qo§ = "trackEvent";
         }
         if(!_loc2_)
         {
            §_-Wp§ = "level-selection";
            §_-2Y§ = "level-started";
            if(_loc1_)
            {
               §_-5S§ = "level-completed";
               if(!_loc2_)
               {
                  §_-Qz§ = "gpu-rendering";
                  if(_loc1_)
                  {
                     §_-X§ = "cpu-rendering";
                     §_-8g§ = "registration-success";
                     if(!_loc2_)
                     {
                        addr67:
                        §_-Uy§ = "registration-failure";
                        §§goto(addr70);
                     }
                     addr70:
                     §_-Ub§ = "crashed";
                     if(!(_loc2_ && _loc2_))
                     {
                        §_-bn§ = "crash-log";
                        if(_loc1_ || _loc2_)
                        {
                        }
                     }
                     §§goto(addr100);
                  }
                  §_-ZT§ = "crash-trace";
                  §§goto(addr100);
               }
               §§goto(addr70);
            }
            §§goto(addr67);
         }
         addr100:
      }
      
      public function §_-qW§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-6h§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(enabled)
            {
               if(!(_loc5_ && param3))
               {
                  addr38:
                  §_-zR§.§_-6c§(§_-qo§,§_-zX§,param1,param2,param3);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
