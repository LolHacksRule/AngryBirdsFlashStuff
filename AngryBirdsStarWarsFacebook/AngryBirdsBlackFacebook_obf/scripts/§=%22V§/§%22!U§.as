package §="V§
{
   import §5t§.Log;
   import flash.external.ExternalInterface;
   
   public class §"!U§
   {
       
      
      public var §1F§:String = "";
      
      private var §;3§:Array = null;
      
      public function §"!U§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§1F§ = param1;
            while(true)
            {
               if(_loc3_)
               {
                  if(!ExternalInterface.available)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr58:
                  continue;
               }
               continue loop0;
            }
            return;
         }
      }
      
      public function §=!B§(... rest) : *
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Function = null;
         if(_loc9_ || rest)
         {
            §§push("call through externalInterface! " + this.§1F§);
            if(_loc9_ || _loc2_)
            {
               §§push(§§pop() + "(");
            }
            _loc3_ = §§pop();
            do
            {
               _loc4_ = 0;
            }
            while(_loc8_ && _loc3_);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && rest))
            {
               if(_loc9_)
               {
                  if(§§pop() >= rest.length)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc9_)
                        {
                           §§push(§§pop() + ")");
                           if(!_loc9_)
                           {
                              addr97:
                              §§push(§§pop());
                           }
                           else
                           {
                              addr115:
                           }
                           _loc3_ = §§pop();
                           while(true)
                           {
                              if(_loc9_ || rest)
                              {
                                 continue;
                              }
                              addr117:
                              §§push(_loc4_);
                              if(_loc9_)
                              {
                                 addr86:
                                 _loc4_ = §§pop() + 1;
                                 addr85:
                                 break;
                              }
                              §§goto(addr85);
                           }
                           continue loop1;
                           break;
                        }
                        break;
                        if(!(_loc9_ || this))
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        §§goto(addr97);
                     }
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(!(_loc8_ && _loc2_))
                     {
                        §§goto(addr115);
                        §§push(§§pop() + (rest[_loc4_] + ","));
                     }
                  }
                  _loc3_ = §§pop();
                  §§goto(addr117);
               }
               §§goto(addr85);
            }
            §§goto(addr86);
         }
         var _loc2_:* = null;
         if(_loc9_)
         {
            if(this.§;3§ != null)
            {
               if(_loc9_)
               {
                  var _loc6_:int = 0;
                  if(_loc9_)
                  {
                     for each(_loc5_ in this.§;3§)
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
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;3§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§;3§ = new Array();
                     addr96:
                     while(true)
                     {
                     }
                  }
                  addr92:
               }
               loop3:
               while(true)
               {
                  §§push(this.§;3§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  §§push(param1);
                  if(_loc3_)
                  {
                     if(§§pop().indexOf(§§pop()) == -1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!(_loc2_ && this))
                           {
                              while(true)
                              {
                                 §§push(this.§;3§);
                                 continue loop0;
                              }
                              addr64:
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                           }
                           addr75:
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr25);
                  }
                  else
                  {
                     addr74:
                  }
                  while(true)
                  {
                     §§pop().push(§§pop());
                  }
                  §§goto(addr75);
               }
               addr25:
               return;
            }
         }
         §§goto(addr64);
      }
      
      public function §&z§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;3§);
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
                           §§push(this.§;3§);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§push(§§pop().indexOf(param1) == -1);
                                 if(_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       while(§§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§;3§);
                                                addr68:
                                                while(true)
                                                {
                                                   §§pop().splice(this.§;3§.indexOf(param1),1);
                                                }
                                             }
                                             addr66:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr20:
                                       return;
                                       addr62:
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           §§goto(addr68);
                        }
                        §§goto(addr20);
                     }
                  }
                  §§goto(addr62);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function get §]>§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;3§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     return 0;
                  }
                  addr58:
                  §§push(this.§;3§);
               }
               §§goto(addr58);
            }
            return §§pop().length;
         }
         §§goto(addr58);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ExternalInterface.addCallback(this.§1F§,null);
         }
      }
   }
}
