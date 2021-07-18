package §_-e3§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-qU§ extends Sprite
   {
      
      private static const §_-Th§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-Th§ = 1000;
         }
      }
      
      private var §_-3e§:TextField;
      
      private var §_-Wn§:Boolean;
      
      private var §_-uE§:int = 0;
      
      private var §_-tw§:Number = 0;
      
      private var §_-pq§:Array;
      
      public function §_-qU§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(_loc4_ || _loc3_)
            {
               this.§_-Wn§ = param1;
               if(!(_loc3_ && param2))
               {
                  if(param1)
                  {
                     if(_loc4_)
                     {
                        this.§_-3e§ = new TextField();
                        addr43:
                        this.§_-3e§.text = "...";
                        this.§_-3e§.textColor = 16711680;
                        if(_loc4_ || param1)
                        {
                           this.§_-3e§.selectable = false;
                           this.§_-3e§.height = 40;
                           if(_loc4_ || this)
                           {
                              this.§_-3e§.width = 150;
                              if(_loc4_ || param1)
                              {
                                 this.§_-3e§.mouseEnabled = false;
                                 addChild(this.§_-3e§);
                                 if(param2)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr103:
                                       param2.addChild(this);
                                       addr106:
                                       this.x = 250;
                                       if(_loc4_ || this)
                                       {
                                          addr116:
                                          this.§_-pq§ = new Array();
                                          if(!(_loc3_ && param2))
                                          {
                                             this.mouseEnabled = false;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr106);
                              }
                              return;
                           }
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr116);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr103);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§_-uE§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               _loc2_.§_-uE§ = _loc3_;
            }
            if(_loc4_)
            {
               §§push(this);
               §§push(this.§_-tw§);
               if(_loc4_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§_-tw§ = §§pop();
               if(_loc4_ || param1)
               {
                  if(this.§_-tw§ >= §_-Th§)
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr79);
               }
               this.reset();
            }
         }
         addr79:
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc6_)
         {
            §§push(this.§_-tw§);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(this.§_-uE§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() == 0);
                                 if(!(_loc6_ && this))
                                 {
                                    addr58:
                                    if(§§pop())
                                    {
                                       if(_loc6_ && this)
                                       {
                                          addr76:
                                          §§push(1000);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() / this.§_-tw§);
                                             if(_loc5_ || this)
                                             {
                                                addr91:
                                                §§push(§§pop() * this.§_-uE§);
                                                if(!_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr102:
                                                      _loc2_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         addr109:
                                                         var _loc3_:* = "fps = " + Math.round(_loc2_);
                                                         var _loc4_:int = 0;
                                                         while(true)
                                                         {
                                                            if(_loc4_ >= this.§_-pq§.length)
                                                            {
                                                               this.§_-3e§.text = _loc3_;
                                                               this.§_-3e§.mouseEnabled = false;
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§push(this.§_-pq§);
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc5_)
                                                               {
                                                                  if(§§pop()[§§pop()][1] != 0)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        §§push(" " + this.§_-pq§[_loc4_][0]);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() + " = ");
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(§§pop() + Math.round(this.§_-pq§[_loc4_][2] / this.§_-pq§[_loc4_][1]));
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                  }
                                                                  §§push(this.§_-pq§);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr204:
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§pop()[§§pop()][1] = 0;
                                                                        §§push(this.§_-pq§);
                                                                     }
                                                                     §§pop()[§§pop()][2] = 0;
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc4_++;
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§push(_loc4_);
                                                               }
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         this.§_-uE§ = 0;
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            this.§_-tw§ = 0;
                                                         }
                                                         addr248:
                                                         return;
                                                         addr105:
                                                      }
                                                   }
                                                   §§goto(addr109);
                                                }
                                                §§goto(addr102);
                                             }
                                          }
                                          else
                                          {
                                             addr107:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       else
                                       {
                                          addr66:
                                       }
                                       §§goto(addr109);
                                    }
                                    else
                                    {
                                       addr68:
                                       if(param1)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§goto(addr76);
                                          }
                                          §§goto(addr109);
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr68);
               }
               §§goto(addr91);
            }
            §§goto(addr102);
         }
         §§goto(addr105);
      }
      
      public function §_-LC§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_ || param1)
            {
               while(true)
               {
                  if(§§pop() >= this.§_-pq§.length)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        addr100:
                        _loc3_ = §§pop();
                        if(!(_loc5_ && this))
                        {
                           addr108:
                           §§push(this.§_-pq§);
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 §§pop()[§§pop()][0] = param1;
                                 if(_loc6_ || param2)
                                 {
                                    §§push(this.§_-pq§);
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       §§pop()[§§pop()][1] = 0;
                                       if(_loc6_)
                                       {
                                          §§push(this.§_-pq§);
                                          if(_loc6_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc6_)
                                             {
                                                addr149:
                                                §§pop()[§§pop()][2] = 0;
                                                §§push(this.§_-pq§);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§pop()[§§pop()][2] = this.§_-pq§[_loc3_][2] + param2;
                                             addr194:
                                             return;
                                             addr176:
                                          }
                                          addr175:
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr149);
                           }
                           break;
                        }
                        §§goto(addr194);
                     }
                     addr173:
                     §§goto(addr175);
                     §§push(this.§_-pq§);
                  }
                  else
                  {
                     §§push(this.§_-pq§);
                     if(_loc5_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop()[§§pop()][0] == param1)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     addr160:
                     §§pop()[§§pop()][1] = this.§_-pq§[_loc3_][1] + 1;
                     if(!_loc5_)
                     {
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr194);
               }
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§goto(addr160);
               }
               §§goto(addr194);
            }
            break;
         }
         if(§§pop() == -1)
         {
            if(!_loc5_)
            {
               this.§_-pq§[this.§_-pq§.length] = new Array();
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr100);
                  §§push(int(this.§_-pq§.length - 1));
               }
               §§goto(addr149);
            }
            §§goto(addr194);
         }
         §§goto(addr149);
      }
   }
}
