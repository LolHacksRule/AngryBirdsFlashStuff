package §8!_§
{
   import § M§.§`"2§;
   import §%!r§.§3!'§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §5X§.§+!#§;
   import §7!B§.§@!^§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §`!4§ extends §4!U§
   {
       
      
      private var §?>§:§^g§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §`!4§(param1:§9"!§, param2:§3!'§, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!"&§ = new §&"$§(0,0,0,1);
            while(true)
            {
               §8!A§ = new §1"F§(this);
               loop2:
               while(!(_loc1_ && this))
               {
                  this.§?>§ = §9q§.§>!L§;
                  while(!(_loc1_ && this))
                  {
                     §'!v§ = new §`"2§(this.§?>§,§6u§);
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     §8!A§.init(§-G§.§4+§.Views.View_Credits[0]);
                     continue loop2;
                     §§goto(addr52);
                  }
                  addr52:
               }
            }
         }
         §§goto(addr83);
      }
      
      override protected function activateLevelEngine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?>§);
            while(true)
            {
               §§pop().§0!M§(true);
               loop3:
               while(true)
               {
                  §§push(this.§?>§);
                  if(!(_loc2_ || this))
                  {
                     break;
                  }
                  §§pop().camera.§8Y§();
                  while(_loc2_)
                  {
                     §`Y§.§2!M§();
                     if(_loc2_ || _loc2_)
                     {
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §9q§.resume();
                     do
                     {
                        §9q§.§15§(§'!v§);
                        continue loop3;
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr53:
               §§push(0);
               if(_loc5_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.§+z§ = false;
                  if(!(_loc5_ && this))
                  {
                     this.§5+§();
                     if(_loc5_)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr53);
      }
      
      protected function §5+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!"&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr151:
                        do
                        {
                           §§push(this.§+z§);
                           if(!_loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(_loc2_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§!"&§);
                        addr132:
                        while(true)
                        {
                           §§pop().mouseEnabled = true;
                           while(true)
                           {
                              this.§+z§ = true;
                              continue loop5;
                              addr52:
                              if(_loc2_ || this)
                              {
                                 break loop4;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               loop13:
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§push(1);
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  §§pop().§7t§(§§pop(),0.25);
                  while(true)
                  {
                     if(_loc1_ && _loc1_)
                     {
                        while(true)
                        {
                           continue loop13;
                        }
                        if(_loc2_)
                        {
                           §§pop().addEventListener(ColorFadeLayerEvent.§;Y§,this.§ ;§);
                           if(_loc1_)
                           {
                              continue;
                           }
                           §§goto(addr45);
                        }
                     }
                     else
                     {
                        addr103:
                     }
                     continue loop13;
                     addr36:
                  }
                  §§goto(addr132);
               }
               while(true)
               {
                  §§pop().§24§(§§pop());
                  §§goto(addr103);
               }
            }
         }
         while(true)
         {
            §§goto(addr101);
         }
      }
      
      protected function § ;§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            §§push(this.§!"&§);
            if(!(_loc2_ && this))
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§;Y§,this.§ ;§);
               do
               {
                  §8!^§(StateEpisodeSelection.STATE_NAME);
               }
               while(!_loc3_);
               
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§!"&§.mouseEnabled = true;
               while(true)
               {
                  this.§+z§ = false;
                  loop2:
                  while(true)
                  {
                     §8!A§.container.mClip.addChild(this.§!"&§);
                     addr167:
                     while(_loc2_)
                     {
                        this.§<e§();
                        while(true)
                        {
                           §§push(§ !g§.§;!'§);
                           addr153:
                           while(true)
                           {
                              §§pop().§>";§.§@;§();
                              addr155:
                              while(true)
                              {
                                 §§push(§ !g§.§;!'§);
                                 addr137:
                                 while(true)
                                 {
                                    §§push((§§pop() as §`Y§).§&,§);
                                    addr140:
                                    while(true)
                                    {
                                       §§push(false);
                                       addr141:
                                       while(true)
                                       {
                                          §§pop().§4"1§(§§pop());
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§goto(addr108);
                  §§push(§ !g§.§;!'§);
               }
            }
         }
         §§goto(addr133);
      }
      
      protected function §<e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop7:
                        while(true)
                        {
                           §§push(this.§+z§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              loop1:
                              while(§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    this.§+z§ = true;
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§!"&§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(1);
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().§24§(§§pop());
                                             addr113:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§!"&§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§7t§(§§pop(),0.25);
                                                   while(true)
                                                   {
                                                      §§push(this.§!"&§);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop9;
                                                      addr48:
                                                      §§pop().addEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
                                                      if(!(_loc1_ && this))
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop7;
                              }
                              return;
                              addr127:
                           }
                           break;
                        }
                     }
                     addr155:
                  }
                  §§goto(addr127);
               }
               §§goto(addr155);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr113);
      }
      
      private function §0!r§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            §§push(this.§!"&§);
            if(_loc2_)
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
               if(_loc2_)
               {
                  break;
               }
               continue;
            }
            continue loop0;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!"&§.parent == §8!A§.container.mClip)
            {
               if(!_loc1_)
               {
                  §8!A§.container.mClip.removeChild(this.§!"&§);
               }
               while(true)
               {
                  addr113:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  addr20:
                  return;
                  addr120:
               }
               addr177:
            }
            while(true)
            {
               super.deActivate();
               loop2:
               while(true)
               {
                  §§push(§ !g§.§;!'§);
                  while(true)
                  {
                     §§push((§§pop() as §`Y§).§&,§);
                     addr145:
                     while(true)
                     {
                        §§push(true);
                        addr146:
                        while(true)
                        {
                           §§pop().§4"1§(§§pop());
                        }
                     }
                     addr76:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     addr96:
                     §§push((§§pop() as §`Y§).§&,§);
                     if(!(_loc1_ && this))
                     {
                        addr105:
                        §§pop().§9Z§.§2E§(true);
                        addr106:
                        addr104:
                        if(!(_loc2_ || _loc1_))
                        {
                           while(true)
                           {
                              §§push(§ !g§.§;!'§);
                              while(true)
                              {
                                 §§push((§§pop() as §`Y§).§&,§);
                                 addr127:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(true);
                                       if(!_loc1_)
                                       {
                                          §§pop().§<U§(§§pop());
                                          while(true)
                                          {
                                             if(!§@!^§.§2j§.§8B§)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(§ !g§.§;!'§);
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§push(§ !g§.§;!'§);
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push((§§pop() as §`Y§).§&,§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop().§9Z§);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push(true);
                                                      if(_loc2_)
                                                      {
                                                         §§pop().§0!s§(§§pop());
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr20);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr106);
                                                         }
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr104);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr96);
                                                }
                                                §§goto(addr105);
                                             }
                                             §§goto(addr105);
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr76);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr145);
                                    }
                                    §§goto(addr146);
                                 }
                              }
                           }
                           §§goto(addr120);
                           addr147:
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr177);
            }
         }
         §§goto(addr147);
      }
   }
}
