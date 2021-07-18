package §^U§
{
   import §%!K§.§ i§;
   import §,P§.§'_§;
   import §5u§.§-!h§;
   import §<i§.§'!e§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import §^!m§.§6§;
   
   public class §`!;§ extends § get§
   {
      
      public static const §%!Q§:String = "LevelLoadStateClassic";
      
      private static var §4!t§:Number;
      
      private static var §+"#§:§ i§;
      
      private static var §<!O§:§-!h§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!Q§ = "LevelLoadStateClassic";
         }
      }
      
      public function §`!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §;c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`!r§.loadLevel(§`!r§.§8E§());
            do
            {
               §`!w§ = §>!k§;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function §^!$§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §"! § = param1;
         }
         do
         {
            §`!w§ = §>!k§;
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public static function §%P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§'_§.§=M§.camera)
            {
               while(true)
               {
                  §4!t§ = §'_§.§=M§.camera.§<>§;
                  addr67:
                  while(true)
                  {
                  }
                  addr39:
                  if(!(_loc1_ || §`!;§))
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
            while(true)
            {
               §`!w§ = §>!k§;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr39);
            }
            §§goto(addr46);
         }
         §§goto(addr67);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§+"#§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr57);
            }
            §§pop().§ E§();
         }
         addr57:
         if(_loc2_)
         {
            §§push(§+"#§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§3!l§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§'!e§ = §`!r§.getLevelForId(§`!r§.§0B§);
         if(_loc7_ || _loc2_)
         {
            if(_loc1_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  initLevelMain(_loc1_);
               }
               loop29:
               while(true)
               {
                  addr65:
                  addr89:
                  while(!isNaN(§4!t§))
                  {
                     continue loop29;
                  }
               }
            }
            else
            {
               _loc2_ = §`!r§.§6!8§(§`!r§.§0B§);
               if(_loc7_ || _loc1_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§<!O§)
                        {
                           while(true)
                           {
                              §<!O§ = new §-!h§();
                              addr331:
                              while(true)
                              {
                              }
                           }
                           addr327:
                        }
                        while(true)
                        {
                           §§push(§+"#§);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop20:
                                 while(true)
                                 {
                                    §§push(§+"#§);
                                    loop21:
                                    while(true)
                                    {
                                       §§pop().§+!H§();
                                       addr203:
                                       while(true)
                                       {
                                          §§push("packages/chapter" + _loc2_.name);
                                          if(!_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                addr191:
                                                _loc3_ = §§pop() + ".pak";
                                                loop23:
                                                while(!(_loc6_ && _loc1_))
                                                {
                                                   do
                                                   {
                                                      §§push(§+"#§);
                                                      while(_loc7_)
                                                      {
                                                         §§pop().§98§(<pack url="{_loc3_}"/>);
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               continue loop23;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc7_ || _loc1_))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(§+"#§);
                                                               if(!_loc6_)
                                                               {
                                                                  addr108:
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr142);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop19:
                                                               while(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push("");
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§!u§.buildNumber);
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc7_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc5_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§+"#§);
                                                                                                   addr206:
                                                                                                   addr129:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().init(§6§.§25§(),_loc4_,_loc5_,§<!O§);
                                                                                                      break loop23;
                                                                                                      §§goto(addr108);
                                                                                                   }
                                                                                                   if(_loc6_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop10;
                                                                                          addr217:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr241);
                                                                                 }
                                                                                 addr291:
                                                                              }
                                                                              addr292:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               while(true)
                                                               {
                                                                  §+"#§ = new § i§();
                                                                  continue loop0;
                                                               }
                                                               addr301:
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop21;
                                                   }
                                                   while(false);
                                                   
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   continue loop20;
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr301);
                           }
                        }
                     }
                  }
                  §§goto(addr332);
               }
               §§goto(addr265);
            }
            §§goto(addr332);
         }
         §§goto(addr70);
      }
      
      protected function §?!c§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!e§ = §`!r§.getLevelForId(§`!r§.§0B§);
         if(_loc3_ || _loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  initLevelMain(_loc1_);
               }
               loop0:
               while(!isNaN(§4!t§))
               {
                  if(!_loc2_)
                  {
                     §'_§.§=M§.camera.§'!s§(§4!t§);
                  }
                  do
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(§4!t§ = NaN, !(_loc3_ || this));
                  
                  break;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function isReady() : Boolean
      {
         return §'_§.§=M§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §'_§.§=M§.§'§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            mNextState = this.getPlayState();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§%!Q§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            mNextState = §1!i§.§%!Q§;
         }
      }
   }
}
