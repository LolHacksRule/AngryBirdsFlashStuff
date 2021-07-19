package §30§
{
   import §+!c§.§;!=§;
   import flash.external.ExternalInterface;
   
   public class §'"+§
   {
      
      public static var §7!&§:Boolean = true;
      
      private static var §!u§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7!&§ = true;
            do
            {
               §!u§ = {};
            }
            while(_loc1_);
            
         }
      }
      
      public function §'"+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            if(!§!u§[param1])
            {
               if(_loc5_ || param1)
               {
                  §!u§[param1] = new §8Z§(param1);
                  if(_loc5_ || param1)
                  {
                     addr61:
                     (§!u§[param1] as §8Z§).addCallback(param2);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr61);
         }
         catch(e:Error)
         {
         }
         addr80:
      }
      
      public static function §"!6§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §'"+§)
         {
            if(§!u§[param1])
            {
               if(!_loc4_)
               {
                  (§!u§[param1] as §8Z§).§"!6§(param2);
               }
            }
         }
      }
      
      public static function §'!#§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
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
                  addr66:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr67:
                     while(_loc7_)
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                           addr47:
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(true)
                           {
                              var _loc4_:int = 0;
                              var _loc5_:* = params;
                              addr208:
                              if(§§hasnext(_loc5_,_loc4_))
                              {
                                 addr202:
                                 var obj:Object = §§nextvalue(_loc4_,_loc5_);
                                 addr156:
                                 addr207:
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(_loc7_)
                                    {
                                       if(§§pop().§§slot[4] != null)
                                       {
                                          addr180:
                                          addr197:
                                          addr182:
                                          addr181:
                                          §§push(§§newactivation());
                                          §§push(debugStr);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr196:
                                             §§push(§§pop() + (obj.toString() + ", "));
                                          }
                                          §§pop().§§slot[3] = §§pop();
                                          §§goto(addr208);
                                          addr198:
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   §§push("null");
                                                   if(_loc7_ || param1)
                                                   {
                                                      if(_loc7_ || §'"+§)
                                                      {
                                                         addr128:
                                                         §§push(§§pop() + (§§pop() + ", "));
                                                         if(_loc7_)
                                                         {
                                                            addr132:
                                                            §§pop().§§slot[3] = §§pop();
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(_loc7_ || rest)
                                                               {
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr156);
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr207);
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr180);
                              }
                           }
                           continue;
                           if(_loc7_)
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§pop().§§slot[3] = debugStr + ");";
                                 if(_loc7_ || §'"+§)
                                 {
                                    addr240:
                                    §§push(§;!=§);
                                    §§push("ExternalInterface call: ");
                                    if(_loc7_ || §'"+§)
                                    {
                                       §§push(§§pop() + debugStr);
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc7_)
                                    {
                                       §§push(Boolean(ExternalInterface.available));
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§pop();
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                   §§push(§7!&§);
                                                   if(_loc7_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                try
                                                {
                                                   addr286:
                                                   params.unshift(call);
                                                   addr285:
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr292);
                                                   }
                                                   addr299:
                                                }
                                                catch(e:Error)
                                                {
                                                   §§push(§;!=§);
                                                   §§push("ExternalInterface call failed!\nCall was:");
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + call);
                                                      if(_loc7_ || rest)
                                                      {
                                                      }
                                                      addr337:
                                                      §§pop().log(§§pop() + e.toString());
                                                   }
                                                   §§goto(addr337);
                                                }
                                                §§goto(addr344);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr285);
                                          }
                                          §§goto(addr299);
                                       }
                                       addr344:
                                       return;
                                    }
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr286);
                           }
                           addr292:
                           return ExternalInterface.call.apply(null,params);
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
