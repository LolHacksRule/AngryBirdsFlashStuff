package §;!o§
{
   import §"x§.§-8§;
   import flash.external.ExternalInterface;
   
   public class §9l§
   {
       
      
      public var §+!a§:String = "";
      
      private var §7+§:Array = null;
      
      public function §9l§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§+!a§ = param1;
               for(; ExternalInterface.available; if(!(_loc3_ || this))
               {
                  continue;
               })
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        ExternalInterface.addCallback(this.§+!a§,this.§%!`§);
                        continue;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr25);
            }
         }
         addr25:
      }
      
      public function §%!`§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(!_loc7_)
         {
            §§push("call through externalInterface! ");
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + this.§+!a§);
               if(!(_loc7_ && _loc3_))
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
         while(_loc7_);
         
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_ || this)
            {
               if(!_loc7_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        if(_loc8_ || this)
                        {
                           §§push(_loc2_);
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 §§push(")");
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §-8§.log(_loc2_);
                                          if(!_loc7_)
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             if(this.§7+§ != null)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    addr123:
                                    _loc2_ = §§pop();
                                    §§goto(addr122);
                                 }
                                 §§goto(addr121);
                              }
                              else
                              {
                                 addr116:
                                 §§push(rest[_loc3_] + ",");
                              }
                              addr121:
                              §§push(§§pop() + §§pop());
                              addr122:
                              if(_loc8_ || _loc3_)
                              {
                                 addr106:
                                 §§push(_loc3_ + 1);
                                 if(!_loc7_)
                                 {
                                    addr110:
                                    _loc3_ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr210);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr110);
                     }
                     break;
                  }
                  §§push(_loc2_);
                  §§goto(addr116);
               }
               §§goto(addr106);
            }
            §§goto(addr110);
         }
         var _loc5_:int = 0;
         if(_loc8_ || _loc3_)
         {
            for each(_loc4_ in this.§7+§)
            {
               _loc4_.apply(null,rest);
            }
         }
         addr210:
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§7+§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        this.§7+§ = new Array();
                     }
                     addr69:
                  }
                  while(true)
                  {
                     addr53:
                     §§pop().push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§7+§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §&!0§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§7+§);
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr36:
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(!§§pop());
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr83:
                                             this.§7+§.splice(this.§7+§.indexOf(param1),1);
                                             addr89:
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr89);
                                    }
                                    break;
                                    §§goto(addr36);
                                 }
                                 return;
                                 addr75:
                              }
                              continue loop3;
                           }
                           §§goto(addr83);
                        }
                        continue loop0;
                     }
                     addr102:
                  }
                  §§goto(addr75);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr83);
      }
   }
}
