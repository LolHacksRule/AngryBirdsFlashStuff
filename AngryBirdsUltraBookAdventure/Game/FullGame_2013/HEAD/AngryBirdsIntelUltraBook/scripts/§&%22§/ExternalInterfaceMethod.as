package §&"§
{
   import §<u§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceMethod
   {
       
      
      public var §6H§:String = "";
      
      private var §3!L§:Array = null;
      
      public function ExternalInterfaceMethod(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6H§ = param1;
            while(ExternalInterface.available)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               if(!(_loc3_ && param1))
               {
                  break;
               }
            }
            return;
         }
      }
      
      public function §`Y§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc7_ || _loc2_)
         {
            §§push("call through externalInterface! ");
            if(_loc7_ || _loc2_)
            {
               §§push(§§pop() + this.§6H§);
               if(_loc7_ || this)
               {
                  addr176:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               do
               {
                  _loc3_ = 0;
               }
               while(!(_loc7_ || this));
               
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc8_ && _loc2_))
                  {
                     if(!_loc8_)
                     {
                        if(§§pop() >= rest.length)
                        {
                           if(!_loc8_)
                           {
                              §§push(_loc2_);
                              if(_loc7_ || this)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(")");
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc8_)
                                       {
                                          addr85:
                                          _loc2_ = §§pop();
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr93:
                                             if(!(_loc8_ && this))
                                             {
                                                Log.log(_loc2_);
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(true)
                                                {
                                                   if(this.§3!L§ != null)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         var _loc5_:int = 0;
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            for each(_loc4_ in this.§3!L§)
                                                            {
                                                               if(!_loc8_)
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
                                             §§push(_loc3_);
                                             if(_loc7_ || rest)
                                             {
                                                addr122:
                                                _loc3_ = §§pop() + 1;
                                                addr121:
                                                if(_loc8_ && this)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             §§goto(addr121);
                                             addr145:
                                          }
                                          break;
                                       }
                                       addr144:
                                       _loc2_ = §§pop();
                                       addr143:
                                       §§goto(addr145);
                                    }
                                    else
                                    {
                                       addr142:
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr93);
                        }
                        else
                        {
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              §§goto(addr142);
                              §§push(rest[_loc3_] + ",");
                           }
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr122);
               }
               return;
               addr157:
            }
            §§goto(addr176);
         }
         §§goto(addr157);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§3!L§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§3!L§ = new Array();
                     addr59:
                     while(true)
                     {
                     }
                  }
                  addr55:
               }
               while(true)
               {
                  §§push(this.§3!L§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §>!X§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§3!L§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     addr67:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr69:
                           if(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§goto(addr78);
                              }
                              addr76:
                           }
                           addr95:
                           §§goto(addr24);
                        }
                        break;
                        addr60:
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop4;
                     }
                     addr24:
                     while(_loc3_ && this)
                     {
                        continue loop3;
                     }
                     return;
                  }
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§3!L§);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        addr78:
                        while(true)
                        {
                           §§pop().splice(this.§3!L§.indexOf(param1),1);
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr67);
                  }
                  addr118:
                  §§goto(addr69);
               }
               §§goto(addr118);
            }
         }
         §§goto(addr76);
      }
   }
}
