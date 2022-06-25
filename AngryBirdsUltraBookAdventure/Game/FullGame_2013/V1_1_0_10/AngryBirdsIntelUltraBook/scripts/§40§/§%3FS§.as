package §40§
{
   import §#I§.b2DebugDraw;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §;!y§.§,!s§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §?S§
   {
      
      public static const §;!Z§:Number = 0.03333333333333333;
      
      public static const §#>§:int = 10;
      
      public static const §[J§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §?S§)
         {
            §;!Z§ = 1 / 30;
            while(true)
            {
               §#>§ = 10;
               loop1:
               while(!(_loc2_ && §?S§))
               {
                  while(true)
                  {
                     §[J§ = true;
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
         §§goto(addr71);
      }
      
      public var mWorld:b2World;
      
      private var §<!6§:Boolean = true;
      
      public var §-'§:§80§;
      
      public var §'q§:Sprite;
      
      private var §,"$§:b2DebugDraw;
      
      private var §;!x§:Boolean = false;
      
      public var §#!U§:§5G§;
      
      public var §%q§:Number;
      
      private var §;!H§:Number;
      
      private var §9!N§:int;
      
      public function §?S§(param1:§5G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               this.§#!U§ = param1;
               do
               {
                  this.§#!;§();
               }
               while(_loc3_ && this);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §[!2§() : int
      {
         return this.§9!N§;
      }
      
      public function get §8l§() : Number
      {
         return this.§;!H§;
      }
      
      private function §#!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§-'§ = new §80§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§<!6§);
               while(_loc1_)
               {
                  this.mWorld.§?!p§(this.§-'§);
                  if(_loc1_)
                  {
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§?!p§(null);
               while(true)
               {
                  this.§-'§ = null;
                  while(true)
                  {
                     if(this.§;!x§)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc1_ && _loc1_)
                           {
                              break;
                           }
                           this.§'q§.graphics.clear();
                        }
                        while(_loc2_)
                        {
                        }
                        continue;
                        addr109:
                     }
                     while(true)
                     {
                        this.§'q§ = null;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §4!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§;!x§)
            {
               if(!_loc1_)
               {
                  this.mWorld.§["!§();
                  do
                  {
                     this.§'q§.parent.setChildIndex(this.§'q§,this.§'q§.parent.numChildren - 1);
                  }
                  while(_loc1_);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §1T§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_)
         {
            if(this.§;!x§)
            {
               _loc4_ = §,!s§.§=!I§.§>C§(0,0);
               addr25:
               if(_loc6_)
               {
                  this.§'q§.x = _loc4_.x;
               }
               loop0:
               while(true)
               {
                  addr71:
                  while(true)
                  {
                     this.§'q§.y = _loc4_.y;
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §!!G§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§;!H§ = §;!Z§;
         }
         §§push(this.§@y§(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() > §#>§)
               {
                  if(_loc4_ || _loc2_)
                  {
                     addr155:
                     §§push(§#>§);
                     if(_loc4_)
                     {
                        addr159:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr159);
                  }
                  while(true)
                  {
                     §§goto(addr116);
                  }
               }
               addr116:
               while(true)
               {
                  this.§return§(_loc2_);
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 continue;
                              }
                              addr80:
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc4_ || _loc3_)
                              {
                                 addr103:
                                 addr105:
                                 §§push(§§pop() - this.§;!H§ * 1000);
                                 if(_loc4_ || this)
                                 {
                                 }
                                 addr114:
                                 param1 = §§pop();
                                 continue;
                              }
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr80);
               }
               return §§pop();
            }
            §§goto(addr159);
         }
         §§goto(addr155);
      }
      
      public function §return§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_)
         {
            this.§%q§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc8_)
                  {
                     if(_loc8_ || _loc2_)
                     {
                        if(_loc8_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.mWorld);
                           if(_loc9_ && param1)
                           {
                              continue;
                           }
                           §§pop().§3#§();
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§%q§);
                              if(_loc8_ || _loc3_)
                              {
                                 §§push(this.§;!H§);
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§%q§ = §§pop();
                           }
                        }
                     }
                     while(true)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_ || _loc2_)
                           {
                              §§push(§[J§);
                              if(!_loc9_)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc8_)
                                    {
                                       §,!s§.§3!h§.§96§("Box2D",getTimer() - _loc5_);
                                       while(true)
                                       {
                                       }
                                       addr107:
                                       if(!(_loc9_ && this))
                                       {
                                          _loc4_++;
                                          while(_loc9_)
                                          {
                                             while(_loc8_ || _loc3_)
                                             {
                                                §§goto(addr107);
                                             }
                                             §§goto(addr130);
                                          }
                                          continue loop0;
                                          addr81:
                                       }
                                    }
                                    addr217:
                                    §§goto(addr180);
                                    §§push(this.mWorld);
                                    addr217:
                                 }
                                 while(true)
                                 {
                                    this.§#!U§.handleEngineUpdateStep(this.§;!H§);
                                    §§goto(addr90);
                                    §§goto(addr130);
                                 }
                              }
                              else
                              {
                                 loop4:
                                 for(; §§pop(); while(true)
                                 {
                                    continue loop4;
                                 })
                                 {
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(Number(getTimer()));
                                       if(_loc8_ || this)
                                       {
                                          _loc5_ = §§pop();
                                          §§goto(addr217);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop4;
                                          }
                                          addr220:
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr176);
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§9!N§);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     _loc6_.§9!N§ = _loc7_;
                  }
                  if(!_loc9_)
                  {
                     addr219:
                     §§goto(addr220);
                     §§push(Number(0));
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr219);
         }
      }
      
      private function §@y§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_ || _loc2_)
            {
               if(!_loc3_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     addr89:
                     §§push(param1);
                     if(!(_loc3_ && this))
                     {
                        §§push(this.§;!H§);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     param1 = §§pop();
                     continue;
                  }
                  §§push(§§pop() - §§pop());
               }
            }
            §§goto(addr89);
         }
         return _loc2_;
      }
      
      public function set §;2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
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
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(this.§'q§)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    if(!_loc3_)
                                    {
                                       this.§'q§.graphics.clear();
                                       while(true)
                                       {
                                          §§goto(addr28);
                                       }
                                       addr84:
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§goto(addr51);
                                             }
                                             addr102:
                                          }
                                          §§goto(addr204);
                                       }
                                    }
                                    addr98:
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr84);
                           }
                           addr28:
                           loop28:
                           while(true)
                           {
                              this.§;!x§ = param1;
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              addr34:
                              if(_loc2_ || param1)
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    addr280:
                                    while(true)
                                    {
                                       §§push(this.§;!x§);
                                       loop24:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop12:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(!this.§'q§);
                                                if(_loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr297:
                                                      loop30:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr298:
                                                         while(true)
                                                         {
                                                            §§push(this.§,"$§);
                                                            addr241:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  continue loop30;
                                                               }
                                                               if(!(_loc2_ || param1))
                                                               {
                                                                  continue loop24;
                                                               }
                                                            }
                                                            continue loop30;
                                                         }
                                                      }
                                                      addr297:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.§'q§ = new Sprite();
                                                            addr257:
                                                            while(true)
                                                            {
                                                               if(_loc3_ && param1)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               this.§,"$§ = new b2DebugDraw();
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,"$§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(b2DebugDraw.§6!t§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§ true§(§§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§,"$§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(b2DebugDraw.§]c§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§pop().§ true§(§§pop());
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(this.§,"$§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§push(b2DebugDraw.§5!?§);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop16;
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                       addr224:
                                                                                       addr203:
                                                                                       §§pop().§ true§(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§push(this.§,"$§);
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ && _loc3_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§pop().§8!4§(0.3);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§,"$§);
                                                                                                loop8:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   §§pop().§[b§(1);
                                                                                                   loop9:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         this.§'q§.mouseEnabled = false;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc2_ || _loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(this.§,"$§);
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         addr303:
                                                                                                         return;
                                                                                                         addr149:
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr192);
                                                                                                §§goto(addr34);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr203);
                                                                                       }
                                                                                       addr192:
                                                                                       addr204:
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr297);
                                             }
                                             continue loop1;
                                          }
                                          addr51:
                                          while(true)
                                          {
                                             continue loop28;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr188);
                           }
                           return;
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr297);
                  }
               }
               §§goto(addr303);
            }
         }
         §§goto(addr102);
      }
      
      public function get §;2§() : Boolean
      {
         return this.§;!x§;
      }
      
      public function get §@!d§() : b2DebugDraw
      {
         return this.§,"$§;
      }
      
      public function §@!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§,"$§)
            {
               if(!_loc1_)
               {
                  addr24:
                  this.§'q§.graphics.clear();
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
