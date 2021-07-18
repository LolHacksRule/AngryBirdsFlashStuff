package §@L§
{
   import §+!!§.§5"+§;
   import §3!`§.b2DebugDraw;
   import §3!`§.b2World;
   import §6Z§.b2Vec2;
   import com.angrybirds.§&!"§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §@!G§
   {
      
      public static const §=Z§:Number = 33.333333333333336;
      
      public static const §"!y§:int = 10;
      
      public static const §]!3§:Boolean = false;
      
      public static const §<-§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=Z§ = 1000 / 30;
            loop0:
            while(true)
            {
               §"!y§ = 10;
               loop1:
               while(true)
               {
                  §]!3§ = false;
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §<-§ = true;
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr59);
      }
      
      public var §-#§:b2World;
      
      private var set:Boolean = true;
      
      public var §[a§:§]U§;
      
      public var §6V§:Sprite;
      
      private var §8!J§:b2DebugDraw;
      
      public var §<Y§:§?!'§;
      
      public var §?!&§:Number;
      
      private var §[e§:Number;
      
      private var §,!H§:int;
      
      public function §@!G§(param1:§?!'§, param2:Number = 20)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§<Y§ = param1;
               while(!_loc3_)
               {
                  this.§!!?§(param2);
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get §]!§() : int
      {
         return this.§,!H§;
      }
      
      public function get §0§() : Number
      {
         return this.§[e§;
      }
      
      private function §!!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[a§ = new §]U§(this);
            while(true)
            {
               this.§-#§ = new b2World(new b2Vec2(0,param1),this.set);
               loop1:
               while(true)
               {
                  §§push(this.§-#§);
                  loop2:
                  while(true)
                  {
                     §§pop().§,V§(this.§[a§);
                     addr211:
                     while(true)
                     {
                        §]!3§;
                        addr204:
                        while(true)
                        {
                           this.§6V§ = new Sprite();
                           addr200:
                           while(true)
                           {
                              this.§8!J§ = new b2DebugDraw();
                              continue loop1;
                           }
                           addr67:
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr181);
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§-#§);
            loop0:
            while(true)
            {
               §§pop().§,V§(null);
               loop1:
               while(true)
               {
                  this.§[a§ = null;
                  while(true)
                  {
                     if(§]!3§)
                     {
                        while(_loc2_)
                        {
                           while(true)
                           {
                              this.§6V§.graphics.clear();
                              addr90:
                              while(true)
                              {
                              }
                           }
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§6V§ = null;
                        addr69:
                        while(_loc2_)
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr90);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function § L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§]!3§)
            {
               if(_loc2_)
               {
                  this.§-#§.§]"$§();
               }
               do
               {
                  this.§6V§.parent.setChildIndex(this.§6V§,this.§6V§.parent.numChildren - 1);
               }
               while(_loc1_);
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §=!F§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            if(§]!3§)
            {
               addr24:
               _loc3_ = §&!"§.§1!D§.§9J§(0,0);
               if(!(_loc4_ && param2))
               {
                  this.§6V§.x = _loc3_.x;
                  loop0:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        this.§6V§.y = _loc3_.y;
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§8!J§);
                  §§push(1 / §?!'§.§'!i§);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() * §5"+§.§,H§);
                  }
                  §§pop().§&!L§(§§pop());
                  if(!(_loc4_ && this))
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr82);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §3b§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§[e§ = §=Z§;
         }
         §§push(this.§&L§(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() > §"!y§)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(§"!y§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr133:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  while(true)
                  {
                  }
                  addr135:
               }
               while(true)
               {
                  this.§53§(_loc2_);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr135);
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr72:
                           §§push(param1);
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              addr88:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr87:
                              §§goto(addr88);
                              §§push(§§pop() - this.§[e§);
                           }
                        }
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr72);
               }
               return §§pop();
               addr97:
            }
            §§goto(addr133);
         }
         §§goto(addr97);
      }
      
      public function §53§(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         if(!(_loc9_ && _loc2_))
         {
            this.§?!&§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         §§push(0);
         if(!_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc9_ && this))
            {
               if(§§pop() >= param1)
               {
                  if(!(_loc9_ && this))
                  {
                     §§push(§<-§);
                     if(_loc10_)
                     {
                        if(_loc10_ || param1)
                        {
                           if(§§pop())
                           {
                              if(_loc10_)
                              {
                                 addr100:
                                 if(_loc10_ || this)
                                 {
                                    if(_loc10_ || _loc2_)
                                    {
                                       if(_loc10_ || this)
                                       {
                                          §&!"§.§!!D§.§=!j§("Box2D",_loc4_);
                                          addr136:
                                          if(!(_loc9_ && this))
                                          {
                                             break;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             §§push(§<-§);
                                             addr239:
                                             addr264:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§push(Number(getTimer()));
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                      }
                                                      addr260:
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr261:
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(this.§-#§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§[e§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(1000);
                                                         if(_loc10_)
                                                         {
                                                            addr226:
                                                            §§push(§§pop() / §§pop());
                                                            §§push(_loc2_);
                                                         }
                                                         §§pop().§4!6§(§§pop(),§§pop(),_loc3_);
                                                         while(true)
                                                         {
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue;
                                                         addr229:
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                continue loop1;
                                             }
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr100);
               }
               else
               {
                  var _loc7_:*;
                  §§push((_loc7_ = this).§,!H§);
                  if(_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc8_:* = §§pop();
                  if(_loc10_)
                  {
                     _loc7_.§,!H§ = _loc8_;
                  }
                  if(_loc9_ && param1)
                  {
                     break;
                  }
                  addr263:
                  §§push(Number(0));
               }
               §§goto(addr264);
            }
            §§goto(addr263);
         }
         addr65:
      }
      
      private function §&L§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(_loc4_ || this)
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
                           break;
                        }
                        loop1:
                        while(_loc3_ && _loc3_)
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
                        addr53:
                        while(true)
                        {
                           §§push(this.§[e§);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc4_)
                     {
                        §§goto(addr59);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr59);
         }
         return _loc2_;
      }
   }
}
