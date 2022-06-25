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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!Q§ = param1;
               while(ExternalInterface.available)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           ExternalInterface.addCallback(this.§"!Q§,this.§;M§);
                           addr68:
                           break;
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  §§goto(addr68);
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §;M§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc7_)
         {
            §§push("call through externalInterface! ");
            if(!_loc8_)
            {
               §§push(§§pop() + this.§"!Q§);
               if(_loc7_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = Number(0);
         }
         while(_loc8_);
         
         while(true)
         {
            §§push(_loc3_);
            if(_loc7_ || rest)
            {
               if(§§pop() >= rest.length)
               {
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              §§push(")");
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_ || this)
                                 {
                                    addr85:
                                    _loc2_ = §§pop();
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          Log.log(_loc2_);
                                          if(!(_loc7_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(true)
                                          {
                                             if(this.§2!c§ != null)
                                             {
                                                if(!(_loc8_ && rest))
                                                {
                                                   addr162:
                                                   var _loc5_:int = 0;
                                                   if(!_loc8_)
                                                   {
                                                      for each(_loc4_ in this.§2!c§)
                                                      {
                                                         if(_loc7_ || _loc3_)
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
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    addr129:
                                    _loc2_ = §§pop();
                                    addr128:
                                 }
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc7_)
                                    {
                                    }
                                    addr109:
                                    _loc3_ = §§pop();
                                    if(_loc8_ && this)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr109);
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 addr127:
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr128);
                           }
                           else
                           {
                              addr122:
                              §§push(rest[_loc3_] + ",");
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr162);
               }
               else
               {
                  §§push(_loc2_);
               }
               §§goto(addr122);
            }
            §§goto(addr109);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§2!c§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §in§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§2!c§);
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
                        addr120:
                        loop6:
                        while(true)
                        {
                           §§push(this.§2!c§);
                           if(_loc3_ || param1)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(_loc3_)
                                 {
                                    addr68:
                                    §§push(!§§pop());
                                    if(!_loc2_)
                                    {
                                       addr67:
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_ || this)
                                             {
                                                addr96:
                                                §§push(this.§2!c§);
                                                while(true)
                                                {
                                                   §§pop().splice(this.§2!c§.indexOf(param1),1);
                                                   continue loop6;
                                                }
                                                addr96:
                                             }
                                             while(!(_loc3_ || _loc3_))
                                             {
                                                continue loop6;
                                                §§goto(addr96);
                                             }
                                             break;
                                          }
                                          break;
                                          §§goto(addr68);
                                       }
                                       return;
                                       addr75:
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr96);
                        }
                     }
                  }
                  §§goto(addr75);
               }
            }
         }
         §§goto(addr120);
      }
   }
}
