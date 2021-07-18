package §&!F§
{
   import §1!E§.§>f§;
   import §12§.§25§;
   import §5G§.§39§;
   import §=!g§.§!!@§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3S§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §=9§:int;
      
      private var §[-§:§[! §;
      
      private var §9n§:§1!%§;
      
      public function §3S§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         loop0:
         do
         {
            this.§,W§();
            while(true)
            {
               this.§[-§ = new §[! §(this);
               while(!(_loc2_ && _loc1_))
               {
                  this.§9n§ = new §1!%§(this);
                  if(_loc1_ || _loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §,W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§5<§(0);
            loop0:
            while(true)
            {
               §§push(this.§[-§);
               loop1:
               for(; §§pop(); if(!(_loc1_ || _loc2_))
               {
                  continue;
               },§§goto(addr139),§§push(§25§.§^!9§))
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§[-§);
                     loop3:
                     while(true)
                     {
                        §§push(§25§.§case §);
                        loop4:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§=v§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§[-§);
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.§[-§);
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       break;
                                    }
                                    addr64:
                                    §§push(§25§.§&g§);
                                    if(_loc1_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§95§);
                                          while(_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             addr92:
                                             §§push(this.§9n§);
                                             if(!(_loc2_ && this))
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(§25§.§&g§);
                                                   if(_loc1_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§95§);
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break loop1;
                                                            }
                                                            addr142:
                                                            while(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§9n§);
                                                                  addr96:
                                                                  while(true)
                                                                  {
                                                                     §§push(§25§.§?n§);
                                                                     §§goto(addr92);
                                                                  }
                                                               }
                                                            }
                                                            while(_loc1_)
                                                            {
                                                               §§push(this.§9n§);
                                                               while(true)
                                                               {
                                                                  §§push(§25§.§&a§);
                                                                  addr114:
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(§§pop(),this.§!!b§);
                                                                     §§goto(addr117);
                                                                  }
                                                               }
                                                            }
                                                            addr117:
                                                            continue loop0;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue;
                                                   }
                                                   while(_loc1_ || this)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.§;!_§);
                                                      continue loop15;
                                                   }
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr112);
                                             }
                                             §§goto(addr96);
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    addr139:
                                    while(true)
                                    {
                                       §§pop().removeEventListener(§§pop(),this.§>x§);
                                       §§goto(addr64);
                                    }
                                    §§goto(addr142);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr119);
      }
      
      public function §%!L§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§>f§.§%!`§)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr28);
               }
            }
            var _loc1_:String = "getItems";
            var _loc2_:Object = {"id":§>f§.§%!`§.id};
            if(_loc3_ || _loc1_)
            {
               new §"!d§(_loc2_,§5!9§.§<V§ + _loc1_,this,§"!d§.§9X§);
            }
            return;
         }
         addr28:
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:* = null;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         if(!_loc10_)
         {
            if(_loc2_.error)
            {
               if(!_loc10_)
               {
                  addr45:
                  dispatchEvent(new §25§(§25§.§ -§));
                  if(_loc11_ || _loc2_)
                  {
                     return;
                  }
               }
            }
            var _loc3_:Array = _loc2_.items;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.type == §"!d§.§;,§)
               {
                  if(!_loc10_)
                  {
                     this.§5<§(_loc4_.count);
                  }
               }
            }
            (_loc5_ = {}).type = §"!d§.§;,§;
            if(_loc11_ || param1)
            {
               _loc5_.count = this.§=9§;
            }
            (_loc6_ = []).push(_loc5_);
            if(_loc11_ || _loc3_)
            {
               §§push(§>f§.§%!`§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§"!d§.§+!5§(§>f§.§%!`§.id,_loc6_));
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                        }
                        addr275:
                        loop3:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           addr276:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                     addr256:
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     if(!(_loc10_ && _loc3_))
                     {
                        §§push(§§pop() == _loc2_.itemsSecurity);
                        loop5:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr252:
                                    while(true)
                                    {
                                       §§push(_loc3_.length == 0);
                                       if(!_loc10_)
                                       {
                                          continue loop5;
                                       }
                                       addr214:
                                       if(_loc10_)
                                       {
                                          continue loop7;
                                       }
                                       if(!(_loc11_ || param1))
                                       {
                                          continue loop6;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              loop9:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§>f§.§%!`§);
                                    if(!(_loc10_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             addr163:
                                             §§push(§>f§.§%!`§);
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             §§pop().§1!d§(true);
                                          }
                                          while(_loc11_)
                                          {
                                          }
                                          if(_loc11_)
                                          {
                                             continue;
                                          }
                                          addr235:
                                          addr182:
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             if(_loc10_ && _loc3_)
                                             {
                                                break loop9;
                                             }
                                             if(!_loc10_)
                                             {
                                                return;
                                             }
                                             §§goto(addr256);
                                          }
                                          dispatchEvent(new §25§(§25§.§ -§));
                                          §§goto(addr182);
                                          addr167:
                                       }
                                       while(true)
                                       {
                                          dispatchEvent(new §25§(§25§.§&g§));
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                          §§goto(addr167);
                                       }
                                       if(_loc11_)
                                       {
                                          return;
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr163);
                                 }
                                 continue loop1;
                              }
                              if(_loc11_ || _loc2_)
                              {
                                 this.§5<§(0);
                                 §§goto(addr235);
                              }
                              §§goto(addr276);
                           }
                        }
                     }
                     §§goto(addr275);
                  }
               }
            }
            §§goto(addr276);
         }
         §§goto(addr45);
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5!9§.§-!O§.§;!;§(§39§.§3!?§);
         }
      }
      
      public function §"!4§() : int
      {
         return this.§=9§;
      }
      
      public function §5<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=9§ = param1;
            do
            {
               this.§%!I§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §4!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§[-§);
            while(true)
            {
               §§push(§25§.§case §);
               addr118:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§=v§);
               }
               loop6:
               for(; _loc1_ || _loc2_; §§push(this.§[-§),if(_loc2_ && _loc1_)
               {
                  continue;
               },§§goto(addr33))
               {
                  §§push(§25§.§&g§);
                  if(!(_loc2_ && this))
                  {
                     §§pop().addEventListener(§§pop(),this.§95§);
                     while(_loc1_ || _loc1_)
                     {
                        continue loop6;
                        §§pop().§6!a§(§"!d§.§7!c§);
                        if(_loc1_ || _loc2_)
                        {
                           addr50:
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 continue loop6;
                                 §§goto(addr50);
                              }
                              addr113:
                           }
                           return;
                        }
                     }
                     while(true)
                     {
                        §§push(this.§[-§);
                        while(true)
                        {
                           §§push(§25§.§^!9§);
                           addr33:
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           §§goto(addr40);
                        }
                     }
                     addr121:
                  }
                  while(!_loc2_)
                  {
                     §§pop().addEventListener(§§pop(),this.§>x§);
                     §§goto(addr113);
                  }
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr121);
      }
      
      private function §=v§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            dispatchEvent(new §25§(§25§.§case §));
            loop0:
            while(true)
            {
               §§push(this.§[-§);
               while(true)
               {
                  §§push(§25§.§case §);
                  addr58:
                  addr73:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=v§);
                     continue loop0;
                  }
                  §§push(this.§[-§);
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(§25§.§^!9§);
                  if(_loc2_)
                  {
                     §§pop().removeEventListener(§§pop(),this.§>x§);
                     if(!_loc3_)
                     {
                        return;
                        addr52:
                     }
                     continue loop0;
                  }
                  §§goto(addr58);
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §>x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(new §25§(§25§.§^!9§));
            while(true)
            {
               §§push(this.§[-§);
               addr68:
               loop1:
               while(true)
               {
                  §§push(§25§.§case §);
                  addr70:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§=v§);
                     continue loop1;
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            §§push(this.§[-§);
            if(!(_loc3_ && param1))
            {
               §§push(§25§.§^!9§);
               if(_loc2_ || _loc3_)
               {
                  §§pop().removeEventListener(§§pop(),this.§>x§);
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr90);
               }
               §§goto(addr70);
            }
            §§goto(addr68);
         }
      }
      
      public function §4!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§9n§);
            while(true)
            {
               §§push(§25§.§&a§);
               loop1:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§!!b§);
                  loop2:
                  while(true)
                  {
                     §§push(this.§9n§);
                     while(true)
                     {
                        §§push(§25§.§?n§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§;!_§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§9n§);
                              loop6:
                              while(true)
                              {
                                 §§push(§25§.§&g§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.§95§);
                                    while(_loc1_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop2;
                                       §§pop().§6!a§(§"!d§.§"!Q§);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          return;
                                          addr57:
                                       }
                                    }
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §!!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §25§(§25§.§&a§));
            while(true)
            {
               §§push(this.§9n§);
               loop1:
               while(true)
               {
                  §§push(§25§.§&a§);
                  addr66:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§!!b§);
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §;!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §25§(§25§.§?n§));
            while(true)
            {
               §§push(this.§[-§);
               loop1:
               while(true)
               {
                  §§push(§25§.§&a§);
                  addr61:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§!!b§);
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §95§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            dispatchEvent(new §25§(§25§.§&g§));
            while(true)
            {
               this.§[-§.removeEventListener(§25§.§&g§,this.§95§);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§9n§.removeEventListener(§25§.§&g§,this.§95§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      private function §%!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§>f§.§%!`§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr48:
                  §!!@§.§%Q§("updateCredits",§>f§.§%!`§.§`!b§);
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
