package §1!E§
{
   import §+!"§.§5!<§;
   import flash.external.ExternalInterface;
   
   public class §<w§
   {
      
      public static var §]=§:Boolean = true;
      
      private static var §[!§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<w§))
         {
            §]=§ = true;
            if(!_loc1_)
            {
               addr29:
               §[!§ = {};
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §<w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            if(!§[!§[param1])
            {
               if(!_loc4_)
               {
                  §[!§[param1] = new §8%§(param1);
                  if(_loc5_ || _loc3_)
                  {
                     addr56:
                     (§[!§[param1] as §8%§).addCallback(param2);
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
      
      public static function §?`§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§[!§[param1])
            {
               if(!(_loc3_ && param1))
               {
                  (§[!§[param1] as §8%§).§?`§(param2);
               }
            }
         }
      }
      
      public static function §1x§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(!(_loc7_ && param1))
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc7_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || rest)
                        {
                           §§goto(addr50);
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr62);
               }
               §§goto(addr50);
            }
            §§goto(addr62);
         }
         addr50:
         §§pop().§§slot[2] = rest;
         if(_loc6_ || rest)
         {
            addr62:
            var debugStr:String = call + "(";
            addr60:
         }
         var _loc4_:int = 0;
         var _loc5_:* = params;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§newactivation());
            if(!_loc7_)
            {
               §§pop().§§slot[4] = §§nextvalue(_loc4_,_loc5_);
               if(!_loc7_)
               {
                  §§push(§§newactivation());
                  if(!(_loc7_ && param1))
                  {
                     if(§§pop().§§slot[4] != null)
                     {
                        if(!_loc7_)
                        {
                           addr96:
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              addr99:
                              §§push(§§newactivation());
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop().§§slot[3]);
                                 if(_loc6_)
                                 {
                                    §§push(obj.toString() + ", ");
                                    if(_loc6_ || §<w§)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             §§pop().§§slot[3] = §§pop();
                                             if(_loc6_ || §<w§)
                                             {
                                                addr151:
                                             }
                                             continue;
                                          }
                                          addr157:
                                          §§push("null");
                                          if(_loc6_)
                                          {
                                             addr162:
                                             §§push(§§pop() + (§§pop() + ", "));
                                          }
                                          §§goto(addr162);
                                       }
                                       addr164:
                                       §§pop().§§slot[3] = §§pop();
                                       continue;
                                    }
                                    §§goto(addr162);
                                 }
                              }
                              else
                              {
                                 addr154:
                                 §§push(§§pop().§§slot[3]);
                                 if(_loc6_)
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              §§goto(addr164);
                           }
                           else
                           {
                              addr153:
                              §§push(§§newactivation());
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§goto(addr153);
                        §§push(§§newactivation());
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr99);
               }
               §§goto(addr96);
            }
            §§goto(addr153);
         }
         if(!_loc7_)
         {
            §§push(§§newactivation());
            if(!_loc7_)
            {
               §§pop().§§slot[3] = debugStr + ");";
               if(!_loc7_)
               {
                  §§push(§5!<§);
                  §§push("ExternalInterface call: ");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + debugStr);
                  }
                  §§pop().log(§§pop());
                  if(_loc7_ && §<w§)
                  {
                  }
                  §§goto(addr218);
               }
               §§push(Boolean(ExternalInterface.available));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        §§push(§]=§);
                        if(_loc6_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     try
                     {
                        addr214:
                        params.unshift(call);
                        §§goto(addr218);
                     }
                     catch(e:Error)
                     {
                        §§push(§5!<§);
                        §§push("ExternalInterface call failed!\nCall was:");
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop() + call);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + "\nError data:");
                           }
                        }
                        §§pop().log(§§pop() + e.toString());
                     }
                  }
                  §§goto(addr218);
               }
               return;
            }
            §§goto(addr214);
         }
         addr218:
         return ExternalInterface.call.apply(null,params);
      }
   }
}
