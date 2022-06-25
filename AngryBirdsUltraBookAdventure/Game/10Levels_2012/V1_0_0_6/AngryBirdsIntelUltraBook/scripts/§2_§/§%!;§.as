package §2_§
{
   import §#V§.b2DebugDraw;
   import §#V§.b2World;
   import §;%§.b2Vec2;
   import §>! §.§^!c§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §%!;§
   {
      
      public static const §4h§:Number = 0.03333333333333333;
      
      public static const §<$§:int = 10;
      
      public static const §6z§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4h§ = 1 / 30;
         }
         while(true)
         {
            §<$§ = 10;
            while(_loc1_)
            {
               §6z§ = true;
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var mWorld:b2World;
      
      private var §0Q§:Boolean = true;
      
      public var §57§:§8b§;
      
      public var §02§:Sprite;
      
      private var §5!`§:b2DebugDraw;
      
      private var §8!f§:Boolean = false;
      
      public var §#!3§:§'u§;
      
      public var §=!6§:Number;
      
      private var §&!#§:Number;
      
      private var §6S§:int;
      
      public function §%!;§(param1:§'u§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§#!3§ = param1;
               while(_loc2_ || this)
               {
                  this.§0!3§();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public function get §"!$§() : int
      {
         return this.§6S§;
      }
      
      public function get §'e§() : Number
      {
         return this.§&!#§;
      }
      
      private function §0!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§57§ = new §8b§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§0Q§);
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     this.mWorld.§8!B§(this.§57§);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§8!B§(null);
               while(true)
               {
                  this.§57§ = null;
                  loop2:
                  while(true)
                  {
                     if(this.§8!f§)
                     {
                        loop3:
                        while(true)
                        {
                           this.§02§.graphics.clear();
                           continue loop2;
                           addr65:
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           this.§02§ = null;
                           continue loop0;
                        }
                        §§goto(addr43);
                        addr73:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr73);
         }
      }
      
      public function §+!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§8!f§)
            {
               do
               {
                  this.mWorld.§?Z§();
                  do
                  {
                     this.§02§.parent.setChildIndex(this.§02§,this.§02§.parent.numChildren - 1);
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(!_loc1_);
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §7!P§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param3)
         {
            if(this.§8!f§)
            {
               addr29:
               _loc4_ = §^!c§.§5!Y§.§-!S§(0,0);
               if(_loc5_ || param1)
               {
                  this.§02§.x = _loc4_.x;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        this.§02§.y = _loc4_.y;
                        do
                        {
                           §§push(this.§5!`§);
                           §§push(1 / §'u§.§18§);
                           if(!(_loc6_ && param3))
                           {
                              §§push(§§pop() * param3);
                           }
                           §§pop().§4Y§(§§pop());
                        }
                        while(_loc6_ && param1);
                        
                        if(_loc5_ || param3)
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr110:
                           return;
                           addr95:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr110);
         }
         §§goto(addr29);
      }
      
      public function §]!O§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§&!#§ = §4h§;
         }
         §§push(this.§7&§(param1));
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() > §<$§)
               {
                  if(_loc3_)
                  {
                     §§push(§<$§);
                     if(_loc3_ || _loc3_)
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
                  this.§]V§(_loc2_);
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  §§goto(addr138);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              addr74:
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 addr92:
                                 §§push(Number(§§pop()));
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 addr89:
                                 §§goto(addr92);
                                 §§push(§§pop() - this.§&!#§ * 1000);
                              }
                           }
                           param1 = §§pop();
                           continue;
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr74);
               }
               return §§pop();
            }
         }
         §§goto(addr138);
      }
      
      public function §]V§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(!_loc9_)
         {
            this.§=!6§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(_loc8_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc8_)
                  {
                     if(!(_loc9_ && param1))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§#!3§.handleEngineUpdateStep(this.§&!#§);
                                    loop3:
                                    while(_loc8_ || this)
                                    {
                                       _loc4_++;
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          addr201:
                                          while(true)
                                          {
                                             §§push(§6z§);
                                             loop9:
                                             while(!§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.mWorld);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§pop().§8y§(this.§&!#§,_loc2_,_loc3_);
                                                      addr182:
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(this.mWorld);
                                                         if(_loc9_ && _loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr158:
                                                         §§pop().§7!A§();
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            addr161:
                                                            if(_loc8_)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§=!6§);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(this.§&!#§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() * 1000);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().§=!6§ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(§6z§);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop3;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               addr147:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop6;
                                                                  §§goto(addr161);
                                                               }
                                                               addr197:
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                              while(true)
                              {
                                 §§push(Number(getTimer()));
                                 if(_loc8_ || _loc2_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr197);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                    }
                                    addr200:
                                 }
                                 §§goto(addr201);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr147);
                     }
                  }
                  §§goto(addr74);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§6S§);
                  if(!_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_)
                  {
                     _loc6_.§6S§ = _loc7_;
                  }
                  if(!(_loc9_ && this))
                  {
                     addr199:
                     §§goto(addr200);
                     §§push(Number(0));
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr199);
         }
      }
      
      private function §7&§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(0);
                  if(_loc4_ || param1)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc2_++;
                        }
                        addr95:
                        §§push(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(this.§&!#§);
                        }
                        param1 = §§pop();
                        continue;
                     }
                     §§push(§§pop() * 1000);
                  }
                  §§push(§§pop() - §§pop());
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr95);
         }
         return _loc2_;
      }
      
      public function set §5R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              §§push(this.§8!f§);
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(_loc3_ || _loc2_)
                                    {
                                       §§push(!this.§02§);
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr263:
                                             loop25:
                                             while(true)
                                             {
                                                §§pop();
                                                addr264:
                                                while(true)
                                                {
                                                   §§push(this.§5!`§);
                                                   addr212:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         continue loop25;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop25;
                                                }
                                             }
                                             addr263:
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§8!f§ = param1;
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                      }
                                                      continue;
                                                      addr58:
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         break;
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(this.§5!`§);
                                                         loop9:
                                                         while(!(_loc2_ && this))
                                                         {
                                                            §§push(b2DebugDraw.§9v§);
                                                            loop10:
                                                            for(; !_loc2_; while(true)
                                                            {
                                                               §§push(b2DebugDraw.§]!G§);
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().§4D§(§§pop());
                                                               §§goto(addr156);
                                                            })
                                                            {
                                                               §§pop().§4D§(§§pop());
                                                               loop11:
                                                               while(!(_loc2_ && param1))
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(this.§5!`§);
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr264);
                                                                  while(!(_loc2_ && this))
                                                                  {
                                                                     §§push(this.§5!`§);
                                                                     while(_loc3_)
                                                                     {
                                                                        §§pop().§8$§(0.3);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5!`§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().§+e§(1);
                                                                              while(_loc3_)
                                                                              {
                                                                                 this.§02§.mouseEnabled = false;
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop15;
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr269:
                                                                                    addr269:
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§02§ = new Sprite();
                                                                                 break loop11;
                                                                              }
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§5!`§ = new b2DebugDraw();
                                                                  addr206:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this.§5!`§);
                                                                        break loop9;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(b2DebugDraw.§ J§);
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr77);
                                                   §§goto(addr110);
                                                }
                                                return;
                                                addr29:
                                             }
                                             §§goto(addr219);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr29);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr264);
                        }
                        §§goto(addr29);
                     }
                     §§goto(addr263);
                  }
               }
               §§goto(addr269);
            }
         }
         §§goto(addr219);
      }
      
      public function get §5R§() : Boolean
      {
         return this.§8!f§;
      }
      
      public function get §+!%§() : b2DebugDraw
      {
         return this.§5!`§;
      }
      
      public function §?v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§5!`§)
            {
               if(_loc2_)
               {
                  this.§02§.graphics.clear();
               }
            }
         }
      }
   }
}
