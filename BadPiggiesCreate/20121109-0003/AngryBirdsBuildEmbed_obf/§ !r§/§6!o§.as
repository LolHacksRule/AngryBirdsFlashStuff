package § !r§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6!o§ extends Sprite
   {
      
      private static const §<!%§:int = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §<!%§ = 1000;
         }
      }
      
      private var §04§:TextField;
      
      private var §3!Y§:Boolean;
      
      private var §2!0§:int = 0;
      
      private var § @§:Number = 0;
      
      private var §^t§:Array;
      
      public function §6!o§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            this.§3!Y§ = param1;
            if(_loc3_ || this)
            {
               if(param1)
               {
                  this.§04§ = new TextField();
                  addr36:
                  this.§04§.text = "...";
                  if(!_loc4_)
                  {
                     this.§04§.textColor = 16711680;
                     this.§04§.selectable = false;
                     if(!(_loc4_ && param1))
                     {
                        this.§04§.height = 40;
                        this.§04§.width = 150;
                        this.§04§.mouseEnabled = false;
                        if(_loc3_)
                        {
                           addr91:
                           addChild(this.§04§);
                           if(param2)
                           {
                              param2.addChild(this);
                           }
                           this.x = 250;
                           addr103:
                           this.§^t§ = new Array();
                           this.mouseEnabled = false;
                        }
                        return;
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr103);
            }
         }
         §§goto(addr36);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§2!0§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§2!0§ = _loc3_;
            }
            if(_loc5_)
            {
               §§push(this);
               §§push(this.§ @§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§ @§ = §§pop();
               if(!_loc4_)
               {
                  if(this.§ @§ >= §<!%§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        addr92:
                        this.reset();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc5_ || _loc2_)
         {
            §§push(this.§ @§);
            if(_loc5_ || _loc2_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           addr45:
                           §§pop();
                           if(_loc5_)
                           {
                              addr48:
                              §§push(this.§2!0§);
                              if(_loc5_)
                              {
                                 §§push(§§pop() == 0);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr61:
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr64:
                                       }
                                    }
                                    else
                                    {
                                       addr66:
                                       if(param1)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(1000);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() / this.§ @§);
                                                if(!_loc6_)
                                                {
                                                   addr84:
                                                   addr82:
                                                   §§push(§§pop() * this.§2!0§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                   }
                                                   addr101:
                                                   _loc2_ = §§pop();
                                                   §§goto(addr102);
                                                }
                                                §§push(Number(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr102);
                                                }
                                                addr102:
                                                §§push("fps = ");
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() + Math.round(_loc2_));
                                                }
                                                var _loc3_:String = §§pop();
                                                var _loc4_:int = 0;
                                                while(true)
                                                {
                                                   if(_loc4_ >= this.§^t§.length)
                                                   {
                                                      this.§04§.text = _loc3_;
                                                      this.§04§.mouseEnabled = false;
                                                      this.§2!0§ = 0;
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr243:
                                                         this.§ @§ = 0;
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§push(this.§^t§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop()[§§pop()][1] != 0)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(" ");
                                                                  if(_loc5_)
                                                                  {
                                                                     addr186:
                                                                     §§push(§§pop() + this.§^t§[_loc4_][0]);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr159:
                                                                        §§push(§§pop() + " = ");
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + Math.round(this.§^t§[_loc4_][2] / this.§^t§[_loc4_][1]));
                                                                        }
                                                                     }
                                                                     _loc3_ = §§pop() + §§pop();
                                                                     §§push(this.§^t§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§pop()[§§pop()][1] = 0;
                                                                           addr201:
                                                                           this.§^t§[_loc4_][2] = 0;
                                                                           if(_loc5_)
                                                                           {
                                                                              addr217:
                                                                              _loc4_++;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                   }
                                                   §§goto(addr201);
                                                   §§goto(addr243);
                                                }
                                                return;
                                             }
                                             addr100:
                                             §§push(Number(§§pop()));
                                             §§goto(addr101);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr100);
                                          §§push(0);
                                       }
                                       §§goto(addr100);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr45);
               }
               §§goto(addr84);
            }
            §§goto(addr82);
         }
         §§goto(addr48);
      }
      
      public function §;!r§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_ && param1)
            {
               break;
            }
            while(true)
            {
               if(§§pop() >= this.§^t§.length)
               {
                  addr79:
                  §§push(_loc3_);
                  if(!(_loc5_ && this))
                  {
                     break loop0;
                  }
                  addr123:
                  _loc3_ = §§pop();
                  §§push(this.§^t§);
                  if(!_loc5_)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        addr131:
                        §§pop()[§§pop()][0] = param1;
                        §§push(this.§^t§);
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           addr140:
                           §§pop()[§§pop()][1] = 0;
                           §§push(this.§^t§);
                           if(_loc6_)
                           {
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 §§pop()[§§pop()][2] = 0;
                                 addr155:
                                 §§push(this.§^t§);
                                 if(!(_loc5_ && this))
                                 {
                                    addr164:
                                    §§push(_loc3_);
                                    if(_loc6_ || param2)
                                    {
                                    }
                                    §§goto(addr196);
                                 }
                                 addr195:
                                 addr196:
                                 §§pop()[§§pop()][2] = this.§^t§[_loc3_][2] + param2;
                                 return;
                                 §§push(_loc3_);
                              }
                              §§pop()[§§pop()][1] = this.§^t§[_loc3_][1] + 1;
                              §§goto(addr195);
                              §§push(this.§^t§);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr195);
               }
               else
               {
                  §§push(this.§^t§);
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop()[§§pop()][0] != param1)
                     {
                        break;
                     }
                     if(_loc6_ || this)
                     {
                        continue;
                     }
                     §§goto(addr140);
                  }
                  else
                  {
                     §§goto(addr131);
                  }
               }
               §§goto(addr131);
            }
            _loc4_++;
            if(!(_loc5_ && _loc3_))
            {
               continue;
            }
            §§goto(addr140);
         }
         if(§§pop() == -1)
         {
            if(_loc6_)
            {
               §§push(this.§^t§);
               if(!_loc5_)
               {
                  §§pop()[this.§^t§.length] = new Array();
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr123);
                     §§push(int(this.§^t§.length - 1));
                  }
                  §§goto(addr79);
               }
               §§goto(addr164);
            }
            §§goto(addr131);
         }
         §§goto(addr155);
      }
   }
}
