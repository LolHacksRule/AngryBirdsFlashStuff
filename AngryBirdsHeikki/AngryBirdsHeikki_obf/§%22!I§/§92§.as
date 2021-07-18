package §"!I§
{
   import §3!R§.b2DebugDraw;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   import §9b§.§"!S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §92§
   {
      
      public static const §!!&§:Number = 0.03333333333333333;
      
      public static const §,!7§:int = 10;
      
      public static const §continue§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!&§ = 1 / 30;
         }
         while(true)
         {
            §,!7§ = 10;
            while(!_loc2_)
            {
               §continue§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var mWorld:b2World;
      
      private var §?§:Boolean = true;
      
      public var §1g§:§==§;
      
      public var §2H§:Sprite;
      
      private var § I§:b2DebugDraw;
      
      private var §<C§:Boolean = false;
      
      public var §=!V§:§^!2§;
      
      public var §9X§:Number;
      
      private var §2k§:Number;
      
      private var §"!D§:int;
      
      public function §92§(param1:§^!2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§=!V§ = param1;
               while(_loc3_)
               {
                  this.§-!0§();
                  if(_loc3_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function get currentStep() : int
      {
         return this.§"!D§;
      }
      
      public function get §2t§() : Number
      {
         return this.§2k§;
      }
      
      private function §-!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§1g§ = new §==§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§?§);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.mWorld.§6C§(this.§1g§);
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mWorld);
            while(true)
            {
               §§pop().§6C§(null);
               addr111:
               addr82:
               while(true)
               {
                  this.§1g§ = null;
               }
               §§push(this.mWorld);
               if(_loc1_)
               {
                  continue;
               }
               §§pop().§3r§();
               loop7:
               while(_loc2_ || _loc1_)
               {
                  this.mWorld = null;
                  if(_loc1_)
                  {
                     continue;
                  }
                  addr30:
                  if(_loc2_ || this)
                  {
                     addr37:
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr111);
                        }
                        return;
                        addr56:
                     }
                     while(true)
                     {
                        if(this.§<C§)
                        {
                           loop3:
                           while(true)
                           {
                              this.§2H§.graphics.clear();
                              break loop7;
                              addr75:
                              while(true)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr82);
                                 §§goto(addr30);
                              }
                              §§goto(addr111);
                           }
                        }
                        addr71:
                        while(true)
                        {
                           this.§2H§ = null;
                           break loop7;
                        }
                        §§goto(addr37);
                     }
                     §§goto(addr56);
                     addr106:
                  }
                  §§goto(addr75);
               }
               while(true)
               {
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §;!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§<C§)
            {
               loop0:
               while(true)
               {
                  this.mWorld.§'W§();
                  addr77:
                  while(true)
                  {
                     this.§2H§.parent.setChildIndex(this.§2H§,this.§2H§.parent.numChildren - 1);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(!_loc1_)
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
      
      public function §+!+§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param2)
         {
            if(this.§<C§)
            {
               addr29:
               _loc4_ = §"!S§.§-!7§.§&1§(0,0);
               if(!(_loc6_ && param3))
               {
                  this.§2H§.x = _loc4_.x;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        this.§2H§.y = _loc4_.y;
                        do
                        {
                           §§push(this.§ I§);
                           §§push(1 / §^!2§.§3!S§);
                           if(_loc5_ || param3)
                           {
                              §§push(§§pop() * param3);
                           }
                           §§pop().§2!Y§(§§pop());
                        }
                        while(_loc6_);
                        
                        if(!(_loc6_ && param2))
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr105:
                           return;
                           addr80:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr105);
         }
         §§goto(addr29);
      }
      
      public function §0!0§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§2k§ = §!!&§;
         }
         §§push(this.§";§(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() > §,!7§)
               {
                  if(_loc3_)
                  {
                     §§push(§,!7§);
                     if(_loc3_ || param1)
                     {
                        addr138:
                        _loc2_ = int(§§pop());
                        while(true)
                        {
                        }
                        addr139:
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr139);
               }
               while(true)
               {
                  this.§&!f§(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr138);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(0);
                              if(!_loc4_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                    continue;
                                 }
                                 addr85:
                                 §§push(param1);
                                 §§push(this.§2k§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                              }
                              addr98:
                              param1 = §§pop() - §§pop();
                              addr97:
                              continue;
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr98);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr138);
      }
      
      public function §&!f§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!(_loc9_ && param1))
         {
            this.§9X§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_ || param1)
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc9_ && _loc2_))
                  {
                     if(_loc8_ || _loc3_)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              §"!S§.§;4§.§"!Y§("Box2D",getTimer() - _loc5_);
                              loop2:
                              while(true)
                              {
                                 if(!(_loc9_ && this))
                                 {
                                    if(_loc8_ || _loc2_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          this.§=!V§.§&r§(this.§2k§);
                                          addr129:
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr101:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§continue§);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr221:
                                                            while(true)
                                                            {
                                                               §§push(Number(getTimer()));
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr242:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     continue loop12;
                                                                  }
                                                                  addr245:
                                                               }
                                                            }
                                                            addr221:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.mWorld);
                                                            while(true)
                                                            {
                                                               §§pop().§00§(this.§2k§,_loc2_,_loc3_);
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  §§push(this.mWorld);
                                                                  if(_loc9_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr200:
                                                                  §§pop().§3r§();
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§9X§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(this.§2k§);
                                                                           if(!(_loc9_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * 1000);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§9X§ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(§continue§);
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop1;
                                                                        addr189:
                                                                     }
                                                                     §§goto(addr221);
                                                                     §§goto(addr200);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr217);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr101);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§"!D§);
                  if(!(_loc9_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_ || this)
                  {
                     _loc6_.§"!D§ = _loc7_;
                  }
                  if(!(_loc9_ && param1))
                  {
                     addr244:
                     §§goto(addr245);
                     §§push(Number(0));
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr244);
         }
      }
      
      private function §";§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               if(!(_loc4_ && _loc2_))
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(!(_loc3_ || param1))
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
                        addr57:
                        while(true)
                        {
                           §§push(this.§2k§);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(§§pop() * 1000);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr77);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr77);
         }
         return _loc2_;
      }
      
      public function set §,!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr94:
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     addr101:
                     loop15:
                     while(true)
                     {
                        this.§<C§ = param1;
                        if(!_loc3_)
                        {
                           if(_loc2_ || this)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§ I§ = new b2DebugDraw();
                                       addr219:
                                       while(true)
                                       {
                                          §§push(this.§ I§);
                                          addr208:
                                          while(true)
                                          {
                                             §§push(b2DebugDraw.§8!+§);
                                             addr210:
                                             while(true)
                                             {
                                                §§pop().§"§(§§pop());
                                             }
                                          }
                                       }
                                    }
                                    addr244:
                                 }
                                 loop14:
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§ I§);
                                       addr192:
                                       addr203:
                                       addr204:
                                       loop20:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(b2DebugDraw.§-g§);
                                             while(true)
                                             {
                                                if(_loc2_ || param1)
                                                {
                                                   break loop20;
                                                }
                                                §§goto(addr210);
                                             }
                                             addr196:
                                          }
                                          §§goto(addr208);
                                       }
                                       §§pop().§"§(§§pop());
                                       while(true)
                                       {
                                          §§push(this.§ I§);
                                          loop17:
                                          for(; _loc2_; if(_loc3_ && this)
                                          {
                                             continue;
                                          },§§pop().§-m§(1),§§goto(addr160))
                                          {
                                             §§push(b2DebugDraw.§;!@§);
                                             if(!_loc3_)
                                             {
                                                §§pop().§"§(§§pop());
                                                loop18:
                                                while(_loc2_ || _loc2_)
                                                {
                                                   §§push(this.§ I§);
                                                   loop19:
                                                   while(_loc2_)
                                                   {
                                                      §§pop().§!H§(0.3);
                                                      while(true)
                                                      {
                                                         §§push(this.§ I§);
                                                         while(_loc2_)
                                                         {
                                                            continue loop17;
                                                            addr145:
                                                            §§push(this.§ I§);
                                                            if(_loc2_)
                                                            {
                                                               §§pop().§!6§(this.§2H§);
                                                               loop26:
                                                               for(; !(_loc3_ && _loc2_); if(_loc3_ && _loc3_)
                                                               {
                                                                  continue;
                                                               },if(!_loc3_)
                                                               {
                                                                  continue loop18;
                                                               },addr160:,while(!_loc3_)
                                                               {
                                                                  this.§2H§.mouseEnabled = false;
                                                                  break loop26;
                                                               },§§goto(addr219))
                                                               {
                                                                  this.§=!V§.stage.addChild(this.§2H§);
                                                                  loop27:
                                                                  while(_loc2_)
                                                                  {
                                                                     continue loop0;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        continue loop27;
                                                                     }
                                                                     §§goto(addr94);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§ I§);
                                                                     break loop17;
                                                                  }
                                                               }
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§goto(addr145);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§<C§);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              break loop18;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        addr265:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr266);
                                                                        }
                                                                        continue loop25;
                                                                     }
                                                                     addr250:
                                                                  }
                                                               }
                                                               addr120:
                                                            }
                                                         }
                                                         continue loop19;
                                                      }
                                                   }
                                                   §§goto(addr192);
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr94);
                                                }
                                                while(true)
                                                {
                                                   §§push(!this.§2H§);
                                                   addr263:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr265);
                                                      }
                                                      addr238:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            break loop14;
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   §§goto(addr181);
                                                }
                                                addr181:
                                             }
                                             §§goto(addr196);
                                          }
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr238);
                                             }
                                             break;
                                          }
                                          §§goto(addr265);
                                          §§goto(addr203);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§2H§ = new Sprite();
                                    §§goto(addr244);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr170);
                        }
                        else
                        {
                           §§goto(addr71);
                        }
                     }
                     return;
                     addr28:
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr250);
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr263);
               }
            }
            return;
         }
         §§goto(addr213);
      }
      
      public function get §,!]§() : Boolean
      {
         return this.§<C§;
      }
      
      public function get §&!d§() : b2DebugDraw
      {
         return this.§ I§;
      }
      
      public function §72§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ I§)
            {
               if(!_loc2_)
               {
                  addr43:
                  this.§2H§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
