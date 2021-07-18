package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§@_§;
   import §^"#§.§&"$§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §8!H§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "LevelEndFailState";
         }
      }
      
      private var §&!=§:§&"$§;
      
      public function §8!H§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            while(true)
            {
               §8!A§ = new §1"F§(this);
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §8!A§.init(this.§!!n§());
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
         §§goto(addr65);
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.View_LevelEndFail[0];
      }
      
      protected function §1![§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = §6u§.getNextLevelId();
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(_loc1_));
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop15:
                     while(true)
                     {
                        §§pop();
                        loop10:
                        while(true)
                        {
                           §§push(§ !g§.§;!'§);
                           loop11:
                           while(true)
                           {
                              §§push(§§pop().§&!`§);
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop().userProgress);
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§§pop().§]!B§(_loc1_));
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop0;
                                    }
                                    §§push(!§§pop());
                                    loop14:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§pop();
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§ !g§.§;!'§);
                                                if(_loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                §§push(§§pop().§&!`§);
                                                if(_loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                §§push(§§pop().userProgress);
                                                if(!_loc2_)
                                                {
                                                   continue loop13;
                                                }
                                                §§push(§§pop().§<!J§(§6u§.currentLevel));
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(!(_loc2_ || this))
                                                   {
                                                      continue loop15;
                                                   }
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!§6u§.isCutSceneNext())
                                                      {
                                                         (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr193:
                                                                  (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                                                                  (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
                                                                  addr200:
                                                               }
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  break loop9;
                                                               }
                                                               continue loop10;
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(_loc3_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_ && _loc1_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                                  addr101:
                                                               }
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§goto(addr28);
                                                               }
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         addr28:
                                                         return;
                                                         addr141:
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setVisibility(true);
                                                §§goto(addr141);
                                             }
                                             continue loop11;
                                          }
                                          continue loop0;
                                          addr235:
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr259:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr259);
         }
         §§goto(addr115);
      }
      
      protected function §-n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
            do
            {
               (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setVisibility(false);
            }
            while(_loc2_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§&!=§ = new §&"$§(0,0,0,0);
               addr96:
               while(true)
               {
                  §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
                  continue loop0;
               }
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(nextState.length > 0)
            {
               if(!_loc3_)
               {
                  addr49:
                  §9q§.§>!L§.clearLevel();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§&!=§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§8!A§.movieClip.contains(this.§&!=§))
                        {
                           while(true)
                           {
                              §8!A§.movieClip.removeChild(this.§&!=§);
                              addr119:
                              while(true)
                              {
                              }
                           }
                           addr114:
                        }
                        while(true)
                        {
                           §§push(this.§&!=§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§pop().§;"F§();
                           loop6:
                           while(true)
                           {
                              this.§&!=§ = null;
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                 }
                                 while(!_loc2_)
                                 {
                                    continue loop6;
                                    this.§-n§();
                                    if(_loc1_ || _loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr119);
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     §§goto(addr51);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected function §2"6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
               while(true)
               {
                  (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
                  addr60:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc2_)
                     {
                        (§8!A§.getItemByName("Button_MightyEagle") as §@_§).setComponentVisualState(param1);
                        addr69:
                        if(_loc3_)
                        {
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           if(_loc3_ || param1)
                           {
                              §§goto(addr60);
                           }
                           else
                           {
                              while(true)
                              {
                                 (§8!A§.getItemByName("Button_CutScene") as §@_§).setComponentVisualState(param1);
                                 continue loop3;
                              }
                              addr78:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(!(_loc6_ || this))
                  {
                     addr142:
                  }
               }
               else
               {
                  addr125:
                  §§push(1);
                  if(!_loc6_)
                  {
                  }
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     §§goto(addr125);
                  }
               }
               else if("MENU" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     addr134:
                     §§push(2);
                     if(_loc6_ || this)
                     {
                        §§goto(addr142);
                     }
                  }
               }
               else if("FULLSCREEN_BUTTON" !== _loc4_)
               {
                  addr164:
                  switch(§§pop())
                  {
                     case 0:
                        §?R§();
                        if(!_loc5_)
                        {
                           §8!^§(this.§2"%§());
                           break;
                           addr71:
                        }
                        break;
                     case 1:
                        §8!^§(this.§^!m§());
                        if(_loc6_ || this)
                        {
                           break;
                        }
                        break;
                     case 2:
                        §<!O§.§'N§();
                        addr30:
                        §8!^§(this.§4?§());
                        if(_loc6_ || param2)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr71);
                        }
                        break;
                        addr50:
                     case 3:
                        § !g§.§;!'§.§%!N§();
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr50);
                           }
                           §§goto(addr30);
                        }
                  }
                  return;
                  §§push(4);
               }
               §§goto(addr164);
               if(_loc5_)
               {
               }
            }
            §§goto(addr164);
         }
         §§goto(addr134);
      }
      
      protected function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      protected function §2"%§() : String
      {
         return StateCutScene.STATE_NAME;
      }
   }
}
