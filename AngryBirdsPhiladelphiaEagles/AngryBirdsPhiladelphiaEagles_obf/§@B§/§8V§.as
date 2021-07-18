package §@B§
{
   import §`K§.§ L§;
   import flash.external.ExternalInterface;
   
   public class §8V§
   {
      
      public static var §=!Q§:Boolean = true;
      
      private static var §4G§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §=!Q§ = true;
         }
         do
         {
            §4G§ = {};
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §8V§()
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
            if(!§4G§[param1])
            {
               if(!(_loc4_ && param1))
               {
                  §4G§[param1] = new §-y§(param1);
                  if(_loc5_)
                  {
                     addr56:
                     (§4G§[param1] as §-y§).addCallback(param2);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr56);
         }
         catch(e:Error)
         {
         }
         addr75:
      }
      
      public static function §=&§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(§4G§[param1])
            {
               if(_loc3_)
               {
                  (§4G§[param1] as §-y§).§=&§(param2);
               }
            }
         }
      }
      
      public static function §^^§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr73:
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr67:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr68:
                     while(true)
                     {
                        addr50:
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
            if(!(_loc6_ || _loc3_))
            {
               continue;
            }
            §§push(call);
            if(!_loc7_)
            {
               §§pop().§§slot[3] = §§pop() + "(";
               if(!_loc7_)
               {
                  if(_loc6_)
                  {
                     if(false)
                     {
                        §§goto(addr50);
                     }
                     var _loc4_:int = 0;
                     var _loc5_:* = params;
                     addr182:
                     if(§§hasnext(_loc5_,_loc4_))
                     {
                        addr176:
                        var obj:Object = §§nextvalue(_loc4_,_loc5_);
                        addr181:
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           if(§§pop().§§slot[4] != null)
                           {
                              addr152:
                              §§push(§§newactivation());
                              if(!_loc7_)
                              {
                                 addr164:
                                 §§pop().§§slot[3] = debugStr + (obj.toString() + ", ");
                                 addr165:
                                 if(_loc6_ || param1)
                                 {
                                    §§goto(addr182);
                                 }
                                 §§goto(addr181);
                                 addr157:
                                 addr163:
                                 addr162:
                                 addr156:
                              }
                              §§goto(addr176);
                           }
                           §§push(§§newactivation());
                           if(!(_loc7_ && §8V§))
                           {
                              §§push(§§newactivation());
                              if(!_loc7_)
                              {
                                 §§push(§§pop().§§slot[3]);
                                 if(_loc6_ || §8V§)
                                 {
                                    §§push("null");
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr115:
                                          §§push(§§pop() + (§§pop() + ", "));
                                          if(!_loc7_)
                                          {
                                             addr119:
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr156);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§push(§§newactivation());
                     if(!_loc7_)
                     {
                        §§pop().§§slot[3] = debugStr + ");";
                        if(!_loc7_)
                        {
                           addr207:
                           §§push(§ L§);
                           §§push("ExternalInterface call: ");
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + debugStr);
                           }
                           §§pop().log(§§pop());
                           §§push(Boolean(ExternalInterface.available));
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    §§goto(addr307);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    try
                                    {
                                       addr246:
                                       params.unshift(call);
                                    }
                                    catch(e:Error)
                                    {
                                       §§push(§ L§);
                                       §§push("ExternalInterface call failed!\nCall was:");
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() + call);
                                          if(_loc6_ || param1)
                                          {
                                          }
                                          §§goto(addr300);
                                       }
                                       addr300:
                                       §§pop().log(§§pop() + e.toString());
                                       §§goto(addr307);
                                    }
                                 }
                                 return ExternalInterface.call.apply(null,params);
                              }
                              §§goto(addr307);
                           }
                           §§goto(addr241);
                        }
                        addr307:
                        if(_loc6_ || rest)
                        {
                           if(false)
                           {
                              §§goto(addr207);
                           }
                           §§push(§=!Q§);
                           if(_loc6_ || §8V§)
                           {
                              addr241:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        return;
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr73);
               }
               §§goto(addr61);
            }
            §§goto(addr67);
         }
      }
   }
}
