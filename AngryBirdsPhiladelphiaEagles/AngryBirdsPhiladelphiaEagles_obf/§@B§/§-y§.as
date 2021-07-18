package §@B§
{
   import §`K§.§ L§;
   import flash.external.ExternalInterface;
   
   public class §-y§
   {
       
      
      public var §;5§:String = "";
      
      private var §`u§:Array = null;
      
      public function §-y§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§;5§ = param1;
            while(ExternalInterface.available)
            {
               if(!_loc2_)
               {
                  break;
               }
               addr74:
               if(_loc2_ || _loc2_)
               {
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §3!!§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(!_loc7_)
         {
            §§push("call through externalInterface! ");
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + this.§;5§);
               if(_loc8_ || rest)
               {
                  addr139:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               do
               {
                  _loc3_ = Number(0);
               }
               while(_loc7_);
               
               while(true)
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     if(§§pop() >= rest.length)
                     {
                        §§push(_loc2_);
                        if(!(_loc7_ && this))
                        {
                           if(_loc8_)
                           {
                              §§push(")");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc7_ && rest))
                                    {
                                       § L§.log(_loc2_);
                                       if(true)
                                       {
                                          if(this.§`u§ != null)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr187:
                                       }
                                       continue;
                                       return;
                                    }
                                    break;
                                 }
                              }
                              else
                              {
                                 addr110:
                                 §§push(§§pop() + §§pop());
                              }
                              addr112:
                              _loc2_ = §§pop();
                              §§push(_loc3_);
                              if(_loc8_ || rest)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_ && _loc2_)
                                 {
                                 }
                                 addr99:
                                 _loc3_ = §§pop();
                                 continue;
                              }
                              §§goto(addr99);
                              §§push(Number(§§pop()));
                           }
                           else
                           {
                              addr105:
                              §§push(rest[_loc3_] + ",");
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr112);
                     }
                     else
                     {
                        §§push(_loc2_);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr99);
               }
               var _loc5_:int = 0;
               if(_loc8_)
               {
                  for each(_loc4_ in this.§`u§)
                  {
                     _loc4_.apply(null,rest);
                  }
               }
               §§goto(addr187);
               addr142:
            }
            §§goto(addr139);
         }
         §§goto(addr142);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§`u§);
            while(true)
            {
               if(§§pop() == null)
               {
                  addr70:
                  while(true)
                  {
                     this.§`u§ = new Array();
                     addr74:
                     while(true)
                     {
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  §§push(this.§`u§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        return;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §=&§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§`u§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr103:
                        do
                        {
                           §§push(this.§`u§);
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().indexOf(param1) == -1);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc3_ || this))
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(_loc3_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        while(true)
                        {
                           §§push(this.§`u§);
                           continue loop0;
                        }
                        addr79:
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           §§goto(addr103);
                        }
                        addr94:
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
   }
}
