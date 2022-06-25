package §@z§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §7p§.§+!N§;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateLevelLoadClassic;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §,Y§ extends StateLevelLoadClassic
   {
       
      
      protected var §-G§:§>!K§;
      
      public function §,Y§(initState:Boolean = true, name:String = "LevelLoadStateClassic")
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
                        §5!M§.movieClip.graphics.endFill();
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
                           §5!M§.movieClip.graphics.beginFill(0);
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
                        §5!M§.movieClip.graphics.drawRect(0,0,4000,4000);
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
                  while(LevelManager.§var§ != null)
                  {
                     while(true)
                     {
                        addr113:
                        while(!_loc1_)
                        {
                           §5!M§.setText(this.§0!b§(),"TextField_LevelLoading");
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
                        trace("loadtext: " + this.§0!b§());
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
      
      protected function §0!b§() : String
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
               return §§pop() + FacebookLevelManager.§%!P§(LevelManager.§var§);
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
               §§push(§]!B§.§%h§);
               loop1:
               while(true)
               {
                  §§push((§§pop() as AngryBirdsUltraBook).§56§);
                  addr372:
                  while(true)
                  {
                     §§push(false);
                     addr373:
                     while(true)
                     {
                        §§pop().§5^§ = §§pop();
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
      
      protected function §+!G§(e:Event) : void
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
            if(e.type != RetryingURLLoaderErrorEvent.§3Y§)
            {
               §]!e§.§finally§();
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
                        this.§-G§ = null;
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
      
      protected function §7!K§(e:Event) : void
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
            StateFacebookPlay.sPlaySessionToken = this.§-G§.data;
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
            §§push(Boolean(this.§-G§));
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
               §§push(§§pop() + LevelManager.§var§);
            }
            var name:String = §§pop();
            if(!_loc2_)
            {
            }
            loop3:
            while(true)
            {
               §+!N§.§4!-§(name);
               loop4:
               while(true)
               {
                  loop5:
                  do
                  {
                     §]!e§.§finally§();
                     while(true)
                     {
                        while(!_loc3_)
                        {
                           (§]!B§.§%h§ as AngryBirdsUltraBook).§+k§();
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
