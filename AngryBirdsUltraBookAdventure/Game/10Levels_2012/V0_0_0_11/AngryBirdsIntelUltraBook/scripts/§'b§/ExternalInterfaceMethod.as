package §'b§
{
   import §6b§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §"!Q§:String = "";
      
      private var §2!c§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!Q§ = param1;
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(ExternalInterface.available)
                     {
                        if(_loc2_ || param1)
                        {
                           if(_loc2_)
                           {
                              ExternalInterface.addCallback(this.§"!Q§,this.§;M§);
                              addr65:
                              break;
                           }
                           continue;
                        }
                        §§goto(addr65);
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §;M§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc7_ || rest)
         {
            §§push("call through externalInterface! ");
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() + this.§"!Q§);
               if(_loc7_)
               {
                  addr161:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               do
               {
                  _loc3_ = 0;
               }
               while(!(_loc7_ || _loc3_));
               
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     if(_loc7_ || this)
                     {
                        if(§§pop() >= rest.length)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc2_);
                              if(!(_loc8_ && rest))
                              {
                                 if(_loc7_ || this)
                                 {
                                    §§push(")");
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc8_)
                                       {
                                          addr85:
                                          §§push(§§pop());
                                          if(!(_loc8_ && this))
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   Log.log(_loc2_);
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   if(true)
                                                   {
                                                      if(this.§2!c§ != null)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            var _loc5_:int = 0;
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               for each(_loc4_ in this.§2!c§)
                                                               {
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     _loc4_.apply(null,rest);
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             break;
                                          }
                                          addr134:
                                          _loc2_ = §§pop() + (rest[_loc3_] + ",");
                                          addr133:
                                          §§push(_loc3_ + 1);
                                          if(_loc7_ || rest)
                                          {
                                             addr119:
                                             _loc3_ = §§pop();
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr85);
                           }
                           break;
                        }
                        §§push(_loc2_);
                        §§goto(addr134);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr119);
               }
               return;
               addr165:
            }
            §§goto(addr161);
         }
         §§goto(addr165);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§2!c§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     this.§2!c§ = new Array();
                     addr60:
                     while(true)
                     {
                     }
                     addr60:
                  }
                  §§goto(addr60);
               }
               while(true)
               {
                  §§push(this.§2!c§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §in§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§2!c§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr110:
                        loop6:
                        while(true)
                        {
                           §§push(this.§2!c§);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§push(§§pop().indexOf(param1) == -1);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       addr57:
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§goto(addr57);
                                       }
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(this.§2!c§);
                                       while(true)
                                       {
                                          §§pop().splice(this.§2!c§.indexOf(param1),1);
                                          continue loop6;
                                       }
                                       addr69:
                                    }
                                    while(_loc2_ && _loc2_)
                                    {
                                       continue loop6;
                                    }
                                    break;
                                 }
                                 return;
                              }
                              continue loop0;
                           }
                           §§goto(addr69);
                        }
                     }
                     addr109:
                  }
                  §§goto(addr58);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr110);
      }
   }
}
