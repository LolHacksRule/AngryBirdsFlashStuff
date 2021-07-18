package §!X§
{
   import §0!G§.b2Vec2;
   import §?m§.§7?§;
   import §`j§.b2DebugDraw;
   import §`j§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §,!'§
   {
      
      public static const §false§:Number = 0.03333333333333333;
      
      public static const §4!U§:int = 10;
      
      public static const §%!F§:Boolean = false;
      
      public static const §;!;§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §false§ = 1 / 30;
            while(true)
            {
               §4!U§ = 10;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §%!F§ = false;
                     do
                     {
                        §;!;§ = true;
                     }
                     while(_loc2_);
                     
                     if(!(_loc2_ && §,!'§))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      public var mWorld:b2World;
      
      private var §]!=§:Boolean = true;
      
      public var §0!9§:§4!6§;
      
      public var §?!X§:Sprite;
      
      private var §>P§:b2DebugDraw;
      
      public var §>`§:§86§;
      
      public var §?!$§:Number;
      
      private var §-_§:Number;
      
      private var §`!V§:int;
      
      public function §,!'§(param1:§86§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
         }
         while(true)
         {
            this.§>`§ = param1;
            while(_loc3_ || _loc2_)
            {
               this.§,!?§();
               if(_loc3_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get currentStep() : int
      {
         return this.§`!V§;
      }
      
      public function get §#L§() : Number
      {
         return this.§-_§;
      }
      
      private function §,!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0!9§ = new §4!6§(this);
         }
         while(true)
         {
            this.mWorld = new b2World(new b2Vec2(0,20),this.§]!=§);
            while(_loc1_)
            {
               this.mWorld.§7&§(this.§0!9§);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.mWorld);
            loop0:
            while(true)
            {
               §§pop().§7&§(null);
               loop1:
               while(true)
               {
                  this.§0!9§ = null;
                  loop2:
                  while(true)
                  {
                     if(§%!F§)
                     {
                        while(true)
                        {
                           this.§?!X§.graphics.clear();
                           addr92:
                           while(_loc1_)
                           {
                           }
                           continue loop1;
                           addr58:
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           return;
                           addr65:
                        }
                     }
                     while(true)
                     {
                        this.§?!X§ = null;
                        loop6:
                        while(!_loc2_)
                        {
                           continue loop0;
                           while(true)
                           {
                              this.mWorld = null;
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop6;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr65);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §2!@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§%!F§)
            {
            }
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(§%!F§)
            {
               do
               {
                  this.§?!X§.x = -param1;
                  do
                  {
                     this.§?!X§.y = -param2;
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && _loc3_);
               
               addr64:
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §6!E§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-_§ = §false§;
         }
         §§push(this.§6j§(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > §4!U§)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(§4!U§);
                     if(_loc4_)
                     {
                        addr134:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr134);
                  }
                  while(true)
                  {
                     §§goto(addr96);
                  }
               }
               addr96:
               §§goto(addr107);
            }
            §§goto(addr134);
         }
         addr107:
         while(true)
         {
            this.§while§(_loc2_);
            if(_loc4_ || this)
            {
               break;
            }
            continue loop0;
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(_loc4_ || this)
                  {
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
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
                           addr86:
                           §§push(param1);
                           §§push(this.§-_§);
                        }
                        §§push(§§pop() * 1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        addr94:
                        param1 = §§pop();
                        continue;
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr86);
               }
               §§goto(addr94);
            }
            break;
         }
         return §§pop();
      }
      
      public function §while§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!(_loc8_ && param1))
         {
            this.§?!$§ = 0;
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
                  if(!(_loc8_ && _loc2_))
                  {
                     if(_loc9_ || _loc3_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc4_++;
                        addr117:
                        this.§>`§.§7!;§(this.§-_§);
                     }
                  }
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        if(!(_loc8_ && this))
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§;!;§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Number(getTimer()));
                                       if(!_loc9_)
                                       {
                                          continue loop3;
                                       }
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                       }
                                    }
                                    addr197:
                                 }
                                 while(true)
                                 {
                                    §§push(this.mWorld);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().§6k§(this.§-_§,_loc2_,_loc3_);
                                       loop7:
                                       while(!_loc8_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.mWorld);
                                             if(_loc8_)
                                             {
                                                continue loop6;
                                             }
                                             §§pop().§+!1§();
                                             while(true)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   §§push(this);
                                                   §§push(this.§?!$§);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(this.§-_§);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() * 1000);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§?!$§ = §§pop();
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr197);
                     }
                     §§goto(addr151);
                  }
                  continue;
               }
               var _loc6_:*;
               §§push((_loc6_ = this).§`!V§);
               if(!_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || this)
               {
                  _loc6_.§`!V§ = _loc7_;
               }
               if(_loc9_ || _loc2_)
               {
                  addr215:
                  §§goto(addr216);
                  §§push(Number(0));
               }
               §§goto(addr193);
            }
            §§goto(addr215);
         }
      }
      
      private function §6j§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() <= §§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc3_ || this))
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
                     if(!(_loc4_ && this))
                     {
                        §§push(this.§-_§);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     §§goto(addr82);
                  }
               }
               while(true)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            §§goto(addr82);
         }
         return _loc2_;
      }
   }
}
