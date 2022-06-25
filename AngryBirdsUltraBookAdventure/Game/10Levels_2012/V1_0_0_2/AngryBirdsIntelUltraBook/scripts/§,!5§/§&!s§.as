package §,!5§
{
   import §>H§.b2Vec2;
   import §`w§.b2DebugDraw;
   import §`w§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class §&!s§
   {
      
      public static const §+!=§:Number = 0.03333333333333333;
      
      public static const §>!t§:int = 10;
      
      public static const §@$§:Boolean = false;
      
      public static const §2!b§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §+!=§ = 1 / 30;
         }
         loop0:
         do
         {
            §>!t§ = 10;
            while(true)
            {
               §@$§ = false;
               while(_loc1_ || _loc1_)
               {
                  §2!b§ = true;
                  if(_loc1_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || §&!s§));
         
      }
      
      public var mWorld:b2World;
      
      private var §&!^§:Boolean = true;
      
      public var §"!f§:§8!e§;
      
      public var §8s§:Sprite;
      
      private var §"![§:b2DebugDraw;
      
      public var §?l§:§^g§;
      
      public var §^!§:Number;
      
      private var §'"§:Number;
      
      private var §1!U§:int;
      
      public function §&!s§(param1:§^g§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               this.§?l§ = param1;
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.§>?§();
                     if(_loc2_ || _loc3_)
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
      
      public function get §?!Z§() : int
      {
         return this.§1!U§;
      }
      
      public function get §>w§() : Number
      {
         return this.§'"§;
      }
      
      private function §>?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§"!f§ = new §8!e§(this);
            loop0:
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§&!^§);
               addr289:
               while(true)
               {
                  §§push(this.mWorld);
                  addr274:
                  while(true)
                  {
                     §§pop().§[-§(this.§"!f§);
                     addr277:
                     addr24:
                     while(§@$§)
                     {
                        continue loop0;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr231);
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
               §§pop().§[-§(null);
               while(true)
               {
                  this.§"!f§ = null;
                  loop2:
                  while(true)
                  {
                     if(!§@$§)
                     {
                        loop4:
                        while(true)
                        {
                           this.§8s§ = null;
                           while(!_loc1_)
                           {
                              continue loop0;
                              §§pop().§45§();
                              do
                              {
                                 this.mWorld = null;
                              }
                              while(_loc1_ && _loc1_);
                              
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break loop4;
                                 }
                                 continue loop2;
                              }
                           }
                           addr90:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8s§.graphics.clear();
            §§goto(addr90);
         }
      }
      
      public function §,!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§@$§)
            {
               do
               {
                  this.mWorld.§?!J§();
                  do
                  {
                     this.§8s§.parent.setChildIndex(this.§8s§,this.§8s§.parent.numChildren - 1);
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               while(_loc1_ && _loc1_);
               
               addr75:
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §9!=§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(§@$§)
            {
               if(_loc4_ || this)
               {
                  addr66:
                  this.§8s§.x = -param1;
               }
               do
               {
                  this.§8s§.y = -param2;
               }
               while(!(_loc4_ || param1));
               
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §!!]§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§'"§ = §+!=§;
         }
         §§push(this.§set §(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > §>!t§)
               {
                  while(true)
                  {
                     §§push(§>!t§);
                     if(_loc4_)
                     {
                        addr144:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr145:
                           while(true)
                           {
                           }
                        }
                        addr144:
                     }
                     §§goto(addr144);
                  }
                  addr140:
               }
               while(true)
               {
                  this.§%!<§(_loc2_);
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr140);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc4_ || param1)
                           {
                              if(_loc4_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr118:
                                    §§push(param1);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this.§'"§);
                                    }
                                    param1 = §§pop();
                                 }
                                 continue;
                              }
                              §§push(§§pop() * 1000);
                           }
                           §§push(§§pop() - §§pop());
                        }
                     }
                     §§goto(addr118);
                  }
                  break;
               }
               return §§pop();
               addr134:
            }
            §§goto(addr144);
         }
         §§goto(addr134);
      }
      
      public function §%!<§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = NaN;
         if(_loc8_ || _loc3_)
         {
            this.§^!§ = 0;
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
                  if(_loc8_ || param1)
                  {
                     if(_loc8_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc8_ || this)
                        {
                           while(true)
                           {
                              § _§.§2u§.§ j§("Box2D",getTimer() - _loc5_);
                              addr155:
                              loop11:
                              while(_loc9_ && _loc3_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(Number(getTimer()));
                                    if(_loc8_)
                                    {
                                       addr221:
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.mWorld);
                                             loop4:
                                             while(true)
                                             {
                                                §§pop().§#$§(this.§'"§,_loc2_,_loc3_);
                                                while(_loc8_ || this)
                                                {
                                                   §§push(this.mWorld);
                                                   if(!_loc9_)
                                                   {
                                                      §§pop().§45§();
                                                      while(!_loc9_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§^!§);
                                                         if(_loc8_)
                                                         {
                                                            §§push(this.§'"§);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() * 1000);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§^!§ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(§2!b§);
                                                            if(_loc9_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop1;
                                                         }
                                                         while(!§§pop())
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop12;
                                                         if(!(_loc9_ && this))
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr221);
                                       }
                                       addr222:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                       addr225:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr215);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§?l§.handleEngineUpdateStep(this.§'"§);
                                 loop9:
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr89:
                                    while(true)
                                    {
                                       if(!(_loc8_ || _loc3_))
                                       {
                                          continue loop9;
                                       }
                                       if(!(_loc9_ && param1))
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr115);
                                          }
                                          §§goto(addr177);
                                       }
                                       else
                                       {
                                          §§goto(addr155);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr162);
                              }
                           }
                           addr147:
                        }
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr89);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§1!U§);
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc8_ || _loc3_)
                  {
                     _loc6_.§1!U§ = _loc7_;
                  }
                  if(_loc8_)
                  {
                     addr224:
                     §§goto(addr225);
                     §§push(Number(0));
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr224);
         }
      }
      
      private function §set §(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_ || this)
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ || this))
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
                     §§push(param1);
                     if(!(_loc3_ && param1))
                     {
                        addr84:
                        addr86:
                        §§push(§§pop() - this.§'"§ * 1000);
                        if(_loc3_)
                        {
                        }
                        addr90:
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr90);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr84);
               }
               §§goto(addr86);
            }
            §§goto(addr84);
         }
         return _loc2_;
      }
   }
}
