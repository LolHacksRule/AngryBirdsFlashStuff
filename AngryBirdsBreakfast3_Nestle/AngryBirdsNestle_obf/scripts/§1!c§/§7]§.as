package §1!c§
{
   import §!!!§.§6!l§;
   import §#!`§.;
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §'!3§.§,!S§;
   import §'!3§.§8f§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§0!<§;
   import §4!i§.§@"#§;
   import §4!i§.§^"#§;
   import §4[§.§=!v§;
   import §;g§.§'c§;
   import §<S§.HighscoreSidebar;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import §^"!§.§;m§;
   import com.angrybirds.utils.§4",§;
   import com.angrybirds.utils.§8!+§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §7]§ extends §7t§
   {
      
      private static const §""&§:Number = 50;
      
      private static const §>!L§:Number = 0.05;
      
      private static const §[!@§:int = 99;
      
      public static const §8"%§:String = "StatePlay";
      
      private static const §=§:Number = -10000.0;
      
      private static const §]f§:Number = 15000.0;
      
      private static const §0s§:int = 8;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §""&§ = 50;
            while(true)
            {
               §>!L§ = 0.05;
               addr66:
               if(!(_loc2_ && _loc2_))
               {
                  §]f§ = 15 * 1000;
                  loop5:
                  for(; !_loc2_; §0s§ = 8,if(_loc2_)
                  {
                     continue;
                  },§§goto(addr29))
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr98:
                     while(true)
                     {
                        §[!@§ = 99;
                        addr93:
                        while(true)
                        {
                           §8"%§ = "StatePlay";
                           do
                           {
                              §=§ = -10 * 1000;
                              break loop5;
                           }
                           while(_loc2_ && §7]§);
                           
                           return;
                        }
                     }
                  }
                  while(true)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr66);
                     }
                     §§goto(addr93);
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      private var §!d§:Boolean = false;
      
      private var §0!f§:Number = -10000.0;
      
      private var §'5§:int = 0;
      
      private var §5N§:Number = 0;
      
      private var §?!H§:Number = 50;
      
      private var §4"#§:§=!v§;
      
      private var §@!]§:§;!=§;
      
      protected var §@T§:§?>§ = null;
      
      private var §+T§:Boolean;
      
      private var §6!O§:Boolean;
      
      private var §1"6§:Boolean;
      
      private var §,`§:int;
      
      private var §#"0§:Timer;
      
      public function §7]§(param1:§0![§, param2:§+f§, param3:Boolean, param4:§4O§, param5:String = "StatePlay")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param5);
            do
            {
               this.§@!]§ = param4 as §;!=§;
            }
            while(_loc6_ && param1);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@T§ = new §?>§(0,0,0,1);
            loop0:
            while(true)
            {
               §^!T§ = new §9%§(this);
               loop1:
               while(true)
               {
                  §^!T§.init(this.§'!,§());
                  loop2:
                  while(true)
                  {
                     §^!T§.container.mClip.addChild(this.§@T§);
                     loop3:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           this.§4"#§ = new §=!v§(this);
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.View_LevelPlay[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
            while(true)
            {
               this.§+T§ = false;
               while(!_loc2_)
               {
                  §0!<§.§1x§(§^"#§.§61§,§4a§.currentLevel);
                  loop3:
                  while(_loc1_)
                  {
                     (§ !4§.§%"7§ as AngryBirdsCustom).§%R§.§1x§(§8!+§.§;Z§);
                     while(true)
                     {
                        if(_loc1_)
                        {
                           addr51:
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        this.§6!D§();
                        break loop3;
                        §§goto(addr51);
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function §6!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§@T§);
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
                        while(true)
                        {
                           §§push(this.§+T§);
                           if(_loc1_)
                           {
                              if(!(_loc1_ || this))
                              {
                                 continue loop2;
                              }
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§@T§);
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().mouseEnabled = true;
                                       while(true)
                                       {
                                          this.§+T§ = true;
                                          loop7:
                                          for(; _loc1_ || this; while(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr72);
                                             }
                                          })
                                          {
                                             §§push(this.§@T§);
                                             while(true)
                                             {
                                                §§push(1);
                                                addr104:
                                                addr72:
                                                while(true)
                                                {
                                                   §§pop().§'7§(§§pop());
                                                   continue loop7;
                                                }
                                                loop14:
                                                for(; _loc1_ || _loc1_; while(true)
                                                {
                                                   §§push(this.§@T§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop14;
                                                },continue loop5)
                                                {
                                                   §§push(0);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§pop().§!!p§(§§pop(),0.25);
                                                      continue;
                                                   }
                                                   §§goto(addr104);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr24);
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr147);
               }
            }
         }
         §§goto(addr114);
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@T§);
            while(true)
            {
               §§pop().mouseEnabled = false;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            §§push(this.§@T§);
            if(!_loc3_)
            {
               §§pop().removeEventListener(ColorFadeLayerEvent.§#!9§,this.onFadeComplete);
               do
               {
                  §^!T§.container.mClip.removeChild(this.§@T§);
               }
               while(_loc3_);
               
               if(_loc2_)
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
         if(!(_loc2_ && param1))
         {
            super.activate(param1);
            while(true)
            {
               §^!T§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
               loop9:
               for(; _loc3_ || this; if(!(_loc3_ || param1))
               {
                  continue;
               },if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr56);
               },§§goto(addr138))
               {
                  this.§'!$§();
                  loop10:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§&!z§();
                        loop11:
                        while(true)
                        {
                           this.§1"6§ = false;
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 addr75:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop11;
                           }
                           addr150:
                           addr174:
                           while(!_loc2_)
                           {
                              this.§8k§();
                              while(true)
                              {
                                 §§push(§ !4§.§%"7§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push((§§pop() as AngryBirdsCustom).§<=§);
                                    addr136:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr137:
                                       while(true)
                                       {
                                          §§pop().§2!J§(§§pop());
                                          continue loop5;
                                       }
                                    }
                                 }
                                 addr56:
                                 if(!(_loc2_ && param1))
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr75);
                           }
                           while(true)
                           {
                              this.§3!H§();
                              break loop10;
                           }
                        }
                     }
                     break;
                     if(_loc3_ || this)
                     {
                        continue loop9;
                     }
                  }
                  while(true)
                  {
                     §@"#§.§,2§.updateTextFields(§^!T§.container,"StatePlay");
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      protected function §&!z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§+!7§ = § !4§.§%"7§.§=!e§;
         var _loc2_:Vector.<String> = _loc1_.§+!k§.getTutorialNamesForMapping(§;m§.§`X§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,false,null,true,true);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!T§.container.mClip.addChild(this.§@T§);
            while(true)
            {
               super.deActivate();
               loop1:
               while(true)
               {
                  §§push(this.§4"#§);
                  while(true)
                  {
                     §§pop().§1h§();
                     loop3:
                     while(true)
                     {
                        this.§!!N§();
                        while(true)
                        {
                           this.§3!H§();
                           addr151:
                           while(_loc2_)
                           {
                              §§push(this.§4"#§);
                              loop6:
                              while(true)
                              {
                                 §§push(§4",§.§,l§);
                                 addr142:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.§case §);
                                    addr145:
                                    while(_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     addr122:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§4",§.§#^§);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.§[!G§);
                        loop10:
                        while(true)
                        {
                           if(this.§#"0§)
                           {
                              continue;
                           }
                           loop15:
                           while(true)
                           {
                              (§ !4§.§%"7§ as AngryBirdsCustom).§%R§.§9"$§();
                              if(!(_loc1_ && this))
                              {
                                 addr38:
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    this.§#"0§.removeEventListener(TimerEvent.TIMER,this.§+!P§);
                                    addr75:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       this.§#"0§ = null;
                                    }
                                    continue loop10;
                                    §§goto(addr38);
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc1_ && this)
                                    {
                                       break;
                                    }
                                    continue loop15;
                                 }
                                 §§goto(addr75);
                                 continue loop15;
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                     §§goto(addr142);
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§4"#§);
            if(_loc2_ || this)
            {
               §§goto(addr122);
            }
            §§goto(addr140);
         }
      }
      
      private function §!!N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§!d§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(this.§0!f§ > §]f§)
                  {
                     while(true)
                     {
                        this.§!d§ = true;
                        addr136:
                        addr88:
                        while(true)
                        {
                           _loc1_ = Math.round(1000 / this.§0!f§ * this.§'5§);
                           continue loop0;
                        }
                        if(_loc3_ || _loc1_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr27:
               return;
            }
         }
         §§goto(addr133);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = null;
         if(_loc7_)
         {
            super.onUIInteraction(param1,param2,param3);
            loop0:
            while(param1 == 1)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(§@!S§.§2A§);
                  if(_loc7_ || this)
                  {
                     §§push(§§pop().slingshot);
                     if(!_loc6_)
                     {
                        if(!§§pop().mDragging)
                        {
                           while(true)
                           {
                              §§push(§@!S§.§2A§);
                              if(!_loc6_)
                              {
                                 §§pop().camera.stopDragging();
                                 if(_loc7_ || param2)
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       addr171:
                                       break loop0;
                                    }
                                    loop2:
                                    while(!(_loc7_ || param3))
                                    {
                                       while(true)
                                       {
                                          §4!"§.changeGameState(§3!o§.§#!J§);
                                          continue loop2;
                                       }
                                    }
                                    if(_loc7_)
                                    {
                                       return;
                                    }
                                 }
                                 if(_loc6_)
                                 {
                                    §§push(§@!S§.§2A§);
                                 }
                                 else
                                 {
                                    addr217:
                                 }
                                 continue;
                                 continue loop0;
                                 break;
                              }
                              break;
                           }
                           addr219:
                           §§push(§§pop().slingshot);
                        }
                        §§goto(addr217);
                     }
                     §§pop().shoot();
                     §§goto(addr221);
                  }
                  §§goto(addr219);
               }
               §§goto(addr217);
            }
            §§push(param2);
            loop4:
            while(true)
            {
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  if("PAUSE" === _loc5_)
                  {
                     if(_loc7_ || param3)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           addr326:
                           loop7:
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(this.§[o§());
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    § !4§.§%"7§.§+!J§.openPopup(new §8f§(_loc4_));
                                    break loop7;
                                 }
                                 break;
                              case 1:
                                 this.§;" §();
                                 if(_loc7_ || param3)
                                 {
                                    break loop4;
                                 }
                                 break loop4;
                              case 2:
                                 this.§5N§ = §>!L§;
                                 addr91:
                                 if(!(_loc7_ || param3))
                                 {
                                    break;
                                 }
                                 this.§?!H§ = 0;
                                 break loop4;
                                 addr84:
                                 break;
                              case 3:
                                 §§push(this);
                                 §§push(§>!L§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§5N§ = §§pop();
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       this.§?!H§ = 0;
                                       if(_loc7_ || param2)
                                       {
                                          addr40:
                                          break loop4;
                                       }
                                       break loop4;
                                    }
                                    §§goto(addr84);
                                 }
                                 break loop4;
                              case 4:
                                 this.§5N§ = 0;
                                 addr46:
                                 if(_loc7_)
                                 {
                                    break loop4;
                                 }
                                 §§goto(addr91);
                                 break;
                              case 5:
                                 this.§5N§ = 0;
                                 if(_loc7_ || param3)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(true)
                                       {
                                          break loop4;
                                       }
                                       §§goto(addr40);
                                    }
                                    else
                                    {
                                       §§goto(addr46);
                                    }
                                 }
                           }
                           continue loop5;
                        }
                     }
                     else
                     {
                        addr282:
                        §§push(3);
                        if(_loc7_ || param3)
                        {
                           addr290:
                        }
                     }
                     §§goto(addr326);
                  }
                  else if("RESTART_LEVEL" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr290);
                        }
                     }
                     else
                     {
                        addr268:
                        §§push(2);
                        if(_loc6_)
                        {
                           §§goto(addr321);
                        }
                     }
                  }
                  else
                  {
                     if("ZOOM_IN" === _loc5_)
                     {
                        if(_loc7_ || this)
                        {
                           §§goto(addr268);
                        }
                     }
                     else if("ZOOM_OUT" === _loc5_)
                     {
                        if(!(_loc6_ && param3))
                        {
                           §§goto(addr282);
                        }
                        else
                        {
                           addr296:
                           §§push(4);
                           if(_loc7_ || param2)
                           {
                           }
                           §§goto(addr326);
                        }
                     }
                     else
                     {
                        if("ZOOM_IN_RELEASE" === _loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr296);
                           }
                        }
                        else if("ZOOM_OUT_RELEASE" !== _loc5_)
                        {
                           §§goto(addr326);
                           §§push(6);
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr326);
                     if(_loc7_)
                     {
                        §§goto(addr321);
                     }
                  }
                  §§goto(addr326);
               }
               §§goto(addr268);
            }
            return;
         }
         §§goto(addr171);
      }
      
      private function §;" §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'8§.§@!!§();
            while(true)
            {
               §7"6§(§'8§.§8"%§);
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     this.§4"#§.§`+§();
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §'!$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:HighscoreSidebar = null;
         var _loc2_:* = null;
         _loc1_ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§;
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_.§]!M§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc1_.§]!M§ = §4a§.currentLevel;
            do
            {
               §§push(_loc1_);
               §§push(_loc1_.§;!Z§);
               §§push(_loc2_ == _loc1_.§]!M§);
               if(_loc3_ || _loc2_)
               {
                  §§push(!§§pop());
               }
               §§pop().§@w§(§§pop(),§§pop());
            }
            while(_loc4_ && this);
            
         }
         while(_loc4_);
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§1"6§)
            {
               while(true)
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§+!J§.openPopup(new §,!S§());
                  while(true)
                  {
                     §§push(this.§4"#§);
                     loop2:
                     while(true)
                     {
                        §§pop().levelCompleted();
                        addr116:
                        while(true)
                        {
                           §§push(this.§4"#§);
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr44);
      }
      
      override protected function getGameLogicController(param1:§#=§) : §3!o§
      {
         return new §#6§(param1,§4a§);
      }
      
      private function §]#§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§0!f§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§0!f§ = §§pop();
            if(_loc4_)
            {
               if(this.§0!f§ > 0)
               {
                  if(!(_loc5_ && this))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§'5§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || param1)
                     {
                        _loc2_.§'5§ = _loc3_;
                     }
                  }
               }
            }
         }
      }
      
      private function §3!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0!f§ = §=§;
         }
         do
         {
            this.§'5§ = 0;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.update(param1);
         }
         loop0:
         while(true)
         {
            §§push(this.§6!O§);
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
                        while(true)
                        {
                           §§pop();
                           addr314:
                           while(true)
                           {
                              §§push(§@!S§.isPaused);
                              addr290:
                              while(true)
                              {
                                 §§push(!§§pop());
                              }
                           }
                        }
                        addr313:
                     }
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 this.§6!O§ = false;
                                 loop10:
                                 while(true)
                                 {
                                    §>D§.§>!%§();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§@!S§.§2A§);
                                       while(true)
                                       {
                                          §§pop().background.§`"'§();
                                          addr280:
                                          while(_loc3_)
                                          {
                                          }
                                          continue loop11;
                                          loop34:
                                          for(; !(_loc2_ && _loc3_); §§push(§@!S§.§2A§),if(_loc2_)
                                          {
                                             continue;
                                          },§§push(§§pop().objects.isPigsAlive()),if(_loc3_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr48);
                                                   §§push(!§§pop());
                                                }
                                                else
                                                {
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr314);
                                             }
                                             §§goto(addr136);
                                          },§§goto(addr48))
                                          {
                                             §§push(§§pop().slingshot.birdsAvailable);
                                             loop35:
                                             for(; _loc3_; if(!(_loc3_ || this))
                                             {
                                                continue;
                                             },addr55:,if(_loc3_ || this)
                                             {
                                                §§goto(addr62);
                                             },while(_loc3_)
                                             {
                                                §§goto(addr201);
                                                §§goto(addr55);
                                             },§§goto(addr290),addr199:)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop36:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr80:
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
                                                                           addr96:
                                                                           if(!_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr314);
                                                                                 §§goto(addr136);
                                                                              }
                                                                              continue loop35;
                                                                              addr137:
                                                                           }
                                                                           addr98:
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr25);
                                                                              }
                                                                              addr203:
                                                                              loop39:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4"#§);
                                                                                 addr205:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§`+§();
                                                                                    addr206:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    continue loop39;
                                                                                 }
                                                                              }
                                                                              addr203:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr192:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr98);
                                                                              }
                                                                              addr192:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop34;
                                                                              §§goto(addr192);
                                                                           }
                                                                           addr108:
                                                                        }
                                                                        §§goto(addr206);
                                                                     }
                                                                     else
                                                                     {
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              addr171:
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(this.§4"#§);
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          §§pop().§`+§();
                                                                                          §§goto(addr192);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    §'c§.§,2§.update(param1);
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       addr246:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8k§();
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                                 addr263:
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr229:
                                                                           addr274:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr231:
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    §§push(this.§01§());
                                                                                    break loop35;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr249);
                                                                              continue loop29;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§@!S§.isPaused);
                                                                              addr260:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              continue loop8;
                                                                              §§goto(addr231);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§push(nextState.length > 0);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr213:
                                                                              while(_loc3_ || param1)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(_loc3_ || this)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr229);
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          continue loop36;
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr203);
                                                                                    }
                                                                                    else if(nextState == §@=§.§8"%§)
                                                                                    {
                                                                                       §§goto(addr164);
                                                                                    }
                                                                                    §§goto(addr98);
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        addr164:
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr96);
                                                               }
                                                               addr25:
                                                               return;
                                                            }
                                                            continue loop1;
                                                            addr76:
                                                         }
                                                         addr136:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr136:
                                                         §§goto(addr137);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr260);
                                             }
                                             while(_loc3_)
                                             {
                                                §§goto(addr199);
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr212);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              this.§]#§(param1);
                              §§goto(addr274);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §8k§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §4!"§.getScore(10);
         if(!_loc3_)
         {
            §^!T§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
         var _loc2_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.getScoreForLevel(§4a§.currentLevel);
         if(!(_loc3_ && _loc2_))
         {
            §^!T§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
         }
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§01§();
      }
      
      protected function §01§() : Boolean
      {
         return this.§4"#§.§3""§;
      }
      
      override public function getVictoryStateName() : String
      {
         return § x§.§8"%§;
      }
      
      override public function getLoserStateName() : String
      {
         return §;"2§.§8"%§;
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.updateLocalization();
         }
         do
         {
            §@"#§.§,2§.updateTextFields(§^!T§.container,"StatePlay");
         }
         while(_loc2_ && this);
         
      }
      
      private function §^!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§5N§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr24:
                  return;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§?!H§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§?!H§ = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function get §9c§() : §3!o§
      {
         return §4!"§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.keyDown(param1);
            if(_loc4_)
            {
               if(!AngryBirdsCustom.§?J§)
               {
                  var _loc2_:* = param1.keyCode;
                  if(!_loc3_)
                  {
                     if(Keyboard.K === _loc2_)
                     {
                        addr89:
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     if(_loc4_ || _loc3_)
                     {
                        loop0:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(§ !4§.§%"7§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().§+!J§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(§§pop().§8!5§());
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §@!S§.§2A§.§[!K§();
                                             if(_loc4_ || param1)
                                             {
                                                _loc2_ = param1.keyCode;
                                                addr113:
                                                if(!_loc3_)
                                                {
                                                   if(Keyboard.R === _loc2_)
                                                   {
                                                      addr143:
                                                      §§push(0);
                                                      if(_loc4_ || param1)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                   }
                                                   addr167:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         break loop0;
                                                      default:
                                                         §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr143);
                                                addr67:
                                                addr113:
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr67);
                                    }
                                    addr119:
                                    if(!§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§;" §();
                                          if(!(_loc3_ && param1))
                                          {
                                             addr131:
                                             §§goto(addr170);
                                          }
                                       }
                                       addr170:
                                       §@!S§.controller.keyDown(param1);
                                       § !4§.§%"7§;
                                       return;
                                    }
                                    §§goto(addr131);
                                 }
                                 addr118:
                                 §§goto(addr119);
                                 §§push(§§pop().§8!5§());
                              }
                              break;
                           default:
                              §§goto(addr113);
                        }
                        §§goto(addr118);
                        §§push(§§pop().§+!J§);
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr89);
                  addr32:
               }
               §§goto(addr113);
            }
         }
         §§goto(addr32);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.keyUp(param1);
         }
         do
         {
            §@!S§.controller.keyUp(param1);
         }
         while(!_loc2_);
         
      }
      
      private function §[o§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(!(_loc2_ && _loc1_))
         {
            if(§4a§.currentLevel.indexOf("1-") == 0)
            {
               if(_loc3_ || _loc2_)
               {
                  return §4a§.currentLevel.substr(2);
               }
               addr109:
            }
            if(§4a§.currentLevel.indexOf("2-") == 0)
            {
               §§push(int(int(§4a§.currentLevel.substr(2)) + 5));
               do
               {
                  _loc1_ = §§pop();
                  §§push(_loc1_);
               }
               while(_loc2_ && _loc2_);
               
               return §§pop() + "";
            }
            return §4a§.currentLevel;
         }
         §§goto(addr109);
      }
      
      private function §[!G§(param1:§4",§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§4"#§);
            loop0:
            while(true)
            {
               §§push(§4",§.§,l§);
               addr128:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§case §);
                  continue loop0;
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §+!P§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§4"#§);
            while(true)
            {
               §§pop().§1h§();
               loop1:
               while(true)
               {
                  §§push(this.§4"#§);
                  loop2:
                  while(true)
                  {
                     §§pop().levelCompleted();
                     addr109:
                     while(!(_loc2_ && _loc3_))
                     {
                        §§push(this.§4"#§);
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               addr74:
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§push(§4",§.§#^§);
               if(_loc3_)
               {
                  §§pop().addEventListener(§§pop(),this.§[!G§);
                  while(this.§#"0§)
                  {
                     if(!_loc2_)
                     {
                        this.§#"0§.removeEventListener(TimerEvent.TIMER,this.§+!P§);
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        §§goto(addr109);
                     }
                     while(true)
                     {
                        §§push(this.§4"#§);
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr74);
                        }
                        else
                        {
                           §§goto(addr92);
                        }
                     }
                     addr104:
                  }
                  return;
               }
               §§goto(addr101);
            }
         }
         §§goto(addr104);
      }
      
      private function §case §(param1:§4",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§4"#§);
            loop0:
            while(true)
            {
               §§push(§4",§.§#^§);
               addr113:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§[!G§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#"0§.stop();
            §§goto(addr42);
         }
      }
   }
}
