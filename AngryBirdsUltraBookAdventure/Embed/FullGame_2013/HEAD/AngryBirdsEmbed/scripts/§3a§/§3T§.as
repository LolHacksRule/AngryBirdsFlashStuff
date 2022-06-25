package §3a§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §3T§ extends Sprite
   {
      
      private static const §1<§:int = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1<§ = 1000;
         }
      }
      
      private var § N§:TextField;
      
      private var § t§:Boolean;
      
      private var §&A§:int = 0;
      
      private var §1!J§:Number = 0;
      
      private var §=S§:Array;
      
      public function §3T§(param1:Boolean, param2:Sprite = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this.§ t§ = param1;
               if(!_loc3_)
               {
                  if(param1)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§ N§ = new TextField();
                        this.§ N§.text = "...";
                        if(_loc4_)
                        {
                           this.§ N§.textColor = 16711680;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr68:
                              this.§ N§.selectable = false;
                              addr72:
                              this.§ N§.height = 40;
                              if(_loc3_)
                              {
                              }
                              §§goto(addr113);
                           }
                           this.§ N§.width = 150;
                           this.§ N§.mouseEnabled = false;
                           if(!_loc3_)
                           {
                              addChild(this.§ N§);
                              if(_loc4_)
                              {
                                 addr94:
                                 if(param2)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       addr113:
                                       param2.addChild(this);
                                       if(!_loc3_)
                                       {
                                          addr118:
                                          this.x = 250;
                                       }
                                       §§goto(addr121);
                                    }
                                    addr121:
                                    this.§=S§ = new Array();
                                    if(!(_loc3_ && param1))
                                    {
                                       addr132:
                                       this.mouseEnabled = false;
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr118);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr68);
      }
      
      public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§&A§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.§&A§ = _loc3_;
            }
            if(_loc5_ || _loc2_)
            {
               §§push(this);
               §§push(this.§1!J§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§1!J§ = §§pop();
               if(_loc5_)
               {
                  if(this.§1!J§ >= §1<§)
                  {
                     if(!_loc4_)
                     {
                        addr97:
                        this.reset();
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr97);
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc6_ || _loc3_)
         {
            §§push(this.§1!J§);
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(this.§&A§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() == 0);
                                 if(_loc6_ || param1)
                                 {
                                    addr72:
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          addr85:
                                          §§push(1000);
                                          if(_loc6_ || this)
                                          {
                                             addr93:
                                             §§push(§§pop() / this.§1!J§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr105:
                                                §§push(§§pop() * this.§&A§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr113:
                                                   §§push(Number(§§pop()));
                                                   if(_loc6_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr133:
                                                         §§push("fps = ");
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + Math.round(_loc2_));
                                                         }
                                                         var _loc3_:String = §§pop();
                                                         var _loc4_:int = 0;
                                                         for(; _loc4_ < this.§=S§.length; §§pop()[§§pop()][2] = 0,_loc4_++)
                                                         {
                                                            §§push(this.§=S§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  if(§§pop()[§§pop()][1] != 0)
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           §§push(" ");
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop() + this.§=S§[_loc4_][0]);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + " = ");
                                                                                 if(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr212:
                                                                                 _loc3_ = §§pop() + §§pop();
                                                                                 §§push(this.§=S§);
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr225:
                                                                                       §§pop()[§§pop()][1] = 0;
                                                                                       addr231:
                                                                                       §§push(this.§=S§);
                                                                                       §§push(_loc4_);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr231);
                                                                                 addr210:
                                                                              }
                                                                              §§push(§§pop() + Math.round(this.§=S§[_loc4_][2] / this.§=S§[_loc4_][1]));
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         this.§ N§.text = _loc3_;
                                                         this.§ N§.mouseEnabled = false;
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            this.§&A§ = 0;
                                                            if(_loc6_)
                                                            {
                                                               this.§1!J§ = 0;
                                                            }
                                                         }
                                                         return;
                                                         addr119:
                                                      }
                                                   }
                                                   §§goto(addr133);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr121:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc2_ = §§pop();
                                       }
                                       else
                                       {
                                          addr75:
                                       }
                                       §§goto(addr133);
                                    }
                                    else
                                    {
                                       addr77:
                                       if(param1)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr85);
                                          }
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          §§push(0);
                                       }
                                    }
                                    §§goto(addr121);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr77);
               }
               §§goto(addr105);
            }
            §§goto(addr113);
         }
         §§goto(addr75);
      }
      
      public function §!n§(param1:String, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = -1;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               while(true)
               {
                  if(§§pop() < this.§=S§.length)
                  {
                     §§push(this.§=S§);
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop()[§§pop()][0] != param1)
                        {
                           continue loop0;
                        }
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc4_);
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           §§push(int(§§pop()));
                           if(!(_loc5_ && param1))
                           {
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              addr130:
                              §§push(this.§=S§);
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 addr135:
                                 §§pop()[§§pop()][2] = 0;
                                 §§push(this.§=S§);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§pop()[§§pop()][1] = this.§=S§[_loc3_][1] + 1;
                                       if(!_loc5_)
                                       {
                                          addr182:
                                          this.§=S§[_loc3_][2] += param2;
                                       }
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr182);
                           }
                           else
                           {
                              addr104:
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 §§push(this.§=S§);
                                 §§push(_loc3_);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§pop()[§§pop()][0] = param1;
                                    addr121:
                                    §§push(this.§=S§);
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§goto(addr135);
                                 }
                                 break;
                              }
                           }
                           §§goto(addr135);
                        }
                        else
                        {
                           addr79:
                           §§push(this.§=S§);
                           if(!_loc5_)
                           {
                              §§pop()[this.§=S§.length] = new Array();
                              §§push(this.§=S§);
                           }
                           §§goto(addr104);
                           §§push(int(§§pop().length - 1));
                        }
                        §§goto(addr104);
                     }
                     break;
                  }
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  §§goto(addr104);
               }
               §§pop()[§§pop()][1] = 0;
               §§goto(addr130);
            }
            break;
         }
         if(§§pop() == -1)
         {
            if(_loc6_ || param1)
            {
               §§goto(addr79);
            }
            §§goto(addr121);
         }
         §§goto(addr135);
      }
   }
}
