package §,!"§
{
   import §2!<§.§;!M§;
   import §8!B§.§#! §;
   import §;f§.§7P§;
   import §]p§.§%§;
   import §^]§.§7!K§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §-O§ extends §"H§
   {
      
      public static const §-A§:String = "LevelLoadStateClassic";
      
      private static var §-Y§:Number;
      
      private static var §4!%§:§;!M§;
      
      private static var §<f§:§%§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-A§ = "LevelLoadStateClassic";
         }
      }
      
      public function §-O§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      public static function § b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §`!K§.§!e§(§`!K§.§6J§());
            do
            {
               §[!N§ = §8l§;
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §9!<§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §7!>§ = param1;
         }
         do
         {
            §[!N§ = §8l§;
         }
         while(!(_loc2_ || param1));
         
      }
      
      public static function §8!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§#! §.§`'§.camera)
            {
               if(_loc2_)
               {
                  §-Y§ = §#! §.§`'§.camera.§%L§;
                  addr53:
                  while(true)
                  {
                  }
                  addr53:
               }
               §§goto(addr53);
            }
            while(true)
            {
               §[!N§ = §8l§;
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr53);
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§4!%§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr46:
                     §4!%§.§`b§();
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§7!K§ = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§[z§ = §`!K§.§!I§(§`!K§.§5g§);
         if(!(_loc6_ && _loc2_))
         {
            if(_loc1_)
            {
               loop21:
               while(true)
               {
                  initLevelMain(_loc1_);
                  loop22:
                  while(true)
                  {
                     while(!isNaN(§-Y§))
                     {
                        if(!(_loc6_ && this))
                        {
                           if(!_loc6_)
                           {
                              continue loop21;
                           }
                           continue loop22;
                        }
                        addr82:
                        do
                        {
                           §-Y§ = NaN;
                        }
                        while(!(_loc7_ || this));
                        
                        if(true)
                        {
                           break;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc2_ = §`!K§.§0@§(§`!K§.§5g§);
               if(_loc2_)
               {
                  loop0:
                  while(true)
                  {
                     if(!§<f§)
                     {
                        §<f§ = new §%§();
                     }
                     §§push(§4!%§);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §4!%§ = new §;!M§();
                              §§push(§#f§.assetsUrl);
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr284:
                                       while(true)
                                       {
                                          §§pop();
                                          addr285:
                                          while(true)
                                          {
                                             §§push("");
                                          }
                                       }
                                       addr284:
                                    }
                                    while(true)
                                    {
                                       addr261:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop6:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             addr273:
                                             while(!_loc6_)
                                             {
                                                §§push(§#f§.buildNumber);
                                                while(!(_loc6_ && _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr284);
                           }
                        }
                        §§goto(addr192);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§pop().§?t§(<pack url="{_loc3_}"/>);
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr195);
                           }
                           continue loop0;
                           addr150:
                        }
                     }
                  }
               }
            }
            §§goto(addr303);
         }
         §§goto(addr77);
      }
      
      protected function §@S§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§[z§ = §`!K§.§!I§(§`!K§.§5g§);
         if(_loc2_ || _loc2_)
         {
            if(_loc1_)
            {
               loop0:
               while(true)
               {
                  initLevelMain(_loc1_);
                  while(!isNaN(§-Y§))
                  {
                     if(_loc3_)
                     {
                        do
                        {
                           §-Y§ = NaN;
                        }
                        while(!_loc2_);
                        
                     }
                     else
                     {
                        addr87:
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
               addr90:
            }
            return;
         }
         §§goto(addr90);
      }
      
      override public function isReady() : Boolean
      {
         return §#! §.§`'§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §#! §.§`'§.§]=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            mNextState = this.§>!=§();
         }
      }
      
      protected function §>!=§() : String
      {
         return StatePlay.§-A§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = §0!5§.§-A§;
         }
      }
   }
}
