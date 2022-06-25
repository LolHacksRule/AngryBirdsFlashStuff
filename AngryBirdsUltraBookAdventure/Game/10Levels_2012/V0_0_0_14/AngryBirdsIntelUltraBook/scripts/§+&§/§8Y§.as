package §+&§
{
   import § D§.b2DebugDraw;
   import § D§.b2World;
   import §5i§.§4!]§;
   import §8>§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §8Y§
   {
      
      public static const §?!"§:Number = 0.03333333333333333;
      
      public static const §2e§:int = 10;
      
      public static const §`!2§:Boolean = false;
      
      public static const §&!b§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?!"§ = 1 / 30;
            while(true)
            {
               §2e§ = 10;
               loop1:
               while(_loc2_ || §8Y§)
               {
                  while(true)
                  {
                     §`!2§ = false;
                     do
                     {
                        §&!b§ = true;
                     }
                     while(_loc1_ && §8Y§);
                     
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
      
      private var §,!n§:Boolean = true;
      
      public var §5I§:§8-§;
      
      public var §=!?§:Sprite;
      
      private var §9!V§:b2DebugDraw;
      
      public var §+!X§:§-!7§;
      
      public var §9a§:Number;
      
      private var §&&§:Number;
      
      private var §'!&§:int;
      
      public function §8Y§(param1:§-!7§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§+!X§ = param1;
               while(!(_loc2_ && param1))
               {
                  this.§6!^§();
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
      
      public function get §]!@§() : int
      {
         return this.§'!&§;
      }
      
      public function get §"!w§() : Number
      {
         return this.§&&§;
      }
      
      private function §6!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§5I§ = new §8-§(this);
            while(true)
            {
               this.mWorld = new b2World(new b2Vec2(0,20),this.§,!n§);
               while(true)
               {
                  §§push(this.mWorld);
                  loop2:
                  while(true)
                  {
                     §§pop().§=!3§(this.§5I§);
                     addr253:
                     while(§`!2§)
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
               §§pop().§=!3§(null);
               addr92:
               §§push(this.mWorld);
               if(!_loc2_)
               {
                  continue;
               }
               §§pop().§ v§();
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
                        this.§=!?§.graphics.clear();
                        addr100:
                        loop4:
                        while(true)
                        {
                           addr84:
                           while(true)
                           {
                              this.§=!?§ = null;
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
                     this.§5I§ = null;
                     break loop7;
                  }
               }
               while(true)
               {
                  if(§`!2§)
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
      
      public function §^!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§`!2§)
            {
               if(_loc1_)
               {
                  addr57:
                  this.mWorld.§[W§();
               }
               do
               {
                  this.§=!?§.parent.setChildIndex(this.§=!?§,this.§=!?§.parent.numChildren - 1);
               }
               while(!_loc1_);
               
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §@o§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(§`!2§)
            {
               do
               {
                  this.§=!?§.x = -param1;
                  do
                  {
                     this.§=!?§.y = -param2;
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
      
      public function §7!@§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§&&§ = §?!"§;
         }
         §§push(this.§[!g§(param1));
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
               if(§§pop() > §2e§)
               {
                  if(!(_loc3_ && this))
                  {
                     addr145:
                     §§push(§2e§);
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
                  this.§,!5§(_loc2_);
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
                              §§push(this.§&&§);
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
      
      public function §,!5§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!(_loc8_ && _loc3_))
         {
            this.§9a§ = 0;
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
                              this.§+!X§.handleEngineUpdateStep(this.§&&§);
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
                                 §§push(§&!b§);
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
                                          §§pop().§`!9§(this.§&&§,_loc2_,_loc3_);
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
                                                §§pop().§ v§();
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§9a§);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(this.§&&§);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * 1000);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§9a§ = §§pop();
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
               §§push((_loc6_ = this).§'!&§);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || this)
               {
                  _loc6_.§'!&§ = _loc7_;
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
      
      private function §[!g§(param1:Number) : int
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
                        §§push(§§pop() - this.§&&§ * 1000);
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
