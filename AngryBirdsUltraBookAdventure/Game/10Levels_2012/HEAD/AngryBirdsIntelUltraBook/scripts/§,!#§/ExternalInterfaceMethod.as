package §,!#§
{
   import §'N§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §@g§:String = "";
      
      private var §'Q§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§@g§ = param1;
            }
            addr75:
         }
         while(ExternalInterface.available)
         {
            if(_loc2_ || param1)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  ExternalInterface.addCallback(this.§@g§,this.§2[§);
               }
               else
               {
                  §§goto(addr75);
               }
            }
            break;
         }
      }
      
      public function §2[§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push("call through externalInterface! ");
            if(!_loc7_)
            {
               §§push(§§pop() + this.§@g§);
               if(!_loc7_)
               {
                  addr162:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               do
               {
                  _loc3_ = 0;
               }
               while(_loc7_);
               
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && _loc2_))
                  {
                     if(§§pop() >= rest.length)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              §§push(_loc2_);
                              if(_loc8_ || _loc2_)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(")");
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc8_ || _loc3_)
                                       {
                                          addr110:
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                Log.log(_loc2_);
                                                if(!(_loc8_ || this))
                                                {
                                                   break;
                                                }
                                                if(!(_loc7_ && rest))
                                                {
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      if(true)
                                                      {
                                                         if(this.§'Q§ != null)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               var _loc5_:int = 0;
                                                               if(_loc8_ || rest)
                                                               {
                                                                  for each(_loc4_ in this.§'Q§)
                                                                  {
                                                                     if(_loc8_ || this)
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
                                                   }
                                                   else
                                                   {
                                                      addr133:
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr219);
                                          }
                                          addr145:
                                          _loc2_ = §§pop() + (rest[_loc3_] + ",");
                                          §§push(_loc3_);
                                          if(!(_loc7_ && rest))
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc8_ || this)
                                             {
                                                addr132:
                                                _loc3_ = §§pop();
                                             }
                                          }
                                          §§goto(addr132);
                                          addr144:
                                          addr143:
                                          addr146:
                                          addr138:
                                          §§goto(addr133);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr146);
                        }
                        addr219:
                        return;
                     }
                     §§push(_loc2_);
                     §§goto(addr138);
                  }
                  §§goto(addr132);
               }
               addr153:
            }
            §§goto(addr162);
         }
         §§goto(addr153);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'Q§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§'Q§ = new Array();
                  }
                  addr71:
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §<!<§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'Q§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr115:
                        loop4:
                        while(true)
                        {
                           §§push(this.§'Q§);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().indexOf(param1) == -1);
                           if(!(_loc2_ && this))
                           {
                              §§push(!§§pop());
                              if(!(_loc2_ && param1))
                              {
                                 addr58:
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc2_)
                              {
                                 addr61:
                                 if(_loc3_ || _loc2_)
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       addr105:
                                       if(_loc3_)
                                       {
                                          §§push(this.§'Q§);
                                          continue loop0;
                                       }
                                       continue loop4;
                                       §§goto(addr61);
                                    }
                                    return;
                                    addr68:
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           §§goto(addr58);
                        }
                     }
                  }
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr115);
      }
   }
}
