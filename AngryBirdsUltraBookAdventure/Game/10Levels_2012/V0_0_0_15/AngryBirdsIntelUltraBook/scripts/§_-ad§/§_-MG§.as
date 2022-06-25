package §_-ad§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-Ga§.§_-bm§;
   import §_-Hb§.§_-ok§;
   import §_-aC§.§_-ML§;
   import §_-dX§.§_-03L§;
   import §_-qO§.§ in§;
   
   public class §_-MG§ extends §_-gC§
   {
      
      public static const §_-pk§:String = "LevelLoadStateClassic";
      
      private static var §_-07h§:Number;
      
      private static var §_-09o§:§_-03L§;
      
      private static var §_-q§:§_-ML§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-pk§ = "LevelLoadStateClassic";
         }
      }
      
      public function §_-MG§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §_-4t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            LevelManager.§_-s8§(LevelManager.§_-xE§());
            do
            {
               §_-lc§ = §_-z0§;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function §_-0Dj§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-0F5§ = param1;
            do
            {
               §_-lc§ = §_-z0§;
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §_-0Eg§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§ in§.§_-Dc§.camera)
            {
               while(true)
               {
                  §_-07h§ = § in§.§_-Dc§.camera.§_-kC§;
                  while(true)
                  {
                  }
               }
               addr51:
            }
            do
            {
               §_-lc§ = §_-z0§;
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr51);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§_-09o§);
            if(_loc1_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr31);
            }
            §§pop().§_-0Eu§();
         }
         addr31:
         if(_loc1_)
         {
            §§push(§_-09o§);
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-0C5§ = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§_-bm§ = LevelManager.§_-U0§(LevelManager.§_-HM§);
         if(_loc6_)
         {
            if(_loc1_)
            {
               loop30:
               while(true)
               {
                  initLevelMain(_loc1_);
                  addr72:
                  while(true)
                  {
                     addr54:
                     while(true)
                     {
                        if(!isNaN(§_-07h§))
                        {
                           if(_loc6_)
                           {
                              § in§.§_-Dc§.camera.§_-5H§(§_-07h§);
                           }
                           do
                           {
                              §_-07h§ = NaN;
                           }
                           while(_loc7_);
                           
                           if(_loc7_)
                           {
                              break;
                           }
                           continue loop30;
                        }
                        addr73:
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§_-N9§(LevelManager.§_-HM§);
               if(!_loc7_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§_-q§)
                        {
                           while(true)
                           {
                              §_-q§ = new §_-ML§();
                              addr297:
                              while(true)
                              {
                              }
                           }
                           addr293:
                        }
                        while(true)
                        {
                           §§push(§_-09o§);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §_-09o§ = new §_-03L§();
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§_-lH§.assetsUrl);
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
                                                      addr276:
                                                      while(!_loc7_)
                                                      {
                                                         §§push("");
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr275:
                                                }
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(!_loc7_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§_-lH§.buildNumber);
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop16:
                                                                           while(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§_-09o§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().init(§_-ok§.§_-Ji§(),_loc4_,_loc5_,§_-q§);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    addr172:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§_-09o§);
                                                                                       addr174:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§_-02K§();
                                                                                          addr175:
                                                                                          while(_loc6_ || this)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr276);
                                                                  addr210:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr250:
                                                               while(true)
                                                               {
                                                                  §§push("");
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr293);
                                       }
                                    }
                                    §§goto(addr297);
                                 }
                              }
                              §§goto(addr172);
                              if(!(_loc6_ || _loc1_))
                              {
                                 continue;
                              }
                              §§pop().§_-0Ab§(<pack url="{_loc3_}"/>);
                              loop28:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(§_-09o§);
                                          if(_loc6_ || this)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop28;
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr108);
                                       }
                                       addr298:
                                       return;
                                       addr130:
                                    }
                                    break;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr175);
                           }
                        }
                     }
                  }
                  §§goto(addr298);
               }
               §§goto(addr130);
            }
            §§goto(addr298);
         }
         §§goto(addr72);
      }
      
      protected function §_-HL§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-bm§ = LevelManager.§_-U0§(LevelManager.§_-HM§);
         if(_loc3_ || _loc1_)
         {
            if(_loc1_)
            {
               loop0:
               while(true)
               {
                  initLevelMain(_loc1_);
                  addr99:
                  while(!isNaN(§_-07h§))
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      override public function isReady() : Boolean
      {
         return § in§.§_-Dc§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return § in§.§_-Dc§.§_-033§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            mNextState = this.§_-012§();
         }
      }
      
      protected function §_-012§() : String
      {
         return StatePlay.§_-pk§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            mNextState = §_-UO§.§_-pk§;
         }
      }
   }
}
