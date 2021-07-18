package §=!g§
{
   import §>^§.§!6§;
   import flash.external.ExternalInterface;
   
   public class §!!@§
   {
      
      public static var §[!>§:Boolean = true;
      
      private static var §2u§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!>§ = true;
            do
            {
               §2u§ = {};
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §!!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         try
         {
            if(!§2u§[param1])
            {
               if(!(_loc4_ && param2))
               {
                  §2u§[param1] = new §20§(param1);
                  if(_loc5_ || param1)
                  {
                     addr51:
                     (§2u§[param1] as §20§).addCallback(param2);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr51);
         }
         catch(e:Error)
         {
         }
         addr80:
      }
      
      public static function §,2§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§2u§[param1])
            {
               if(!(_loc3_ && param1))
               {
                  addr50:
                  (§2u§[param1] as §20§).§,2§(param2);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function §%Q§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr74:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
   }
}
