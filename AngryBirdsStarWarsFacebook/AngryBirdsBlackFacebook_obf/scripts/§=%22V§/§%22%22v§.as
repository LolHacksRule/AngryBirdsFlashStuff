package §="V§
{
   import §5t§.Log;
   import flash.external.ExternalInterface;
   
   public class §""v§
   {
      
      public static var §!"J§:Boolean = true;
      
      private static var §3!3§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!"J§ = true;
         }
         do
         {
            §3!3§ = {};
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §""v§()
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§3!3§[param1])
            {
               if(!(_loc5_ && §""v§))
               {
                  §3!3§[param1] = new §"!U§(param1);
                  if(_loc4_ || param1)
                  {
                     addr50:
                     (§3!3§[param1] as §"!U§).addCallback(param2);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr50);
         }
         catch(e:Error)
         {
         }
         addr79:
      }
      
      public static function §&z§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"!U§ = §3!3§[param1] as §"!U§;
         if(_loc5_ || §""v§)
         {
            if(_loc3_)
            {
               if(_loc5_ || §""v§)
               {
                  _loc3_.§&z§(param2);
                  addr93:
                  while(_loc3_.§]>§ == 0)
                  {
                     if(!(_loc4_ && param1))
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        _loc3_.dispose();
                     }
                     do
                     {
                        delete §3!3§[param1];
                     }
                     while(_loc4_);
                     
                     break;
                  }
                  addr93:
               }
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr93);
      }
      
      public static function §&R§(param1:String, ... rest) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         do
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[2] = rest;
                  if(_loc5_ && rest)
                  {
                     break;
                  }
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc6_ || _loc3_));
         
         §§push("ExternalInterface call: " + call);
         if(!_loc5_)
         {
            §§push(§§pop() + "(");
         }
         §§push(§§pop() + params.join(", "));
         if(!_loc5_)
         {
            §§push(§§pop() + ");");
         }
         loop3:
         while(true)
         {
            §§pop().§§slot[3] = §§pop();
            while(true)
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  if(§§pop().§§slot[3].length > 300)
                  {
                     if(_loc6_ || rest)
                     {
                        addr71:
                        §§push(§§newactivation());
                        §§push(logStr.substr(0,300) + "[...]");
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc5_ && rest))
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     try
                     {
                        addr152:
                        params.unshift(call);
                        if(!_loc5_)
                        {
                           return ExternalInterface.call.apply(null,params);
                        }
                     }
                     catch(e:Error)
                     {
                        §§push(Log);
                        §§push("ExternalInterface call failed!\nCall was:" + call);
                        if(_loc6_ || §""v§)
                        {
                           §§push(§§pop() + "\nError data:");
                        }
                        §§pop().log(§§pop() + e.toString());
                     }
                     §§goto(addr209);
                  }
                  break;
               }
               §§goto(addr71);
            }
            loop5:
            while(true)
            {
               Log.log(logStr);
               while(true)
               {
                  §§push(Boolean(ExternalInterface.available));
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && §""v§))
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 continue loop5;
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr152);
                        }
                        break;
                     }
                     §§goto(addr151);
                  }
                  break;
               }
               addr151:
               §§push(§!"J§);
               if(!_loc5_)
               {
                  break loop6;
               }
               addr151:
               if(§§pop())
               {
                  §§goto(addr152);
               }
               addr209:
               return;
            }
         }
      }
   }
}
