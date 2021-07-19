package §,§
{
   import § o§.b2DebugDraw;
   import § o§.b2World;
   import §6!H§.b2Vec2;
   import §`h§.§@!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §!f§
   {
      
      public static const §`!;§:Number = 0.03333333333333333;
      
      public static const §8!A§:int = 10;
      
      public static const §1l§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!;§ = 1 / 30;
            while(true)
            {
               §8!A§ = 10;
               while(_loc2_ || §!f§)
               {
                  §1l§ = true;
                  if(_loc1_ && §!f§)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public var mWorld:b2World;
      
      private var § H§:Boolean = true;
      
      public var §@^§:§0!!§;
      
      public var §9!;§:Sprite;
      
      private var §^!^§:b2DebugDraw;
      
      private var §9! §:Boolean = false;
      
      public var §^!I§:§ p§;
      
      public var §5O§:Number;
      
      private var §@<§:Number;
      
      private var §6!b§:int;
      
      public function §!f§(param1:§ p§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§^!I§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§-V§();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get currentStep() : int
      {
         return this.§6!b§;
      }
      
      public function get §-!]§() : Number
      {
         return this.§@<§;
      }
      
      private function §-V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@^§ = new §0!!§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§ H§);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.mWorld.§`Q§(this.§@^§);
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
         §§goto(addr70);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§`Q§(null);
               loop1:
               while(true)
               {
                  this.§@^§ = null;
                  loop2:
                  while(true)
                  {
                     if(this.§9! §)
                     {
                        while(true)
                        {
                           this.§9!;§.graphics.clear();
                           addr86:
                           addr61:
                           while(true)
                           {
                           }
                           loop7:
                           while(!(_loc1_ && _loc1_))
                           {
                              while(true)
                              {
                                 this.mWorld = null;
                                 if(_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 addr30:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr73:
                                 while(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                    §§goto(addr30);
                                 }
                                 §§goto(addr86);
                              }
                              return;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§9!;§ = null;
                        §§goto(addr73);
                        §§goto(addr86);
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §"]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§9! §)
            {
               if(_loc2_)
               {
                  addr64:
                  this.mWorld.§![§();
               }
               do
               {
                  this.§9!;§.parent.setChildIndex(this.§9!;§,this.§9!;§.parent.numChildren - 1);
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §1q§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(this.§9! §)
            {
               addr25:
               _loc4_ = §@!Z§.§;!,§.§=!A§(0,0);
               if(_loc6_)
               {
                  this.§9!;§.x = _loc4_.x;
                  loop0:
                  while(true)
                  {
                     addr66:
                     while(true)
                     {
                        this.§9!;§.y = _loc4_.y;
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr66);
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §^T§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@<§ = §`!;§;
         }
         §§push(this.§"D§(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() > §8!A§)
               {
                  addr139:
                  while(true)
                  {
                     §§push(§8!A§);
                     if(_loc3_)
                     {
                        addr143:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr144:
                           while(true)
                           {
                           }
                        }
                        addr143:
                     }
                     §§goto(addr143);
                  }
                  addr139:
               }
               while(true)
               {
                  this.§-!a§(_loc2_);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr139);
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && this))
                  {
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc4_ && this))
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(param1);
                                    break;
                                 }
                                 continue;
                              }
                              addr88:
                              §§push(param1);
                              §§push(this.§@<§);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() * 1000);
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              addr103:
                              param1 = §§pop();
                              continue;
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr103);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr143);
         }
         §§goto(addr139);
      }
      
      public function §-!a§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!(_loc9_ && param1))
         {
            this.§5O§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc9_ && _loc3_))
            {
               if(§§pop() >= param1)
               {
                  if(_loc8_)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           if(!_loc9_)
                           {
                              if(_loc8_ || this)
                              {
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr84:
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             break;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.mWorld);
                                                while(true)
                                                {
                                                   §§pop().§+"§(this.§@<§,_loc2_,_loc3_);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(this.mWorld);
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().§<p§();
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§5O§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(this.§@<§);
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * 1000);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§5O§ = §§pop();
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(§1l§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §@!Z§.§+!-§.§[!=§("Box2D",getTimer() - _loc5_);
                                                                        addr140:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           addr206:
                                                                           while(true)
                                                                           {
                                                                              §§push(§1l§);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Number(getTimer()));
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     continue loop11;
                                                                  }
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     §§goto(addr206);
                                                                  }
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            addr173:
                                                            continue loop1;
                                                            addr162:
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    continue loop0;
                                 }
                                 addr126:
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr84);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§6!b§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc9_ && this))
                  {
                     _loc6_.§6!b§ = _loc7_;
                  }
                  if(_loc8_)
                  {
                     addr204:
                     §§goto(addr205);
                     §§push(Number(0));
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr204);
         }
      }
      
      private function §"D§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(_loc4_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           loop1:
                           while(!_loc4_)
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
                           addr65:
                           while(true)
                           {
                              §§push(this.§@<§);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop() * 1000);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr88);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr88);
         }
         return _loc2_;
      }
      
      public function set §02§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(this.§9!;§)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          this.§9!;§.graphics.clear();
                                          loop26:
                                          while(true)
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      this.§9! § = param1;
                                                      if(_loc3_)
                                                      {
                                                         continue loop26;
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_ || param1)
                                                         {
                                                            break;
                                                         }
                                                         addr260:
                                                         while(true)
                                                         {
                                                            §§push(this.§9! §);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(!this.§9!;§);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr270:
                                                                        if(§§pop())
                                                                        {
                                                                           addr282:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop15;
                                                                           }
                                                                           addr282:
                                                                        }
                                                                        while(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        while(_loc2_)
                                                                        {
                                                                           this.§9!;§ = new Sprite();
                                                                           while(true)
                                                                           {
                                                                              this.§^!^§ = new b2DebugDraw();
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^!^§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(b2DebugDraw.§4O§);
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§`o§(§§pop());
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§^!^§);
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(b2DebugDraw.§<!9§);
                                                                                             loop9:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                §§pop().§`o§(§§pop());
                                                                                                while(!(_loc3_ && this))
                                                                                                {
                                                                                                   §§push(this.§^!^§);
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(b2DebugDraw.§?!1§);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop().§`o§(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || this))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(this.§^!^§);
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§?B§(0.3);
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        break loop15;
                                                                                                                     }
                                                                                                                     §§push(this.§^!^§);
                                                                                                                     while(_loc2_)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                        addr146:
                                                                                                                        §§push(this.§^!^§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§pop().§5!>§(this.§9!;§);
                                                                                                                        while(!_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              this.§^!I§.stage.addChild(this.§9!;§);
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        while(!_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr146);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§9!;§.mouseEnabled = false;
                                                                                                                           §§goto(addr134);
                                                                                                                        }
                                                                                                                        addr134:
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr236:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr241);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr282);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr241:
                                                                        addr288:
                                                                        return;
                                                                        addr243:
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr46);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr236);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   return;
                                                   addr23:
                                                   addr45:
                                                }
                                                §§goto(addr119);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr102:
                                             }
                                             §§goto(addr46);
                                          }
                                          addr79:
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr23);
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr282);
                  }
               }
               §§goto(addr288);
            }
         }
         §§goto(addr45);
      }
      
      public function get §02§() : Boolean
      {
         return this.§9! §;
      }
      
      public function get §^U§() : b2DebugDraw
      {
         return this.§^!^§;
      }
      
      public function §4k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§^!^§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§9!;§.graphics.clear();
               }
            }
         }
      }
   }
}
