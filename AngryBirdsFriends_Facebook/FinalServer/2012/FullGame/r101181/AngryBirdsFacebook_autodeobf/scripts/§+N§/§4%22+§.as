package §+N§
{
   import §6o§.§+!k§;
   import flash.external.ExternalInterface;
   
   public class §4"+§
   {
       
      
      public var §<+§:String = "";
      
      private var §"P§:Array = null;
      
      public function §4"+§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§<+§ = param1;
            while(ExternalInterface.available)
            {
               if(!_loc2_)
               {
                  ExternalInterface.addCallback(this.§<+§,this.§!!'§);
               }
               if(_loc3_ || param1)
               {
                  continue loop0;
               }
            }
            addr25:
            return;
         }
      }
      
      public function §!!'§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc7_ || _loc2_)
         {
            §§push("call through externalInterface! ");
            if(!(_loc8_ && rest))
            {
               §§push(§§pop() + this.§<+§);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
            do
            {
               _loc3_ = Number(0);
            }
            while(!(_loc7_ || this));
            
         }
         loop1:
         while(true)
         {
            §§push(_loc3_);
            if(_loc7_ || rest)
            {
               if(!_loc8_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        if(_loc7_)
                        {
                           if(_loc7_ || this)
                           {
                              §§push(")");
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       §+!k§.log(_loc2_);
                                       if(!(_loc7_ || this))
                                       {
                                          break;
                                       }
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(true)
                                             {
                                                if(this.§"P§ != null)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                addr219:
                                             }
                                             continue loop1;
                                             return;
                                          }
                                          loop4:
                                          while(!(_loc7_ || _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr113:
                                                }
                                                addr114:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   continue loop4;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    var _loc5_:int = 0;
                                    if(_loc7_ || _loc2_)
                                    {
                                       var _loc6_:* = this.§"P§;
                                       addr215:
                                       for each(_loc4_ in _loc6_)
                                       {
                                          _loc4_.apply(null,rest);
                                          §§goto(addr215);
                                       }
                                    }
                                    §§goto(addr219);
                                    addr92:
                                 }
                                 else
                                 {
                                    addr134:
                                    _loc2_ = §§pop();
                                    addr133:
                                 }
                                 §§goto(addr135);
                              }
                              else
                              {
                                 addr132:
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr133);
                           }
                           else
                           {
                              addr127:
                              §§push(rest[_loc3_] + ",");
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr92);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr127);
               }
               §§goto(addr113);
            }
            §§goto(addr114);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"P§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §[">§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§"P§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§"P§);
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§push(§§pop().indexOf(param1) == -1);
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§goto(addr59);
                                    }
                                    addr59:
                                 }
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr78:
                                          this.§"P§.splice(this.§"P§.indexOf(param1),1);
                                          addr84:
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr84);
                                 }
                                 return;
                              }
                              break;
                           }
                           §§goto(addr78);
                        }
                        continue loop0;
                     }
                     addr97:
                  }
                  §§goto(addr70);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr78);
      }
   }
}
