package §&!7§
{
   import § !G§.§ #§;
   import flash.external.ExternalInterface;
   
   public class §,!A§
   {
      
      public static var §#!R§:Boolean = true;
      
      private static var §@!M§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §#!R§ = true;
            do
            {
               §@!M§ = {};
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §,!A§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§@!M§[param1])
            {
               if(_loc4_)
               {
                  §@!M§[param1] = new §9L§(param1);
                  if(_loc4_ || _loc3_)
                  {
                     addr45:
                     (§@!M§[param1] as §9L§).addCallback(param2);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
         }
         addr74:
      }
      
      public static function §]Q§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(§@!M§[param1])
            {
               if(!(_loc4_ && param2))
               {
                  addr54:
                  (§@!M§[param1] as §9L§).§]Q§(param2);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §9!M§(param1:String, ... rest) : *
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
                  addr57:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr58:
                     while(true)
                     {
                        addr47:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = rest;
                              addr51:
                              while(_loc6_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc7_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop6;
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
   }
}
