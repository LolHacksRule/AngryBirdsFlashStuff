package §2!U§
{
   import §"!i§.§"!'§;
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §-^§.§?7§;
   import §-o§.§4w§;
   import §;!y§.§,!s§;
   import §]!+§.§5!1§;
   
   public class §3!;§ extends §]W§
   {
      
      public static const §'!q§:String = "LevelLoadStateClassic";
      
      private static var §2!Q§:Number;
      
      private static var §3z§:§4w§;
      
      private static var §!w§:§5!1§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!q§ = "LevelLoadStateClassic";
         }
      }
      
      public function §3!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §9!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LevelManager.§`!O§(LevelManager.§8`§());
         }
         do
         {
            §77§ = §#O§;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public static function §5!f§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §>a§ = param1;
            do
            {
               §77§ = §#O§;
            }
            while(!(_loc2_ || §3!;§));
            
         }
      }
      
      public static function §0!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §3!;§)
         {
            if(§,!s§.§=!I§.camera)
            {
               if(_loc2_ || §3!;§)
               {
                  §2!Q§ = §,!s§.§=!I§.camera.§0l§;
               }
               while(true)
               {
               }
               addr73:
            }
            while(true)
            {
               §77§ = §#O§;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr73);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§3z§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr31:
                     §3z§.§]!@§();
                  }
               }
               return;
            }
         }
         §§goto(addr31);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§8K§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc1_:§"!'§ = LevelManager.§"!l§(LevelManager.§"L§);
         if(_loc6_ || _loc2_)
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
                     addr50:
                     addr83:
                     while(!isNaN(§2!Q§))
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           if(!_loc7_)
                           {
                              §,!s§.§=!I§.camera.§!!7§(§2!Q§);
                              continue loop30;
                           }
                           continue loop31;
                        }
                        continue loop30;
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§`r§(LevelManager.§"L§);
               if(_loc6_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        if(!§!w§)
                        {
                           addr328:
                           while(true)
                           {
                              §!w§ = new §5!1§();
                              addr332:
                              while(true)
                              {
                              }
                           }
                           addr328:
                        }
                        loop0:
                        while(true)
                        {
                           §§push(§3z§);
                           loop1:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §3z§ = new §4w§();
                                    loop3:
                                    while(!_loc7_)
                                    {
                                       §§push(§?!4§.assetsUrl);
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
                                                   addr306:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                   }
                                                }
                                                addr305:
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop4;
                                                   addr191:
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      loop26:
                                                      while(!_loc7_)
                                                      {
                                                         loop27:
                                                         do
                                                         {
                                                            §§push(§3z§);
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§pop().§&!D§(<pack url="{_loc3_}"/>);
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§push(§3z§);
                                                                           if(!(_loc6_ || _loc1_))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           addr102:
                                                                           if(!(_loc7_ && _loc2_))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§pop().§!e§(this.§"a§);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    addr121:
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       continue loop27;
                                                                                    }
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§3z§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().init(§?7§.§7h§(),_loc4_,_loc5_,§!w§);
                                                                                             break loop29;
                                                                                             addr204:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§pop().§5@§();
                                                                                                   break loop26;
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr102);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push("");
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr237:
                                                                                                   if(_loc6_ || _loc1_)
                                                                                                   {
                                                                                                      if(!(_loc6_ || _loc2_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc5_ = §§pop();
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc7_ && _loc1_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§goto(addr237);
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                                addr172:
                                                                                                if(_loc7_ && _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop() + _loc2_.name);
                                                                                                if(_loc6_ || _loc1_)
                                                                                                {
                                                                                                   §§push(§§pop() + ".pak");
                                                                                                }
                                                                                                §§goto(addr191);
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr328);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop26;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr204);
                                                                     }
                                                                     addr202:
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                            }
                                                         }
                                                         while(false);
                                                         
                                                         return;
                                                      }
                                                      while(!(_loc7_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push("packages/chapter");
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§goto(addr172);
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         §§goto(addr261);
                                                         §§push(§?!4§.buildNumber);
                                                         §§goto(addr212);
                                                      }
                                                      addr212:
                                                      continue loop3;
                                                      addr286:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr202);
                           }
                        }
                     }
                     §§goto(addr328);
                  }
                  §§goto(addr333);
               }
               §§goto(addr219);
            }
            §§goto(addr333);
         }
         §§goto(addr48);
      }
      
      protected function §"a§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§"!'§ = LevelManager.§"!l§(LevelManager.§"L§);
         if(!_loc2_)
         {
            if(_loc1_)
            {
               loop0:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop1:
                  while(!isNaN(§2!Q§))
                  {
                     while(true)
                     {
                        §,!s§.§=!I§.camera.§!!7§(§2!Q§);
                        addr79:
                        while(_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                        addr51:
                        if(!(_loc2_ && _loc3_))
                        {
                           break loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      override public function isReady() : Boolean
      {
         return §,!s§.§=!I§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!s§.§=!I§.§+T§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§>!A§();
         }
      }
      
      protected function §>!A§() : String
      {
         return StatePlay.§'!q§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            mNextState = §2!=§.§'!q§;
         }
      }
   }
}
