package §9T§
{
   import §8!B§.§#! §;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class § !&§
   {
      
      public static const §,!H§:Number = 0.03333333333333333;
      
      public static const §8@§:int = 10;
      
      public static const §2!7§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!H§ = 1 / 30;
            while(true)
            {
               §8@§ = 10;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            §2!7§ = true;
            if(!(_loc1_ && _loc2_))
            {
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §8f§:b2World;
      
      private var §=§:Boolean = true;
      
      public var §3§:§+!<§;
      
      public var §@!§:Sprite;
      
      private var §[x§:b2DebugDraw;
      
      private var §=!N§:Boolean = false;
      
      public var §;§:§1r§;
      
      public var §?B§:Number;
      
      private var §]s§:Number;
      
      private var §`p§:int;
      
      public function § !&§(param1:§1r§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
         }
         while(true)
         {
            this.§;§ = param1;
            while(_loc2_ || _loc2_)
            {
               this.§@p§();
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function get §=u§() : int
      {
         return this.§`p§;
      }
      
      public function get §>f§() : Number
      {
         return this.§]s§;
      }
      
      private function §@p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3§ = new §+!<§(this);
         }
         while(true)
         {
            this.§8f§ = new b2World(new b2Vec2(0,20),this.§=§);
            while(!(_loc2_ && _loc2_))
            {
               this.§8f§.SetContactListener(this.§3§);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8f§);
            loop0:
            while(true)
            {
               §§pop().SetContactListener(null);
               addr98:
               while(true)
               {
                  this.§3§ = null;
                  if(this.§=!N§)
                  {
                     this.§@!§.graphics.clear();
                  }
                  this.§@!§ = null;
                  continue loop0;
               }
            }
            addr96:
         }
         while(true)
         {
            §§push(this.§8f§);
            if(_loc2_ || this)
            {
               §§pop().ClearForces();
               while(!(_loc1_ && this))
               {
                  this.§8f§ = null;
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            else
            {
               §§goto(addr96);
            }
            §§goto(addr98);
         }
      }
      
      public function §+!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§=!N§)
            {
               do
               {
                  this.§8f§.DrawDebugData();
                  do
                  {
                     this.§@!§.parent.setChildIndex(this.§@!§,this.§@!§.parent.numChildren - 1);
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && _loc2_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §<E§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(this.§=!N§)
            {
               addr24:
               _loc4_ = §#! §.§`'§.box2DToScreen(0,0);
               if(_loc5_ || this)
               {
                  this.§@!§.x = _loc4_.x;
                  loop0:
                  while(true)
                  {
                     addr80:
                     while(true)
                     {
                        this.§@!§.y = _loc4_.y;
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr80);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §[b§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§]s§ = §,!H§;
         }
         §§push(this.§9J§(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() > §8@§)
               {
                  while(true)
                  {
                     §§push(§8@§);
                     if(!(_loc3_ && param1))
                     {
                        addr134:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr135:
                           while(true)
                           {
                           }
                        }
                        addr134:
                     }
                     §§goto(addr134);
                  }
                  addr125:
               }
               while(true)
               {
                  this.§8!F§(_loc2_);
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr125);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc4_ || _loc2_)
                        {
                           if(_loc4_)
                           {
                              §§push(0);
                              if(_loc4_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                    continue;
                                 }
                                 addr81:
                                 §§push(param1);
                                 §§push(this.§]s§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                              }
                              addr94:
                              param1 = §§pop() - §§pop();
                              addr93:
                              continue;
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr94);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr134);
         }
         §§goto(addr135);
      }
      
      public function §8!F§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(_loc9_)
         {
            this.§?B§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && this))
            {
               if(§§pop() >= param1)
               {
                  if(_loc9_ || _loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     §#! §.§92§.§'!6§("Box2D",getTimer() - _loc5_);
                     if(!_loc8_)
                     {
                        loop2:
                        while(true)
                        {
                           this.§;§.§7!1§(this.§]s§);
                           _loc4_++;
                           if(_loc9_ || _loc3_)
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(this.§8f§);
                              if(_loc8_ && param1)
                              {
                                 continue;
                              }
                              §§pop().ClearForces();
                              if(_loc9_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§?B§);
                                    if(!_loc8_)
                                    {
                                       §§push(this.§]s§);
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§push(§§pop() * 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§?B§ = §§pop();
                                    addr143:
                                    while(true)
                                    {
                                       §§push(§2!7§);
                                       if(_loc9_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       loop5:
                                       for(; §§pop(); while(true)
                                       {
                                          _loc5_ = §§pop();
                                          continue loop5;
                                       })
                                       {
                                          §§push(Number(getTimer()));
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          _loc5_ = §§pop();
                                          while(true)
                                          {
                                             break loop5;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§8f§);
                                          continue loop3;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr172:
                              }
                              §§goto(addr191);
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr143);
                  }
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§`p§);
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc8_ && this))
                  {
                     _loc6_.§`p§ = _loc7_;
                  }
                  if(_loc9_)
                  {
                     addr193:
                     §§goto(addr194);
                     §§push(Number(0));
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr193);
         }
      }
      
      private function §9J§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
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
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     addr80:
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(this.§]s§);
                     }
                     param1 = §§pop();
                     continue;
                  }
                  §§push(§§pop() * 1000);
               }
               §§push(§§pop() - §§pop());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
      
      public function set §?=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§8f§);
         loop0:
         while(true)
         {
            if(§§pop() != null)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§=!N§);
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(!this.§@!§);
                                 if(_loc3_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       addr256:
                                       loop23:
                                       while(true)
                                       {
                                          §§pop();
                                          addr257:
                                          while(true)
                                          {
                                             §§push(this.§[x§);
                                             addr207:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc3_)
                                                {
                                                   continue loop23;
                                                }
                                                if(!(_loc3_ || this))
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             continue loop23;
                                          }
                                       }
                                       addr256:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             this.§=!N§ = param1;
                                             if(_loc3_ || this)
                                             {
                                                addr33:
                                                if(!(_loc2_ && this))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§[x§ = new b2DebugDraw();
                                                         loop6:
                                                         for(; _loc3_ || param1; §§pop().SetLineThickness(1),if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue;
                                                         },this.§@!§.mouseEnabled = false,§§goto(addr113))
                                                         {
                                                            §§push(this.§[x§);
                                                            §§push(b2DebugDraw.e_shapeBit);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§pop().AppendFlags(§§pop());
                                                               while(!_loc2_)
                                                               {
                                                                  §§push(this.§[x§);
                                                                  while(true)
                                                                  {
                                                                     §§push(b2DebugDraw.e_centerOfMassBit);
                                                                     while(_loc3_)
                                                                     {
                                                                        §§pop().AppendFlags(§§pop());
                                                                        §§push(this.§[x§);
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(b2DebugDraw.e_jointBit);
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().AppendFlags(§§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§[x§);
                                                                              continue loop11;
                                                                              addr54:
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                   }
                                                   §§goto(addr89);
                                                   §§goto(addr33);
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr54);
                                             §§goto(addr172);
                                          }
                                          return;
                                          addr22:
                                       }
                                       §§goto(addr219);
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              §§goto(addr257);
                           }
                        }
                     }
                  }
                  §§goto(addr22);
               }
               §§goto(addr256);
            }
            addr262:
            return;
         }
      }
      
      public function get §?=§() : Boolean
      {
         return this.§=!N§;
      }
      
      public function get §;x§() : b2DebugDraw
      {
         return this.§[x§;
      }
      
      public function §4!5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§[x§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§@!§.graphics.clear();
               }
            }
         }
      }
   }
}
