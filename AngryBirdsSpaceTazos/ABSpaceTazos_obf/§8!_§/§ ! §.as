package §8!_§
{
   import § !Y§.§%Y§;
   import § !Y§.§&$§;
   import § !Y§.§="6§;
   import § M§.§!V§;
   import § M§.§]o§;
   import §!X§.§<!3§;
   import §!X§.§[1§;
   import §"!&§.§!"7§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §'4§.§"!Q§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §3C§.§-"E§;
   import §3C§.§9!d§;
   import §3C§.§=!v§;
   import §3C§.§["1§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupClosedEvent;
   import §5Q§.§^!e§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §7!0§.§%!P§;
   import §7!0§.§3!d§;
   import §7!B§.§;!E§;
   import §7!B§.§@!^§;
   import §77§.§@_§;
   import §=r§.§7!r§;
   import §=r§.§=!<§;
   import §=u§.§3!m§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class § ! § extends §="%§
   {
      
      private static const §'X§:Number = 50;
      
      private static const §`R§:Number = 0.05;
      
      private static const §<@§:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const §5I§:Number = -10000.0;
      
      private static const §8;§:Number = 15000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'X§ = 50;
            loop0:
            while(true)
            {
               §`R§ = 0.05;
               loop1:
               do
               {
                  §<@§ = 99;
                  while(true)
                  {
                     STATE_NAME = "StatePlay";
                     loop3:
                     while(!_loc2_)
                     {
                        §5I§ = -10 * 1000;
                        while(_loc1_)
                        {
                           §8;§ = 15 * 1000;
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop1;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(!(_loc1_ || § ! §));
               
            }
         }
      }
      
      private var §^#§:Boolean = false;
      
      private var §!!=§:Number = -10000.0;
      
      private var §=+§:int = 0;
      
      private var §4y§:Number = 0;
      
      private var §,"!§:Number = 0;
      
      private var §;!q§:§;!E§;
      
      private var §>!J§:Boolean = false;
      
      private var §=-§:§9!d§;
      
      private var §3"4§:§!"7§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      private var §9!N§:§-"E§;
      
      private var §=!1§:Boolean;
      
      private var § y§:Boolean;
      
      public function § ! §(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:§8"F§, param5:String = "StatePlay")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super(param1,param2,param3,param5);
            do
            {
               this.§3"4§ = param4 as §!"7§;
            }
            while(!(_loc7_ || param1));
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!"&§ = new §&"$§(0,0,0,1);
            while(true)
            {
               §8!A§ = new §1"F§(this);
               while(_loc1_ || _loc2_)
               {
                  §8!A§.container.mClip.addChild(this.§!"&§);
                  loop3:
                  for(; !_loc2_; this.§;!q§ = new §;!E§(this),if(!(_loc2_ && _loc2_))
                  {
                     return;
                  })
                  {
                     addr56:
                     if(!(_loc2_ && this))
                     {
                        continue;
                     }
                     addr87:
                     while(true)
                     {
                        §8!A§.init(§-G§.§4+§.Views.View_LevelPlay[0]);
                        break loop3;
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.levelStarted();
            while(true)
            {
               this.§+z§ = false;
               loop2:
               for(; !(_loc1_ && _loc2_); if(!(_loc1_ && _loc1_))
               {
                  return;
               })
               {
                  §="6§.§^!U§(§%Y§.§!t§,§6u§.currentLevel);
                  loop3:
                  do
                  {
                     (§ !g§.§;!'§ as §`Y§).§0h§.§^!U§(§%!P§.§-6§);
                     addr75:
                     addr116:
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§&I§();
                        do
                        {
                           this.§=!1§ = true;
                        }
                        while(!_loc2_);
                        
                        if(!_loc1_)
                        {
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        this.§&"§();
                        continue loop2;
                        §§goto(addr75);
                     }
                  }
                  while(!(_loc2_ || this));
                  
               }
            }
         }
         §§goto(addr116);
      }
      
      private function §&I§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §8!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(false);
            while(true)
            {
               §8!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(false);
               while(!(_loc3_ && _loc3_))
               {
                  §8!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(false);
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  var _loc1_:* = §6u§.currentLevel;
                  if(_loc2_ || this)
                  {
                     if("1-1" === _loc1_)
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              addr175:
                           }
                        }
                        else
                        {
                           addr139:
                           §§push(1);
                           if(!_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        if("2-1" === _loc1_)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr139);
                           }
                        }
                        else if("3-1" === _loc1_)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§push(2);
                              if(!_loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr214:
                              §§push(6);
                              if(!_loc3_)
                              {
                                 addr217:
                              }
                              else
                              {
                                 addr231:
                              }
                           }
                        }
                        else if("1-2" === _loc1_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(3);
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr175);
                              }
                              else
                              {
                                 addr248:
                                 §§goto(addr253);
                              }
                           }
                        }
                        else if("2-2" === _loc1_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr186:
                              §§push(4);
                              if(_loc3_)
                              {
                                 addr203:
                              }
                              §§goto(addr253);
                           }
                           else
                           {
                              §§goto(addr214);
                           }
                        }
                        else
                        {
                           if("3-2" === _loc1_)
                           {
                              if(_loc2_)
                              {
                                 §§push(5);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr203);
                                 }
                                 §§goto(addr253);
                              }
                              else
                              {
                                 §§goto(addr214);
                              }
                           }
                           else
                           {
                              if("1-3" === _loc1_)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§goto(addr214);
                                 }
                                 else
                                 {
                                    §§goto(addr228);
                                 }
                              }
                              else
                              {
                                 if("2-3" === _loc1_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr228:
                                       §§push(7);
                                       if(_loc3_)
                                       {
                                          §§goto(addr248);
                                       }
                                    }
                                 }
                                 else if("3-3" !== _loc1_)
                                 {
                                    addr253:
                                    switch(§§pop())
                                    {
                                       case 0:
                                       case 1:
                                       case 2:
                                          §8!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(true);
                                          addr38:
                                          break;
                                          addr62:
                                       case 3:
                                       case 4:
                                       case 5:
                                          §8!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(true);
                                          if(_loc2_ || _loc2_)
                                          {
                                             break;
                                          }
                                          break;
                                       case 6:
                                       case 7:
                                       case 8:
                                          §8!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(true);
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr62);
                                             }
                                             §§goto(addr38);
                                          }
                                    }
                                    return;
                                    §§push(9);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr253);
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr253);
                        if(_loc2_)
                        {
                           §§goto(addr248);
                        }
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr186);
                  addr76:
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §&"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr156:
                        while(true)
                        {
                           §§push(this.§+z§);
                           if(!_loc1_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc1_ && _loc1_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§!"&§);
                        loop5:
                        while(true)
                        {
                           §§pop().mouseEnabled = true;
                           loop6:
                           while(true)
                           {
                              this.§+z§ = true;
                              loop7:
                              while(_loc2_ || this)
                              {
                                 §§push(this.§!"&§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§24§(§§pop());
                                       loop10:
                                       while(!_loc1_)
                                       {
                                          §§push(this.§!"&§);
                                          loop11:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(0);
                                                if(!_loc1_)
                                                {
                                                   §§pop().§7t§(§§pop(),0.25);
                                                   while(!_loc1_)
                                                   {
                                                      continue loop11;
                                                      §§pop().addEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop9;
                                             }
                                             continue loop8;
                                          }
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr156);
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§!"&§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §§push(this.§!"&§);
            if(_loc3_)
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
               do
               {
                  §8!A§.container.mClip.removeChild(this.§!"&§);
               }
               while(_loc2_);
               
               if(!_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §8!A§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
               loop1:
               while(true)
               {
                  this.§4!P§();
                  loop2:
                  while(true)
                  {
                     §&$§.§[!1§.updateTextFields(§8!A§.container,"StatePlay");
                     loop3:
                     while(true)
                     {
                        this.§=!H§();
                        loop4:
                        while(!_loc2_)
                        {
                           this.§%!^§(true);
                           while(true)
                           {
                              §§push(§ !g§.§;!'§);
                              loop6:
                              while(true)
                              {
                                 §§push((§§pop() as §`Y§).§&,§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(true);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§""8§(§§pop());
                                       addr190:
                                       while(true)
                                       {
                                          §§push(§ !g§.§;!'§);
                                          loop10:
                                          while(!_loc2_)
                                          {
                                             §§push((§§pop() as §`Y§).§&,§);
                                             while(_loc3_ || param1)
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§pop().§<U§(§§pop());
                                                   while(true)
                                                   {
                                                      §§push(§ !g§.§;!'§);
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push((§§pop() as §`Y§).§&,§);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(false);
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§pop().§,A§(§§pop());
                                                               continue loop3;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr172);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              addr127:
                              if(!(_loc2_ && param1))
                              {
                                 loop18:
                                 while(true)
                                 {
                                    §§push(§7!r§.§[!1§);
                                    addr80:
                                    addr105:
                                    loop19:
                                    while(!(_loc2_ && param1))
                                    {
                                       §§push(§=!<§.§="9§);
                                       if(_loc3_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§-t§);
                                          while(!(_loc2_ && this))
                                          {
                                             continue loop19;
                                             if(!(_loc3_ || this))
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop18;
                                                }
                                                continue loop4;
                                             }
                                             §§push(§7!r§.§[!1§);
                                             if(_loc2_)
                                             {
                                                continue loop19;
                                             }
                                             §§pop().§-!F§();
                                             loop21:
                                             while(_loc3_ || _loc2_)
                                             {
                                                this.§9!6§();
                                                loop22:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§@!h§();
                                                      while(!_loc2_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break loop22;
                                                         }
                                                         this.§ y§ = false;
                                                         if(_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         §§goto(addr37);
                                                      }
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr181);
                                             §§goto(addr190);
                                          }
                                          addr94:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§4!9§);
                                          }
                                          addr107:
                                       }
                                       while(!(_loc2_ && param1))
                                       {
                                          §§goto(addr127);
                                          §§goto(addr94);
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr107);
                                       §§goto(addr80);
                                    }
                                 }
                                 return;
                                 addr134:
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      protected function §@!h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§<!3§ = § !g§.§;!'§.§@"8§;
         var _loc2_:Vector.<String> = _loc1_.§+!Q§.getTutorialNamesForMapping(§[1§.§'!9§);
         if(_loc4_)
         {
            _loc1_.§#!s§(_loc2_,true,true,true,false,null,true,false);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8!A§.container.mClip.addChild(this.§!"&§);
            loop0:
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  §7!r§.§[!1§.removeEventListener(§=!<§.§9E§,this.§4!9§);
                  while(!_loc2_)
                  {
                     this.§;!q§.§6[§();
                     if(_loc1_ || this)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§ y§ = false;
            §§goto(addr166);
         }
      }
      
      private function §#!k§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_)
         {
            §§push(this.§^#§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(this.§!!=§ > §8;§)
                  {
                     while(true)
                     {
                        this.§^#§ = true;
                        while(true)
                        {
                           _loc1_ = Math.round(1000 / this.§!!=§ * this.§=+§);
                           addr98:
                           while(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr114:
               }
               §§goto(addr22);
            }
            addr113:
         }
         while(true)
         {
            §§push(§^!e§.§use§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  §="6§.§^!U§(§%Y§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr22);
                     }
                     else
                     {
                        addr67:
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              §="6§.§^!U§(§%Y§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
                              addr78:
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr22);
                              }
                           }
                           else
                           {
                              §§goto(addr114);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr78);
               }
               §§goto(addr67);
            }
            else
            {
               §§goto(addr113);
            }
            return;
         }
      }
      
      private function §4!9§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§7!r§.§[!1§.§2"2§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() <= §<@§)
               {
                  addr41:
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§goto(addr44);
                  }
                  else
                  {
                     addr50:
                     §§push(§§pop() + "+");
                  }
                  §§goto(addr52);
               }
               else
               {
                  §§push(§<@§);
               }
               §§goto(addr50);
            }
            addr44:
            §§push(§§pop().toString());
            if(!_loc5_)
            {
               addr52:
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §8!A§.setText(_loc3_,"TextField_PowerupCounter");
            }
            return;
         }
         §§goto(addr41);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         if(_loc7_ || param3)
         {
            super.onUIInteraction(param1,param2,param3);
            while(true)
            {
               if(param1 == 1)
               {
                  if(_loc8_)
                  {
                     break;
                  }
                  continue;
               }
               addr351:
               §§push(param2);
               loop1:
               while(true)
               {
                  var _loc6_:* = §§pop();
                  if(_loc7_)
                  {
                     if("PAUSE" === _loc6_)
                     {
                        if(_loc7_)
                        {
                           addr450:
                           §§push(0);
                           if(_loc8_)
                           {
                              addr467:
                           }
                        }
                        else
                        {
                           addr501:
                           §§push(4);
                           if(!_loc7_)
                           {
                              addr518:
                           }
                        }
                     }
                     else if("RESTART_LEVEL" === _loc6_)
                     {
                        if(_loc7_)
                        {
                           §§push(1);
                           if(!(_loc8_ && this))
                           {
                              §§goto(addr467);
                           }
                        }
                        else
                        {
                           §§goto(addr501);
                        }
                     }
                     else
                     {
                        if("POWERUP_USE" === _loc6_)
                        {
                           if(_loc7_ || param2)
                           {
                              §§push(2);
                              if(!_loc8_)
                              {
                                 §§goto(addr545);
                              }
                              addr540:
                              addr545:
                              loop2:
                              while(true)
                              {
                                 loop24:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr356:
                                       §§push((§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§?7§(§6u§.currentLevelNumericName));
                                       if(_loc7_ || param2)
                                       {
                                          §§push(§§pop());
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       _loc4_ = §§pop();
                                       § !g§.§;!'§.§>";§.openPopup(new §=!v§(_loc4_));
                                       if(_loc7_ || param3)
                                       {
                                          break loop2;
                                       }
                                       break loop2;
                                       addr374:
                                    case 1:
                                       this.§+!§();
                                       if(_loc7_ || this)
                                       {
                                          break loop2;
                                       }
                                       break loop2;
                                    case 2:
                                       §§push(§7!r§.§[!1§.§2"2§());
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc8_)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop());
                                          if(_loc7_ || param1)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             addr316:
                                             §§push(0);
                                          }
                                          §§push(§§pop() > §§pop());
                                          loop20:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr321:
                                                      while(true)
                                                      {
                                                         §§push(this.§>!J§);
                                                         addr282:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                   }
                                                   addr320:
                                                }
                                                while(true)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         break loop24;
                                                      }
                                                      §§push(this.§=-§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc7_ || param3)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(_loc8_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=-§);
                                                                        addr205:
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(§3!d§.§+T§);
                                                                           addr207:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop().hasEventListener(§§pop())));
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 if(_loc8_ && param3)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr261);
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr261:
                                                                     addr264:
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=-§);
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(§3!d§.§+T§);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§pop().removeEventListener(§§pop(),this.§1" §);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§=-§ = new §9!d§();
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                §§push(§ !g§.§;!'§);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      (§§pop() as §`Y§).§>";§.openPopup(this.§=-§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            §§push(this.§=-§);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               §§push(§3!d§.§+T§);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§pop().addEventListener(§§pop(),this.§1" §);
                                                                                                                  addr121:
                                                                                                                  break loop2;
                                                                                                                  addr151:
                                                                                                               }
                                                                                                               §§goto(addr207);
                                                                                                            }
                                                                                                            §§goto(addr205);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr278:
                                                                                                         }
                                                                                                         §§goto(addr121);
                                                                                                      }
                                                                                                      addr170:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr321);
                                                                                          }
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                    continue;
                                                                                    addr178:
                                                                                 }
                                                                                 §§goto(addr264);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr227:
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                      }
                                                   }
                                                   break loop24;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr316);
                                    case 3:
                                       this.§4y§ = §`R§;
                                       this.§,"!§ = §'X§;
                                       addr113:
                                       if(_loc7_ || param1)
                                       {
                                          break loop2;
                                       }
                                       break;
                                       break;
                                       addr127:
                                    case 4:
                                       §§push(this);
                                       §§push(§`R§);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§4y§ = §§pop();
                                       if(_loc7_)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             this.§,"!§ = §'X§;
                                             addr55:
                                             break loop2;
                                             addr84:
                                          }
                                          else
                                          {
                                             §§goto(addr127);
                                          }
                                       }
                                       break loop2;
                                    case 5:
                                       this.§4y§ = 0;
                                       addr61:
                                       if(_loc7_ || param3)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break loop2;
                                                }
                                                this.§"!8§();
                                                addr288:
                                             }
                                             else
                                             {
                                                §§goto(addr227);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §§goto(addr113);
                                       }
                                    case 6:
                                       this.§4y§ = 0;
                                       if(!_loc8_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                if(_loc7_ || this)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr170);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr84);
                                             }
                                             §§goto(addr55);
                                          }
                                          else
                                          {
                                             §§goto(addr61);
                                          }
                                       }
                                 }
                                 this.§ y§ = true;
                                 §§goto(addr288);
                              }
                              return;
                           }
                        }
                        else if("ZOOM_IN" === _loc6_)
                        {
                           if(_loc7_ || param1)
                           {
                              §§push(3);
                              if(_loc8_)
                              {
                              }
                           }
                           else
                           {
                              addr515:
                              §§push(5);
                              if(_loc7_)
                              {
                                 §§goto(addr518);
                              }
                           }
                        }
                        else if("ZOOM_OUT" === _loc6_)
                        {
                           if(_loc7_)
                           {
                              §§goto(addr501);
                           }
                           else
                           {
                              §§goto(addr515);
                           }
                        }
                        else
                        {
                           if("ZOOM_IN_RELEASE" === _loc6_)
                           {
                              if(!(_loc8_ && param2))
                              {
                                 §§goto(addr515);
                              }
                           }
                           else if("ZOOM_OUT_RELEASE" !== _loc6_)
                           {
                              §§goto(addr545);
                              §§push(7);
                           }
                           §§goto(addr545);
                        }
                        §§goto(addr545);
                        if(_loc7_ || this)
                        {
                           §§goto(addr540);
                        }
                     }
                     §§goto(addr545);
                  }
                  §§goto(addr450);
               }
            }
            §!K§.changeGameState(§]o§.§&7§);
         }
         §§goto(addr404);
      }
      
      private function §+!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§ y§ = false;
            loop0:
            while(true)
            {
               §?!#§.§90§();
               while(true)
               {
                  §8!^§(§?!#§.STATE_NAME);
                  while(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                     this.§;!q§.§1!N§();
                     if(!_loc1_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private function §1" §(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=-§.close();
         }
         while(true)
         {
            this.§9!N§ = new §-"E§();
            while(!(_loc3_ && _loc2_))
            {
               (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§9!N§,false,false,true,true);
               do
               {
                  this.§9!N§.addEventListener(PopupClosedEvent.§`T§,this.§6""§);
               }
               while(_loc3_);
               
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §"!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§7!r§.§[!1§);
            while(true)
            {
               §§push(§=!<§.§3!7§);
               addr89:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§6"G§);
               }
            }
            addr87:
         }
         loop2:
         while(true)
         {
            §§push(§7!r§.§[!1§);
            while(true)
            {
               §§push(§=!<§.§7k§);
               if(_loc1_)
               {
                  break;
               }
               §§pop().addEventListener(§§pop(),this.§^f§);
               while(true)
               {
                  §§push(§7!r§.§[!1§);
                  if(_loc1_)
                  {
                     break;
                  }
                  if(_loc2_)
                  {
                     §§pop().§="5§();
                     while(!_loc1_)
                     {
                        this.§%!^§(false);
                        if(_loc2_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     continue;
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr89);
         }
      }
      
      private function §="5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ y§)
            {
               if(!_loc2_)
               {
                  (§9q§.§>!L§.slingshot as §"!Q§).§ "C§();
               }
               while(true)
               {
                  this.§@!h§();
                  addr45:
                  while(true)
                  {
                  }
               }
               addr67:
            }
            while(true)
            {
               this.§ y§ = false;
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr45);
      }
      
      private function §6""§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ y§ = true;
            while(true)
            {
               this.§"!8§();
               while(_loc2_ || _loc3_)
               {
                  this.§9!N§.removeEventListener(PopupClosedEvent.§`T§,this.§6""§);
                  if(_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §9!6§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:HighscoreSidebar = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§;
         if(_loc2_)
         {
            _loc1_.§^!d§ = §6u§.currentLevel;
         }
         do
         {
            _loc1_.changeState(HighscoreSidebar.§>!@§);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §["1§());
         }
         do
         {
            this.§;!q§.levelCompleted(this.§5f§());
            do
            {
               §="6§.§^!U§(§%Y§.§49§,§6u§.currentLevel,this.§@%§.getScore(10));
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      override protected function getGameLogicController(param1:§^g§) : §]o§
      {
         return new §!V§(param1,§6u§);
      }
      
      private function §5f§() : int
      {
         var _loc7_:Boolean = true;
         return 1;
      }
      
      private function §%!^§(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@_§ = §8!A§.getItemByName("Button_PowerUp") as §@_§;
         if(!(_loc4_ && this))
         {
            if(!param1)
            {
               _loc2_.setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr69:
                     _loc2_.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr73:
                  }
                  else
                  {
                     addr66:
                  }
                  return;
               }
               §§goto(addr73);
            }
            §§goto(addr69);
         }
         §§goto(addr66);
      }
      
      private function §#=§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§!!=§);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!=§ = §§pop();
            if(_loc4_)
            {
               addr43:
               if(this.§!!=§ > 0)
               {
                  if(_loc4_ || this)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§=+§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§=+§ = _loc3_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §4!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§!!=§ = §5I§;
         }
         do
         {
            this.§=+§ = 0;
         }
         while(!_loc2_);
         
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.update(param1);
            while(true)
            {
               §§push(this.§=!1§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(§9q§.isPaused);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                    }
                                    addr253:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§=!1§ = false;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §<!O§.§'N§();
                                          loop8:
                                          while(true)
                                          {
                                             this.§3"4§.soundManager.playSound("level_start_military");
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§9q§.§>!L§);
                                                while(true)
                                                {
                                                   §§pop().background.playAmbientSound();
                                                   addr228:
                                                   while(!_loc2_)
                                                   {
                                                   }
                                                   continue loop7;
                                                   addr190:
                                                   §§push(§9q§.§>!L§);
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().objects.isPigsAlive());
                                                   loop18:
                                                   for(; !(_loc2_ && _loc3_); if(_loc3_ || param1)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop6;
                                                            }
                                                            addr95:
                                                            while(true)
                                                            {
                                                               §§goto(addr96);
                                                               continue loop1;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop2;
                                                   })
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop9;
                                                      }
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(nextState.length > 0);
                                                         if(_loc3_ || this)
                                                         {
                                                            continue loop18;
                                                         }
                                                         continue loop6;
                                                         addr181:
                                                         while(true)
                                                         {
                                                            continue loop21;
                                                            loop24:
                                                            for(; _loc3_ || param1; §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(this.§-! §());
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               addr96:
                                                               while(!§§pop())
                                                               {
                                                                  if(nextState == §8!H§.STATE_NAME)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc2_ && param1)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(this.§;!q§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§pop().§1!N§();
                                                                                 addr61:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr65:
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr20);
                                                                                       }
                                                                                       addr222:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§9q§.isPaused);
                                                                                          break loop18;
                                                                                          §§goto(addr65);
                                                                                       }
                                                                                       addr222:
                                                                                    }
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr190);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§^!J§(param1);
                                                                                             continue loop17;
                                                                                          }
                                                                                          addr194:
                                                                                       }
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§goto(addr20);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr99:
                                                                                 §§pop().§1!N§();
                                                                              }
                                                                              §§goto(addr20);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr228);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §3!m§.§[!1§.update(param1);
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     §§goto(addr61);
                                                                  }
                                                                  addr20:
                                                                  return;
                                                               }
                                                               §§goto(addr99);
                                                               §§push(this.§;!q§);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr199);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§=!H§();
                                                            §§goto(addr194);
                                                         }
                                                         addr191:
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   addr161:
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§#=§(param1);
                                       §§goto(addr222);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr253);
                     }
                  }
               }
            }
         }
         §§goto(addr199);
      }
      
      private function §=!H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = §!K§.getScore(10);
         if(!_loc4_)
         {
            §8!A§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         var _loc2_:int = (§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(§6u§.currentLevel);
         if(_loc3_)
         {
            §8!A§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§-! §();
      }
      
      protected function §-! §() : Boolean
      {
         return this.§;!q§.§0"#§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §1!i§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §'u§.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.updateLocalization();
         }
         do
         {
            §&$§.§[!1§.updateTextFields(§8!A§.container,"StatePlay");
         }
         while(_loc2_);
         
      }
      
      private function §^!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4y§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr19:
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§,"!§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§,"!§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function get §@%§() : §]o§
      {
         return §!K§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            addr64:
            addr164:
            while(!§`Y§.§1!]§)
            {
               continue loop0;
            }
            var _loc2_:* = param1.keyCode;
            if(_loc3_ || _loc2_)
            {
               if(Keyboard.R === _loc2_)
               {
                  addr199:
                  §§push(0);
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               addr218:
               switch(§§pop())
               {
                  case 0:
                     addr170:
                     addr169:
                     addr168:
                     if(!§ !g§.§;!'§.§>";§.§^",§())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr178:
                           this.§+!§();
                           if(!_loc3_)
                           {
                           }
                           break;
                        }
                     }
                     addr182:
               }
               §9q§.§&!$§.keyDown(param1);
               addr225:
               return;
            }
            §§goto(addr199);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.keyUp(param1);
         }
         do
         {
            §9q§.§&!$§.keyUp(param1);
         }
         while(!_loc3_);
         
      }
      
      private function §6"G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§="5§();
            while(true)
            {
               §§push(§7!r§.§[!1§);
               addr112:
               loop1:
               while(true)
               {
                  §§push(§=!<§.§3!7§);
                  addr114:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6"G§);
                     continue loop1;
                  }
               }
               addr71:
               if(_loc2_ && param1)
               {
                  continue;
               }
               addr78:
               §§push(§ !g§.§;!'§);
               if(_loc3_)
               {
                  §§push((§§pop() as §`Y§).§&,§);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().§<U§(§§pop());
                        if(_loc2_)
                        {
                           while(_loc3_)
                           {
                              §§goto(addr71);
                           }
                           while(!_loc2_)
                           {
                              §§push(§ !g§.§;!'§);
                              while(true)
                              {
                                 §§push((§§pop() as §`Y§).§&,§);
                                 addr67:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr68:
                                    while(true)
                                    {
                                       §§pop().§""8§(§§pop());
                                       §§goto(addr69);
                                    }
                                 }
                                 §§goto(addr78);
                              }
                           }
                           addr69:
                           while(true)
                           {
                              §§push(§7!r§.§[!1§);
                              if(!_loc2_)
                              {
                                 §§push(§=!<§.§7k§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§^f§);
                                    §§goto(addr96);
                                 }
                              }
                              else
                              {
                                 §§goto(addr112);
                              }
                              §§goto(addr114);
                           }
                           addr96:
                           addr117:
                        }
                        return;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr67);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr117);
      }
      
      private function §^f§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§7!r§.§[!1§);
            loop0:
            while(true)
            {
               §§push(§=!<§.§3!7§);
               addr115:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§6"G§);
                  continue loop0;
               }
            }
            addr113:
         }
         loop2:
         while(true)
         {
            §§push(§7!r§.§[!1§);
            if(!(_loc3_ && this))
            {
               §§push(§=!<§.§7k§);
               if(!_loc3_)
               {
                  §§pop().removeEventListener(§§pop(),this.§^f§);
                  while(true)
                  {
                     §§push(§ !g§.§;!'§);
                     loop4:
                     while(true)
                     {
                        §§push((§§pop() as §`Y§).§&,§);
                        addr78:
                        while(true)
                        {
                           §§push(true);
                           addr79:
                           while(true)
                           {
                              §§pop().§""8§(§§pop());
                              addr80:
                              while(_loc2_)
                              {
                                 continue loop4;
                              }
                              continue loop2;
                           }
                        }
                     }
                     if(!(_loc3_ && param1))
                     {
                        return;
                     }
                  }
               }
            }
            else
            {
               §§goto(addr113);
            }
            §§goto(addr115);
         }
      }
      
      private function §-t§(param1:Event) : void
      {
      }
   }
}
