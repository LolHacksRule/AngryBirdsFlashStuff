package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §7"i§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §7"i§)
         {
            §^!7§ = "LevelEndFailState";
         }
      }
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!#§:§ #^§;
      
      protected var §5"t§:§ #^§;
      
      protected var §">§:§8!R§;
      
      protected var §?"n§:Vector.<String>;
      
      protected var § !@§:§4!5§;
      
      public function §7"i§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§">§ = §4#;§.singleton.dataModel.userProgress;
               while(true)
               {
                  §@;§ = new §]#[§(this);
                  loop4:
                  for(; _loc1_ || _loc2_; while(true)
                  {
                     if(_loc1_ || this)
                     {
                        continue;
                     }
                     continue loop4;
                  },§§goto(addr101))
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §@;§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           while(true)
                           {
                              this.§?"n§ = new <String>["level_fail_laugh_2","level_fail_laugh_5","level_fail_laugh_7","level_fail_laugh_9"];
                              continue loop4;
                           }
                           §§goto(addr38);
                        }
                        break;
                        addr28:
                        if(!(_loc2_ && _loc1_))
                        {
                           addr38:
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 if(§@;§.getItemByName("Button_ExtraBird"))
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr38);
                                 §§goto(addr38);
                              }
                              addr114:
                           }
                        }
                        continue;
                        return;
                     }
                     while(true)
                     {
                        §@;§.init(this.getViewXML());
                        §§goto(addr114);
                        §§goto(addr101);
                     }
                     addr101:
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEndFail[0];
      }
      
      protected function §#"y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
            while(true)
            {
               this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
               while(true)
               {
                  this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
                  §§goto(addr103);
               }
            }
         }
         addr103:
         while(true)
         {
            this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
            do
            {
               this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
               do
               {
                  this.§5"t§ = § #^§(§@;§.getItemByName("Container_ReplayButton"));
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && this);
            
            if(_loc1_ || _loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function §^;§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:String = §+!b§.getNextLevelId();
         §§push(_loc1_ == null);
         if(_loc4_ || _loc2_)
         {
            §§push(!§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(Boolean(_loc1_));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§">§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().isLevelOpen(_loc1_));
                              addr195:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && _loc2_)
                                       {
                                          break;
                                          addr214:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             addr224:
                                             while(true)
                                             {
                                                §§pop();
                                                addr225:
                                                addr188:
                                                addr189:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop3;
                                                }
                                                _loc2_ = §§pop();
                                             }
                                             addr224:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         §§push(false);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr189);
                                                }
                                             }
                                             addr176:
                                          }
                                          if(§+!b§.isCutSceneNext())
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   §§goto(addr189);
                                                }
                                                addr140:
                                                this.§9!#§.setVisibility(_loc2_);
                                             }
                                             while(true)
                                             {
                                                addr105:
                                                this.§,>§.setVisibility(false);
                                                while(_loc4_)
                                                {
                                                   this.§]6§.setVisibility(true);
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr41);
                                                   }
                                                }
                                             }
                                             addr141:
                                          }
                                          §§push(this.§9!#§);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                §§pop().setVisibility(§§pop());
                                                addr85:
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(this.§,>§);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(true);
                                                      if(_loc4_)
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         addr71:
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§]6§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(false);
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr71);
                                                                  }
                                                                  addr41:
                                                                  return;
                                                               }
                                                               §§goto(addr97);
                                                            }
                                                            §§goto(addr96);
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                   }
                                                   §§goto(addr105);
                                                }
                                                §§goto(addr98);
                                             }
                                             else
                                             {
                                                §§goto(addr140);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr140);
                                          }
                                          §§goto(addr140);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr224);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr214);
               }
            }
         }
         §§goto(addr140);
      }
      
      protected function §3#3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]6§.setVisibility(false);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            while(true)
            {
               this.§^;§();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§8m§();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
            loop0:
            while(true)
            {
               this.§3#3§();
               while(true)
               {
                  this.§0"#§();
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        super.deActivate();
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §8m§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = this.§?"n§[int(this.§=@§(0,this.§?"n§.length - 1))];
         if(!_loc3_)
         {
            §§push(this.§ !@§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr120:
                  if(_loc2_ || this)
                  {
                     §§push(this.§ !@§);
                     while(true)
                     {
                        §§pop().removeEventListener(Event.SOUND_COMPLETE,this.§80§);
                     }
                     addr115:
                  }
                  while(true)
                  {
                  }
                  addr120:
               }
               loop3:
               while(true)
               {
                  this.§ !@§ = §?!r§.§"#_§(_loc1_);
                  while(true)
                  {
                     §§push(this.§ !@§);
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§ !@§);
                                 break;
                              }
                              continue;
                           }
                           addr83:
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr33);
                     }
                     §§goto(addr115);
                     §§goto(addr120);
                  }
                  continue loop0;
               }
            }
         }
         addr33:
      }
      
      private function §80§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !@§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr64:
                     this.§ !@§.removeEventListener(Event.SOUND_COMPLETE,this.§80§);
                     do
                     {
                        this.§8m§();
                     }
                     while(_loc2_);
                     
                     addr69:
                  }
                  §§goto(addr69);
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      private function §=@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(nextState.length > 0)
            {
               if(!_loc3_)
               {
                  §,!q§.§9!,§.clearLevel();
               }
            }
         }
      }
      
      protected function §""=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§4#;§.singleton.popupManager.§""n§())
            {
               if(!this.§ !@§)
               {
                  if(!_loc2_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr48:
                        this.§8m§();
                        addr50:
                        if(_loc1_ || this)
                        {
                           §§goto(addr19);
                        }
                        else
                        {
                           addr73:
                           this.§0"#§();
                        }
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr50);
               }
               addr19:
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr48);
      }
      
      protected function §7b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^W§.setComponentVisualState(param1);
            loop0:
            while(true)
            {
               §§push(this.§^"^§);
               while(true)
               {
                  §§push(param1);
                  addr77:
                  addr95:
                  while(true)
                  {
                     §§pop().setComponentVisualState(§§pop());
                     continue loop0;
                  }
                  §§push(this.§^"^§);
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§pop().setComponentVisualState(§§pop());
                     do
                     {
                        this.§]6§.setComponentVisualState(param1);
                     }
                     while(!(_loc2_ || _loc3_));
                     
                     if(!(_loc3_ && _loc2_))
                     {
                        return;
                        addr57:
                     }
                     continue loop0;
                  }
                  §§goto(addr77);
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_ || param1)
               {
                  §§push(0);
                  if(_loc6_ || param3)
                  {
                  }
                  §§goto(addr145);
               }
               else
               {
                  §§goto(addr115);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(!(_loc5_ && this))
                  {
                     addr115:
                     §§push(1);
                     if(_loc5_ && param1)
                     {
                        addr140:
                     }
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr145:
                  switch(§§pop())
                  {
                     case 0:
                        §'$§();
                        § g§(this.getCutSceneState());
                        if(_loc6_ || param1)
                        {
                           addr34:
                           break;
                        }
                        break;
                        addr78:
                     case 1:
                        § g§(this.getLevelLoadState());
                        if(_loc6_ || param3)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           §§goto(addr78);
                        }
                        break;
                     case 2:
                        § g§(this.getLevelSelectionState());
                        if(_loc6_ || param3)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr34);
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr145);
               if(_loc6_)
               {
                  §§goto(addr140);
               }
            }
            §§goto(addr145);
         }
         §§goto(addr115);
      }
      
      protected function §0"#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§ !@§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ !@§);
                     addr99:
                     loop4:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.SOUND_COMPLETE,this.§80§);
                        addr104:
                        while(true)
                        {
                           §§push(this.§ !@§);
                           if(!_loc2_)
                           {
                              §§pop().§!"^§();
                              continue loop0;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               loop1:
               while(true)
               {
                  this.§ !@§ = null;
                  while(!_loc2_)
                  {
                     §?!r§.§0"#§();
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        break loop1;
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr104);
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr104);
      }
      
      protected function getLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getLevelSelectionState() : String
      {
         return §+#?§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
   }
}
