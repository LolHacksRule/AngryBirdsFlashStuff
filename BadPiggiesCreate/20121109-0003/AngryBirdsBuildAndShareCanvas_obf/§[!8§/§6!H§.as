package §[!8§
{
   import §6]§.§,"0§;
   import flash.external.ExternalInterface;
   
   public class §6!H§
   {
      
      public static var §>!$§:Boolean = true;
      
      private static var §"j§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!$§ = true;
         }
         do
         {
            §"j§ = {};
         }
         while(_loc2_);
         
      }
      
      public function §6!H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            if(!§"j§[param1])
            {
               if(!_loc4_)
               {
                  §"j§[param1] = new §'!Z§(param1);
                  if(_loc5_)
                  {
                     addr41:
                     (§"j§[param1] as §'!Z§).addCallback(param2);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr41);
         }
         catch(e:Error)
         {
         }
         addr70:
      }
      
      public static function §#"%§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §6!H§)
         {
            if(§"j§[param1])
            {
               if(_loc3_ || _loc3_)
               {
                  (§"j§[param1] as §'!Z§).§#"%§(param2);
               }
            }
         }
      }
      
      public static function §2!i§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
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
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(_loc7_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc7_)
                           {
                              §§pop().§§slot[2] = rest;
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(call);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§pop().§§slot[3] = §§pop() + "(";
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 continue loop6;
                              }
                              continue loop0;
                           }
                           continue loop2;
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
