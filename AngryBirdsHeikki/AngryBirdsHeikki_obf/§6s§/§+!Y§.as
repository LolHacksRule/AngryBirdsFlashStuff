package §6s§
{
   import §@R§.§4,§;
   import flash.external.ExternalInterface;
   
   public class §+!Y§
   {
      
      public static var §,s§:Boolean = true;
      
      private static var §4W§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,s§ = true;
         }
         do
         {
            §4W§ = {};
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §+!Y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            if(!§4W§[param1])
            {
               if(!_loc4_)
               {
                  §4W§[param1] = new §8!I§(param1);
                  if(_loc5_ || param1)
                  {
                     addr46:
                     (§4W§[param1] as §8!I§).addCallback(param2);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr46);
         }
         catch(e:Error)
         {
         }
         addr75:
      }
      
      public static function §-=§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(§4W§[param1])
            {
               if(!(_loc4_ && param1))
               {
                  (§4W§[param1] as §8!I§).§-=§(param2);
               }
            }
         }
      }
      
      public static function §]5§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr72:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr73:
                     while(true)
                     {
                        addr53:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
   }
}
