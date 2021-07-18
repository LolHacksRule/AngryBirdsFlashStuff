package §;u§
{
   import §%!I§.§]!M§;
   import §%i§.§4!w§;
   import §%i§.§4"9§;
   import §1!t§.§""B§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §7D§ extends §9"@§ implements §4d§
   {
      
      public static var §%"E§:int = -1;
      
      public static const §^!i§:String = "1000";
      
      public static const §9!§:String = "2000";
      
      public static const §2"#§:String = "pagination_";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%"E§ = -1;
            while(true)
            {
               §^!i§ = "1000";
               while(_loc1_)
               {
                  while(_loc1_ || _loc2_)
                  {
                     §2"#§ = "pagination_";
                     if(_loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §9!§ = "2000";
            §§goto(addr44);
         }
      }
      
      public function §7D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.activate();
         }
         var _loc1_:§3-§ = LevelManager.§`"Q§();
         if(_loc3_ || this)
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §§push(_loc1_.name);
                  loop1:
                  while(true)
                  {
                     §§push(§^!i§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr358:
                                    while(true)
                                    {
                                       §§push(this is §4"Y§);
                                       addr339:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr340:
                                          while(_loc3_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 addr357:
                              }
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_.name);
                                       if(!_loc4_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                             break;
                                          }
                                          §§push(§9!§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this is §]!M§);
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               addr274:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     §§goto(addr357);
                                                                  }
                                                               }
                                                               §§goto(addr358);
                                                               addr179:
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §2"@§.visible = false;
                                                                        addr191:
                                                                        loop29:
                                                                        while(_loc3_ || _loc1_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              mNextState = §5<§.STATE_NAME;
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §2"@§.visible = true;
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          §§push(§?l§.§ "G§);
                                                                                          while(true)
                                                                                          {
                                                                                             (§§pop() as §%"S§).§96§.§<!J§ = false;
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ && _loc3_)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§?l§.§ "G§);
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      (§§pop() as §%"S§).§!n§("");
                                                                                                      addr108:
                                                                                                      while(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr136:
                                                                                 }
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this is §5<§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr162:
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr172:
                                                                                          §§push(!§§pop());
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             §§goto(addr179);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(!_loc4_)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop26;
                                                                                                      §§goto(addr172);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                             §§goto(addr162);
                                                                                          }
                                                                                          §§goto(addr274);
                                                                                          addr228:
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    §§goto(addr172);
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr344:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                           }
                                                                           §§goto(addr358);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_.name);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§push(§5<§.§&7§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr228);
                                                                                       §§push(§§pop() == §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr375);
                                                                                    }
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr211:
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           break;
                                                                           §§goto(addr191);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr374);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr344);
                              }
                              §2"@§.visible = false;
                              §§goto(addr349);
                           }
                        }
                     }
                  }
                  addr363:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr362);
         }
         §§goto(addr363);
      }
      
      override protected function gotoNextPage() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.gotoNextPage();
            do
            {
               §@q§.trackPageView(this,null,this.§<"8§());
            }
            while(_loc1_);
            
         }
      }
      
      override protected function gotoPrevPage() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.gotoPrevPage();
         }
         do
         {
            §@q§.trackPageView(this,null,this.§<"8§());
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §,!Z§(param1:§3-§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(AngryBirdsFP11.sUserProgress.§[!a§(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§3W§(param1));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§]L§(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.§="'§(param1));
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            this.§6"R§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
         }
      }
      
      protected function §6"R§(param1:§3-§, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §2"@§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
            do
            {
               §2"@§.setText(param4 + "/" + param5,"Textfield_ME_Score");
            }
            while(!_loc7_);
            
         }
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§3%§(§;!e§.§^a§);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            do
            {
               this.§]Y§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      protected function §]Y§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).§;M§(param1));
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:*;
         §§push(_loc7_ = §§pop());
         if(!(_loc9_ && param2))
         {
            §§push(Boolean(§§pop()));
            if(_loc10_)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(_loc10_ || param2)
                     {
                        addr80:
                        addr78:
                        if(_loc7_ <= 3)
                        {
                           if(_loc10_ || param3)
                           {
                              (_loc8_ = new §?q§.§ q§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
                              if(_loc10_)
                              {
                                 _loc8_.x = -78;
                                 loop0:
                                 while(true)
                                 {
                                    addr118:
                                    while(true)
                                    {
                                       _loc8_.y = -102;
                                       while(true)
                                       {
                                          if(_loc10_)
                                          {
                                             _loc6_.addChild(_loc8_);
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              while(false)
                              {
                                 §§goto(addr118);
                              }
                           }
                           §§goto(addr143);
                        }
                        _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§5!T§(param1).levelsPerPage;
                     }
                     addr143:
                     return _loc6_;
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr78);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §§push(param2.length > 0);
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
                        addr227:
                        while(true)
                        {
                           §§push(param3 is §4!w§);
                        }
                     }
                     addr226:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        loop6:
                        while(_loc6_ || this)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(_loc6_)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                    while(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       for(; !(_loc5_ && param1); while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ || this))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr87);
                                          }
                                          §§goto(addr147);
                                       })
                                       {
                                          if(§§pop())
                                          {
                                             continue;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§pop();
                                             addr191:
                                             while(true)
                                             {
                                                §§push((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection12");
                                                if(_loc6_ || param1)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr87);
                        }
                        continue loop1;
                        if(!(_loc6_ || param2))
                        {
                           continue;
                        }
                        §§pop();
                        §§goto(addr162);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).§-" §.text = (param1 + 1).toString();
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§>!A§;
      }
      
      public function §8"3§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(LevelManager.§`"Q§());
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return LevelManager.§`"Q§().writtenName;
      }
      
      public function §<"8§() : String
      {
         return §2"#§ + (§0!y§ + 1).toString();
      }
   }
}
