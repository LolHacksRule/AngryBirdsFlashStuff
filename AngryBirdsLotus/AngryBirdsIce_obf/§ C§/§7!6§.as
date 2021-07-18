package § C§
{
   import §!%§.§=0§;
   import §!Y§.§[o§;
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   
   public class §7!6§ extends §`m§
   {
      
      public static const §?B§:String = "LevelLoadStateClassic";
      
      private static var § !<§:Number;
      
      private static var §8!"§:§>!8§;
      
      private static var §0!5§:§=0§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?B§ = "LevelLoadStateClassic";
         }
      }
      
      public function §7!6§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function §2v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7!6§))
         {
            §0$§.§;4§(§0$§.§?W§());
            do
            {
               §"E§ = §+E§;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public static function §[r§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §8Z§ = param1;
         }
         do
         {
            §"E§ = §+E§;
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public static function §<!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§[o§.§='§.camera)
            {
               if(_loc2_)
               {
                  § !<§ = §[o§.§='§.camera.§=[§;
                  addr73:
                  while(true)
                  {
                  }
                  addr73:
               }
               §§goto(addr73);
            }
            while(true)
            {
               §"E§ = §+E§;
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§8!"§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr26);
            }
            §§pop().§2O§();
         }
         addr26:
         if(!_loc2_)
         {
            §§push(§8!"§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§&9§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         if(!_loc7_)
         {
            if(_loc1_)
            {
               if(_loc6_ || _loc1_)
               {
                  initLevelMain(_loc1_);
                  addr82:
                  loop21:
                  while(true)
                  {
                     while(!isNaN(§ !<§))
                     {
                        if(!_loc7_)
                        {
                           continue loop21;
                        }
                        addr69:
                        do
                        {
                           § !<§ = NaN;
                        }
                        while(_loc7_ && this);
                        
                        if(true)
                        {
                           break;
                        }
                     }
                  }
                  addr82:
               }
               §§goto(addr82);
            }
            else
            {
               _loc2_ = §0$§.§,o§(§0$§.§[C§);
               if(_loc2_)
               {
                  if(!§0!5§)
                  {
                     §0!5§ = new §=0§();
                  }
                  §§push(§8!"§);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §8!"§ = new §>!8§();
                           loop2:
                           while(true)
                           {
                              §§push(§"!G§.assetsUrl);
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop6:
                                          while(_loc6_)
                                          {
                                             _loc4_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§"!G§.buildNumber);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(_loc6_ || _loc1_)
                                                      {
                                                         §§pop();
                                                         §§push("");
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                            addr155:
                                                            if(_loc7_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc6_ || _loc1_)
                                                               {
                                                                  do
                                                                  {
                                                                     §§push(§8!"§);
                                                                     loop20:
                                                                     while(_loc6_)
                                                                     {
                                                                        §§pop().§34§(<pack url="{_loc3_}"/>);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§8!"§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr180:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§9R§();
                                                                              addr181:
                                                                              while(true)
                                                                              {
                                                                                 §§push("packages/chapter");
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(§§pop() + _loc2_.name);
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       addr153:
                                                                                       §§push(§§pop() + ".pak");
                                                                                    }
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 §§goto(addr153);
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(§8!"§);
                                                                              break loop20;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           addr214:
                                                                           addr269:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().init(§[-§.§]B§(),_loc4_,_loc5_,§0!5§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr180);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  while(false);
                                                                  
                                                                  §§goto(addr287);
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr269);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr178);
                  }
               }
            }
            addr287:
            return;
         }
         §§goto(addr82);
      }
      
      protected function §]!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
         if(!_loc3_)
         {
            if(_loc1_)
            {
               loop0:
               while(true)
               {
                  initLevelMain(_loc1_);
                  while(!isNaN(§ !<§))
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §[o§.§='§.camera.§&!7§(§ !<§);
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
               addr85:
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function isReady() : Boolean
      {
         return §[o§.§='§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §[o§.§='§.§?^§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = this.§<!$§();
         }
      }
      
      protected function §<!$§() : String
      {
         return StatePlay.§?B§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            mNextState = §4t§.§?B§;
         }
      }
   }
}
