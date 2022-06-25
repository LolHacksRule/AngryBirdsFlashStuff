package §>L§
{
   import §1!B§.§<m§;
   import flash.external.ExternalInterface;
   
   public class § !2§
   {
       
      
      public var §;!E§:String = "";
      
      private var §'`§:Array = null;
      
      public function § !2§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§;!E§ = param1;
               addr72:
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         for(; ExternalInterface.available; if(!(_loc2_ || _loc3_))
         {
            continue;
         },ExternalInterface.addCallback(this.§;!E§,this.§ !K§),§§goto(addr72))
         {
            if(_loc2_ || _loc3_)
            {
               continue;
            }
            §§goto(addr72);
         }
         addr24:
      }
      
      public function § !K§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc8_)
         {
            §§push("call through externalInterface! ");
            if(_loc8_ || _loc3_)
            {
               §§push(§§pop() + this.§;!E§);
               if(_loc8_ || _loc3_)
               {
                  addr162:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               do
               {
                  _loc3_ = 0;
               }
               while(_loc7_ && _loc3_);
               
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && rest))
                  {
                     if(_loc8_ || _loc2_)
                     {
                        if(§§pop() >= rest.length)
                        {
                           if(!(_loc7_ && rest))
                           {
                              §§push(_loc2_);
                              if(!(_loc7_ && rest))
                              {
                                 §§push(")");
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc8_ || _loc2_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          §<m§.log(_loc2_);
                                          if(_loc8_ || rest)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             if(this.§'`§ != null)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          addr89:
                                       }
                                    }
                                    else
                                    {
                                       addr123:
                                       _loc2_ = §§pop();
                                       addr122:
                                       if(!(_loc7_ && rest))
                                       {
                                          addr102:
                                          §§push(_loc3_ + 1);
                                          if(_loc8_)
                                          {
                                             addr106:
                                             _loc3_ = §§pop();
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr106);
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 addr121:
                                 §§push(§§pop() + §§pop());
                                 §§goto(addr122);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr89);
                        }
                        else
                        {
                           §§push(_loc2_);
                           if(_loc8_)
                           {
                              §§goto(addr121);
                              §§push(rest[_loc3_] + ",");
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr106);
               }
               var _loc5_:int = 0;
               if(!_loc7_)
               {
                  for each(_loc4_ in this.§'`§)
                  {
                     _loc4_.apply(null,rest);
                  }
               }
               addr210:
               return;
               addr143:
            }
            §§goto(addr162);
         }
         §§goto(addr143);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§'`§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§'`§ = new Array();
                     addr53:
                     while(true)
                     {
                     }
                  }
                  addr49:
               }
               while(true)
               {
                  §§push(this.§'`§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc3_)
                  {
                     if(_loc2_)
                     {
                        return;
                     }
                     §§goto(addr49);
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §=+§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§'`§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr113:
                        while(true)
                        {
                           §§push(this.§'`§);
                           if(!(_loc3_ || this))
                           {
                              continue loop0;
                           }
                           §§push(§§pop().indexOf(param1) == -1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc3_ || param1))
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc2_ && _loc3_)
                     {
                        addr106:
                        break;
                     }
                     if(_loc3_)
                     {
                        §§push(this.§'`§);
                        continue loop0;
                     }
                     §§goto(addr113);
                  }
                  return;
               }
            }
         }
         §§goto(addr113);
      }
   }
}
