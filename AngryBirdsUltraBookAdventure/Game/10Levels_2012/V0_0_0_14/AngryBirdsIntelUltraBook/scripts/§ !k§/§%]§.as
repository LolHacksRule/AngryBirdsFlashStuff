package § !k§
{
   import §!!§.§>4§;
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §"i§.§5V§;
   import §4!C§.§,!l§;
   import §5i§.§4!]§;
   import §8!Z§.§ !D§;
   
   public class §%]§ extends §@!o§
   {
      
      public static const §3F§:String = "LevelLoadStateClassic";
      
      private static var §[!n§:Number;
      
      private static var §%!M§:§5V§;
      
      private static var §3!8§:§ !D§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §3F§ = "LevelLoadStateClassic";
         }
      }
      
      public function §%]§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §]!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            LevelManager.§9!d§(LevelManager.§=L§());
         }
         do
         {
            §5!F§ = § !v§;
         }
         while(!_loc2_);
         
      }
      
      public static function §<#§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §,!-§ = param1;
            do
            {
               §5!F§ = § !v§;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public static function §=>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§4!]§.§8C§.camera)
            {
               while(true)
               {
                  §[!n§ = §4!]§.§8C§.camera.§=!m§;
                  addr53:
                  while(true)
                  {
                  }
               }
               addr47:
            }
            while(true)
            {
               §5!F§ = § !v§;
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
            §§push(§%!M§);
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr52);
            }
            §§pop().§?!^§();
         }
         addr52:
         if(!(_loc1_ && this))
         {
            §§push(§%!M§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§@+§ = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§>4§ = LevelManager.§5!c§(LevelManager.§^!F§);
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
                     while(!isNaN(§[!n§))
                     {
                        loop31:
                        while(true)
                        {
                           §4!]§.§8C§.camera.§9!Y§(§[!n§);
                           while(_loc6_)
                           {
                              §[!n§ = NaN;
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
               _loc2_ = LevelManager.§,m§(LevelManager.§^!F§);
               if(!(_loc7_ && this))
               {
                  if(_loc2_)
                  {
                     if(!_loc7_)
                     {
                        if(!§3!8§)
                        {
                           while(true)
                           {
                              §3!8§ = new § !D§();
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
                           §§push(§%!M§);
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       §%!M§ = new §5V§();
                                    }
                                    addr312:
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§[!Z§.assetsUrl);
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
                                                         §§push(§[!Z§.buildNumber);
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
                                                                        §§push(§%!M§);
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§pop().init(§,!l§.§"!D§(),_loc4_,_loc5_,§3!8§);
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
                                                                           §§pop().§@e§(<pack url="{_loc3_}"/>);
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
                                                                                 §§push(§%!M§);
                                                                                 if(!(_loc7_ && _loc2_))
                                                                                 {
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       §§pop().§-u§(this.§ !K§);
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
                                                                                       §§pop().§?r§();
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
               §§push(§%!M§);
            }
            return;
         }
         §§goto(addr64);
      }
      
      protected function § !K§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>4§ = LevelManager.§5!c§(LevelManager.§^!F§);
         if(!_loc2_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && this))
               {
                  addr86:
                  initLevelMain(_loc1_);
               }
               while(!isNaN(§[!n§))
               {
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §4!]§.§8C§.camera.§9!Y§(§[!n§);
                  }
                  do
                  {
                     §[!n§ = NaN;
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
         return §4!]§.§8C§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §4!]§.§8C§.§-!!§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = this.§^Q§();
         }
      }
      
      protected function §^Q§() : String
      {
         return StatePlay.§3F§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            mNextState = §6!U§.§3F§;
         }
      }
   }
}
