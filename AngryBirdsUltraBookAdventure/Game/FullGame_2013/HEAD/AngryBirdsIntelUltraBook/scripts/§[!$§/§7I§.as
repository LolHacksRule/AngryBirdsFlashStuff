package §[!$§
{
   import §'8§.FacebookLevelManager;
   import §5=§.§9F§;
   import §7t§.StateLevelLoadClassic;
   import §;!1§.§9u§;
   import §;!1§.ErrorPopup;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §7I§ extends StateLevelLoadClassic
   {
       
      
      protected var §@!c§:§[!<§;
      
      public function §7I§(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr67:
                  while(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(initState,name);
            while(!_loc4_)
            {
               if(!_loc4_)
               {
                  return;
               }
            }
            §§goto(addr67);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               super.init();
               while(true)
               {
                  loop3:
                  for(; !(_loc1_ && _loc1_); if(_loc2_ || _loc2_)
                  {
                     loop6:
                     do
                     {
                        §`=§.movieClip.graphics.endFill();
                        addr69:
                        addr134:
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc1_ && this))
                              {
                                 continue loop6;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §`=§.movieClip.graphics.beginFill(0);
                           continue loop3;
                           §§goto(addr69);
                        }
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     if(!_loc2_)
                     {
                        §§goto(addr93);
                     }
                     return;
                  })
                  {
                     loop4:
                     while(true)
                     {
                        §`=§.movieClip.graphics.drawRect(0,0,4000,4000);
                        addr93:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr134);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  addr118:
                  while(LevelManager.§1m§ != null)
                  {
                     while(true)
                     {
                        addr113:
                        while(!_loc1_)
                        {
                           §`=§.setText(this.§=+§(),"TextField_LevelLoading");
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr24);
               }
               addr76:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               addr93:
               if(!_loc1_)
               {
                  addr32:
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr112);
                     }
                     §§goto(addr41);
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        trace("loadtext: " + this.§=+§());
                        addr60:
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_ || this)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr76);
                                 }
                                 else
                                 {
                                    §§goto(addr118);
                                 }
                              }
                              break;
                           }
                           continue loop6;
                           §§goto(addr93);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr32);
                  }
                  addr41:
                  addr24:
                  return;
                  addr105:
               }
               §§goto(addr60);
            }
         }
         §§goto(addr105);
      }
      
      protected function §=+§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         §§push(" - ");
         if(!(_loc2_ && _loc2_))
         {
            if(!_loc2_)
            {
               return §§pop() + FacebookLevelManager.§5j§(LevelManager.§1m§);
            }
         }
      }
      
      override protected function initLevelMain(levelData:LevelModel) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               while(_loc3_ || _loc2_)
               {
                  super.initLevelMain(levelData);
                  while(_loc2_ && this)
                  {
                  }
                  if(!(_loc3_ || levelData))
                  {
                     continue;
                  }
                  return;
                  addr69:
               }
            }
         }
         §§goto(addr69);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §§push(§`S§.§=F§);
               loop1:
               while(true)
               {
                  §§push((§§pop() as AngryBirdsUltraBook).§^!c§);
                  addr372:
                  while(true)
                  {
                     §§push(false);
                     addr373:
                     while(true)
                     {
                        §§pop().§8!k§ = §§pop();
                        addr374:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr360);
      }
      
      protected function §-N§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            addr141:
            while(true)
            {
               addr137:
            }
            addr141:
         }
         loop1:
         while(true)
         {
            if(e.type != RetryingURLLoaderErrorEvent.§6!O§)
            {
               §9u§.§#"§();
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§@!c§ = null;
                        continue loop3;
                        addr127:
                     }
                     §§goto(addr141);
                  }
                  if(!(_loc3_ || e))
                  {
                     continue;
                  }
                  if(!(_loc2_ && e))
                  {
                     if(!(_loc2_ && e))
                     {
                        if(_loc2_ && _loc3_)
                        {
                           §§goto(addr118);
                        }
                        return;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr136);
               }
            }
            while(true)
            {
               §§goto(addr136);
            }
         }
      }
      
      protected function §3i§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
            }
            addr96:
         }
         loop1:
         while(true)
         {
            StateFacebookPlay.sPlaySessionToken = this.§@!c§.data;
            while(_loc3_)
            {
               while(!(_loc2_ && e))
               {
                  continue loop1;
                  while(_loc3_ || e)
                  {
                     if(_loc3_)
                     {
                        return;
                     }
                  }
               }
            }
            §§goto(addr96);
         }
      }
      
      override public function isReady() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§@!c§));
            while(true)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  §§push(false);
                  break;
               }
               §§push(super.isReady());
               if(!_loc2_)
               {
                  break;
               }
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr53:
               while(true)
               {
                  continue loop0;
               }
            }
            addr57:
         }
         while(true)
         {
            super.onLevelLoadError();
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            if(!(_loc3_ && name))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr57);
            }
            §§goto(addr53);
         }
         §§push("level-");
         if(_loc2_)
         {
            if(_loc2_)
            {
               addr64:
               §§push(§§pop() + LevelManager.§1m§);
            }
            var name:String = §§pop();
            if(!_loc2_)
            {
            }
            loop3:
            while(true)
            {
               §9F§.§40§(name);
               loop4:
               while(true)
               {
                  loop5:
                  do
                  {
                     §9u§.§#"§();
                     while(true)
                     {
                        while(!_loc3_)
                        {
                           (§`S§.§=F§ as AngryBirdsUltraBook).§1!$§();
                           continue loop4;
                           if(_loc2_ || _loc3_)
                           {
                              continue loop5;
                           }
                        }
                     }
                  }
                  while(_loc3_ && this);
                  
                  continue loop3;
               }
            }
         }
         §§goto(addr64);
      }
   }
}
