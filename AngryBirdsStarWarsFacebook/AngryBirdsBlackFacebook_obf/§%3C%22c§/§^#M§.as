package §<"c§
{
   import §+D§.§^"m§;
   import §3§.§4! §;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   
   public class §^#M§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!7§ = "LevelEndFailState";
         }
      }
      
      private var §@"r§:§4! §;
      
      public function §^#M§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §@;§ = new §]#[§(this);
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §@;§.init(this.getViewXML());
                     if(_loc1_ || this)
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
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEndFail[0];
      }
      
      protected function §^;§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = §+!b§.getNextLevelId();
         if(!_loc3_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§4#;§.singleton);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().dataModel);
                              addr210:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 addr211:
                                 while(true)
                                 {
                                    §§push(§§pop().isLevelOpen(_loc1_));
                                    if(_loc2_ || this)
                                    {
                                       §§push(!§§pop());
                                       if(_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             addr228:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!§+!b§.isCutSceneNext())
                                                         {
                                                            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(true);
                                                            while(true)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(_loc3_ && _loc1_)
                                                                  {
                                                                     addr99:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
                                                                           (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              addr141:
                                                                           }
                                                                           return;
                                                                           addr132:
                                                                        }
                                                                        else
                                                                        {
                                                                           (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
                                                                           break;
                                                                           addr205:
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr198:
                                                                  addr198:
                                                                  (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr99);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setVisibility(true);
                                                   §§goto(addr141);
                                                   addr196:
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr242:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr227);
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §3#3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
         }
         do
         {
            (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setVisibility(false);
         }
         while(!_loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
         }
         while(true)
         {
            this.§@"r§ = new §4! §(0,0,0,0);
            loop1:
            while(true)
            {
               §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
               while(true)
               {
                  this.§^;§();
                  while(_loc3_)
                  {
                     continue loop1;
                     this.§@"r§.§""a§(0.7);
                     if(_loc3_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            if(_loc2_ && _loc3_)
            {
               continue;
            }
            §§goto(addr66);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(nextState.length > 0)
            {
               if(_loc3_ || param1)
               {
                  §,!q§.§9!,§.clearLevel();
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
         }
         while(true)
         {
            §§push(this.§@"r§);
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  loop7:
                  while(true)
                  {
                     this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr47:
                     loop8:
                     for(; !(_loc1_ && _loc2_); this.§3#3§(),if(!(_loc2_ || this))
                     {
                        continue;
                     },if(_loc2_)
                     {
                        break loop7;
                     },addr90:,while(true)
                     {
                        this.§@"r§ = null;
                        break loop8;
                     })
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_ || this)
                           {
                              continue;
                           }
                           §§goto(addr115);
                        }
                     }
                     while(true)
                     {
                        continue loop7;
                        §§goto(addr47);
                     }
                  }
                  return;
               }
               addr120:
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  if(!§@;§.movieClip.contains(this.§@"r§))
                  {
                     continue;
                  }
               }
               while(true)
               {
                  §@;§.movieClip.removeChild(this.§@"r§);
               }
               addr115:
               while(true)
               {
                  continue loop1;
               }
            }
         }
      }
      
      protected function §7b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
         }
         while(true)
         {
            (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
            while(_loc2_ || _loc3_)
            {
               (§@;§.getItemByName("Button_NextLevel") as §^"m§).setComponentVisualState(param1);
               while(!(_loc3_ && _loc3_))
               {
                  (§@;§.getItemByName("Button_CutScene") as §^"m§).setComponentVisualState(param1);
                  while(!(_loc3_ && this))
                  {
                     (§@;§.getItemByName("Button_MightyEagle") as §^"m§).setComponentVisualState(param1);
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc6_ && param3))
               {
                  addr105:
                  §§push(0);
                  if(_loc5_ || param1)
                  {
                  }
                  §§goto(addr163);
               }
               else
               {
                  §§goto(addr119);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc5_)
                  {
                     addr119:
                     §§push(1);
                     if(_loc6_ && this)
                     {
                        addr141:
                     }
                  }
               }
               else if("MENU" === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(2);
                     if(_loc5_ || param3)
                     {
                        §§goto(addr141);
                     }
                     else
                     {
                        addr158:
                        §§goto(addr163);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr163:
                  switch(§§pop())
                  {
                     case 0:
                        §'$§();
                        § g§(this.getCutSceneState());
                        if(_loc5_ || param2)
                        {
                           break;
                        }
                        break;
                        addr87:
                     case 1:
                        § g§(this.getLevelLoadState());
                        break;
                        addr59:
                     case 2:
                        §?!r§.§0"#§();
                        loop0:
                        while(true)
                        {
                           addr34:
                           while(true)
                           {
                              § g§(this.getLevelSelectionState());
                              continue loop0;
                           }
                        }
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr87);
                        }
                        else
                        {
                           §§goto(addr59);
                        }
                        break;
                     case 3:
                        §4#;§.singleton.§5"q§();
                        if(_loc5_)
                        {
                           if(_loc5_ || this)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr34);
                           }
                           §§goto(addr39);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr163);
               if(!_loc6_)
               {
                  §§goto(addr158);
               }
            }
            §§goto(addr163);
         }
         §§goto(addr105);
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
