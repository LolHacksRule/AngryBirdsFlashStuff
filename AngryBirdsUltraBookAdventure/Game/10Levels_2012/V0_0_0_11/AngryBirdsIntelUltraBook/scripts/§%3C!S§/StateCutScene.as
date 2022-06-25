package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §,!_§.DynamicContentManager;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §4u§.CutScene;
   import §4u§.CutSceneManager;
   import §>!-§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class StateCutScene extends StateBase
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const SKIP_BUTTON_DELAY_LENGHT:Number = 500;
      
      {
         var STATE_NAME:Boolean = false;
         var SKIP_BUTTON_DELAY_LENGHT:Boolean = true;
         if(!(STATE_NAME && SKIP_BUTTON_DELAY_LENGHT))
         {
            while(true)
            {
               STATE_NAME = "StateCutScene";
               while(!STATE_NAME)
               {
                  loop2:
                  while(!STATE_NAME)
                  {
                     while(true)
                     {
                        SKIP_BUTTON_DELAY_LENGHT = 500;
                        if(SKIP_BUTTON_DELAY_LENGHT || STATE_NAME)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private var §+t§:CutScene;
      
      private var §1n§:Boolean;
      
      private var §[!§:Number = 0;
      
      private var §6%§:Number = 0;
      
      private var §;O§:DynamicContentManager;
      
      public function StateCutScene(initState:Boolean = true, name:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc3_)
                  {
                     super(initState,name);
                     while(!(_loc3_ && name))
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              return;
                              addr57:
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  while(true)
                  {
                     §5!M§ = new §6"§(this);
                     loop3:
                     while(_loc2_ || _loc1_)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              §5!M§.init(§>!^§.§8'§.Views.View_CutScene[0]);
                              continue loop3;
                              addr32:
                              while(!(_loc1_ && this))
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr32);
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop1;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr63);
            }
         }
         §§goto(addr110);
      }
      
      protected function §do §(cutscene:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && cutscene)
         {
         }
         if(!_loc2_)
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
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           continue;
                        }
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.§,!R§();
                              loop4:
                              while(_loc3_)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ || this)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                       break loop2;
                                    }
                                    addr284:
                                    addr283:
                                    loop21:
                                    while(true)
                                    {
                                       §5!M§.getItemByName("MovieClip_Loading").setVisibility(true);
                                       addr277:
                                       while(true)
                                       {
                                          continue loop21;
                                       }
                                    }
                                    addr284:
                                 }
                                 else
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this.§;O§);
                                             loop6:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!(_loc2_ && cutscene))
                                                   {
                                                      §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                      loop7:
                                                      while(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§push(this.§;O§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push("cutscene_");
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() + cutscene);
                                                                     }
                                                                     §§pop().§'m§(§§pop());
                                                                     break loop4;
                                                                  }
                                                                  continue loop6;
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop1;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§;O§);
                                                         addr216:
                                                         while(true)
                                                         {
                                                            §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                            addr223:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            break loop6;
                                                         }
                                                         addr263:
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop3;
                                                }
                                                §§pop().removeEventListener(Event.COMPLETE,this.§@!8§);
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop5;
                                                }
                                                §§goto(addr216);
                                             }
                                             addr193:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(this.§;O§);
                                                continue loop3;
                                             }
                                             addr290:
                                          }
                                       }
                                    }
                                    addr51:
                                    §§push(true);
                                    break loop1;
                                    addr128:
                                 }
                                 while(!_loc3_)
                                 {
                                    §§goto(addr284);
                                 }
                                 §§goto(addr239);
                                 §§push(this.§;O§);
                              }
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr193);
                                       }
                                       addr212:
                                    }
                                    §§goto(addr223);
                                 }
                                 §§goto(addr141);
                              }
                           }
                           §§goto(addr283);
                        }
                        §§goto(addr51);
                     }
                     break loop1;
                  }
                  while(true)
                  {
                     §§goto(addr290);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr284);
      }
      
      private function §@!8§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || e)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  for(§§push(this.§;O§); §§pop(); )
                  {
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(this.§;O§);
                           loop5:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.COMPLETE,this.§@!8§);
                              addr127:
                              while(true)
                              {
                                 addr114:
                                 while(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §,!R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || cutSceneName)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop4:
                  while(_loc3_ || this)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                     addr32:
                     if(!(_loc4_ && textureManager))
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §5!M§.getItemByName("MovieClip_Loading").setVisibility(false);
                              continue loop4;
                           }
                           addr67:
                           §§push(this.§0n§());
                           §§push(_loc4_ && this);
                           addr41:
                        }
                        else
                        {
                           §§goto(addr67);
                        }
                        if(!§§pop())
                        {
                           §§push(§§pop());
                        }
                        var cutSceneName:* = §§pop();
                        if(_loc4_ && _loc3_)
                        {
                        }
                        var textureManager:TextureManager = TextureManager.§8!X§;
                        if(!(_loc4_ && cutSceneName))
                        {
                           if(!_loc4_)
                           {
                              §§push(this.§;O§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc4_ && cutSceneName))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && textureManager))
                                          {
                                             addr131:
                                             textureManager = this.§;O§.textureManager;
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§+t§ = CutSceneManager.§ _§(cutSceneName,textureManager);
                                                addr142:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(this.§+t§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr326:
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     AngryBirdsFP11.sUserProgress.§27§(cutSceneName);
                                                                     while(true)
                                                                     {
                                                                        loop23:
                                                                        while(_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§]!B§.§>F§);
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§,>§(§§pop());
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_ || cutSceneName)
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§]!B§.§>F§);
                                                                                                   loop10:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(_loc4_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop().§1F§(§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ || textureManager))
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr247:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§+t§);
                                                                                                               if(_loc3_ || cutSceneName)
                                                                                                               {
                                                                                                                  §§push(§§pop().update(0));
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                         addr182:
                                                                                                         if(_loc3_ || this)
                                                                                                         {
                                                                                                            addr167:
                                                                                                            return;
                                                                                                            addr189:
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                      addr221:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§]!B§.§>F§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                         addr214:
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr247);
                                                                                                      }
                                                                                                      §§goto(addr167);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr131);
                           }
                        }
                        §§goto(addr271);
                     }
                     else
                     {
                        while(true)
                        {
                           §§goto(addr32);
                        }
                        addr61:
                     }
                     §§goto(addr41);
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function onCutSceneNotAvailable(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && e)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§;O§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           this.end();
                           while(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          while(!(_loc3_ || _loc2_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§;O§);
                                                if(!_loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr119);
                                             }
                                          }
                                          continue loop4;
                                          addr78:
                                       }
                                    }
                                    continue loop2;
                                    addr105:
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop4;
                                 }
                                 addr156:
                                 while(true)
                                 {
                                    addr157:
                                    while(true)
                                    {
                                       §§push(this.§;O§);
                                       addr119:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§@!8§);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr157);
                                    §§goto(addr119);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr78);
                           }
                           continue loop0;
                        }
                        return;
                     }
                     §§goto(addr156);
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
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
                        §§push(!this.§;O§);
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§;O§ = §]!B§.§>F§.§>-§;
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                       }
                                       loop28:
                                       for(; !(_loc3_ && this); if(!(_loc2_ || this))
                                       {
                                          continue;
                                       },§§goto(addr44))
                                       {
                                          loop29:
                                          while(true)
                                          {
                                             §5!M§.getItemByName("MovieClip_Loading").setVisibility(false);
                                             addr68:
                                             loop30:
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      continue loop28;
                                                   }
                                                   continue;
                                                }
                                                addr114:
                                                while(true)
                                                {
                                                   break loop30;
                                                }
                                             }
                                             loop26:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      this.§1n§ = false;
                                                      loop27:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop28;
                                                            }
                                                            addr208:
                                                            while(true)
                                                            {
                                                               this.§6%§ = 0;
                                                               break loop27;
                                                            }
                                                         }
                                                         break;
                                                         addr44:
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            continue loop29;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         break loop29;
                                                         §§goto(addr92);
                                                      }
                                                      addr92:
                                                   }
                                                   break;
                                                }
                                                addr117:
                                                addr218:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr119:
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      addr181:
                                                      while(!(_loc3_ && this))
                                                      {
                                                         §5!M§.getItemByName("Button_Skip").mClip.alpha = this.§[!§;
                                                         continue loop0;
                                                         §§goto(addr119);
                                                      }
                                                      while(_loc2_ || cutSceneName)
                                                      {
                                                         continue loop3;
                                                         §§goto(addr155);
                                                      }
                                                      addr155:
                                                      while(true)
                                                      {
                                                         §§push(Starling.§!!F§);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§pop().color = 0;
                                                            break loop26;
                                                         }
                                                         break;
                                                         §§goto(addr181);
                                                      }
                                                      addr181:
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
                                                            while(_loc2_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop1;
                                                            addr250:
                                                         }
                                                         else
                                                         {
                                                            addr209:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§[!§ = 0;
                                                            addr213:
                                                            while(!_loc3_)
                                                            {
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      addr253:
                                                      continue loop4;
                                                      addr246:
                                                   }
                                                   if(!(_loc2_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   AngryBirdsFP11.§2!#§();
                                                   §§goto(addr114);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                   break;
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr250);
                                                §§goto(addr208);
                                                §§goto(addr68);
                                             }
                                             while(!_loc3_)
                                             {
                                                §§goto(addr218);
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §5!M§.getItemByName("Button_Skip").setVisibility(false);
                                                §§goto(addr181);
                                             }
                                             break;
                                             §§goto(addr51);
                                          }
                                          §§goto(addr213);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr246);
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr181);
         }
      }
      
      protected function §0n§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || cutScene)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc3_ && _loc3_)
                  {
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(LevelManager.§;p§);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  var levelId:* = §§pop();
                  if(!_loc4_)
                  {
                  }
                  §§push(LevelManager.§&!e§().§9!Z§(levelId + "-OUTRO"));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  var cutScene:* = §§pop();
                  if(!_loc4_)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     §§push(cutScene);
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop15:
                           while(true)
                           {
                              §§push(cutScene);
                              if(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 addr112:
                                 loop12:
                                 while(_loc4_ || cutScene)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       cutScene = §§pop();
                                       while(!_loc4_)
                                       {
                                       }
                                       if(!(_loc4_ || levelId))
                                       {
                                          break;
                                       }
                                       continue loop15;
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(_loc4_ || cutScene)
                                          {
                                             continue loop11;
                                          }
                                          while(true)
                                          {
                                          }
                                          addr171:
                                          addr159:
                                       }
                                       while(true)
                                       {
                                          §§push(LevelManager.§var§);
                                          break loop12;
                                       }
                                    }
                                    addr120:
                                    continue loop4;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    continue loop5;
                                    §§goto(addr112);
                                 }
                                 addr112:
                              }
                              §§goto(addr120);
                           }
                           return §§pop();
                        }
                        §§goto(addr171);
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§+t§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§;O§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§]!B§.§>F§);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§pop().§1F§(true);
                                       loop13:
                                       while(_loc1_ || _loc2_)
                                       {
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc2_)
                                          {
                                             loop14:
                                             for(; _loc1_; loop16:
                                             while(!(_loc2_ && this))
                                             {
                                                super.deActivate();
                                                while(true)
                                                {
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         addr239:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ || this))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§]!B§.§>F§);
                                                                  break loop12;
                                                               }
                                                               addr267:
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§+t§ = null;
                                                         addr216:
                                                         while(_loc1_)
                                                         {
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(_loc1_ || this)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr193:
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop13;
                                             })
                                             {
                                                LevelManager.§;p§ = null;
                                                while(!_loc2_)
                                                {
                                                   continue loop14;
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop14;
                                                   }
                                                   break;
                                                }
                                                while(!(_loc2_ && this))
                                                {
                                                   addr169:
                                                   §§push(this.§;O§);
                                                   if(_loc1_)
                                                   {
                                                      if(!(_loc1_ || _loc1_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                                      §§goto(addr157);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.COMPLETE,this.§@!8§);
                                                         break loop13;
                                                         §§goto(addr169);
                                                      }
                                                      addr173:
                                                   }
                                                }
                                                addr157:
                                                while(true)
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                continue loop12;
                                             }
                                             §§goto(addr216);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr266:
                                          }
                                          §§goto(addr267);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr162);
                                       }
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§pop().§,F§.removeChild(this.§+t§.sprite);
                                    §§goto(addr260);
                                 }
                              }
                              §§goto(addr193);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && eventName)
         {
         }
         if(_loc6_ || eventIndex)
         {
            loop0:
            while(true)
            {
               addr93:
               while(true)
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               var _loc4_:* = eventName;
               if(_loc6_)
               {
                  §§push("SKIP");
                  if(!(_loc5_ && eventIndex))
                  {
                     if(!(_loc5_ && eventName))
                     {
                        addr120:
                        §§push(_loc4_);
                        if(_loc6_ || eventName)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 §§goto(addr168);
                              }
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!(_loc5_ && eventName))
                              {
                                 addr148:
                              }
                              addr160:
                              if(§§pop() === _loc4_)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    addr168:
                                    §§push(1);
                                    if(_loc5_ && eventIndex)
                                    {
                                       addr182:
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 addr184:
                                 loop6:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.§1n§ = true;
                                       loop2:
                                       while(true)
                                       {
                                          addr61:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       break;
                                    case 1:
                                       loop3:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             AngryBirdsFP11.§5V§.§>J§();
                                             if(_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             if(_loc6_ || eventIndex)
                                             {
                                                if(true)
                                                {
                                                   break loop6;
                                                }
                                                continue;
                                             }
                                             §§goto(addr61);
                                          }
                                          break loop6;
                                       }
                                 }
                                 return;
                                 §§push(2);
                              }
                              §§goto(addr184);
                              if(!_loc5_)
                              {
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr120);
               }
               §§goto(addr168);
            }
         }
         §§goto(addr93);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§6%§);
                     loop3:
                     while(true)
                     {
                        if(§§pop() > SKIP_BUTTON_DELAY_LENGHT)
                        {
                           continue loop1;
                        }
                        addr108:
                        §§push(this);
                        §§push(this.§6%§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() + deltaTime);
                        }
                        §§pop().§6%§ = §§pop();
                        while(true)
                        {
                           addr91:
                           loop5:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(this.§1n§)
                                       {
                                          while(!_loc3_)
                                          {
                                             if(!(_loc3_ && superReturn))
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop0;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                addr229:
                                                while(true)
                                                {
                                                   §5!M§.getItemByName("Button_Skip").setVisibility(true);
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                          addr113:
                                          addr76:
                                       }
                                       else
                                       {
                                          §§push(super.run(deltaTime));
                                          if(_loc4_ || deltaTime)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var superReturn:* = §§pop();
                                          if(_loc4_)
                                          {
                                             addr407:
                                             if(superReturn != StateBase.STATE_STATUS_RUNNING)
                                             {
                                                §§push(superReturn);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr407);
                                                }
                                                return §§pop();
                                                addr411:
                                                addr412:
                                             }
                                             addr384:
                                             if(mNextState.length > 0)
                                             {
                                                addr391:
                                                if(_loc3_ && this)
                                                {
                                                   §§goto(addr411);
                                                }
                                                return StateBase.STATE_STATUS_COMPLETED;
                                                addr390:
                                             }
                                             §§push(Boolean(this.§+t§));
                                             §§push(Boolean(this.§+t§));
                                             if(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             addr414:
                                             if(§§pop())
                                             {
                                                addr356:
                                                §§pop();
                                                addr357:
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§+t§);
                                                   if(!(_loc3_ && superReturn))
                                                   {
                                                      §§push(§§pop().update(deltaTime));
                                                      if(!(_loc3_ && deltaTime))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc4_ || this)
                                                            {
                                                               addr311:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                   §§goto(addr384);
                                                }
                                                §§goto(addr391);
                                             }
                                             addr319:
                                             if(§§pop())
                                             {
                                                addr321:
                                                if(_loc4_ || this)
                                                {
                                                   if(!(_loc3_ && superReturn))
                                                   {
                                                      if(_loc4_ || superReturn)
                                                      {
                                                         addr343:
                                                         if(_loc4_)
                                                         {
                                                            this.end();
                                                            addr274:
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr414);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr384);
                                                   }
                                                   §§goto(addr390);
                                                }
                                                §§goto(addr357);
                                             }
                                             addr254:
                                             return StateBase.STATE_STATUS_RUNNING;
                                          }
                                          §§goto(addr391);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              addr128:
                              while(true)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§[!§ = 1;
                                       §§goto(addr113);
                                    }
                                    addr136:
                                 }
                              }
                              addr128:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§[!§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(deltaTime);
                                    if(_loc4_ || deltaTime)
                                    {
                                       §§push(§§pop() / 1000);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§[!§ = §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    addr166:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          break loop10;
                                       }
                                       §5!M§.getItemByName("Button_Skip").mClip.alpha = this.§[!§;
                                       continue loop10;
                                    }
                                 }
                                 §§goto(addr229);
                                 §§goto(addr128);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.end();
            if(_loc4_)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && superReturn))
                     {
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr136);
               }
               §§goto(addr108);
            }
            §§goto(addr91);
         }
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      private function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         var currentLevel:String = null;
         if(!_loc2_)
         {
            while(true)
            {
               §§push(this.§+t§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(!§§pop())
                                 {
                                    §§push(this.§+t§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr228:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       continue loop3;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§+t§);
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(§§pop().§^!"§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(CutScene.§5!_§);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc3_ || currentLevel)
                                                   {
                                                      if(!(_loc2_ && currentLevel))
                                                      {
                                                         addr215:
                                                         §§push(Boolean(§§pop()));
                                                         while(!_loc2_)
                                                         {
                                                            while(!§§pop())
                                                            {
                                                               §§push(LevelManager.§var§);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               continue loop10;
                                                            }
                                                            while(true)
                                                            {
                                                               mNextState = StateCreditsNew.STATE_NAME;
                                                               addr169:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || currentLevel)
                                                                  {
                                                                     addr27:
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop9;
                                                         }
                                                         addr215:
                                                         addr254:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr317:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§+t§);
                                                         break loop9;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop4;
                                                      }
                                                      addr303:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr228);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr303);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr307);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr317);
               }
            }
         }
         §§goto(addr219);
      }
      
      protected function §%b§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         return StateLevelLoadClassic.STATE_NAME;
      }
   }
}
