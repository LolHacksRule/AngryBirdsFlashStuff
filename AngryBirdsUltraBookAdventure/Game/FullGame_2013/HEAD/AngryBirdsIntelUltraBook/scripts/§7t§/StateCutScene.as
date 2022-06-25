package §7t§
{
   import §%r§.CutScene;
   import §%r§.CutSceneManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §7!>§.Starling;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import flash.events.Event;
   
   public class StateCutScene extends StateBase
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
      
      {
         var STATE_NAME:Boolean = true;
         var SKIP_BUTTON_DELAY_LENGHT:Boolean = false;
         if(!STATE_NAME)
         {
         }
         loop0:
         while(true)
         {
            STATE_NAME = "StateCutScene";
            do
            {
               continue loop0;
            }
            while(SKIP_BUTTON_DELAY_LENGHT);
            
            return;
         }
      }
      
      private var §4Y§:CutScene;
      
      private var §!j§:Boolean;
      
      private var §[!V§:Number = 0;
      
      private var §2!f§:Number = 0;
      
      private var §<I§:DynamicContentManager;
      
      public function StateCutScene(initState:Boolean = true, name:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || name)
         {
            while(true)
            {
               while(_loc4_)
               {
                  addr75:
                  if(!(_loc3_ && name))
                  {
                     addr82:
                     if(!(_loc4_ || _loc3_))
                     {
                        while(_loc4_ || name)
                        {
                           §§goto(addr75);
                           §§goto(addr82);
                        }
                        while(true)
                        {
                           super(initState,name);
                           §§goto(addr68);
                        }
                        addr68:
                        addr85:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || this)
         {
         }
         while(true)
         {
            super.init();
            while(_loc1_ || _loc2_)
            {
               while(_loc1_)
               {
                  §`=§ = new §`X§(this);
                  while(!(_loc2_ && _loc2_))
                  {
                     while(!(_loc2_ && this))
                     {
                        §`=§.init(§+q§.§%M§.Views.View_CutScene[0]);
                        while(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function §>$§(cutscene:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(§§push(Boolean(cutscene)); !§§pop(); )
                  {
                     §§push(false);
                     if(!(_loc2_ || cutscene))
                     {
                        loop3:
                        while(_loc3_)
                        {
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 this.§@!5§();
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop2;
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop1;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§<I§);
                                             loop7:
                                             for(; !_loc3_; §§push(this.§<I§),if(_loc3_)
                                             {
                                                continue;
                                             },§§push("cutscene_"),if(!_loc3_)
                                             {
                                                §§push(§§pop() + cutscene);
                                             },§§pop().§&!&§(§§pop()))
                                             {
                                                §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                if(_loc2_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      addr216:
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.§<I§);
                                                      break loop7;
                                                   }
                                                   addr237:
                                                   while(true)
                                                   {
                                                      §§goto(addr216);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc2_ || cutscene)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr230:
                                                   while(true)
                                                   {
                                                      §§pop().removeEventListener(Event.COMPLETE,this.§-!H§);
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                          addr263:
                                       }
                                       while(true)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                break;
                                             }
                                             addr265:
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr230);
                                             }
                                             addr259:
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr263);
                                 }
                                 addr279:
                              }
                              §§goto(addr265);
                           }
                        }
                        return §§pop();
                     }
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  while(true)
                  {
                     §§goto(addr279);
                  }
               }
            }
         }
         while(true)
         {
            §`=§.getItemByName("MovieClip_Loading").setVisibility(true);
            §§goto(addr259);
         }
      }
      
      private function §-!H§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc3_ && e)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               for(§§push(this.§<I§); §§pop(); if(_loc3_ && this)
               {
                  continue;
               },§§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable),loop8:
               for(; _loc2_ || e; if(!(_loc2_ || _loc2_))
               {
                  continue;
               },if(!(_loc3_ && e))
               {
                  if(_loc2_ || this)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr160);
               },§§goto(addr152))
               {
                  loop9:
                  while(true)
                  {
                     this.§@!5§();
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop8;
                        }
                        continue loop9;
                        addr86:
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr152);
                  }
               },§§goto(addr161))
               {
                  while(true)
                  {
                     addr161:
                     while(true)
                     {
                        §§push(this.§<I§);
                        while(true)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§-!H§);
                           addr152:
                           while(_loc2_)
                           {
                              continue loop0;
                           }
                           addr141:
                           §§push(this.§<I§);
                           continue loop1;
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
      }
      
      private function §@!5§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && cutSceneName)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
               addr67:
               while(_loc3_)
               {
               }
            }
         }
         while(true)
         {
            while(true)
            {
               §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
               while(_loc4_ && _loc3_)
               {
               }
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               if(!_loc4_)
               {
                  if(false)
                  {
                     continue;
                  }
                  §§push(this.§,k§());
                  if(!_loc4_)
                  {
                     §§push(§§pop());
                  }
                  var cutSceneName:* = §§pop();
                  if(!_loc3_)
                  {
                  }
                  var textureManager:TextureManager = TextureManager.§7!E§;
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§<I§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr111:
                                       textureManager = this.§<I§.textureManager;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr122:
                                          this.§4Y§ = CutSceneManager.§?!&§(cutSceneName,textureManager);
                                          if(_loc3_ || textureManager)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.§4Y§);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop9:
                                                   while(§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            AngryBirdsFP11.sUserProgress.§0!Z§(cutSceneName);
                                                            addr291:
                                                            loop22:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  §§push(§`S§.§[o§);
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§#!$§(§§pop());
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           addr270:
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(§`S§.§[o§);
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§push(false);
                                                                                 if(!(_loc3_ || textureManager))
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 §§pop().§9H§(§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    addr233:
                                                                                    addr215:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(this.§4Y§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().update(0));
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr216:
                                                                                       while(_loc3_ || cutSceneName)
                                                                                       {
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          while(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr164:
                                                                                    break loop9;
                                                                                 }
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop22;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          §§goto(addr291);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr270);
                                 }
                                 §§goto(addr267);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr291);
               }
               else
               {
                  §§goto(addr67);
               }
            }
         }
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  §§push(this.§<I§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§<I§);
                              loop5:
                              for(; _loc2_; while(true)
                              {
                                 §§push(this.§<I§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 while(!_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       addr82:
                                       addr84:
                                       while(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    while(_loc2_ || e)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr127);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr82);
                                          }
                                          return;
                                          addr67:
                                       }
                                    }
                                 }
                              })
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§-!H§);
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        this.end();
                        §§goto(addr72);
                        §§goto(addr84);
                     }
                     §§goto(addr67);
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.activate();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(!this.§<I§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§<I§ = §`S§.§[o§.§4!G§;
                                    while(_loc2_)
                                    {
                                       continue loop3;
                                       addr150:
                                       if(!(_loc2_ || this))
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       AngryBirdsFP11.§5!R§();
                                       loop24:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             addr133:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr113:
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.§!j§ = false;
                                                            continue loop24;
                                                         }
                                                         addr225:
                                                         while(true)
                                                         {
                                                            break loop26;
                                                            §§goto(addr113);
                                                         }
                                                      }
                                                      break;
                                                      loop30:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc2_ || cutSceneName))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  addr39:
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  addr46:
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §`=§.getItemByName("MovieClip_Loading").setVisibility(false);
                                                                           continue loop30;
                                                                        }
                                                                        continue loop24;
                                                                        addr55:
                                                                     }
                                                                     §§push(this.§,k§());
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     var cutSceneName:* = §§pop();
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(this.§>$§(cutSceneName));
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        addr372:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              if(!(_loc2_ || _loc3_))
                                                                              {
                                                                                 §§goto(addr372);
                                                                              }
                                                                           }
                                                                           this.end();
                                                                           addr344:
                                                                           if(_loc2_)
                                                                           {
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 §§goto(addr344);
                                                                              }
                                                                              addr316:
                                                                              return;
                                                                              addr346:
                                                                           }
                                                                           addr370:
                                                                           §§goto(addr370);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           addr261:
                                                                           while(true)
                                                                           {
                                                                              §§push(Starling.§7!+§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().color = 0;
                                                                              while(true)
                                                                              {
                                                                                 break loop23;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           continue loop4;
                                                                           addr261:
                                                                        }
                                                                        §§goto(addr150);
                                                                     }
                                                                     addr143:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr75:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  addr75:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ || cutSceneName))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§[!V§ = 0;
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr75);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop26;
                                                      }
                                                      addr203:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         §`=§.getItemByName("Button_Skip").setVisibility(false);
                                                         break loop24;
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         while(!_loc3_)
                                                         {
                                                            §§goto(addr261);
                                                         }
                                                         continue loop3;
                                                         addr258:
                                                      }
                                                      this.§2!f§ = 0;
                                                      while(true)
                                                      {
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                                addr140:
                                             }
                                             break;
                                          }
                                          addr179:
                                          while(true)
                                          {
                                             §§goto(addr143);
                                             continue loop24;
                                          }
                                          §§goto(addr261);
                                       }
                                       while(_loc2_)
                                       {
                                          continue loop0;
                                          §§goto(addr133);
                                       }
                                       §§goto(addr215);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(Starling.§7!+§);
                                 continue loop4;
                              }
                              addr245:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      protected function §,k§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || levelId)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  addr41:
                  while(_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(_loc3_ || levelId)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr41);
         }
         §§push(LevelManager.§=t§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var levelId:* = §§pop();
         if(_loc4_)
         {
         }
         §§push(LevelManager.§!]§().§+B§(levelId + "-OUTRO"));
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var cutScene:* = §§pop();
         if(_loc3_)
         {
            loop4:
            while(true)
            {
               §§push(cutScene);
               while(true)
               {
                  if(§§pop())
                  {
                     loop14:
                     while(true)
                     {
                        §§push(cutScene);
                        if(_loc3_ || cutScene)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           addr177:
                           addr177:
                           while(_loc3_ || _loc3_)
                           {
                              §§push(§§pop());
                           }
                           loop8:
                           while(true)
                           {
                              levelId = §§pop();
                              while(true)
                              {
                                 loop10:
                                 while(_loc3_)
                                 {
                                    if(_loc4_ && levelId)
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc4_ && cutScene))
                                    {
                                       §§push(LevelManager.§!]§().§+B§(levelId + "-INTRO"));
                                       continue loop8;
                                    }
                                    addr183:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       if(!(_loc4_ && levelId))
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                       continue loop14;
                                    }
                                 }
                              }
                           }
                           addr117:
                        }
                        while(true)
                        {
                           cutScene = §§pop();
                           §§goto(addr126);
                           continue loop14;
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr183);
                  addr169:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr177);
                  §§push(§§pop());
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               §§push(this.§4Y§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§push(this.§<I§);
                           loop10:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       loop12:
                                       for(; _loc2_; while(true)
                                       {
                                          if(_loc1_ && this)
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr153);
                                       },continue loop10)
                                       {
                                          §§push(this.§<I§);
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.COMPLETE,this.§-!H§);
                                             addr164:
                                             while(!(_loc1_ && _loc1_))
                                             {
                                                continue loop12;
                                             }
                                             addr153:
                                             §§push(this.§<I§);
                                             continue loop1;
                                             if(_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                   while(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         addr104:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(§`S§.§[o§);
                                                            if(_loc2_)
                                                            {
                                                               §§pop().§9H§(true);
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     LevelManager.§=t§ = null;
                                                                     loop21:
                                                                     while(!_loc1_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           addr220:
                                                                           addr247:
                                                                           while(!(_loc1_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr248:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§`S§.§[o§);
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc1_ && _loc1_))
                                                                           {
                                                                              this.§4Y§ = null;
                                                                              break loop21;
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().§!!!§.removeChild(this.§4Y§.sprite);
                                                            break loop12;
                                                            §§goto(addr104);
                                                         }
                                                      }
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    break;
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr84);
                                 }
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                              }
                              §§goto(addr104);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr247);
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc5_)
         {
         }
         while(true)
         {
            while(!(_loc5_ && eventName))
            {
               if(!_loc6_)
               {
                  continue;
               }
               var _loc4_:* = eventName;
               if(!(_loc5_ && eventIndex))
               {
                  §§push("SKIP");
                  if(_loc6_ || eventIndex)
                  {
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 addr128:
                                 §§push(0);
                                 if(_loc5_ && eventName)
                                 {
                                 }
                              }
                              else
                              {
                                 addr166:
                                 §§push(2);
                                 if(!(_loc5_ && eventName))
                                 {
                                    addr174:
                                 }
                              }
                              §§goto(addr176);
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(_loc6_)
                              {
                                 addr151:
                                 if(§§pop() !== _loc4_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr166);
                                    }
                                    else
                                    {
                                       §§push(2);
                                    }
                                    addr176:
                                    loop6:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          loop2:
                                          while(true)
                                          {
                                             this.§!j§ = true;
                                             addr63:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          break;
                                          addr58:
                                       case 1:
                                          loop3:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                AngryBirdsFP11.§'t§.§0-§();
                                                if(!(_loc5_ && eventName))
                                                {
                                                   if(_loc6_ || component)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr58);
                                          }
                                    }
                                    return;
                                 }
                                 if(!(_loc5_ && component))
                                 {
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr174);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr166);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr151);
                           }
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr128);
            }
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!(_loc4_ && superReturn))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr92:
                  if(_loc3_ || superReturn)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr251);
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         var currentLevel:* = null;
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               §§push(this.§4Y§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this.§4Y§);
                                    loop7:
                                    for(; !_loc2_; §§push(this.§4Y§),if(!_loc3_)
                                    {
                                       continue;
                                    },§§goto(addr201),§§push(§§pop().§]p§))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(LevelManager.§1m§);
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(CutScene.§&M§);
                                                               break loop9;
                                                            }
                                                            addr317:
                                                         }
                                                      }
                                                      loop10:
                                                      while(!(_loc2_ && this))
                                                      {
                                                         currentLevel = §§pop();
                                                         while(_loc3_ || _loc2_)
                                                         {
                                                            while(!(_loc2_ && _loc3_))
                                                            {
                                                               §§push(currentLevel);
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr97:
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr124);
                                                                     }
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc3_ || currentLevel)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              mNextState = this.§4!6§();
                                                                              addr121:
                                                                              addr81:
                                                                           }
                                                                           else
                                                                           {
                                                                              mNextState = StateLevelSelection.STATE_NAME;
                                                                              §§goto(addr284);
                                                                              addr287:
                                                                           }
                                                                           §§goto(addr37);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr232:
                                                                           if(!_loc2_)
                                                                           {
                                                                              mNextState = StateCreditsNew.STATE_NAME;
                                                                              addr187:
                                                                              if(_loc2_ && currentLevel)
                                                                              {
                                                                                 addr231:
                                                                                 §§goto(addr232);
                                                                              }
                                                                              §§goto(addr37);
                                                                           }
                                                                           addr295:
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  mNextState = StateLevelSelection.STATE_NAME;
                                                                  while(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!(_loc3_ || _loc2_))
                                                                              {
                                                                                 §§goto(addr97);
                                                                              }
                                                                              §§goto(addr37);
                                                                           }
                                                                           §§goto(addr121);
                                                                        }
                                                                        §§goto(addr81);
                                                                        continue;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               while(!_loc2_)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr273);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop10;
                                                            }
                                                            while(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr324:
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  break loop8;
                                                               }
                                                               addr343:
                                                               addr343:
                                                               while(true)
                                                               {
                                                                  §§push(this.§4Y§);
                                                                  break loop7;
                                                               }
                                                            }
                                                            break loop8;
                                                         }
                                                         return;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(CutScene.§[V§);
                                                         if(_loc2_)
                                                         {
                                                            break loop9;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop2;
                                                         }
                                                         addr342:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr343);
                                                         }
                                                      }
                                                      addr201:
                                                   }
                                                   §§goto(addr231);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr321);
                                                }
                                             }
                                             StateLevelSelection.sPreviousState = StateCutScene.STATE_NAME;
                                             §§goto(addr295);
                                          }
                                       }
                                       §§goto(addr270);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr324);
                              }
                           }
                        }
                        §§goto(addr342);
                     }
                  }
               }
            }
         }
         §§goto(addr343);
      }
      
      protected function §4!6§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
