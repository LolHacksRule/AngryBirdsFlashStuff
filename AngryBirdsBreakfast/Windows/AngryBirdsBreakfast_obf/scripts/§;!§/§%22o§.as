package §;!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§,!e§;
   import com.angrybirds.§&!"§;
   
   public class §"o§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "LevelEndFailState";
         }
      }
      
      private var §7!k§:§,!e§;
      
      public function §"o§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            do
            {
               §?P§ = new §2W§(this);
               do
               {
                  §?P§.init(this.§`!K§());
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.View_LevelEndFail[0];
      }
      
      protected function §?_§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = §&" §.getNextLevelId();
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§6!!§.singleton);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop().§<!S§);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().userProgress);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop().§<W§(§&" §.currentLevel));
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(!§§pop());
                                             }
                                             if(!_loc2_)
                                             {
                                                while(!§§pop())
                                                {
                                                   if(§&" §.isCutSceneNext())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
                                                            while(!_loc3_)
                                                            {
                                                               continue loop14;
                                                               §§goto(addr108);
                                                            }
                                                            addr108:
                                                            if(_loc2_ && _loc1_)
                                                            {
                                                               addr127:
                                                            }
                                                            addr29:
                                                            return;
                                                            addr67:
                                                         }
                                                         else
                                                         {
                                                            addr236:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§6!!§.singleton);
                                                            addr192:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§<!S§);
                                                               addr193:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().userProgress);
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§]!g§(_loc1_));
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     §§push(!§§pop());
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr136:
                                                            if(_loc2_)
                                                            {
                                                               (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
                                                               §§goto(addr136);
                                                               addr188:
                                                            }
                                                         }
                                                         continue;
                                                         (§?P§.getItemByName("Button_MightyEagle") as §;§).setVisibility(true);
                                                         break;
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   §§goto(addr127);
                                                }
                                                (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                                                §§goto(addr188);
                                                addr179:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr235:
                                             }
                                             §§goto(addr236);
                                          }
                                          §§goto(addr194);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr192);
                                 }
                                 continue loop8;
                              }
                           }
                           §§goto(addr179);
                        }
                        continue loop1;
                     }
                     addr213:
                  }
                  §§goto(addr235);
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function §+a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
         }
         do
         {
            (§?P§.getItemByName("Button_MightyEagle") as §;§).setVisibility(false);
         }
         while(_loc1_);
         
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.activate(param1);
            while(true)
            {
               this.§7!k§ = new §,!e§(0,0,0,0);
               addr41:
               if(_loc2_ && param1)
               {
                  continue;
               }
               return;
               addr58:
            }
         }
         loop1:
         while(true)
         {
            §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
            loop2:
            while(true)
            {
               this.§?_§();
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr71:
                  this.§7!k§.§=v§(0.7);
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr41);
               }
               continue loop1;
            }
         }
         §§goto(addr58);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(nextState.length > 0)
            {
               if(_loc3_)
               {
                  §&!"§.§1!D§.clearLevel();
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§7!k§);
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        do
                        {
                           this.§+a§();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           §§goto(addr115);
                        }
                        continue loop0;
                     }
                     continue loop0;
                     addr39:
                  }
                  if(_loc2_)
                  {
                     if(§?P§.movieClip.contains(this.§7!k§))
                     {
                        while(true)
                        {
                           §?P§.movieClip.removeChild(this.§7!k§);
                           addr115:
                           while(true)
                           {
                           }
                           addr66:
                           if(_loc2_ || this)
                           {
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§7!k§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().§9O§();
                        loop8:
                        while(true)
                        {
                           this.§7!k§ = null;
                           addr49:
                           while(true)
                           {
                              if(_loc1_ && this)
                              {
                                 continue loop8;
                              }
                              §§goto(addr66);
                              continue loop8;
                           }
                           continue loop0;
                        }
                        §§goto(addr115);
                     }
                     continue;
                  }
                  §§goto(addr115);
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function §2!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
            while(true)
            {
               (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
               while(true)
               {
                  (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
                  addr70:
                  while(!_loc3_)
                  {
                  }
               }
               addr54:
               if(_loc2_ || this)
               {
                  (§?P§.getItemByName("Button_MightyEagle") as §;§).setComponentVisualState(param1);
                  addr61:
                  if(_loc3_)
                  {
                     while(_loc2_)
                     {
                        §§goto(addr54);
                        §§goto(addr61);
                     }
                     §§goto(addr70);
                     addr52:
                  }
                  return;
               }
            }
         }
         while(true)
         {
            (§?P§.getItemByName("Button_CutScene") as §;§).setComponentVisualState(param1);
            §§goto(addr52);
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(_loc5_ && param2)
                  {
                  }
                  §§goto(addr184);
               }
               else
               {
                  §§goto(addr135);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     addr135:
                     §§push(1);
                     if(_loc5_ && this)
                     {
                     }
                  }
               }
               else if("MENU" === _loc4_)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§push(2);
                     if(_loc6_ || param1)
                     {
                        §§goto(addr162);
                     }
                     else
                     {
                        addr179:
                        §§goto(addr184);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr184:
                  switch(§§pop())
                  {
                     case 0:
                        §!x§();
                        §<f§(this.§+>§());
                        addr83:
                        break;
                        addr83:
                        addr98:
                     case 1:
                        §<f§(this.§8!w§());
                        break;
                        addr77:
                     case 2:
                        §'!c§.§&j§();
                        if(!(_loc5_ && param3))
                        {
                           addr42:
                           §<f§(this.§0!Z§());
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§goto(addr83);
                           }
                           break;
                        }
                        break;
                     case 3:
                        §6!!§.singleton.§%!O§();
                        if(_loc6_ || param3)
                        {
                           if(_loc6_ || param3)
                           {
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr42);
                              }
                              else
                              {
                                 §§goto(addr98);
                              }
                              §§goto(addr83);
                           }
                           else
                           {
                              §§goto(addr77);
                           }
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr184);
               if(_loc6_)
               {
                  §§goto(addr179);
               }
            }
            §§goto(addr184);
         }
         §§goto(addr135);
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §0!Z§() : String
      {
         return §4!9§.§-!q§;
      }
      
      protected function §+>§() : String
      {
         return StateCutScene.§-!q§;
      }
   }
}
