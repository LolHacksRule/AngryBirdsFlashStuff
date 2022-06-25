package §@i§
{
   import §^_§.§!>§;
   import flash.external.ExternalInterface;
   
   public class §=r§
   {
      
      public static var §,h§:Boolean = true;
      
      private static var §;§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,h§ = true;
            do
            {
               §;§ = {};
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §=r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            if(!§;§[param1])
            {
               if(!_loc5_)
               {
                  §;§[param1] = new §5!D§(param1);
                  if(_loc4_)
                  {
                     addr50:
                     (§;§[param1] as §5!D§).addCallback(param2);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr50);
         }
         catch(e:Error)
         {
         }
         addr69:
      }
      
      public static function §<a§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(§;§[param1])
            {
               if(_loc3_ || param1)
               {
                  addr44:
                  (§;§[param1] as §5!D§).§<a§(param2);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §[!3§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr79:
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr73:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     loop4:
                     while(true)
                     {
                        addr58:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = rest;
                              addr62:
                              while(_loc7_ || §=r§)
                              {
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && §=r§))
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop6;
                              }
                              continue loop4;
                           }
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
