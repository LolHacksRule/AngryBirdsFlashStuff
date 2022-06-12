package §6!B§
{
   public class §&!7§
   {
      
      public static const §#";§:String;
      
      public static const §!u§:String;
      
      public static const §#!a§:String;
      
      public static const §!!j§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §="+§:String = "GreenDayInGame";
      
      public static const §;"C§:String = "GreenDayInGameLazyBones";
      
      public static const §<!X§:String = "Channel_Theme";
      
      public static const §2![§:String = "Channel_GreenDay";
      
      public static const §+3§:String = "ThemeMusic";
      
      public static const §+"8§:String = "GreenDayTheme";
      
      public static const §7K§:String = "ZombieThemeMusic";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#";§ = AngryBirdsFP11.§76§ + "/sounds/Green_Day-Troublemaker.mp3";
            loop0:
            while(true)
            {
               §!u§ = AngryBirdsFP11.§76§ + "/sounds/Green_Day-Lazy_Bones.mp3";
               loop1:
               while(true)
               {
                  §#!a§ = AngryBirdsFP11.§76§ + "/sounds/Green_Day-Oh_Love.mp3";
                  loop2:
                  while(true)
                  {
                     §!!j§ = "CHANNEL_GREENDAY_INGAME";
                     loop3:
                     while(true)
                     {
                        §="+§ = "GreenDayInGame";
                        loop4:
                        while(_loc1_)
                        {
                           §;"C§ = "GreenDayInGameLazyBones";
                           while(_loc1_)
                           {
                              §<!X§ = "Channel_Theme";
                              while(!(_loc2_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 loop10:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    §7K§ = "ZombieThemeMusic";
                                    if(!_loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       addr31:
                                       if(_loc2_ && §&!7§)
                                       {
                                          while(true)
                                          {
                                             §+3§ = "ThemeMusic";
                                             addr65:
                                             while(_loc1_)
                                             {
                                                §+"8§ = "GreenDayTheme";
                                                continue loop10;
                                             }
                                             §§goto(addr93);
                                             §§goto(addr31);
                                          }
                                          addr72:
                                       }
                                       return;
                                    }
                                    §§goto(addr65);
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §2![§ = "Channel_GreenDay";
            §§goto(addr72);
         }
      }
      
      private var §>!;§:§ do§;
      
      public function §&!7§(param1:§ do§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§>!;§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§@"1§();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public static function get §3V§() : String
      {
         return §+3§;
      }
      
      public function get §?a§() : § do§
      {
         return this.§>!;§;
      }
      
      protected function §@"1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@k§ = new §@k§(§+3§,§<!X§,-1,999);
         if(_loc3_ || _loc3_)
         {
            this.§>!;§.§9!U§(_loc1_);
         }
         _loc1_ = new §@k§(§+"8§,§2![§,1,999,§#!a§,3000);
         if(_loc3_ || _loc2_)
         {
            this.§>!;§.§9!U§(_loc1_);
         }
      }
   }
}
