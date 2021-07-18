package
{
   import §;8§.§3f§;
   import flash.external.ExternalInterface;
   
   public class §7[§
   {
       
      
      public var §1"§:String = "";
      
      private var § +§:Array = null;
      
      public function §7[§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1"§ = param1;
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!ExternalInterface.available)
                     {
                        break;
                     }
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     addr68:
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function §`p§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc8_)
         {
            §§push("call through externalInterface! ");
            if(_loc8_)
            {
               §§push(§§pop() + this.§1"§);
               if(_loc8_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = 0;
         }
         while(!(_loc8_ || rest));
         
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(_loc8_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(_loc8_)
                     {
                        §§push(_loc2_);
                        if(!_loc7_)
                        {
                           if(_loc8_)
                           {
                              §§push(")");
                              if(_loc8_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_ || _loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    §3f§.log(_loc2_);
                                    if(_loc8_)
                                    {
                                       if(true)
                                       {
                                          if(this.§ +§ != null)
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr179:
                                       }
                                       continue;
                                       return;
                                    }
                                    break;
                                    addr69:
                                 }
                              }
                              else
                              {
                                 addr102:
                                 §§push(§§pop() + §§pop());
                              }
                              addr104:
                              _loc2_ = §§pop();
                              §§push(_loc3_ + 1);
                              if(!(_loc7_ && rest))
                              {
                                 addr91:
                                 _loc3_ = §§pop();
                                 continue;
                              }
                              §§goto(addr91);
                           }
                           else
                           {
                              addr97:
                              §§push(rest[_loc3_] + ",");
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr97);
               }
               §§goto(addr104);
            }
            §§goto(addr91);
         }
         var _loc5_:int = 0;
         if(!(_loc7_ && this))
         {
            for each(_loc4_ in this.§ +§)
            {
               _loc4_.apply(null,rest);
            }
         }
         §§goto(addr179);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§ +§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §2&§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§ +§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr108:
                        addr51:
                        loop5:
                        while(true)
                        {
                           §§push(this.§ +§);
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           addr86:
                           while(true)
                           {
                              §§pop().splice(this.§ +§.indexOf(param1),1);
                              continue loop5;
                           }
                        }
                        §§push(§§pop().indexOf(param1) == -1);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr86);
                                 §§push(this.§ +§);
                              }
                              while(_loc2_)
                              {
                                 §§goto(addr108);
                                 §§goto(addr86);
                              }
                              break;
                              addr92:
                           }
                           break;
                           §§goto(addr51);
                        }
                        return;
                        addr65:
                     }
                     addr107:
                  }
                  else
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr92);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr108);
      }
   }
}
