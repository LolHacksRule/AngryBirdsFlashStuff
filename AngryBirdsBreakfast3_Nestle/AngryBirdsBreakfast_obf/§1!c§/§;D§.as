package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§^!D§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import §<S§.HighscoreSidebar;
   import §[!Z§.§>D§;
   import §[+§.§+"'§;
   import com.angrybirds.utils.§1"1§;
   import com.angrybirds.utils.§@,§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §;D§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8"%§ = "LevelSelectionState";
         }
      }
      
      private var §=!;§:§1"1§;
      
      private var § !h§:§7!&§;
      
      private var §4M§:§,6§;
      
      private var §2^§:§^!D§;
      
      private var §2"6§:Vector.<§^!D§>;
      
      private var §#p§:Timer;
      
      private var §<g§:int;
      
      public function §;D§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super(param1,param4,param5,param2);
         }
      }
      
      protected function §'!,§() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = null;
         §§push((§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(§@"#§.§,2§.§0!x§()).brand);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(§+"'§.§[3§);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomNesquik[0]);
                        addr56:
                     }
                     else
                     {
                        addr102:
                        _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
                     }
                     §§goto(addr133);
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        addr80:
                        §§push(§+"'§.§&X§);
                        if(!_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc3_)
                              {
                                 _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomChocapic[0]);
                              }
                              else
                              {
                                 §§goto(addr102);
                              }
                              §§goto(addr133);
                           }
                           else
                           {
                              §§push(_loc2_);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr101);
                     }
                     addr101:
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr102);
                     }
                     else
                     {
                        _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustom[0]);
                     }
                     addr133:
                     return _loc1_;
                     §§push(§+"'§.§ !`§);
                  }
                  §§goto(addr102);
               }
               §§goto(addr101);
            }
            §§goto(addr80);
         }
         §§goto(addr56);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
            }
            addr73:
         }
         while(true)
         {
            §^!T§.init(this.§'!,§());
            for(; _loc2_; this.§2"6§ = new Vector.<§^!D§>(),if(_loc2_)
            {
               return;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.init();
            while(true)
            {
               super.activate(param1);
               loop1:
               while(true)
               {
                  §@!S§.§2A§.§`!V§(false);
                  loop2:
                  while(true)
                  {
                     §§push(§ !4§.§%"7§);
                     while(true)
                     {
                        §§pop().§+!J§.closeAllPopups();
                        addr259:
                        while(true)
                        {
                           §§push(§ !4§.§%"7§);
                           loop5:
                           while(true)
                           {
                              §§push((§§pop() as AngryBirdsCustom).§<=§);
                              addr251:
                              while(true)
                              {
                                 §§push(true);
                                 addr252:
                                 while(true)
                                 {
                                    §§pop().§9!z§(§§pop());
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        §§push((§§pop() as AngryBirdsCustom).§<=§);
                        if(!(_loc3_ && this))
                        {
                           §§push(true);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop().§;!I§(§§pop());
                              while(_loc2_)
                              {
                                 this.§0! §();
                                 while(_loc2_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr253);
                              }
                              continue loop1;
                              addr242:
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr251);
                     }
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr125);
            }
         }
         §§goto(addr66);
      }
      
      private function §3!N§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         if(!(_loc5_ && _loc2_))
         {
            this.§4M§ = §^!T§.container.getItemByName("Container_CodeInputBox") as §,6§;
            if(!_loc5_)
            {
               addr45:
               this.§4M§.setVisibility(true);
            }
            for each(_loc1_ in §2P§.§[!$§.§+[§())
            {
               if(_loc4_)
               {
                  this.§ +§();
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=!;§.removeEventListener(§@,§.§=h§,this.§<A§);
            loop0:
            while(true)
            {
               §§push(this.§ !h§);
               loop1:
               while(true)
               {
                  §§pop().setText("");
                  addr80:
                  while(_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §0! §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         var _loc1_:int = 1;
         loop0:
         while(_loc1_ <= HighscoreSidebar.§#!D§.length)
         {
            _loc2_ = §^!T§.getItemByName("Button_Level" + _loc1_).mClip;
            if(!_loc5_)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
               loop1:
               while(true)
               {
                  (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).setEnabled(true,true);
                  loop2:
                  while(true)
                  {
                     if(!§2P§.§0!a§(HighscoreSidebar.§#!D§[_loc1_ - 1]))
                     {
                        (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).mClip.useHandCursor = false;
                        loop16:
                        while(true)
                        {
                           (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).setEnabled(false,true);
                           loop12:
                           while(!_loc5_)
                           {
                              _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!p§[_loc1_ - 1];
                              loop13:
                              while(!(_loc5_ && _loc2_))
                              {
                                 _loc2_.MovieClip_Lock.visible = true;
                                 loop14:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr106:
                                             while(true)
                                             {
                                                _loc2_.MovieClip_Stars.visible = false;
                                                addr68:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop1;
                                                §§goto(addr106);
                                             }
                                             addr63:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).mClip.useHandCursor = true;
                                                break loop14;
                                             }
                                             addr224:
                                          }
                                       }
                                       break;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          _loc1_++;
                                          if(_loc4_)
                                          {
                                             if(!(_loc4_ || _loc1_))
                                             {
                                                continue loop14;
                                             }
                                             if(_loc5_ && _loc3_)
                                             {
                                                continue loop16;
                                             }
                                             addr54:
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr63);
                                             }
                                             else
                                             {
                                                while(_loc4_)
                                                {
                                                   _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
                                                   continue loop9;
                                                   §§goto(addr54);
                                                }
                                                while(true)
                                                {
                                                   _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!p§[_loc1_ - 1];
                                                   break loop13;
                                                }
                                                addr208:
                                                addr187:
                                             }
                                          }
                                          §§goto(addr68);
                                          addr89:
                                       }
                                       continue loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc2_.MovieClip_Lock.visible = false;
                                    addr214:
                                    while(true)
                                    {
                                       _loc2_.MovieClip_Stars.visible = true;
                                       §§goto(addr208);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§ !4§.§%"7§.§@D§.userProgress.§1]§(HighscoreSidebar.§#!D§[_loc1_ - 1]));
                                    if(!_loc5_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc3_ = §§pop();
                                    §§goto(addr187);
                                 }
                                 break;
                                 §§goto(addr117);
                              }
                              addr117:
                              §§goto(addr214);
                           }
                           continue loop2;
                        }
                        addr162:
                     }
                     §§goto(addr224);
                  }
               }
            }
            §§goto(addr162);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("C1_LEVEL_1" === _loc4_)
            {
               if(_loc6_ || param3)
               {
                  addr275:
                  §§push(0);
                  if(_loc5_ && param1)
                  {
                     addr376:
                  }
               }
               else
               {
                  addr396:
                  §§push(9);
                  if(_loc6_ || param1)
                  {
                     addr404:
                  }
               }
            }
            else
            {
               if("C1_LEVEL_2" === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(1);
                     if(!_loc5_)
                     {
                        §§goto(addr431);
                     }
                     else
                     {
                        §§goto(addr376);
                     }
                  }
               }
               else if("C1_LEVEL_3" === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(2);
                     if(_loc5_ && param2)
                     {
                        addr367:
                     }
                  }
                  else
                  {
                     addr341:
                     §§push(4);
                     if(_loc5_)
                     {
                        addr426:
                     }
                  }
               }
               else if("C1_LEVEL_4" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(3);
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr431);
                     }
                     else
                     {
                        §§goto(addr426);
                     }
                  }
                  else
                  {
                     addr373:
                     §§push(7);
                     if(_loc6_)
                     {
                        §§goto(addr376);
                     }
                     else
                     {
                        §§goto(addr404);
                     }
                  }
               }
               else if("C1_LEVEL_5" === _loc4_)
               {
                  if(_loc6_ || param3)
                  {
                     §§goto(addr341);
                  }
               }
               else if("C2_LEVEL_1" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§push(5);
                     if(!_loc5_)
                     {
                        §§goto(addr431);
                     }
                     else
                     {
                        §§goto(addr376);
                     }
                  }
               }
               else if("C2_LEVEL_2" === _loc4_)
               {
                  if(_loc6_ || param3)
                  {
                     §§push(6);
                     if(!_loc5_)
                     {
                        §§goto(addr367);
                     }
                     else
                     {
                        §§goto(addr404);
                     }
                  }
                  else
                  {
                     §§goto(addr396);
                  }
               }
               else if("C2_LEVEL_3" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr373);
                  }
                  else
                  {
                     addr387:
                     §§push(8);
                     if(_loc6_)
                     {
                        §§goto(addr431);
                     }
                     else
                     {
                        §§goto(addr426);
                     }
                  }
               }
               else if("C2_LEVEL_4" === _loc4_)
               {
                  if(!(_loc5_ && param3))
                  {
                     §§goto(addr387);
                  }
               }
               else if("C2_LEVEL_5" === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§goto(addr396);
                  }
               }
               else if("SUBMIT_CODE" !== _loc4_)
               {
                  addr431:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        this.§<&§("1-1");
                        §>D§.§9!q§("Menu_Confirm");
                        if(_loc6_)
                        {
                           break;
                        }
                        break;
                        addr252:
                     case 1:
                        this.§<&§("1-2");
                        §>D§.§9!q§("Menu_Confirm");
                        addr230:
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr252);
                        break;
                        addr239:
                     case 2:
                        this.§<&§("1-3");
                        addr213:
                        if(_loc6_)
                        {
                           §>D§.§9!q§("Menu_Confirm");
                           break;
                           addr206:
                        }
                        else
                        {
                           §§goto(addr239);
                        }
                        break;
                     case 3:
                        this.§<&§("1-4");
                        §>D§.§9!q§("Menu_Confirm");
                        addr194:
                        break;
                        addr194:
                        addr201:
                     case 4:
                        this.§<&§("1-5");
                        §>D§.§9!q§("Menu_Confirm");
                        addr182:
                        break;
                        addr182:
                        addr189:
                     case 5:
                        this.§<&§("2-1");
                        §>D§.§9!q§("Menu_Confirm");
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                        break;
                        addr177:
                     case 6:
                        this.§<&§("2-2");
                        §>D§.§9!q§("Menu_Confirm");
                        addr147:
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr213);
                        }
                        else
                        {
                           §§goto(addr194);
                        }
                        break;
                        addr158:
                     case 7:
                        this.§<&§("2-3");
                        addr135:
                        if(!(_loc5_ && this))
                        {
                           §>D§.§9!q§("Menu_Confirm");
                           addr119:
                           if(!(_loc5_ && this))
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr201);
                           }
                           else
                           {
                              §§goto(addr182);
                           }
                        }
                        else
                        {
                           §§goto(addr206);
                        }
                        break;
                     case 8:
                        this.§<&§("2-4");
                        loop0:
                        while(true)
                        {
                           if(_loc6_ || this)
                           {
                              §>D§.§9!q§("Menu_Confirm");
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    if(_loc6_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr230);
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                              }
                              addr89:
                           }
                           else
                           {
                              §§goto(addr189);
                           }
                        }
                        break;
                     case 9:
                        this.§<&§("2-5");
                        if(!_loc5_)
                        {
                           if(_loc6_ || param1)
                           {
                              if(_loc6_ || param3)
                              {
                                 §>D§.§9!q§("Menu_Confirm");
                                 addr59:
                                 if(_loc6_)
                                 {
                                    addr45:
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr135);
                              }
                              §§goto(addr119);
                           }
                           else
                           {
                              §§goto(addr89);
                           }
                        }
                        break;
                     case 10:
                        this.§0!h§();
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 §>D§.§9!q§("Menu_Confirm");
                                 if(!(_loc6_ || this))
                                 {
                                    break loop3;
                                 }
                                 continue;
                              }
                              §§goto(addr158);
                           }
                           else
                           {
                              §§goto(addr59);
                           }
                        }
                  }
                  return;
                  §§push(11);
               }
               §§goto(addr431);
               if(!(_loc5_ && param1))
               {
                  §§goto(addr426);
               }
            }
            §§goto(addr431);
         }
         §§goto(addr275);
      }
      
      private function §<&§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§2P§.§0!a§(param1))
            {
               if(_loc2_ || param1)
               {
                  §4a§.loadLevel(param1);
                  do
                  {
                     §7"6§(StateCutScene.§8"%§);
                  }
                  while(_loc3_ && param1);
                  
                  addr70:
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §0!h§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§7!&§ = this.§ !h§;
         §§push(_loc1_.getText());
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            this.§=!;§.§0!h§(_loc2_);
         }
      }
      
      private function §<A§(param1:§@,§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc6_ || param1)
         {
            if(§2P§.§[!$§)
            {
               §§goto(addr29);
            }
            §§goto(addr89);
         }
         addr29:
         var _loc3_:int = 0;
         for each(_loc2_ in §2P§.§[!$§.§+[§())
         {
            if(!(_loc5_ && _loc3_))
            {
               this.§ +§();
            }
         }
         if(!_loc5_)
         {
            addr89:
            this.§0! §();
         }
         do
         {
            this.§1N§();
         }
         while(!_loc6_);
         
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.updateLocalization();
            do
            {
               §@"#§.§,2§.updateTextFields(§^!T§.container,"StateEpisodeSelection");
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function § +§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§4M§.setVisibility(false);
         }
      }
      
      private function §@!F§(param1:TextEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.text == "\n");
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr76:
                     while(true)
                     {
                        §§push(param1.text == "\r");
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(true)
               {
                  if(!§§pop())
                  {
                     return;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        this.§0!h§();
                     }
                     addr54:
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop3;
                     }
                     §§goto(addr76);
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      private function §7!G§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               if(_loc2_)
               {
                  addr58:
                  this.§0!h§();
               }
               return;
            }
            return;
         }
         §§goto(addr58);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!D§ = null;
         if(_loc5_)
         {
            super.update(param1);
         }
         for each(_loc2_ in this.§2"6§)
         {
            if(!_loc6_)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      private function §1N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#p§ = new Timer(100);
         }
         loop0:
         while(true)
         {
            this.§<g§ = 0;
            while(true)
            {
               this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
               while(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     this.§#p§.start();
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §1!C§(param1:MovieClip, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§2^§ = new §^!D§(AngryBirdsCustom.§1"&§,AngryBirdsCustom.§`!,§,param1.x,param1.y,§^!D§.§2k§,param2);
            while(true)
            {
               §^!T§.addChild(this.§2^§);
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            this.§2"6§.push(this.§2^§);
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §8!Z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^!D§ = null;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§#p§)
            {
               if(!_loc5_)
               {
                  this.§#p§.stop();
                  if(_loc4_)
                  {
                     addr36:
                     this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
                  }
               }
            }
            var _loc2_:int = 0;
            for each(_loc1_ in this.§2"6§)
            {
               if(!_loc5_)
               {
                  if(§^!T§.contains(_loc1_))
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr74:
                     §^!T§.removeChild(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.§,!#§();
                  continue;
               }
               §§goto(addr74);
            }
            if(!(_loc5_ && _loc2_))
            {
               this.§2"6§ = new Vector.<§^!D§>();
            }
            return;
         }
         §§goto(addr36);
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:MovieClip = null;
         if(_loc5_ || this)
         {
            if(this.§<g§ == 0)
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr37);
               }
            }
            else
            {
               this.§#p§.stop();
            }
            §§goto(addr74);
         }
         addr37:
         _loc2_ = this.§4M§.mClip;
         if(_loc5_ || _loc3_)
         {
            this.§1!C§(_loc2_,40);
            if(_loc5_ || _loc2_)
            {
               addr74:
               var _loc3_:*;
               §§push((_loc3_ = this).§<g§);
               if(!_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc5_ || _loc3_)
               {
                  _loc3_.§<g§ = _loc4_;
               }
            }
         }
      }
   }
}
