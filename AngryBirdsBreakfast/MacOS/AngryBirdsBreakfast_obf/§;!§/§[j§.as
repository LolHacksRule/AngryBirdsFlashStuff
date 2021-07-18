package §;!§
{
   import §"n§.§?!=§;
   import §#"&§.§6!F§;
   import §1!`§.§8!s§;
   import §8!K§.§3%§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §@g§.§;!5§;
   import com.angrybirds.§&!"§;
   
   public class §[j§ extends §?!A§
   {
      
      public static const §-!q§:String = "LevelLoadStateClassic";
      
      private static var §4!O§:§;!5§;
      
      private static var §>H§:§6!F§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!q§ = "LevelLoadStateClassic";
         }
      }
      
      public function §[j§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public static function §=!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0@§ = §"c§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§4!O§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§4!O§);
                     addr67:
                     while(true)
                     {
                        §§pop().§""0§();
                        addr68:
                        while(true)
                        {
                        }
                     }
                  }
                  addr66:
               }
               while(true)
               {
                  super.deActivate();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr66);
               }
               return;
               addr46:
            }
            §§goto(addr67);
         }
         §§goto(addr46);
      }
      
      protected function §'X§() : §6!F§
      {
         return new §6!F§(§&" §);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§3%§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc1_:§5!0§ = §&" §.getLevelForId(§&" §.currentLevel);
         if(!_loc7_)
         {
            if(_loc1_)
            {
               if(_loc6_)
               {
                  addr40:
                  §5i§(_loc1_);
               }
            }
            else
            {
               _loc2_ = §&" §.getEpisodeForLevel(§&" §.currentLevel);
               if(!_loc7_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§>H§)
                        {
                           while(true)
                           {
                              §>H§ = this.§'X§();
                              addr285:
                              while(true)
                              {
                              }
                           }
                           addr281:
                        }
                        while(true)
                        {
                           §§push(§4!O§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(!_loc7_)
                                 {
                                    §4!O§ = new §;!5§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§#Z§.assetsUrl);
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
                                                   addr256:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                   }
                                                }
                                                addr255:
                                             }
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop7;
                                                   addr191:
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(_loc7_ && this)
                                                      {
                                                         continue loop12;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               _loc5_ = §§pop();
                                                               loop16:
                                                               for(; _loc6_; while(!(_loc7_ && this))
                                                               {
                                                                  §§goto(addr113);
                                                                  §§goto(addr86);
                                                               })
                                                               {
                                                                  §§push(§4!O§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().init(§8!s§.§3!b§(),_loc4_,_loc5_,§>H§);
                                                                     addr179:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr226:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr248:
                                                                           while(true)
                                                                           {
                                                                              §§push(§#Z§.buildNumber);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     continue loop21;
                                                                     addr69:
                                                                     if(_loc7_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§pop().§>!]§(this.§'!Y§);
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        addr86:
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        addr93:
                                                                        if(!(_loc7_ && _loc1_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§4!O§);
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§>!&§(<pack url="{_loc3_}"/>);
                                                                                          addr124:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§4!O§);
                                                                                             if(_loc7_ && _loc1_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(_loc7_ && _loc3_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§goto(addr69);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr113:
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr179);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push("packages/episode_" + _loc2_.name);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() + ".pak");
                                                                           }
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              continue loop16;
                                                                           }
                                                                           continue loop21;
                                                                           §§goto(addr93);
                                                                        }
                                                                     }
                                                                     §§goto(addr124);
                                                                  }
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr255);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§goto(addr226);
                                                         }
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr285);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§4!O§);
                                    continue loop4;
                                 }
                                 addr160:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr286);
               }
               §§goto(addr124);
            }
            addr286:
            return;
         }
         §§goto(addr40);
      }
      
      protected function §'!Y§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5!0§ = §&" §.getLevelForId(§&" §.currentLevel);
         if(!(_loc3_ && _loc1_))
         {
            if(!_loc1_)
            {
               throw new Error("Level " + §&" §.currentLevel + " not found in the package",§?!=§.§[!,§);
            }
            if(_loc2_ || this)
            {
               §5i§(_loc1_);
            }
         }
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §&!"§.§1!D§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §&!"§.§1!D§.§@K§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<f§(this.§1f§());
         }
      }
      
      protected function §1f§() : String
      {
         return StatePlay.§-!q§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<f§(§+A§.§-!q§);
         }
      }
      
      public function §+"+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §0!"§ = param1;
            do
            {
               §0@§ = §"c§;
            }
            while(_loc2_);
            
         }
      }
   }
}
