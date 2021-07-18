package §]" §
{
   import §!N§.§"!J§;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   
   public class §4!F§ extends §"!J§
   {
      
      private static const §2f§:Vector.<String>;
      
      private static const §^"!§:Vector.<String>;
      
      private static const §+L§:Vector.<String>;
      
      private static const §&C§:Vector.<String>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2f§ = new <String>["P_PIG_5"];
         }
         while(true)
         {
            §^"!§ = new <String>["P_PIG_6","P_PIG_4"];
            while(!_loc2_)
            {
               §+L§ = new <String>["P_PIG_1"];
               do
               {
                  §&C§ = new <String>["P_PIG_2","P_PIG_7"];
               }
               while(!_loc1_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §7z§:b2Vec2;
      
      private var §&d§:b2Vec2;
      
      private const §2!L§:Number = 0.3;
      
      private const §&?§:Number = 1;
      
      public function §4!F§(param1:b2Vec2, param2:b2Vec2, param3:Boolean, param4:Boolean)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §§push(this);
            if(!(_loc7_ && param3))
            {
               §§push(param3);
               if(!(_loc7_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc8_ || this)
                     {
                        §§push(param4);
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              addr151:
                              §§pop().super(!!_loc8_ ? §+L§ : §&C§);
                              loop0:
                              while(true)
                              {
                                 x = param1.x;
                                 while(true)
                                 {
                                    y = param1.y;
                                    loop2:
                                    for(; _loc8_ || param2; if(!(_loc8_ || this))
                                    {
                                       continue;
                                    },§§push(this.§7z§),if(!(_loc7_ && this))
                                    {
                                       §§pop().Normalize();
                                       if(!_loc7_)
                                       {
                                          addr33:
                                          if(!(_loc8_ || param2))
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§7z§);
                                                addr45:
                                                while(true)
                                                {
                                                   §§pop().§&"1§(param2);
                                                   §§goto(addr47);
                                                }
                                                §§goto(addr33);
                                             }
                                             continue loop0;
                                             addr42:
                                          }
                                          §§push(Math.random() * 2);
                                          if(_loc8_ || param1)
                                          {
                                             §§push(§§pop() * Math.PI);
                                             if(_loc8_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(Math.random() * 0.15);
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(§§pop() + 0.05);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr191:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc6_:* = §§pop();
                                             if(!_loc7_)
                                             {
                                                if(param3)
                                                {
                                                   §8+§ = 0;
                                                   addr245:
                                                   if(!_loc7_)
                                                   {
                                                      §&g§ = 0;
                                                      addr231:
                                                      if(_loc8_ || param3)
                                                      {
                                                         addr209:
                                                         rotation = Math.random() * Math.PI * 2;
                                                         addr219:
                                                         if(_loc8_ || param1)
                                                         {
                                                            alpha = 1;
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr231);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr219);
                                                            addr226:
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      addr271:
                                                      §8+§ = Math.cos(_loc5_) * _loc6_;
                                                      §&g§ = Math.sin(_loc5_) * _loc6_;
                                                      addr278:
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr47);
                                    },§§goto(addr45))
                                    {
                                       while(true)
                                       {
                                          this.§&d§ = param2;
                                          while(true)
                                          {
                                             this.§7z§ = param1;
                                             continue loop0;
                                             addr47:
                                             while(_loc8_ || param1)
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(§2f§);
                           }
                           §§goto(addr143);
                        }
                        else
                        {
                           addr145:
                           if(§§pop())
                           {
                              §§goto(addr146);
                           }
                           else
                           {
                              §§push(§^"!§);
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr143);
                  }
                  else
                  {
                     §§push(param4);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr143);
         }
         §§goto(addr91);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Vec2 = new b2Vec2(x,y);
         if(!(_loc7_ && param1))
         {
            _loc2_.§&"1§(this.§&d§);
         }
         var _loc3_:Number = Math.max(1,_loc2_.§?!]§());
         if(!(_loc7_ && this))
         {
            _loc2_.Normalize();
            loop0:
            while(true)
            {
               §8+§ -= _loc2_.x * this.§2!L§ / _loc3_ * param1;
               addr93:
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     §&g§ -= _loc2_.y * this.§2!L§ / _loc3_ * param1;
                     addr76:
                     while(_loc6_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            rotation += 0.3 * param1;
            if(!_loc7_)
            {
               if(_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr62);
               }
               §§goto(addr93);
            }
            §§goto(addr76);
         }
         _loc2_ = new b2Vec2(x + §8+§,y + §&g§);
         if(_loc6_)
         {
            _loc2_.§&"1§(this.§&d§);
            if(!(_loc7_ && _loc3_))
            {
               _loc2_.Normalize();
            }
         }
         §§push(b2Math);
         §§push(_loc2_);
         §§push(b2Math);
         §§push(b2Math.§8n§(_loc2_,this.§7z§));
         if(_loc6_)
         {
            §§push(§§pop() / b2Math.§8n§(this.§7z§,this.§7z§));
         }
         var _loc4_:b2Vec2 = §§pop().§ !r§(§§pop(),§§pop().§2!z§(§§pop(),this.§7z§));
         §§push(§§findproperty(b2Vec2));
         §§push(this.§&?§);
         if(_loc6_ || param1)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               addr168:
               §§push(_loc4_.x);
               if(_loc6_ || this)
               {
                  addr178:
                  §§push(§§pop() * §§pop());
                  §§push(this.§&?§);
                  if(!_loc7_)
                  {
                     §§push(-§§pop());
                     if(!(_loc7_ && _loc2_))
                     {
                        addr190:
                        §§push(§§pop() * _loc4_.y);
                     }
                     var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                     if(_loc6_)
                     {
                        x += (§8+§ + _loc5_.x) * param1;
                     }
                     loop5:
                     while(true)
                     {
                        y += (§&g§ + _loc5_.y) * param1;
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(parent));
                           if(!(_loc7_ && this))
                           {
                              if(§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr241:
                                    while(_loc6_)
                                    {
                                       §§push(y < this.§&d§.y);
                                       if(!_loc7_)
                                       {
                                       }
                                       continue loop9;
                                    }
                                    continue loop6;
                                 }
                                 addr240:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          parent.removeChild(this);
                                       }
                                       else
                                       {
                                          §§goto(addr241);
                                       }
                                    }
                                    break;
                                 }
                                 break;
                                 §§goto(addr243);
                              }
                              return;
                           }
                           §§goto(addr240);
                        }
                     }
                  }
               }
               §§goto(addr190);
            }
            §§goto(addr178);
         }
         §§goto(addr168);
      }
   }
}
