package §9N§
{
   import §!J§.§[&§;
   import §&!"§.b2DebugDraw;
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §0!4§
   {
      
      public static const §+!G§:Number = 0.03333333333333333;
      
      public static const §5!2§:int = 10;
      
      public static const § L§:Boolean = false;
      
      public static const §'R§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!G§ = 1 / 30;
            while(true)
            {
               §5!2§ = 10;
               while(!_loc2_)
               {
                  while(_loc1_ || §0!4§)
                  {
                     §'R§ = true;
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            § L§ = false;
            §§goto(addr49);
         }
      }
      
      public var mWorld:b2World;
      
      private var §var §:Boolean = true;
      
      public var §4r§:§7!>§;
      
      public var §0k§:Sprite;
      
      private var §#!%§:b2DebugDraw;
      
      public var §8@§:§9!%§;
      
      public var §5c§:Number;
      
      private var § !E§:Number;
      
      private var §9!@§:int;
      
      public function §0!4§(param1:§9!%§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§8@§ = param1;
            while(!_loc3_)
            {
               this.§8K§();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get currentStep() : int
      {
         return this.§9!@§;
      }
      
      public function get §@2§() : Number
      {
         return this.§ !E§;
      }
      
      private function §8K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4r§ = new §7!>§(this);
         }
         do
         {
            this.mWorld = new b2World(new b2Vec2(0,20),this.§var §);
            do
            {
               this.mWorld.§"x§(this.§4r§);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.mWorld);
            while(true)
            {
               §§pop().§"x§(null);
               addr77:
               §§push(this.mWorld);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§pop().§6b§();
               loop7:
               while(!(_loc2_ && _loc1_))
               {
                  this.mWorld = null;
                  if(_loc1_ || _loc1_)
                  {
                     if(!_loc1_)
                     {
                        addr92:
                        while(!(_loc2_ && _loc1_))
                        {
                           while(true)
                           {
                              this.§0k§ = null;
                              break loop7;
                           }
                        }
                        while(true)
                        {
                           this.§4r§ = null;
                           while(true)
                           {
                              if(§ L§)
                              {
                                 continue;
                              }
                              §§goto(addr71);
                           }
                        }
                        addr92:
                        addr119:
                     }
                     return;
                  }
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     §§goto(addr81);
                  }
               }
               addr63:
               §§goto(addr92);
            }
         }
         §§goto(addr119);
      }
      
      public function §7D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§ L§)
            {
            }
         }
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(§ L§)
            {
               do
               {
                  this.§0k§.x = -param1;
                  do
                  {
                     this.§0k§.y = -param2;
                  }
                  while(_loc4_);
                  
               }
               while(!_loc3_);
               
               addr58:
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §1!X§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ !E§ = §+!G§;
         }
         §§push(this.§"!G§(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() > §5!2§)
               {
                  if(_loc3_)
                  {
                     addr139:
                     §§push(§5!2§);
                     if(_loc3_)
                     {
                        addr137:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                     while(true)
                     {
                     }
                     addr139:
                  }
                  §§goto(addr139);
               }
               while(true)
               {
                  this.§^h§(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr139);
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && this))
                     {
                        if(!(_loc4_ && param1))
                        {
                           if(!_loc4_)
                           {
                              addr102:
                              §§push(0);
                              if(_loc3_ || this)
                              {
                                 if(_loc3_ || _loc3_)
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
                                    addr97:
                                    §§push(param1);
                                    §§push(this.§ !E§);
                                 }
                                 §§push(§§pop() * 1000);
                              }
                              param1 = §§pop() - §§pop();
                              continue;
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr102);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr137);
         }
         §§goto(addr139);
      }
      
      public function §^h§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§5c§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               if(§§pop() >= param1)
               {
                  if(!_loc8_)
                  {
                     if(_loc9_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc9_)
                        {
                           _loc4_++;
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 if(!_loc8_)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       break;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§'R§);
                                       loop8:
                                       while(!§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.mWorld);
                                             addr166:
                                             addr203:
                                             while(true)
                                             {
                                                §§pop().§<!P§(this.§ !E§,_loc2_,_loc3_);
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                continue loop4;
                                                addr171:
                                                while(true)
                                                {
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(this.mWorld);
                                                   if(!(_loc9_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§6b§();
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§5c§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(this.§ !E§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() * 1000);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§5c§ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(§'R§);
                                                         if(_loc9_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr182:
                                       while(true)
                                       {
                                          §§push(Number(getTimer()));
                                          if(_loc9_ || _loc3_)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr203);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                continue loop10;
                                             }
                                             addr206:
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr128);
                           }
                           continue loop0;
                           addr75:
                        }
                        §§goto(addr182);
                     }
                  }
                  §§goto(addr75);
               }
               else
               {
                  var _loc6_:*;
                  §§push((_loc6_ = this).§9!@§);
                  if(_loc9_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || this)
                  {
                     _loc6_.§9!@§ = _loc7_;
                  }
                  if(_loc8_ && _loc3_)
                  {
                     continue;
                  }
                  addr205:
                  §§push(Number(0));
               }
               §§goto(addr206);
            }
            §§goto(addr205);
         }
      }
      
      private function §"!G§(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_ && this)
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
                     addr55:
                     §§push(param1);
                     §§push(this.§ !E§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() * 1000);
                     }
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     addr80:
                     param1 = §§pop();
                     continue;
                  }
                  §§goto(addr80);
               }
               §§goto(addr55);
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
   }
}
