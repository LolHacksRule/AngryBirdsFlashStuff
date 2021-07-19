package §<"c§
{
   import §%R§.§["N§;
   import §,"N§.§'#E§;
   import §1!i§.§8"x§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §?m§.§8!B§;
   import §`!o§.§6",§;
   import com.angrybirds.§,!q§;
   
   public class §<2§ extends §9#O§
   {
      
      public static const §^!7§:String = "LevelLoadStateClassic";
      
      private static var §""z§:§["N§;
      
      private static var §<E§:§'#E§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<2§))
         {
            §^!7§ = "LevelLoadStateClassic";
         }
      }
      
      public function §<2§(param1:§+"2§, param2:§5"H§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public static function §["V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §<2§))
         {
            §;#2§ = §1#0§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§""z§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr72:
                     §""z§.§6q§();
                  }
                  while(true)
                  {
                     §§goto(addr24);
                  }
               }
               addr24:
               while(true)
               {
                  super.deActivate();
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      protected function initPackageManager() : §'#E§
      {
         return new §'#E§(§+!b§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§3![§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§8!B§ = §+!b§.getLevelForId(§+!b§.currentLevel);
         if(_loc7_)
         {
            if(_loc1_)
            {
               if(_loc7_ || _loc1_)
               {
                  §]h§(_loc1_);
                  addr49:
               }
               §§goto(addr49);
            }
            else
            {
               _loc2_ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
               if(_loc7_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§<E§)
                        {
                           while(true)
                           {
                              §<E§ = this.initPackageManager();
                              addr266:
                              while(true)
                              {
                              }
                           }
                           addr262:
                        }
                        while(true)
                        {
                           §§push(§""z§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §""z§ = new §["N§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§8X§.assetsUrl);
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
                                                   addr239:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                   }
                                                }
                                                addr238:
                                             }
                                             while(true)
                                             {
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
                                                         if(_loc6_ && _loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            §§push(§8X§.buildNumber);
                                                            loop15:
                                                            while(!_loc6_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr209:
                                                                     while(_loc7_)
                                                                     {
                                                                        §§push("");
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  addr208:
                                                               }
                                                               while(true)
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(_loc6_ && _loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop20:
                                                                           while(!_loc6_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§""z§);
                                                                                 loop28:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    §§pop().init(§6",§.§<[§(),_loc4_,_loc5_,§<E§);
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§""z§);
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§;r§();
                                                                                             while(_loc7_)
                                                                                             {
                                                                                                §§push("packages/episode_" + _loc2_.name);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                                addr142:
                                                                                                _loc3_ = §§pop();
                                                                                                loop24:
                                                                                                while(_loc7_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      loop25:
                                                                                                      do
                                                                                                      {
                                                                                                         §§push(§""z§);
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ || this)
                                                                                                            {
                                                                                                               §§pop().§"#]§(<pack url="{_loc3_}"/>);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_ && _loc2_)
                                                                                                                     {
                                                                                                                        break loop19;
                                                                                                                     }
                                                                                                                     §§push(§""z§);
                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§pop().§,=§(this.§7d§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      while(false);
                                                                                                      
                                                                                                      §§goto(addr267);
                                                                                                   }
                                                                                                   break loop14;
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr208);
                                                                     }
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         §§goto(addr262);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr148);
                           }
                        }
                     }
                  }
                  §§goto(addr267);
               }
               §§goto(addr192);
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected function §7d§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§8!B§ = §+!b§.getLevelForId(§+!b§.currentLevel);
         if(_loc2_)
         {
            if(!_loc1_)
            {
               throw new Error("Level " + §+!b§.currentLevel + " not found in the package",§8"x§.§4g§);
            }
            §]h§(_loc1_);
         }
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §,!q§.§9!,§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §,!q§.§9!,§.§;!F§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § g§(this.getPlayState());
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            § g§(§+#?§.§^!7§);
         }
      }
      
      public function §2";§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §2!M§ = param1;
            do
            {
               §;#2§ = §1#0§;
            }
            while(_loc2_ && this);
            
         }
      }
   }
}
