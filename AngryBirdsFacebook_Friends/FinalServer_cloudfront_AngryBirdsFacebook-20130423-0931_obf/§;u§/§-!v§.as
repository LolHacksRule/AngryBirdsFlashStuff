package §;u§
{
   import §#"A§.§'"U§;
   import §,l§.§0z§;
   import §2<§.§8M§;
   import §9!n§.§0"T§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   
   public class §-!v§ extends §4"2§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var § !;§:Number;
      
      private static var §#q§:§'"U§;
      
      private static var § ""§:§0z§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            STATE_NAME = "LevelLoadStateClassic";
         }
      }
      
      public function §-!v§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      public static function §>"@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            LevelManager.§,!m§(LevelManager.§8t§());
         }
         do
         {
            §,"K§ = §4!I§;
         }
         while(_loc2_ && §-!v§);
         
      }
      
      public static function §-2§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §-!v§))
         {
            §7!I§ = param1;
         }
         do
         {
            §,"K§ = §4!I§;
         }
         while(!_loc2_);
         
      }
      
      public static function §^!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §-!v§)
         {
            if(§?l§.§'h§.camera)
            {
               while(true)
               {
                  § !;§ = §?l§.§'h§.camera.§=!r§;
                  addr73:
                  while(true)
                  {
                  }
                  addr55:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
            while(true)
            {
               §,"K§ = §4!I§;
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§#q§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr51:
                     §#q§.§8!`§();
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§3-§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§0"T§ = LevelManager.§ "§(LevelManager.§ T§);
         if(_loc6_)
         {
            if(_loc1_)
            {
               loop30:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop31:
                  while(true)
                  {
                     loop32:
                     while(!isNaN(§ !;§))
                     {
                        if(_loc6_)
                        {
                           continue loop30;
                        }
                        addr66:
                        do
                        {
                           § !;§ = NaN;
                        }
                        while(_loc7_);
                        
                        if(!_loc6_)
                        {
                           continue loop31;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              break loop32;
                           }
                           continue loop32;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§5!T§(LevelManager.§ T§);
               if(_loc6_ || _loc2_)
               {
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr338);
               }
               loop0:
               while(true)
               {
                  if(!§ ""§)
                  {
                     while(true)
                     {
                        § ""§ = new §0z§();
                        addr337:
                        while(true)
                        {
                        }
                     }
                     addr333:
                  }
                  while(true)
                  {
                     §§push(§#q§);
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        loop23:
                        while(true)
                        {
                           §§push(§#q§);
                           loop24:
                           while(!_loc7_)
                           {
                              continue loop4;
                              addr92:
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              §§pop().§+g§(this.§<";§);
                              if(_loc6_ || _loc1_)
                              {
                                 addr109:
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || _loc1_)
                                       {
                                          addr125:
                                          if(false)
                                          {
                                             loop27:
                                             while(true)
                                             {
                                                §§push(§#q§);
                                                loop28:
                                                while(true)
                                                {
                                                   §§pop().§!x§(<pack url="{_loc3_}"/>);
                                                   addr138:
                                                   addr232:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§#q§);
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop28;
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§#q§);
                                                               break loop24;
                                                            }
                                                            addr254:
                                                         }
                                                         break;
                                                      }
                                                      addr209:
                                                      loop25:
                                                      while(!(_loc7_ && _loc1_))
                                                      {
                                                         addr216:
                                                         if(_loc6_ || _loc1_)
                                                         {
                                                            §§push("packages/chapter");
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               addr169:
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(§§pop() + _loc2_.name);
                                                                  if(!(_loc7_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() + ".pak");
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop18:
                                                                  for(; !(_loc7_ && _loc1_); §§goto(addr169))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr246:
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr254);
                                                                        }
                                                                        addr270:
                                                                        addr295:
                                                                        while(_loc6_)
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr296:
                                                                           while(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§push("");
                                                                              while(true)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || _loc1_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr242);
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr278:
                                                                        addr293:
                                                                        while(!(_loc7_ && this))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           break loop25;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           break loop15;
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     addr242:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr278);
                                                                     §§goto(addr235);
                                                                  }
                                                                  addr235:
                                                               }
                                                            }
                                                            _loc3_ = §§pop();
                                                            while(_loc6_ || _loc1_)
                                                            {
                                                               continue loop27;
                                                               §§goto(addr109);
                                                            }
                                                            §§goto(addr337);
                                                            addr189:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr216);
                                                            }
                                                            addr328:
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      addr209:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr259);
                                                            §§push(§!"R§.buildNumber);
                                                         }
                                                         break;
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop23;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr338);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr138);
                           }
                           while(true)
                           {
                              §§pop().init(§8M§.§+!y§(),_loc4_,_loc5_,§ ""§);
                              §§goto(addr232);
                           }
                        }
                     }
                  }
               }
            }
            addr338:
            return;
         }
         §§goto(addr45);
      }
      
      protected function §<";§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0"T§ = LevelManager.§ "§(LevelManager.§ T§);
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(_loc3_)
               {
                  initLevelMain(_loc1_);
               }
               while(!isNaN(§ !;§))
               {
                  if(_loc3_ || _loc1_)
                  {
                     §?l§.§'h§.camera.§#"8§(§ !;§);
                  }
                  do
                  {
                     § !;§ = NaN;
                  }
                  while(!(_loc3_ || _loc1_));
                  
                  if(!_loc2_)
                  {
                     addr63:
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      override public function isReady() : Boolean
      {
         return §?l§.§'h§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §?l§.§'h§.§="D§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mNextState = this.getPlayState();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = §9"@§.STATE_NAME;
         }
      }
   }
}
