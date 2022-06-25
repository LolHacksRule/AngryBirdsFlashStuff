package §;H§
{
   import §+K§.§7$§;
   import §3!G§.§ y§;
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §7X§.§^"§;
   import §>! §.§^!c§;
   import §[!]§.§ !#§;
   
   public class §;W§ extends §3!u§
   {
      
      public static const §"!s§:String = "LevelLoadStateClassic";
      
      private static var § else§:Number;
      
      private static var §[!S§:§ !#§;
      
      private static var §+!v§:§7$§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!s§ = "LevelLoadStateClassic";
         }
      }
      
      public function §;W§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §&p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            LevelManager.§@3§(LevelManager.§7!X§());
         }
         do
         {
            §"!?§ = §5!@§;
         }
         while(!_loc2_);
         
      }
      
      public static function §7l§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §^!%§ = param1;
            do
            {
               §"!?§ = §5!@§;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public static function §&!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§^!c§.§5!Y§.camera)
            {
               while(true)
               {
                  § else§ = §^!c§.§5!Y§.camera.§05§;
                  addr53:
                  while(true)
                  {
                  }
               }
               addr47:
            }
            while(true)
            {
               §"!?§ = §5!@§;
               if(_loc1_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§[!S§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr52);
            }
            §§pop().§=p§();
         }
         addr52:
         if(!(_loc1_ && this))
         {
            §§push(§[!S§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<!#§ = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§ y§ = LevelManager.§7z§(LevelManager.§%n§);
         if(!_loc7_)
         {
            if(_loc1_)
            {
               loop28:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop29:
                  while(true)
                  {
                     addr59:
                     addr78:
                     while(!isNaN(§ else§))
                     {
                        loop31:
                        while(true)
                        {
                           §^!c§.§5!Y§.camera.§0[§(§ else§);
                           while(_loc6_)
                           {
                              § else§ = NaN;
                              if(_loc6_)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    continue loop28;
                                 }
                                 continue loop31;
                              }
                           }
                           continue loop29;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§1H§(LevelManager.§%n§);
               if(!(_loc7_ && this))
               {
                  if(_loc2_)
                  {
                     if(!_loc7_)
                     {
                        if(!§+!v§)
                        {
                           while(true)
                           {
                              §+!v§ = new §7$§();
                              addr327:
                              while(true)
                              {
                              }
                           }
                           addr323:
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§[!S§);
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       §[!S§ = new § !#§();
                                    }
                                    addr312:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§4!k§.assetsUrl);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr301:
                                                while(true)
                                                {
                                                   §§push("");
                                                }
                                             }
                                             addr300:
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§4!k§.buildNumber);
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr275:
                                                                  while(true)
                                                                  {
                                                                     §§push("");
                                                                  }
                                                               }
                                                               addr274:
                                                            }
                                                            while(true)
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     _loc5_ = §§pop();
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§[!S§);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§pop().init(§^"§.§07§(),_loc4_,_loc5_,§+!v§);
                                                                           addr225:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           continue loop1;
                                                                           addr132:
                                                                           if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§pop().§]!4§(<pack url="{_loc3_}"/>);
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc6_ || this))
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 §§push(§[!S§);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       §§pop().§=g§(this.§`!f§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr123:
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 addr198:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§goto(addr132);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§'!P§();
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr201:
                                                                                 }
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr300);
                                                   §§goto(addr301);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr199);
                           }
                        }
                     }
                     §§goto(addr327);
                  }
                  §§goto(addr328);
               }
               §§goto(addr312);
            }
            addr328:
            while(true)
            {
               §§push(§[!S§);
            }
            return;
         }
         §§goto(addr64);
      }
      
      protected function §`!f§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ y§ = LevelManager.§7z§(LevelManager.§%n§);
         if(!_loc2_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && this))
               {
                  addr86:
                  initLevelMain(_loc1_);
               }
               while(!isNaN(§ else§))
               {
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §^!c§.§5!Y§.camera.§0[§(§ else§);
                  }
                  do
                  {
                     § else§ = NaN;
                  }
                  while(!(_loc3_ || _loc1_));
                  
                  break;
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function isReady() : Boolean
      {
         return §^!c§.§5!Y§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §^!c§.§5!Y§.§>Y§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.§2!Y§();
         }
      }
      
      protected function §2!Y§() : String
      {
         return StatePlay.§"!s§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §!y§.§"!s§;
         }
      }
   }
}
