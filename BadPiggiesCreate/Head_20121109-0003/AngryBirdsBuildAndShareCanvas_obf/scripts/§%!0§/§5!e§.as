package §%!0§
{
   import §"J§.b2DebugDraw;
   import §"J§.b2World;
   import §,P§.§'_§;
   import §<!a§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §5!e§
   {
      
      public static const § !B§:Number = 0.03333333333333333;
      
      public static const §,Q§:int = 10;
      
      public static const §2""§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !B§ = 1 / 30;
            while(true)
            {
               §,Q§ = 10;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §2""§ = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public var §;!^§:b2World;
      
      private var §&!f§:Boolean = true;
      
      public var §[1§:§4t§;
      
      public var §4X§:Sprite;
      
      private var §'l§:b2DebugDraw;
      
      private var §&m§:Boolean = false;
      
      public var §`!G§:§,4§;
      
      public var §3s§:Number;
      
      private var §%",§:Number;
      
      private var §2p§:int;
      
      public function §5!e§(param1:§,4§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§`!G§ = param1;
               loop1:
               while(_loc2_ || param1)
               {
                  while(true)
                  {
                     this.§?"!§();
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get §4"'§() : int
      {
         return this.§2p§;
      }
      
      public function get §>T§() : Number
      {
         return this.§%",§;
      }
      
      private function §?"!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[1§ = new §4t§(this);
            while(true)
            {
               this.§;!^§ = new b2World(new b2Vec2(0,20),this.§&!f§);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§;!^§.§-`§(this.§[1§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§;!^§);
            loop0:
            while(true)
            {
               §§pop().§-`§(null);
               loop1:
               while(true)
               {
                  this.§[1§ = null;
                  loop2:
                  while(true)
                  {
                     if(this.§&m§)
                     {
                        while(_loc1_ || _loc2_)
                        {
                           this.§4X§.graphics.clear();
                           continue loop2;
                        }
                        continue loop1;
                        addr77:
                     }
                     else
                     {
                        while(true)
                        {
                           this.§4X§ = null;
                           addr65:
                           while(!(_loc2_ && this))
                           {
                              continue loop0;
                              loop7:
                              while(!(_loc2_ && this))
                              {
                                 while(true)
                                 {
                                    this.§;!^§ = null;
                                    if(!_loc1_)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §§goto(addr77);
                                 }
                                 return;
                              }
                           }
                           continue loop2;
                        }
                        addr61:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §#1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§&m§)
            {
               loop0:
               while(true)
               {
                  this.§;!^§.§ "+§();
                  addr77:
                  while(true)
                  {
                     this.§4X§.parent.setChildIndex(this.§4X§,this.§4X§.parent.numChildren - 1);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr77);
      }
      
      public function §6"1§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_)
         {
            if(this.§&m§)
            {
               addr24:
               _loc4_ = §'_§.§=M§.§4!5§(0,0);
               if(!_loc6_)
               {
                  this.§4X§.x = _loc4_.x;
               }
               while(true)
               {
                  while(true)
                  {
                     this.§4X§.y = _loc4_.y;
                     do
                     {
                        §§push(this.§'l§);
                        §§push(1 / §,4§.§,^§);
                        if(_loc5_)
                        {
                           §§push(§§pop() * param3);
                        }
                        §§pop().§9!n§(§§pop());
                     }
                     while(!_loc5_);
                     
                     if(_loc6_)
                     {
                        break;
                     }
                     if(true)
                     {
                        return;
                     }
                     addr85:
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr24);
      }
      
      public function §7!V§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§%",§ = § !B§;
         }
         §§push(this.§>"4§(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > §,Q§)
               {
                  while(true)
                  {
                     §§push(§,Q§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr149:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr150:
                           while(true)
                           {
                           }
                        }
                        addr149:
                     }
                     §§goto(addr149);
                  }
                  addr130:
               }
               while(true)
               {
                  this.§[T§(_loc2_);
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr130);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              addr75:
                              §§push(param1);
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 addr98:
                                 addr100:
                                 §§push(§§pop() - this.§%",§ * 1000);
                                 if(_loc3_ && param1)
                                 {
                                 }
                                 addr109:
                                 param1 = §§pop();
                                 continue;
                              }
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr75);
               }
               return §§pop();
            }
            §§goto(addr149);
         }
         §§goto(addr150);
      }
      
      public function §[T§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc9_ || _loc3_)
         {
            this.§3s§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc9_ || _loc3_)
                  {
                     if(_loc9_ || this)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc8_ && this))
                        {
                           if(!_loc8_)
                           {
                              §§push(§2""§);
                              if(_loc9_ || param1)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(!(_loc8_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(Number(getTimer()));
                                          if(_loc9_)
                                          {
                                             _loc5_ = §§pop();
                                             addr233:
                                             while(true)
                                             {
                                             }
                                             addr233:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                break loop3;
                                             }
                                             addr236:
                                          }
                                       }
                                    }
                                    continue;
                                    addr210:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§;!^§);
                                    addr192:
                                    while(true)
                                    {
                                       §§pop().§^!6§(this.§%",§,_loc2_,_loc3_);
                                    }
                                    §§goto(addr233);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(this.§;!^§);
                                    if(_loc9_ || _loc3_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr233);
                           }
                           §§pop().§0^§();
                        }
                        §§push(this);
                        §§push(this.§3s§);
                        if(_loc9_ || this)
                        {
                           §§push(this.§%",§);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§push(§§pop() * 1000);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§3s§ = §§pop();
                     }
                     if(§§pop())
                     {
                        if(!(_loc8_ && _loc3_))
                        {
                           §'_§.§5k§.§#[§("Box2D",getTimer() - _loc5_);
                        }
                        while(true)
                        {
                           addr92:
                           if(_loc9_ || this)
                           {
                              continue loop0;
                           }
                        }
                        addr142:
                     }
                     while(true)
                     {
                        this.§`!G§.§7!a§(this.§%",§);
                        addr106:
                        while(true)
                        {
                           _loc4_++;
                        }
                        §§goto(addr142);
                     }
                  }
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr106);
                  }
                  continue;
               }
               var _loc6_:*;
               §§push((_loc6_ = this).§2p§);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(!(_loc8_ && _loc2_))
               {
                  _loc6_.§2p§ = _loc7_;
               }
               if(_loc9_)
               {
                  addr235:
                  §§goto(addr236);
                  §§push(Number(0));
               }
               §§goto(addr217);
            }
            §§goto(addr235);
         }
      }
      
      private function §>"4§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               §§push(0);
               if(_loc3_)
               {
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(!(_loc3_ || _loc2_))
                        {
                           while(true)
                           {
                              param1 = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     _loc2_++;
                     while(true)
                     {
                        §§push(param1);
                        if(_loc3_ || this)
                        {
                           §§push(this.§%",§);
                           while(true)
                           {
                              §§push(§§pop() * 1000);
                              addr68:
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr72);
                              }
                           }
                           addr66:
                        }
                        while(true)
                        {
                           §§goto(addr72);
                        }
                     }
                  }
                  §§goto(addr66);
               }
               §§goto(addr68);
            }
            §§goto(addr72);
         }
         return _loc2_;
      }
      
      public function set §default§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§;!^§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§&m§);
                              if(_loc3_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(!this.§4X§);
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr249:
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(this.§'l§);
                                                   addr206:
                                                   do
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         continue loop26;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                   while(_loc3_);
                                                   
                                                   continue loop2;
                                                }
                                             }
                                             addr248:
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop28:
                                                while(true)
                                                {
                                                   this.§&m§ = param1;
                                                   if(!(_loc2_ && this))
                                                   {
                                                      addr35:
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr44:
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  this.§'l§ = new b2DebugDraw();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§'l§);
                                                                     while(true)
                                                                     {
                                                                        §§push(b2DebugDraw.§^!F§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().§0!Q§(§§pop());
                                                                           addr192:
                                                                           while(!_loc2_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§goto(addr254);
                                                                              }
                                                                              §§push(this.§'l§);
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(b2DebugDraw.§#!=§);
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§0!Q§(§§pop());
                                                                                    addr176:
                                                                                    addr215:
                                                                                    while(_loc3_ || this)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(this.§'l§);
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§4X§ = new Sprite();
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                     }
                                                                     addr98:
                                                                     while(!(_loc2_ && param1))
                                                                     {
                                                                        this.§`!G§.stage.addChild(this.§4X§);
                                                                        loop24:
                                                                        while(_loc3_)
                                                                        {
                                                                           continue loop0;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              §§goto(addr144);
                                                                           }
                                                                           continue loop28;
                                                                        }
                                                                        §§goto(addr129);
                                                                        §§goto(addr35);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr62);
                                                   }
                                                }
                                                return;
                                                addr24:
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr248);
                           }
                        }
                        §§goto(addr24);
                     }
                  }
                  addr220:
               }
               addr254:
               return;
            }
            addr252:
         }
         while(true)
         {
            §§push(this.§;!^§);
            if(_loc3_)
            {
               §§pop().§+!]§(this.§'l§);
               §§goto(addr62);
            }
            else
            {
               §§goto(addr252);
            }
         }
      }
      
      public function get §default§() : Boolean
      {
         return this.§&m§;
      }
      
      public function get §>!a§() : b2DebugDraw
      {
         return this.§'l§;
      }
      
      public function §;!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§'l§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr53:
                  this.§4X§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr53);
      }
   }
}
