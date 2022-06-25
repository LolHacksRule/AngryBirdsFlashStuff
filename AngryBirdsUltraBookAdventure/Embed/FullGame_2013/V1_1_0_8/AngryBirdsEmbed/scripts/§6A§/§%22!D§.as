package §6A§
{
   import §5!L§.§=w§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §"!D§
   {
      
      public static const §&j§:Number = 0.03333333333333333;
      
      public static const §#O§:int = 10;
      
      public static const §8!C§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §&j§ = 1 / 30;
            if(_loc1_)
            {
               §§goto(addr40);
            }
            §§goto(addr50);
         }
         addr40:
         if(!(_loc2_ && _loc2_))
         {
            addr50:
            §8!C§ = true;
         }
      }
      
      public var §[!C§:b2World;
      
      private var §&!C§:Boolean = true;
      
      public var §>!K§:§^q§;
      
      public var §<!"§:Sprite;
      
      private var §7!B§:b2DebugDraw;
      
      private var §&K§:Boolean = false;
      
      public var §?V§:§ !§;
      
      public var §case§:Number;
      
      private var §<$§:Number;
      
      private var §,8§:int;
      
      public function §"!D§(param1:§ !§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               §§goto(addr43);
            }
            §§goto(addr53);
         }
         addr43:
         this.§?V§ = param1;
         if(!(_loc2_ && param1))
         {
            addr53:
            this.§2a§();
         }
      }
      
      public function get §9p§() : int
      {
         return this.§,8§;
      }
      
      public function get §-!8§() : Number
      {
         return this.§<$§;
      }
      
      private function §2a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!K§ = new §^q§(this);
            if(!_loc2_)
            {
               §§goto(addr35);
            }
            §§goto(addr52);
         }
         addr35:
         this.§[!C§ = new b2World(new b2Vec2(0,20),this.§&!C§);
         if(!(_loc2_ && _loc1_))
         {
            addr52:
            this.§[!C§.SetContactListener(this.§>!K§);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!C§);
         if(!_loc1_)
         {
            §§pop().SetContactListener(null);
            this.§>!K§ = null;
            if(this.§&K§)
            {
               this.§<!"§.graphics.clear();
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr60);
               }
               §§goto(addr68);
            }
            addr60:
            this.§<!"§ = null;
            if(!_loc1_)
            {
               addr67:
               this.§[!C§.ClearForces();
               addr68:
               this.§[!C§ = null;
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function §<!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§&K§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§[!C§.DrawDebugData();
                  if(_loc2_ || this)
                  {
                     this.§<!"§.parent.setChildIndex(this.§<!"§,this.§<!"§.parent.numChildren - 1);
                  }
               }
            }
         }
      }
      
      public function §?!<§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!(_loc6_ && param2))
         {
            if(this.§&K§)
            {
               _loc4_ = §=w§.§ o§.§6!"§(0,0);
               addr29:
               if(_loc5_ || param2)
               {
                  this.§<!"§.x = _loc4_.x;
                  if(_loc5_ || param2)
                  {
                     this.§<!"§.y = _loc4_.y;
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§7!B§);
                        §§push(1 / § !§.§`J§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() * param3);
                        }
                        §§pop().SetDrawScale(§§pop());
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §[+§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§<$§ = §&j§;
         }
         §§push(this.§5i§(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() > §#O§)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§#O§);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr81:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        addr85:
                        this.§>!0§(_loc2_);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(param1);
                        if(_loc4_ || _loc3_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(0);
                              while(§§pop() > §§pop())
                              {
                                 §§push(param1);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§<$§);
                                    if(_loc4_ || param1)
                                    {
                                       §§push(§§pop() * 1000);
                                       if(_loc4_ || param1)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue;
                                 }
                                 addr129:
                                 §§push(Number(§§pop()));
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              addr150:
                              break loop0;
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
      
      public function §>!0§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§case§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1)
            {
               var _loc6_:*;
               §§push((_loc6_ = this).§,8§);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || _loc2_)
               {
                  _loc6_.§,8§ = _loc7_;
               }
               §§push(0);
               if(_loc8_)
               {
                  continue;
               }
               §§push(Number(§§pop()));
               if(_loc9_)
               {
                  _loc5_ = §§pop();
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(§8!C§);
                     if(_loc9_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              addr80:
                              _loc5_ = Number(getTimer());
                              if(!_loc8_)
                              {
                                 addr93:
                                 §§push(this.§[!C§);
                                 if(_loc9_ || this)
                                 {
                                    §§pop().Step(this.§<$§,_loc2_,_loc3_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr116:
                                       this.§[!C§.ClearForces();
                                       if(_loc9_)
                                       {
                                          §§push(this);
                                          §§push(this.§case§);
                                          if(_loc9_ || param1)
                                          {
                                             §§push(this.§<$§);
                                             if(_loc9_ || this)
                                             {
                                                §§push(§§pop() * 1000);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§case§ = §§pop();
                                          if(_loc8_ && param1)
                                          {
                                             continue loop0;
                                          }
                                          addr149:
                                          if(§8!C§)
                                          {
                                             if(!(_loc9_ || param1))
                                             {
                                                break;
                                             }
                                             §=w§.§?!L§.§!n§("Box2D",getTimer() - _loc5_);
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    this.§?V§.§[,§(this.§<$§);
                                    if(_loc9_ || this)
                                    {
                                       _loc4_++;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr149);
                  }
                  break;
               }
               §§goto(addr80);
            }
            return;
         }
      }
      
      private function §5i§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(0);
               while(§§pop() > §§pop())
               {
                  _loc2_++;
                  if(!(_loc4_ || param1))
                  {
                     break loop1;
                  }
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§<$§);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() * 1000);
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     param1 = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        break loop1;
                     }
                     break;
                  }
                  continue loop1;
               }
               return _loc2_;
            }
         }
      }
      
      public function set §^!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[!C§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc3_ || this)
                  {
                     return;
                  }
                  addr197:
                  this.§?V§.stage.addChild(this.§<!"§);
                  this.§[!C§.SetDebugDraw(this.§7!B§);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§push(this.§&K§);
                           if(_loc3_)
                           {
                              addr53:
                              if(!§§pop())
                              {
                                 §§push(!this.§<!"§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr64:
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop();
                                          §§push(this.§7!B§);
                                          if(!_loc2_)
                                          {
                                             addr74:
                                             if(!§§pop())
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   this.§<!"§ = new Sprite();
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      this.§7!B§ = new b2DebugDraw();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(this.§7!B§);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            addr123:
                                                            §§push(b2DebugDraw.e_shapeBit);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               §§pop().AppendFlags(§§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.§7!B§);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§push(b2DebugDraw.e_centerOfMassBit);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr148:
                                                                        §§pop().AppendFlags(§§pop());
                                                                        §§goto(addr226);
                                                                     }
                                                                     §§pop().AppendFlags(§§pop());
                                                                     §§goto(addr223);
                                                                  }
                                                                  §§pop().SetLineThickness(1);
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                addr176:
                                                this.§<!"§.mouseEnabled = false;
                                                if(_loc3_)
                                                {
                                                   this.§7!B§.SetSprite(this.§<!"§);
                                                   §§goto(addr197);
                                                }
                                                else
                                                {
                                                   addr212:
                                                   this.§<!"§.graphics.clear();
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      addr223:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr168:
                                                         this.§7!B§.SetFillAlpha(0.3);
                                                         §§push(this.§7!B§);
                                                      }
                                                      this.§&K§ = param1;
                                                   }
                                                   §§goto(addr226);
                                                }
                                                return;
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr123);
                                       }
                                    }
                                 }
                                 §§goto(addr74);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr148);
                     }
                     else if(this.§<!"§)
                     {
                        §§goto(addr212);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr53);
               }
               §§goto(addr223);
            }
            §§goto(addr197);
         }
         §§goto(addr168);
      }
      
      public function get §^!&§() : Boolean
      {
         return this.§&K§;
      }
      
      public function get §`y§() : b2DebugDraw
      {
         return this.§7!B§;
      }
      
      public function §0&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§7!B§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§<!"§.graphics.clear();
               }
            }
         }
      }
   }
}
