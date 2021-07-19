package §^!v§
{
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §@"A§ extends EventDispatcher
   {
      
      public static const §[!9§:String = "badge_landed";
      
      protected static const §`">§:Number = 30;
      
      protected static const §`O§:String = "EndScreenEffectChannel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[!9§ = "badge_landed";
            do
            {
               §`">§ = 30;
               do
               {
                  §`O§ = "EndScreenEffectChannel";
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §##@§:§[#R§;
      
      protected var §@1§:Number = -1;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §^c§:§ #^§;
      
      protected var §7"o§:MovieClip;
      
      public function §@"A§(param1:§ #^§, param2:MovieClip)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§^c§ = param1;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§7"o§ = param2;
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7"o§.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§7"o§.visible;
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§##@§ = §-#C§.§%!E§.§^!H§(this.§7"o§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            loop0:
            while(true)
            {
               §§push(this.§##@§);
               addr55:
               loop1:
               while(true)
               {
                  §§pop().onComplete = this.onBadgeLanded;
                  addr58:
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§##@§);
            if(_loc1_)
            {
               §§pop().play();
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               §§goto(addr58);
            }
            §§goto(addr55);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§##@§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§##@§);
                     addr79:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§@1§);
            loop0:
            while(true)
            {
               §§push(0);
               addr263:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§^c§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§^c§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().x - this.§3#S§);
                              loop5:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 loop6:
                                 while(_loc3_)
                                 {
                                    §§push(this.§^c§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§^c§);
                                       addr224:
                                       while(true)
                                       {
                                          §§push(§§pop().y - this.§"#Q§);
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§pop().y = §§pop();
                                          continue loop0;
                                       }
                                       continue loop5;
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break;
                                                addr135:
                                             }
                                             §§push(this.§^c§);
                                             while(!_loc2_)
                                             {
                                                §§pop().x = §§pop().x + this.§3#S§;
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop15;
                                                   }
                                                   addr192:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(Math.random() - 0.5);
                                                      if(!_loc2_)
                                                      {
                                                         addr215:
                                                         §§push(this.§@1§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop() / §`">§);
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            addr213:
                                                            §§push(§§pop() * 20);
                                                         }
                                                         §§pop().§3#S§ = §§pop();
                                                         while(!_loc2_)
                                                         {
                                                            §§push(this);
                                                            §§push(Math.random() - 0.5);
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(this.§@1§);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() / §`">§);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  addr174:
                                                                  §§push(§§pop() * 20);
                                                               }
                                                               §§pop().§"#Q§ = §§pop();
                                                               while(true)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               addr177:
                                                            }
                                                            §§goto(addr174);
                                                            §§goto(addr215);
                                                         }
                                                         continue loop6;
                                                         addr216:
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr237:
                  }
                  return;
               }
            }
         }
         §§goto(addr265);
      }
      
      private function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!r§.§"#_§("Hiscore_Badge",§`O§);
         }
         do
         {
            this.§[!?§();
            do
            {
               dispatchEvent(new Event(§[!9§));
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      private function §[!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3#S§ = 0;
         }
         while(true)
         {
            this.§"#Q§ = 0;
            while(_loc1_)
            {
               this.§@1§ = §`">§;
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
