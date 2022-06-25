package §>K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §;Q§ extends Sprite
   {
      
      private static const §%H§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%H§ = 1000;
         }
      }
      
      private var §3Y§:TextField;
      
      private var §<7§:Boolean;
      
      private var §+!<§:int = 0;
      
      private var §#c§:Number = 0;
      
      private var §?-§:Array;
      
      public function §;Q§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            this.§<7§ = param1;
            if(_loc3_ || _loc3_)
            {
               if(param1)
               {
                  if(!_loc4_)
                  {
                     this.§3Y§ = new TextField();
                     if(_loc3_ || this)
                     {
                        this.§3Y§.text = "...";
                        this.§3Y§.textColor = 16711680;
                        if(!_loc4_)
                        {
                           this.§3Y§.selectable = false;
                           if(!(_loc4_ && _loc3_))
                           {
                              this.§3Y§.height = 40;
                              addr80:
                              this.§3Y§.width = 150;
                           }
                        }
                        this.§3Y§.mouseEnabled = false;
                        if(_loc3_ || param2)
                        {
                           addChild(this.§3Y§);
                        }
                        if(param2)
                        {
                           if(_loc3_)
                           {
                              addr113:
                              param2.addChild(this);
                              if(_loc3_ || param1)
                              {
                                 addr123:
                                 this.x = 250;
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr133:
                                    this.§?-§ = new Array();
                                 }
                              }
                              this.mouseEnabled = false;
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr123);
                     }
                     addr140:
                     return;
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr80);
         }
         §§goto(addr113);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§+!<§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               _loc2_.§+!<§ = _loc3_;
            }
            if(_loc4_)
            {
               §§push(this);
               §§push(this.§#c§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§#c§ = §§pop();
               if(_loc4_)
               {
                  addr80:
                  if(this.§#c§ >= §%H§)
                  {
                     if(_loc4_ || param1)
                     {
                        addr91:
                        this.reset();
                     }
                  }
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr80);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§#c§);
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr40:
                           §§pop();
                           if(_loc5_ || _loc3_)
                           {
                              §§push(this.§+!<§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(§§pop() == 0);
                                 if(_loc5_)
                                 {
                                    addr61:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          addr69:
                                       }
                                    }
                                    else
                                    {
                                       addr71:
                                       if(param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(1000);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(§§pop() / this.§#c§);
                                                if(_loc5_)
                                                {
                                                   addr89:
                                                   §§push(§§pop() * this.§+!<§);
                                                   if(_loc6_ && param1)
                                                   {
                                                   }
                                                   addr111:
                                                   _loc2_ = §§pop();
                                                   §§goto(addr112);
                                                }
                                                §§push(Number(§§pop()));
                                                if(_loc5_ || param1)
                                                {
                                                   addr105:
                                                   _loc2_ = §§pop();
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr112);
                                                }
                                                addr112:
                                                §§push("fps = ");
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() + Math.round(_loc2_));
                                                }
                                                var _loc3_:String = §§pop();
                                                var _loc4_:int = 0;
                                                do
                                                {
                                                   if(_loc4_ >= this.§?-§.length)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         this.§3Y§.text = _loc3_;
                                                         if(_loc5_)
                                                         {
                                                            addr264:
                                                            this.§3Y§.mouseEnabled = false;
                                                         }
                                                         this.§+!<§ = 0;
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr264);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§?-§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop()[§§pop()][1] != 0)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(" ");
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + this.§?-§[_loc4_][0]);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr182:
                                                                        addr209:
                                                                        §§push(§§pop() + " = ");
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr191:
                                                                           §§push(§§pop() + Math.round(this.§?-§[_loc4_][2] / this.§?-§[_loc4_][1]));
                                                                        }
                                                                        _loc3_ = §§pop() + §§pop();
                                                                        §§push(this.§?-§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr222:
                                                                              §§pop()[§§pop()][1] = 0;
                                                                              addr228:
                                                                              §§push(this.§?-§);
                                                                              §§push(_loc4_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                                while(§§pop()[§§pop()][2] = 0, _loc4_++, !_loc6_);
                                                
                                                this.§#c§ = 0;
                                                addr281:
                                                return;
                                             }
                                             addr110:
                                             §§push(Number(§§pop()));
                                             §§goto(addr111);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr110);
                                          §§push(0);
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr71);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr40);
               }
               §§goto(addr89);
            }
            §§goto(addr105);
         }
         §§goto(addr69);
      }
      
      public function §false§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() >= this.§?-§.length)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        break;
                     }
                     addr101:
                     _loc3_ = §§pop();
                     §§push(this.§?-§);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param1)
                        {
                           addr114:
                           §§pop()[§§pop()][0] = param1;
                           §§push(this.§?-§);
                           §§push(_loc3_);
                           if(!(_loc6_ && param2))
                           {
                              §§pop()[§§pop()][1] = 0;
                              if(_loc5_)
                              {
                                 addr136:
                                 §§push(this.§?-§);
                                 §§push(_loc3_);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§pop()[§§pop()][2] = 0;
                                    if(!_loc6_)
                                    {
                                       addr150:
                                       §§push(this.§?-§);
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          §§pop()[§§pop()][1] = this.§?-§[_loc3_][1] + 1;
                                          addr155:
                                          if(_loc5_ || param1)
                                          {
                                          }
                                          §§goto(addr197);
                                       }
                                       addr186:
                                       §§pop()[§§pop()][2] = this.§?-§[_loc3_][2] + param2;
                                       §§goto(addr197);
                                    }
                                    addr185:
                                    §§push(this.§?-§);
                                    §§push(_loc3_);
                                 }
                              }
                              addr197:
                              return;
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr155);
               }
               else
               {
                  §§push(this.§?-§);
                  if(!_loc6_)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && this))
                     {
                        if(§§pop()[§§pop()][0] == param1)
                        {
                           §§push(_loc4_);
                           if(_loc5_ || this)
                           {
                              §§push(int(§§pop()));
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           _loc3_ = §§pop();
                        }
                        continue;
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr185);
            }
            break;
         }
         if(§§pop() == -1)
         {
            §§push(this.§?-§);
            if(_loc5_)
            {
               §§pop()[this.§?-§.length] = new Array();
               §§goto(addr101);
               §§push(int(this.§?-§.length - 1));
            }
            §§goto(addr114);
         }
         §§goto(addr150);
      }
   }
}
