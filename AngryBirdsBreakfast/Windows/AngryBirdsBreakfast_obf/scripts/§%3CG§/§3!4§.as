package §<G§
{
   import each.§!!'§;
   import flash.external.ExternalInterface;
   
   public class §3!4§
   {
       
      
      public var §[!%§:String = "";
      
      private var §3K§:Array = null;
      
      public function §3!4§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§[!%§ = param1;
            for(; ExternalInterface.available; if(_loc3_ || param1)
            {
               break;
            })
            {
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     ExternalInterface.addCallback(this.§[!%§,this.§`A§);
                     continue;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function §`A§(... rest) : *
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = NaN;
         var _loc5_:Function = null;
         if(_loc8_)
         {
            §§push("call through externalInterface! " + this.§[!%§);
            if(_loc8_)
            {
               §§push(§§pop() + "(");
            }
            _loc3_ = §§pop();
         }
         do
         {
            _loc4_ = Number(0);
         }
         while(!_loc8_);
         
         loop1:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               if(_loc8_)
               {
                  if(§§pop() >= rest.length)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc9_ && _loc2_))
                        {
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§§pop() + ")");
                              if(!(_loc9_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 while(_loc8_)
                                 {
                                    §!!'§.log(_loc3_);
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          if(_loc9_ && rest)
                                          {
                                             §§push(_loc4_ + 1);
                                             if(_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          else
                                          {
                                             addr111:
                                          }
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          continue loop1;
                                          _loc4_ = §§pop();
                                          break;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr103:
                              §§push(§§pop() + (rest[_loc4_] + ","));
                           }
                           §§push(§§pop());
                           break;
                        }
                        break;
                     }
                     _loc3_ = §§pop();
                     §§goto(addr111);
                  }
                  else
                  {
                     §§push(_loc3_);
                  }
                  §§goto(addr103);
               }
            }
            §§goto(addr111);
         }
         var _loc2_:* = null;
         if(_loc8_)
         {
            if(this.§3K§ != null)
            {
               if(!_loc9_)
               {
                  var _loc6_:int = 0;
                  if(!(_loc9_ && rest))
                  {
                     for each(_loc5_ in this.§3K§)
                     {
                        _loc2_ = _loc5_.apply(null,rest);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§3K§);
            loop0:
            do
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        this.§3K§ = new Array();
                     }
                     addr102:
                  }
                  while(true)
                  {
                     addr67:
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this.§3K§);
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§3K§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§push(param1);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop().indexOf(§§pop()) == -1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr67);
                        }
                        else
                        {
                           addr85:
                        }
                     }
                     return;
                  }
                  addr84:
                  §§pop().push(§§pop());
                  §§goto(addr85);
               }
            }
            while(_loc2_ && _loc2_);
            
            §§goto(addr84);
            §§push(param1);
         }
         §§goto(addr102);
      }
      
      public function §;!A§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§3K§);
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
                        loop3:
                        while(true)
                        {
                           §§push(this.§3K§);
                           if(!_loc3_)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(!_loc3_)
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc3_)
                                       {
                                          addr67:
                                          §§push(this.§3K§);
                                          if(_loc2_)
                                          {
                                             §§pop().splice(this.§3K§.indexOf(param1),1);
                                             addr85:
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr85);
                                 }
                                 return;
                                 addr54:
                              }
                              continue loop2;
                           }
                           §§goto(addr67);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr54);
               }
            }
         }
         §§goto(addr85);
      }
      
      public function get §3!W§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§3K§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr55);
                  }
               }
               §§push(this.§3K§);
            }
            return §§pop().length;
         }
         addr55:
         return 0;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            ExternalInterface.addCallback(this.§[!%§,null);
         }
      }
   }
}
