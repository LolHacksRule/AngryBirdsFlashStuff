package §7"@§
{
   import § "C§.§2"=§;
   import §#!e§.§1"B§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §?" §.§=!L§;
   import §]!>§.§1"%§;
   import §]!A§.;
   
   public class §!!7§ extends §@T§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §!!V§:Number;
      
      private static var §+!O§:§=!L§;
      
      private static var §!!i§:§1"%§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelLoadStateClassic";
         }
      }
      
      public function §!!7§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §,L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            LevelManager.§-!4§(LevelManager.§6!M§());
            do
            {
               §;;§ = §6n§;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public static function §6!a§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §!!7§))
         {
            §]N§ = param1;
         }
         do
         {
            §;;§ = §6n§;
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public static function §-V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§#6§.§6!z§.camera)
            {
               if(_loc1_)
               {
                  addr51:
                  §!!V§ = §#6§.§6!z§.camera.§+!Z§;
               }
               while(true)
               {
                  §§goto(addr33);
               }
            }
            addr33:
            while(true)
            {
               §;;§ = §6n§;
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§+!O§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr45:
                     §+!O§.§5l§();
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§>x§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§1"B§ = LevelManager.§1A§(LevelManager.§'!O§);
         if(!(_loc6_ && this))
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
                     addr67:
                     addr84:
                     while(!isNaN(§!!V§))
                     {
                        do
                        {
                           §#6§.§6!z§.camera.§&"&§(§!!V§);
                           do
                           {
                              §!!V§ = NaN;
                           }
                           while(!_loc7_);
                           
                        }
                        while(!(_loc7_ || _loc1_));
                        
                        if(!_loc6_)
                        {
                           continue loop30;
                        }
                        continue loop31;
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§^_§(LevelManager.§'!O§);
               if(_loc7_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§!!i§)
                        {
                           while(true)
                           {
                              §!!i§ = new §1"%§();
                              addr333:
                              while(true)
                              {
                              }
                           }
                           addr329:
                        }
                        while(true)
                        {
                           §§push(§+!O§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §+!O§ = new §=!L§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§[U§.assetsUrl);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr309:
                                                   while(!(_loc6_ && this))
                                                   {
                                                      §§push("");
                                                   }
                                                   continue loop5;
                                                }
                                                addr308:
                                             }
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§[U§.buildNumber);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop7;
                                                            }
                                                            loop17:
                                                            while(true)
                                                            {
                                                               addr241:
                                                               addr285:
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     loop19:
                                                                     for(; !_loc6_; while(_loc7_ || _loc2_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(§+!O§);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§goto(addr108);
                                                                        }
                                                                        §§goto(addr142);
                                                                        §§goto(addr117);
                                                                     })
                                                                     {
                                                                        §§push(§+!O§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().init(§2"=§.§0!,§(),_loc4_,_loc5_,§!!i§);
                                                                           loop21:
                                                                           while(!_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§+!O§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§%!D§();
                                                                                    addr210:
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          if(!(_loc7_ || _loc1_))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push("packages/chapter");
                                                                                          if(_loc7_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc2_.name);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr194:
                                                                                                §§push(§§pop() + ".pak");
                                                                                             }
                                                                                             if(_loc6_ && _loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr140);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                    }
                                                                                    addr108:
                                                                                    continue loop14;
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§pop().§@j§(this.§[!E§);
                                                                                    if(_loc6_ && _loc2_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc1_))
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             addr140:
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr210);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr206);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr308);
                                                                  }
                                                               }
                                                               addr285:
                                                               while(true)
                                                               {
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr207);
                           }
                        }
                     }
                  }
                  §§goto(addr334);
               }
               §§goto(addr285);
            }
            addr334:
            while(true)
            {
               §§push(§+!O§);
               continue loop20;
            }
            return;
         }
         §§goto(addr65);
      }
      
      protected function §[!E§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1"B§ = LevelManager.§1A§(LevelManager.§'!O§);
         if(_loc3_)
         {
            if(_loc1_)
            {
               loop0:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop1:
                  while(!isNaN(§!!V§))
                  {
                     if(!_loc2_)
                     {
                        §#6§.§6!z§.camera.§&"&§(§!!V§);
                     }
                     loop2:
                     while(!_loc2_)
                     {
                        continue loop0;
                        while(true)
                        {
                           §!!V§ = NaN;
                           if(!(_loc2_ && _loc3_))
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      override public function isReady() : Boolean
      {
         return §#6§.§6!z§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#6§.§6!z§.§"§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = §8"D§.STATE_NAME;
         }
      }
   }
}
