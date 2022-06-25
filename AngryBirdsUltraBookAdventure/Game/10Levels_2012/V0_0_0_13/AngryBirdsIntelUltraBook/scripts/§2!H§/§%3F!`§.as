package §2!H§
{
   import § D§.§]!B§;
   import §&L§.b2Vec2;
   import §]=§.b2DebugDraw;
   import §]=§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §?!`§
   {
      
      public static const §&!5§:Number = 0.03333333333333333;
      
      public static const §#Y§:int = 10;
      
      public static const §9!^§:Boolean = false;
      
      public static const §#q§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §&!5§ = 1 / 30;
            while(true)
            {
               §#Y§ = 10;
               while(_loc1_)
               {
                  §9!^§ = false;
                  do
                  {
                     §#q§ = true;
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(!_loc2_)
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public var mWorld:b2World;
      
      private var §^m§:Boolean = true;
      
      public var §7O§:§&P§;
      
      public var §9o§:Sprite;
      
      private var §6i§:b2DebugDraw;
      
      public var §"!>§:LevelMain;
      
      public var §?5§:Number;
      
      private var §-!j§:Number;
      
      private var §^!Q§:int;
      
      public function §?!`§(param1:LevelMain)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
         }
         do
         {
            this.§"!>§ = param1;
            do
            {
               this.§7@§();
            }
            while(!(_loc2_ || param1));
            
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function get §">§() : int
      {
         return this.§^!Q§;
      }
      
      public function get §[6§() : Number
      {
         return this.§-!j§;
      }
      
      private function §7@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7O§ = new §&P§(this);
         }
         while(true)
         {
            this.mWorld = new b2World(new b2Vec2(0,20),this.§^m§);
            loop1:
            while(true)
            {
               §§push(this.mWorld);
               loop2:
               while(true)
               {
                  §§pop().§?8§(this.§7O§);
                  loop3:
                  while(§9!^§)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.mWorld);
                        while(true)
                        {
                           §§pop().§6]§(true);
                           while(true)
                           {
                              this.§9o§ = new Sprite();
                              while(true)
                              {
                                 this.§6i§ = new b2DebugDraw();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§6i§);
                                    addr224:
                                    while(true)
                                    {
                                       §§push(b2DebugDraw.§>!>§);
                                       addr227:
                                       while(true)
                                       {
                                          §§pop().§1;§(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§6i§);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(b2DebugDraw.§`8§);
                                                addr200:
                                                while(true)
                                                {
                                                   §§pop().§1;§(§§pop());
                                                   addr202:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                       addr142:
                                       if(_loc1_ && this)
                                       {
                                          continue;
                                       }
                                       §§push(1);
                                       while(true)
                                       {
                                          §§push(§§pop() / LevelMain.§8N§);
                                          addr154:
                                          while(true)
                                          {
                                             §§pop().§!x§(§§pop());
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 while(!(_loc1_ && this))
                                 {
                                    §§goto(addr125);
                                    §§push(this.§6i§);
                                 }
                              }
                           }
                           §§push(this.mWorld);
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           §§pop().§2!h§(this.§6i§);
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr90);
                              }
                              break loop3;
                           }
                           §§goto(addr53);
                        }
                     }
                  }
                  return;
               }
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr167);
            §§push(this.§6i§);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§?8§(null);
               while(true)
               {
                  this.§7O§ = null;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(§9!^§)
                        {
                           addr86:
                           while(true)
                           {
                              this.§9o§.graphics.clear();
                              addr91:
                              while(true)
                              {
                              }
                           }
                           addr86:
                        }
                        while(true)
                        {
                           this.§9o§ = null;
                           continue loop0;
                           §§goto(addr91);
                        }
                        return;
                        addr36:
                     }
                     break;
                     addr59:
                     while(!(_loc1_ && _loc1_))
                     {
                        this.mWorld = null;
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        if(_loc2_)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr86);
                           }
                           §§goto(addr36);
                        }
                        §§goto(addr91);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §1!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§9!^§)
            {
               do
               {
                  this.mWorld.§4$§();
                  do
                  {
                     this.§9o§.parent.setChildIndex(this.§9o§,this.§9o§.parent.numChildren - 1);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_);
               
               addr67:
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §+F§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§9!^§)
            {
               if(_loc4_)
               {
                  this.§9o§.x = -param1;
               }
               do
               {
                  this.§9o§.y = -param2;
               }
               while(!(_loc4_ || param2));
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §;Q§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-!j§ = §&!5§;
         }
         §§push(this.§^q§(param1));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() > §#Y§)
               {
                  while(true)
                  {
                     §§push(§#Y§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr152:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr153:
                           while(true)
                           {
                           }
                        }
                        addr152:
                     }
                     §§goto(addr152);
                     addr113:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc3_ || param1)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(0);
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(param1);
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr99:
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             §§push(this.§-!j§);
                                          }
                                          param1 = §§pop();
                                       }
                                       continue;
                                    }
                                    §§push(§§pop() * 1000);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr99);
                        }
                        break;
                     }
                     return §§pop();
                     addr130:
                  }
               }
               while(true)
               {
                  this.§>D§(_loc2_);
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr113);
               }
               §§goto(addr130);
            }
            §§goto(addr152);
         }
         §§goto(addr130);
      }
      
      public function §>D§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_ || _loc2_)
         {
            this.§?5§ = 0;
         }
         §§push(10);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(10);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc8_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc8_)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_ || param1)
                        {
                           break;
                        }
                        loop13:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§push(this.mWorld);
                              if(!(_loc8_ || _loc3_))
                              {
                                 continue;
                              }
                              §§pop().§]!a§();
                              loop9:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§?5§);
                                 if(_loc8_)
                                 {
                                    §§push(this.§-!j§);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(§§pop() * 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§?5§ = §§pop();
                                 addr196:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§#q§);
                                    if(!(_loc9_ && this))
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§"!>§.handleEngineUpdateStep(this.§-!j§);
                                             loop12:
                                             while(true)
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc8_ || this)
                                                      {
                                                         addr106:
                                                         §§push(§§pop() + 1);
                                                         if(_loc9_)
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               while(_loc9_ && param1)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop0;
                                                               addr119:
                                                            }
                                                            else
                                                            {
                                                               addr249:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr251:
                                                                  while(true)
                                                                  {
                                                                     §§push(§#q§);
                                                                     break loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr106:
                                                      }
                                                      §§goto(addr106);
                                                      §§push(int(§§pop()));
                                                   }
                                                   while(true)
                                                   {
                                                      addr210:
                                                      while(true)
                                                      {
                                                         §§push(this.mWorld);
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr157:
                                                   while(true)
                                                   {
                                                      §]!B§.§6_§.§`J§("Box2D",getTimer() - _loc5_);
                                                      continue loop10;
                                                   }
                                                   addr157:
                                                }
                                             }
                                             continue loop9;
                                             addr176:
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(Number(getTimer()));
                                          if(_loc9_ && _loc2_)
                                          {
                                             break;
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr247);
                                       }
                                       §§goto(addr250);
                                       addr236:
                                    }
                                    §§goto(addr210);
                                    §§goto(addr196);
                                 }
                              }
                              addr231:
                           }
                           §§goto(addr236);
                        }
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr119);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§^!Q§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc9_)
                  {
                     _loc6_.§^!Q§ = _loc7_;
                  }
                  if(!(_loc9_ && _loc2_))
                  {
                     §§goto(addr249);
                     §§push(0);
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr106);
         }
      }
      
      private function §^q§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && param1))
            {
               if(_loc3_)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              addr109:
                              §§push(int(§§pop()));
                           }
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_ || param1)
                              {
                                 §§push(this.§-!j§);
                                 if(_loc3_)
                                 {
                                    addr92:
                                    §§push(§§pop() * 1000);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr93:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr94:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                          }
                                       }
                                    }
                                    addr92:
                                 }
                                 §§goto(addr92);
                              }
                              §§goto(addr93);
                           }
                           addr111:
                        }
                        while(_loc4_)
                        {
                           §§goto(addr111);
                        }
                        continue;
                     }
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr92);
               }
               §§goto(addr93);
            }
            §§goto(addr94);
         }
         return §§pop();
      }
   }
}
