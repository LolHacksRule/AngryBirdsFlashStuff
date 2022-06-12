package starling.events
{
   import §1!$§.DisplayObject;
   import flash.utils.Dictionary;
   
   public class EventDispatcher
   {
       
      
      private var §+j§:Dictionary;
      
      public function EventDispatcher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            if(this.§+j§ == null)
            {
               if(!_loc5_)
               {
                  addr29:
                  this.§+j§ = new Dictionary();
               }
            }
            var _loc3_:Vector.<Function> = this.§+j§[param1];
            if(_loc4_)
            {
               if(_loc3_ != null)
               {
                  this.§+j§[param1] = _loc3_.concat(new <Function>[param2]);
                  if(_loc5_)
                  {
                     addr112:
                  }
                  return;
               }
               if(_loc4_ || _loc3_)
               {
                  this.§+j§[param1] = new <Function>[param2];
               }
            }
            §§goto(addr112);
         }
         §§goto(addr29);
      }
      
      public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; !_loc4_; if(_loc4_ && param1)
               {
                  continue;
               },if(§§pop().§§slot[3].length == 0)
               {
                  if(_loc5_ || this)
                  {
                     if(_loc5_)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr148);
                        }
                        delete this.§+j§[type];
                        §§goto(addr102);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr102);
               },this.§+j§[type] = listeners,if(_loc5_)
               {
                  if(_loc4_ && param1)
                  {
                     §§goto(addr118);
                  }
                  §§goto(addr22);
               },§§goto(addr102))
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        continue loop3;
                        addr57:
                        if(_loc5_ || _loc3_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function removeEventListeners(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§+j§ = null;
                        if(!_loc2_)
                        {
                           §§goto(addr20);
                        }
                     }
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(delete this.§+j§[param1]);
                        loop2:
                        while(_loc2_ && param1)
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        §§pop();
                        break;
                        addr86:
                     }
                     while(true)
                     {
                        §§push(Boolean(this.§+j§));
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        §§goto(addr86);
                     }
                     continue loop0;
                     addr61:
                  }
                  addr20:
                  return;
                  addr94:
               }
               §§goto(addr99);
            }
         }
         §§goto(addr94);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:DisplayObject = null;
         if(_loc10_ || _loc2_)
         {
            var _loc2_:Vector.<Function> = !!this.§+j§ ? this.§+j§[param1.type] : null;
            if(_loc10_)
            {
               §§push(_loc2_ == null);
               if(_loc10_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(_loc10_ || _loc2_)
                        {
                           §§push(param1.bubbles);
                           if(!(_loc9_ && _loc3_))
                           {
                              addr77:
                              if(!§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                           }
                           §§goto(addr77);
                        }
                        var _loc3_:EventDispatcher = param1.target;
                        if(!_loc9_)
                        {
                           §§push(_loc3_ == null);
                           if(!(_loc9_ && this))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(param1.currentTarget == null);
                                       if(_loc10_)
                                       {
                                          addr110:
                                          §§push(!§§pop());
                                          if(!(_loc9_ && this))
                                          {
                                             addr118:
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr126:
                                                   param1.§;"#§(this);
                                                }
                                             }
                                          }
                                          addr130:
                                          var _loc4_:* = §§pop();
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(_loc2_ == null)
                                             {
                                                addr142:
                                                §§push(0);
                                                if(_loc9_)
                                                {
                                                }
                                                addr151:
                                                §§push(int(§§pop()));
                                             }
                                             else
                                             {
                                                §§push(int(_loc2_.length));
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr151);
                                                }
                                             }
                                             var _loc5_:*;
                                             §§push(_loc5_ = §§pop());
                                             if(!(_loc9_ && param1))
                                             {
                                                if(§§pop() != 0)
                                                {
                                                   if(_loc10_ || this)
                                                   {
                                                      param1.§?!D§(this);
                                                      if(!_loc9_)
                                                      {
                                                         addr186:
                                                         _loc6_ = 0;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_ < _loc5_)
                                                      {
                                                         _loc2_[_loc6_](param1);
                                                         if(_loc10_)
                                                         {
                                                            §§push(param1.§<"1§);
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  _loc6_++;
                                                                  while(_loc9_)
                                                                  {
                                                                     addr255:
                                                                     if(_loc9_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.bubbles);
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop8:
                                                                                          while(!_loc9_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(param1.§[![§);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc10_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc10_ || param1))
                                                                                                                              {
                                                                                                                                 break loop6;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    addr288:
                                                                                                                                    addr288:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr373);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop6;
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break loop6;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               break loop8;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr245);
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   addr292:
                                                                                                   §§pop();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr329:
                                                                                                   §§push((_loc7_ = this as DisplayObject).parent);
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      if(§§pop() != null)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            param1.§?!D§(null);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                         addr364:
                                                                                                         _loc7_.parent.dispatchEvent(param1);
                                                                                                      }
                                                                                                      addr366:
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            param1.§;"#§(_loc3_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr373);
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                addr277:
                                                                                             }
                                                                                             §§goto(addr233);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr321:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr329);
                                                                                       }
                                                                                       addr373:
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr288);
                                                                                          }
                                                                                          addr287:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                    addr314:
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this is DisplayObject);
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     addr262:
                                                                  }
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                    §§goto(addr130);
                                    §§push(false);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr126);
                     }
                  }
               }
               §§goto(addr77);
            }
            addr80:
            return;
         }
         §§goto(addr32);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§+j§ == null);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr51:
                        §§pop();
                        return param1 in this.§+j§;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §8!J§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(_loc5_)
         {
            if(this.§+j§)
            {
               addr47:
               var _loc3_:int = 0;
               for(_loc2_ in this.§+j§)
               {
                  if(_loc5_ || _loc3_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr47);
      }
   }
}
