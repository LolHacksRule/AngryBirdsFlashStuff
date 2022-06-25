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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+!=§ = 1 / 30;
            while(true)
            {
               §>!t§ = 10;
               loop1:
               while(_loc2_ || §&!s§)
               {
                  while(true)
                  {
                     §@$§ = false;
                     do
                     {
                        §2!b§ = true;
                     }
                     while(_loc1_ && §&!s§);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§?l§ = param1;
               while(!(_loc2_ && param1))
               {
                  this.§>?§();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"!f§ = new §8!e§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§&!^§);
               while(true)
               {
                  §§push(this.mWorld);
                  loop2:
                  while(true)
                  {
                     §§pop().§[-§(this.§"!f§);
                     addr253:
                     while(§@$§)
                     {
                        while(true)
                        {
                           §§push(this.mWorld);
                           continue loop2;
                        }
                     }
                     addr25:
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.mWorld);
            while(true)
            {
               §§pop().§[-§(null);
               addr92:
               §§push(this.mWorld);
               if(!_loc2_)
               {
                  continue;
               }
               §§pop().§45§();
               loop7:
               while(true)
               {
                  if(_loc2_)
                  {
                     addr59:
                     if(!(_loc1_ && _loc2_))
                     {
                        addr66:
                        if(_loc1_ && _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§8s§.graphics.clear();
                        addr100:
                        loop4:
                        while(true)
                        {
                           addr84:
                           while(true)
                           {
                              this.§8s§ = null;
                              continue loop4;
                           }
                        }
                        §§goto(addr59);
                     }
                     addr96:
                  }
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr100);
                  }
                  addr110:
                  while(true)
                  {
                     this.§"!f§ = null;
                     break loop7;
                  }
               }
               while(true)
               {
                  if(§@$§)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr84);
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §,!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§@$§)
            {
               if(_loc1_)
               {
                  addr57:
                  this.mWorld.§?!J§();
               }
               do
               {
                  this.§8s§.parent.setChildIndex(this.§8s§,this.§8s§.parent.numChildren - 1);
               }
               while(!_loc1_);
               
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §9!=§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(§@$§)
            {
               do
               {
                  this.§8s§.x = -param1;
                  do
                  {
                     this.§8s§.y = -param2;
                  }
                  while(_loc4_);
                  
               }
               while(!(_loc5_ || param2));
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §!!]§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§'"§ = §+!=§;
         }
         §§push(this.§set §(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() > §>!t§)
               {
                  if(!(_loc3_ && this))
                  {
                     addr145:
                     §§push(§>!t§);
                     if(!(_loc3_ && param1))
                     {
                        addr143:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     while(true)
                     {
                     }
                     addr145:
                  }
                  §§goto(addr145);
               }
               while(true)
               {
                  this.§%!<§(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  §§goto(addr145);
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr73:
                           §§push(param1);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr93:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§push(this.§'"§);
                              if(!_loc3_)
                              {
                                 addr92:
                                 §§goto(addr93);
                                 §§push(§§pop() - §§pop() * 1000);
                              }
                              §§goto(addr92);
                           }
                        }
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr73);
               }
               return §§pop();
            }
            §§goto(addr143);
         }
         §§goto(addr145);
      }
      
      public function §%!<§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!(_loc8_ && _loc3_))
         {
            this.§^!§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(§§pop() >= param1)
               {
                  if(_loc9_)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_ || this)
                        {
                           break;
                        }
                        addr145:
                        while(true)
                        {
                           addr88:
                           while(true)
                           {
                              this.§?l§.handleEngineUpdateStep(this.§'"§);
                           }
                        }
                        addr145:
                     }
                     while(true)
                     {
                        if(_loc9_)
                        {
                           if(_loc9_)
                           {
                              if(!(_loc8_ && this))
                              {
                                 break;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(§2!b§);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr207:
                                       while(true)
                                       {
                                          §§push(Number(getTimer()));
                                          if(!_loc9_)
                                          {
                                             continue loop4;
                                          }
                                          _loc5_ = §§pop();
                                          while(true)
                                          {
                                          }
                                       }
                                       addr207:
                                    }
                                    while(true)
                                    {
                                       §§push(this.mWorld);
                                       while(true)
                                       {
                                          §§pop().§#$§(this.§'"§,_loc2_,_loc3_);
                                          addr201:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(this.mWorld);
                                                if(!(_loc9_ || param1))
                                                {
                                                   break;
                                                }
                                                §§pop().§45§();
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§^!§);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(this.§'"§);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * 1000);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§^!§ = §§pop();
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr207);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr170);
                     }
                     _loc4_++;
                  }
                  continue;
               }
               var _loc6_:*;
               §§push((_loc6_ = this).§1!U§);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || this)
               {
                  _loc6_.§1!U§ = _loc7_;
               }
               if(_loc9_)
               {
                  addr215:
                  §§goto(addr216);
                  §§push(Number(0));
               }
               §§goto(addr207);
            }
            §§goto(addr215);
         }
      }
      
      private function §set §(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     §§push(param1);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr83:
                        addr85:
                        §§push(§§pop() - this.§'"§ * 1000);
                        if(!_loc3_)
                        {
                        }
                        addr89:
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr89);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr83);
               }
               §§goto(addr85);
            }
            §§goto(addr83);
         }
         return _loc2_;
      }
   }
}
