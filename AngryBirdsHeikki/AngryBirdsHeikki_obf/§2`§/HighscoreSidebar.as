package §2`§
{
   import §'!N§.§2O§;
   import §'!N§.§@!]§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §3Y§.§4!_§;
   import §8P§.§1A§;
   import §<u§.§]!Q§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   
   public class HighscoreSidebar implements §@!]§
   {
      
      public static const §`!e§:String = "StateHighScores";
      
      public static const §4!@§:String = "StateOverall";
      
      public static const §`M§:String = "StateDisableHighScores";
      
      public static const §<>§:String = "TopOverallScores";
      
      public static const §1!§:String = "2-13";
      
      public static const §"!P§:Array;
      
      public static const §&!`§:Array;
      
      public static const §2g§:Array;
      
      public static const §,g§:int = 10;
      
      public static const §2>§:int = 5;
      
      public static const § -§:uint = 16711680;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && HighscoreSidebar))
         {
            §`!e§ = "StateHighScores";
            loop0:
            while(true)
            {
               §4!@§ = "StateOverall";
               while(true)
               {
                  §`M§ = "StateDisableHighScores";
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        §<>§ = "TopOverallScores";
                        loop4:
                        while(true)
                        {
                           §1!§ = "2-13";
                           loop5:
                           while(true)
                           {
                              §"!P§ = new Array("2-1","2-2","2-3","2-4","2-5","2-6","2-7","2-8","2-9","2-10","2-11","2-12");
                              loop6:
                              while(!_loc2_)
                              {
                                 §&!`§ = ["Britain","Hockenheim","Budapest","Spa","Monza","Singapore","Suzuka","Yeongam","New Delhi","Yas Marina","Austin","São Paulo"];
                                 while(true)
                                 {
                                    §2g§ = ["18.6.2012","11.7.2012","25.7.2012","22.8.2012","5.9.2012","12.9.2012","26.9.2012","3.10.2012","17.10.2012","31.10.2012","7.11.2012","21.11.2012",""];
                                    while(!(_loc2_ && _loc1_))
                                    {
                                       §,g§ = 10;
                                       while(_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop6;
                                       if(_loc1_ || HighscoreSidebar)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      private var §5d§:String = "StateOverall";
      
      private var §]S§:Array;
      
      private var §2!T§:int = 0;
      
      private var §,x§:String;
      
      private var §-B§:Array;
      
      private var §6!"§:§2O§;
      
      private var §4-§:MovieClip = null;
      
      private var §]e§:Number = 0;
      
      private var §]§:int = 0;
      
      private var §8-§:Boolean = false;
      
      private var §@!7§:Array;
      
      public function HighscoreSidebar()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@!7§ = [];
         }
         do
         {
            super();
            do
            {
               this.reset();
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && this);
         
      }
      
      public function reset() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:§>x§ = null;
         if(_loc5_ || this)
         {
            this.§]S§ = [];
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§2!T§ = 0;
               while(_loc5_)
               {
                  this.§,x§ = "";
                  if(_loc5_ || _loc2_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            for each(_loc1_ in §"!P§)
            {
               _loc2_ = new §>x§(_loc1_);
               if(!(_loc6_ && _loc1_))
               {
                  this.§]S§.push(_loc2_);
               }
            }
            _loc2_ = new §>x§(HighscoreSidebar.§<>§);
            if(!_loc6_)
            {
               this.§]S§.push(_loc2_);
               loop4:
               while(true)
               {
                  this.§,x§ = §<>§;
                  while(true)
                  {
                     this.§4-§ = null;
                     continue loop4;
                     loop9:
                     while(_loc5_ || this)
                     {
                        this.§8-§ = false;
                        if(_loc5_ || this)
                        {
                           addr120:
                           if(!(_loc6_ && this))
                           {
                              return;
                              addr144:
                           }
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 this.§]§ = 0;
                                 continue loop9;
                              }
                              §§goto(addr120);
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
            §§goto(addr146);
         }
      }
      
      public function §%?§(param1:XML, param2:§2O§, param3:§]!Q§, param4:§=p§, param5:MovieClip = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§6!"§ = new §2O§(param1,param2,param3,param5);
            loop0:
            while(true)
            {
               this.changeState(this.§5d§);
               loop1:
               while(true)
               {
                  this.§-V§(false);
                  loop2:
                  while(!_loc7_)
                  {
                     while(true)
                     {
                        this.§@!7§ = this.§6!"§.getItemByName("TextField_MyScoreNumber").mClip.filters;
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §-V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6!"§.getItemByName("Container_Highscores").setVisibility(param1);
         }
      }
      
      public function enableCreditsButton(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6!"§);
            loop0:
            while(true)
            {
               §§push("Button_Credits");
               loop1:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop());
                        while(true)
                        {
                           if(!param1)
                           {
                              §§push(this.§6!"§);
                              if(_loc2_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§push("Button_Credits");
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             §§pop().mClip.alpha = 0.6;
                                             if(!_loc3_)
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   loop5:
                                                   for(; !(_loc3_ && _loc3_); §§pop().mClip.alpha = 1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§6!"§);
                                                         addr88:
                                                         while(true)
                                                         {
                                                            §§push("Button_Credits");
                                                            addr89:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     break;
                                                                     addr99:
                                                                  }
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§pop().setVisibility(§§pop());
                                                                        while(_loc3_ && _loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§6!"§);
                                                                              addr116:
                                                                              while(true)
                                                                              {
                                                                                 §§push("Button_Credits");
                                                                              }
                                                                           }
                                                                        }
                                                                        addr19:
                                                                        return;
                                                                        addr103:
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  addr118:
                                                                  while(_loc2_ || param1)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr19);
                                             }
                                             §§goto(addr103);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr114);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr145);
      }
      
      public function enableHelpButton(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6!"§);
            while(true)
            {
               §§push("Button_Tutorial");
               addr144:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr145:
                  while(true)
                  {
                     §§push(param1);
                     addr146:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop());
                     }
                  }
               }
            }
            addr143:
         }
         while(true)
         {
            if(!param1)
            {
               §§push(this.§6!"§);
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     §§push("Button_Tutorial");
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§pop().mClip.alpha = 0.6;
                                 if(!_loc3_)
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       loop5:
                                       for(; _loc2_; while(true)
                                       {
                                          §§pop().mClip.alpha = 1;
                                          continue loop5;
                                       })
                                       {
                                          §§push(this.§6!"§);
                                          while(true)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push("Button_Tutorial");
                                                while(true)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(§§pop().getItemByName(§§pop()));
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(true);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               while(!(_loc2_ || this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6!"§);
                                                                     addr123:
                                                                     while(true)
                                                                     {
                                                                        §§push("Button_Tutorial");
                                                                        addr124:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr19:
                                                               return;
                                                               addr110:
                                                            }
                                                            break;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr99:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                addr91:
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr91);
                  }
                  else
                  {
                     §§goto(addr143);
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr121);
         }
      }
      
      public function enableLogOutButton(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§6!"§);
            loop0:
            while(true)
            {
               §§push("Button_Logout");
               addr134:
               while(true)
               {
                  §§push(§§pop().getItemByName(§§pop()));
                  addr135:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop());
                        loop4:
                        while(true)
                        {
                           if(param1)
                           {
                              addr113:
                              while(true)
                              {
                                 §§push(this.§6!"§);
                                 addr115:
                                 while(true)
                                 {
                                    §§push("Button_Logout");
                                    addr116:
                                    while(true)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       addr117:
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().mClip.alpha = 1;
                                          addr130:
                                          while(true)
                                          {
                                             §§push(this.§6!"§);
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr113:
                           }
                           else
                           {
                              §§push(this.§6!"§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(_loc2_ || this)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr115);
                              }
                           }
                           while(true)
                           {
                              §§push("Button_Logout");
                              addr100:
                              while(_loc3_)
                              {
                                 §§goto(addr116);
                              }
                              addr103:
                              §§push(§§pop().getItemByName(§§pop()));
                              §§push(true);
                              if(_loc2_)
                              {
                                 §§pop().setVisibility(§§pop());
                                 addr107:
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        addr24:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function getScoreLoaderById(param1:String) : §>x§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>x§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§]S§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ && param1))
               {
                  §§push(_loc2_ == null);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc5_ && param1)
                           {
                           }
                           addr84:
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                        §§goto(addr84);
                     }
                     §§pop();
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr80:
                     §§push(_loc2_.levelId == param1);
                  }
                  §§goto(addr84);
               }
               §§goto(addr80);
            }
            return null;
         }
         return _loc2_;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§>x§ = null;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || this)
            {
               if("RIGHT" === _loc5_)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(0);
                     if(!(_loc7_ || param2))
                     {
                        addr300:
                     }
                  }
                  else
                  {
                     addr274:
                     §§push(2);
                     if(_loc6_)
                     {
                     }
                  }
               }
               else if("LEFT" === _loc5_)
               {
                  if(_loc7_ || param2)
                  {
                     addr255:
                     §§push(1);
                     if(!(_loc6_ && param3))
                     {
                        addr322:
                        switch(§§pop())
                        {
                           case 0:
                              this.§<1§(HighscoreSidebar.§"!P§[this.§9!D§(this.§2!T§)]);
                              if(_loc7_ || param2)
                              {
                                 break loop0;
                              }
                              addr61:
                              §§push(this.getScoreLoaderById(HighscoreSidebar.§<>§));
                              if(_loc7_)
                              {
                                 if((_loc4_ = §§pop()) != null)
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       _loc4_.§<$§();
                                       if(!_loc6_)
                                       {
                                          this.§#!Z§(HighscoreSidebar.§<>§,false);
                                          if(!_loc6_)
                                          {
                                             addr90:
                                             break loop0;
                                             addr90:
                                          }
                                       }
                                       §§goto(addr90);
                                    }
                                    addr117:
                                    §§push(this.getScoreLoaderById(HighscoreSidebar.§<>§));
                                    if(_loc7_)
                                    {
                                       if(_loc4_ = §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             _loc4_.§4§();
                                             if(!_loc6_)
                                             {
                                                this.§#!Z§(HighscoreSidebar.§<>§,false);
                                                if(!_loc6_)
                                                {
                                                   addr170:
                                                   break loop0;
                                                   addr140:
                                                }
                                             }
                                             else
                                             {
                                                do
                                                {
                                                   this.§<1§(HighscoreSidebar.§"!P§[this.§2!T§]);
                                                }
                                                while(_loc6_);
                                                
                                                addr208:
                                                if(!(_loc6_ && param1))
                                                {
                                                   break;
                                                }
                                                addr208:
                                             }
                                             addr202:
                                             break loop0;
                                             addr213:
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr140);
                                    }
                                    else
                                    {
                                       addr145:
                                       if(_loc4_ = §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc4_.§4§();
                                             if(_loc7_)
                                             {
                                                this.§#!Z§(this.§,x§,false);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr90);
                              }
                              else
                              {
                                 addr95:
                                 if((_loc4_ = §§pop()) != null)
                                 {
                                    if(_loc7_)
                                    {
                                       _loc4_.§<$§();
                                       if(!_loc6_)
                                       {
                                          this.§#!Z§(this.§,x§,false);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr90);
                              break;
                           case 1:
                              this.§<1§(HighscoreSidebar.§"!P§[this.§#!d§(this.§2!T§)]);
                              if(_loc7_)
                              {
                                 break loop0;
                              }
                              break loop0;
                           case 2:
                              §§push(this.§5d§);
                              if(!_loc6_)
                              {
                                 if(§§pop() == §4!@§)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr61);
                                    }
                                    break loop0;
                                 }
                                 §§push(this.getScoreLoaderById(this.§,x§));
                              }
                              continue;
                              §§goto(addr95);
                              break;
                           case 3:
                              if(this.§5d§ == §4!@§)
                              {
                                 §§goto(addr117);
                              }
                              else
                              {
                                 §§push(this.getScoreLoaderById(this.§,x§));
                              }
                              §§goto(addr145);
                           case 4:
                              this.changeState(§4!@§);
                              if(_loc6_ && this)
                              {
                                 break;
                              }
                              this.§<1§(HighscoreSidebar.§<>§);
                              §§goto(addr213);
                              break;
                           case 5:
                              this.changeState(§`!e§);
                              §§goto(addr208);
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr202);
                     }
                  }
                  else
                  {
                     addr283:
                     §§push(3);
                     if(!_loc7_)
                     {
                     }
                  }
                  §§goto(addr322);
               }
               else
               {
                  if("UP" === _loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        §§goto(addr274);
                     }
                  }
                  else if("DOWN" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr283);
                     }
                  }
                  else if("TAB_DRUMS" === _loc5_)
                  {
                     if(!_loc6_)
                     {
                        §§push(4);
                        if(_loc7_ || param3)
                        {
                           §§goto(addr300);
                        }
                        else
                        {
                           §§goto(addr317);
                        }
                     }
                  }
                  else if("TAB_SCORES" !== _loc5_)
                  {
                     §§goto(addr322);
                     §§push(6);
                  }
                  §§goto(addr322);
                  if(!_loc6_)
                  {
                     §§goto(addr317);
                  }
               }
               §§goto(addr322);
            }
            §§goto(addr255);
         }
      }
      
      public function changeState(param1:String, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = param1;
         if(_loc5_)
         {
            §§push(§`!e§);
            if(!_loc4_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        addr385:
                        §§push(0);
                        if(_loc4_ && param2)
                        {
                           addr416:
                        }
                     }
                     else
                     {
                        addr408:
                        §§push(1);
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr416);
                        }
                     }
                  }
                  else
                  {
                     §§push(§4!@§);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr408);
                              }
                              addr433:
                              loop22:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr356:
                                    addr357:
                                    §§push(this.§6!"§.getItemByName("TextField_Level_Num"));
                                    do
                                    {
                                       (§§pop() as §[!%§).§^!1§.text = "";
                                       do
                                       {
                                          §§push(this.§6!"§);
                                          loop2:
                                          while(true)
                                          {
                                             addr350:
                                             §§pop().setObjectToFront(this.§6!"§.getItemByName("Container_SideBar_Tab_Scores"));
                                             addr351:
                                             §§push(this.§6!"§);
                                             addr330:
                                             while(true)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§pop().setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
                                          this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("Container_Sidebar_Buttons"));
                                       }
                                       while(_loc4_);
                                       
                                       §§push(this.§6!"§.getItemByName("Button_ArrowLeft"));
                                       loop3:
                                       while(true)
                                       {
                                          addr314:
                                          addr315:
                                          §§pop().setEnabled(true);
                                          addr299:
                                          addr300:
                                          §§push(this.§6!"§);
                                          addr300:
                                          §§push("Button_ArrowRight");
                                          while(true)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             continue loop3;
                                          }
                                       }
                                    }
                                    while(_loc4_);
                                    
                                    addr306:
                                    §§pop().setEnabled(true);
                                    this.§<1§(this.§,x§,param2);
                                    break;
                                    addr307:
                                    addr295:
                                 case 1:
                                    §§push(this.§6!"§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push("TextField_Level_Num");
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(§§pop().getItemByName(§§pop()));
                                          loop5:
                                          for(; _loc5_ || _loc3_; while(!(_loc4_ && this))
                                          {
                                             §§goto(addr124);
                                             §§push(false);
                                             §§goto(addr72);
                                          })
                                          {
                                             (§§pop() as §[!%§).§^!1§.text = "";
                                             if(_loc5_ || param2)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(this.§6!"§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§6!"§);
                                                      loop7:
                                                      while(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().getItemByName("Container_SideBar_Tab_Overall"));
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§pop().setObjectToFront(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(this.§6!"§);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6!"§);
                                                                        loop10:
                                                                        while(_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push("Container_Highscores");
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop().getItemByName(§§pop()));
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop().setObjectToFront(§§pop());
                                                                                                loop12:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§6!"§);
                                                                                                   while(!_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§6!"§);
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                      addr58:
                                                                                                      if(_loc4_ && param2)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push("Button_ArrowRight");
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr72:
                                                                                                            §§push(§§pop().getItemByName(§§pop()));
                                                                                                            if(_loc4_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(false);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               while(_loc5_)
                                                                                                               {
                                                                                                                  §§pop().setEnabled(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ && param1)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§goto(addr97);
                                                                                                                                 §§push(this.§6!"§);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                           §§goto(addr127);
                                                                                                                        }
                                                                                                                        §§goto(addr324);
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     addr134:
                                                                                                                     §§push(this.§6!"§);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§goto(addr58);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push("Button_ArrowLeft");
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().getItemByName(§§pop()));
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          §§goto(addr312);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr356);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr319);
                                                                                                                                 }
                                                                                                                                 §§goto(addr312);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                           §§goto(addr134);
                                                                                                                        }
                                                                                                                        §§goto(addr299);
                                                                                                                        addr97:
                                                                                                                     }
                                                                                                                     §§goto(addr300);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr314);
                                                                                                               addr124:
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§pop().setEnabled(§§pop());
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  this.§<1§(HighscoreSidebar.§<>§,param2);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr30:
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            §§goto(addr306);
                                                                                                         }
                                                                                                         §§goto(addr300);
                                                                                                      }
                                                                                                      §§goto(addr330);
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              §§goto(addr341);
                                                                           }
                                                                           §§goto(addr350);
                                                                        }
                                                                        §§goto(addr341);
                                                                     }
                                                                  }
                                                                  §§goto(addr323);
                                                               }
                                                               §§goto(addr315);
                                                            }
                                                            break;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                }
                                                §§goto(addr307);
                                             }
                                             §§goto(addr455);
                                          }
                                          §§goto(addr301);
                                       }
                                       break;
                                    }
                                    §§goto(addr357);
                                 case 2:
                                    this.changeState(§4!@§);
                                    if(_loc5_ || param1)
                                    {
                                       this.enableHighScoreTab(false);
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr30);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr127);
                                          }
                                          §§goto(addr295);
                                       }
                                       break;
                                    }
                                    §§goto(addr455);
                              }
                              this.§5d§ = param1;
                              §§goto(addr455);
                           }
                           else
                           {
                              addr419:
                              if(§`M§ !== _loc3_)
                              {
                                 §§goto(addr433);
                                 §§push(3);
                              }
                              §§goto(addr433);
                           }
                           if(_loc4_ && this)
                           {
                           }
                        }
                     }
                     §§goto(addr419);
                  }
                  §§goto(addr433);
               }
            }
            §§goto(addr419);
         }
         §§goto(addr385);
      }
      
      public function enableHighScoreTab(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr191:
                  §§push(this.§6!"§.getItemByName("Container_SideBar_Tab_Scores"));
                  while(true)
                  {
                     §§pop().mClip.alpha = 1;
                  }
                  addr192:
               }
               loop3:
               while(true)
               {
                  §§push(this.§6!"§);
                  addr164:
                  while(true)
                  {
                     §§push("Button_Tab_Score");
                     addr165:
                     while(true)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        addr166:
                        while(true)
                        {
                           §§push(true);
                           addr167:
                           while(true)
                           {
                              §§pop().setEnabled(§§pop());
                              addr168:
                              while(true)
                              {
                                 §§push(this.§6!"§);
                                 addr152:
                                 while(true)
                                 {
                                    §§push("Button_Tab_Overall");
                                    addr153:
                                    while(true)
                                    {
                                       §§push(§§pop().getItemByName(§§pop()));
                                       addr154:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(true);
                                             while(true)
                                             {
                                                §§pop().setEnabled(§§pop());
                                                addr158:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             addr157:
                                          }
                                          else
                                          {
                                             §§goto(addr192);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr25);
            }
            else
            {
               §§push(this.§6!"§);
               loop0:
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push("Container_SideBar_Tab_Scores");
                     if(!(_loc3_ || _loc2_))
                     {
                        break;
                     }
                     §§push(§§pop().getItemByName(§§pop()));
                     loop1:
                     while(true)
                     {
                        §§pop().mClip.alpha = 0.4;
                        addr148:
                        loop4:
                        while(true)
                        {
                           §§push(this.§6!"§);
                           loop5:
                           for(; !_loc2_; §§push(this.§6!"§),if(_loc2_ && this)
                           {
                              continue;
                           },if(!_loc3_)
                           {
                              continue loop0;
                           },if(_loc3_ || this)
                           {
                              §§push("Button_Tab_Overall");
                              if(!_loc2_)
                              {
                                 §§push(§§pop().getItemByName(§§pop()));
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          §§pop().setEnabled(§§pop());
                                          if(!_loc3_)
                                          {
                                             §§goto(addr121);
                                          }
                                          if(_loc3_)
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                §§goto(addr168);
                                             }
                                             addr25:
                                          }
                                          continue loop4;
                                          return;
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr153);
                           },§§goto(addr152))
                           {
                              §§push("Button_Tab_Score");
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop().getItemByName(§§pop()));
                                 while(!_loc2_)
                                 {
                                    §§push(false);
                                    while(!(_loc2_ && this))
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          §§pop().setEnabled(§§pop());
                                          while(_loc3_ || _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr158);
                                          addr121:
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr154);
                                 addr103:
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr164);
                        }
                     }
                  }
               }
               §§goto(addr191);
            }
         }
         §§goto(addr148);
      }
      
      private function §9!D§(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1++;
            loop0:
            while(true)
            {
               §§push(param1);
               do
               {
                  if(§§pop() > HighscoreSidebar.§"!P§.length - 1)
                  {
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§push(0);
                        loop2:
                        while(true)
                        {
                           param1 = §§pop();
                           addr66:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        addr65:
                     }
                     §§goto(addr66);
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     §§goto(addr65);
                  }
               }
               while(!_loc2_);
               
               return §§pop();
            }
         }
         §§goto(addr66);
      }
      
      private function §#!d§(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() - 1);
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(int(HighscoreSidebar.§"!P§.length - 1));
                                    addr68:
                                    while(true)
                                    {
                                       if(!(_loc2_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       param1 = §§pop();
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr85);
                              }
                              addr86:
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop3;
                              }
                              §§goto(addr68);
                              §§goto(addr86);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §!!,§(param1:§>x§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Object = null;
         var _loc2_:* = false;
         var _loc3_:int = 0;
         if(!(_loc10_ && param1))
         {
            §§push(Boolean(param1));
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(_loc11_ || _loc3_)
                  {
                     §§pop();
                     addr60:
                     if(!_loc10_)
                     {
                        §§push(Boolean(§4!_§.§,t§));
                     }
                     _loc4_ = param1.§"!?§;
                     loop0:
                     while(true)
                     {
                        _loc3_++;
                        loop1:
                        while(true)
                        {
                           param1.§4§();
                           if(_loc11_ || param1)
                           {
                              §§push(param1.§`^§);
                              loop2:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop3:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc11_ || this)
                                          {
                                             _loc6_ = §§pop();
                                             if(!(_loc10_ && param1))
                                             {
                                                if(!(_loc11_ || _loc3_))
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                }
                                                addr336:
                                             }
                                             addr340:
                                             if(_loc2_ != false)
                                             {
                                                §§goto(addr342);
                                             }
                                             continue loop0;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§,g§);
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc10_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc5_);
                                                   if(!(_loc11_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() - 1);
                                                   if(_loc11_ || this)
                                                   {
                                                      §§push(§§pop() * §,g§);
                                                   }
                                                   §§push(int(§§pop() + §§pop()));
                                                   if(_loc10_ && this)
                                                   {
                                                      break;
                                                   }
                                                   _loc7_ = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      if(false)
                                                      {
                                                         break loop7;
                                                      }
                                                      try
                                                      {
                                                         _loc8_ = _loc4_[_loc7_];
                                                         if(_loc11_ || this)
                                                         {
                                                            addr194:
                                                            §§push(Boolean(_loc8_));
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(Boolean(§4!_§.§,t§));
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              addr315:
                                                                              §§push(§§pop());
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr335:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(_loc8_.isPlayer));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    addr334:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc3_ > §2>§)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc2_))
                                                                                             {
                                                                                                addr260:
                                                                                                §§push(true);
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr271:
                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr227);
                                                                                                      }
                                                                                                      addr294:
                                                                                                      §§push(true);
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(_loc11_ || _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr335);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc6_++;
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                addr227:
                                                                                                param1.§<$§();
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   if(_loc10_ && _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr271);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr340);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                      catch(e:Error)
                                                      {
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           §§goto(addr340);
                        }
                     }
                  }
               }
            }
            if(§§pop())
            {
               §§goto(addr60);
            }
            addr342:
            return;
         }
         §§goto(addr60);
      }
      
      public function §#!Z§(param1:String, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               loop2:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        loop5:
                        while(_loc6_)
                        {
                           §§pop().§§slot[5] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(null);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 loop8:
                                 while(!(_loc7_ && param1))
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             addr47:
                                             while(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(param1);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().§§slot[1] = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc6_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr47);
                                                         addr32:
                                                         §§pop().§§slot[2] = param2;
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr41);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                             addr41:
                                             continue loop4;
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             var _loc4_:int = 0;
                                             var _loc5_:* = §"!P§;
                                             addr174:
                                             if(§§hasnext(_loc5_,_loc4_))
                                             {
                                                addr167:
                                                var levelNameInList:String = §§nextvalue(_loc4_,_loc5_);
                                                addr172:
                                                §§push(§§newactivation());
                                                if(_loc6_ || this)
                                                {
                                                   if(§§pop().§§slot[3] == levelName)
                                                   {
                                                      addr159:
                                                      this.§,x§ = levelName;
                                                      addr133:
                                                      this.§[!S§(levelName);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         (this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text = "" + §,L§.§8!F§.§%=§(levelName);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr133);
                                                                  }
                                                                  addr176:
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§push(§§pop().§§slot[1]);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§<>§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 addr461:
                                                                                 §§push(this.§6!"§.getItemByName("TextField_MyScoreNumber"));
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    (§§pop() as §[!%§).§^!1§.text = "" + §,L§.§8!F§.overallScore;
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       addr434:
                                                                                       if(this.§6!"§)
                                                                                       {
                                                                                          addr436:
                                                                                          var highscoreHolderClip:MovieClip = this.§6!"§.getItemByName("Highscore_Holder").mClip;
                                                                                          addr435:
                                                                                          addr443:
                                                                                          §§push(§§newactivation());
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(§§pop().§§slot[5].numChildren <= 0)
                                                                                             {
                                                                                                addr395:
                                                                                                var currentLoader:§>x§ = this.getScoreLoaderById(levelName);
                                                                                                addr394:
                                                                                                if(!(_loc7_ && param2))
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc7_ && param2))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§§pop().§§slot[4]);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(§§pop() != null)
                                                                                                            {
                                                                                                               addr303:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§§slot[4]);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§0!7§);
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr319:
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr329:
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§§slot[4]);
                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                    {
                                                                                                                                       if(§§pop().§"!?§)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr359:
                                                                                                                                                   if(§§pop().§§slot[2])
                                                                                                                                                   {
                                                                                                                                                      addr360:
                                                                                                                                                      this.§!!,§(currentLoader);
                                                                                                                                                      addr364:
                                                                                                                                                   }
                                                                                                                                                   this.§%Y§(currentLoader.§"!?§,currentLoader.§`^§,currentLoader.heikkiScore);
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      this.§-!X§();
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                         {
                                                                                                                                                            this.§-V§(true);
                                                                                                                                                            addr255:
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr224:
                                                                                                                                                                  §§push(this.§6!"§);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getItemByName("MovieClip_LoadingHiScores"));
                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().setVisibility(false);
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§6!"§);
                                                                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().setObjectToFront(this.§6!"§.getItemByName("Container_Highscores"));
                                                                                                                                                                                          if(!(_loc7_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc7_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc7_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr222:
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr224);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   if(!_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr490:
                                                                                                                                                                                                      if(§§pop().§§slot[1] != HighscoreSidebar.§<>§)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            try
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr501:
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr509:
                                                                                                                                                                                                                  §§push(levelName);
                                                                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().substring(2));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§§slot[6] = §§pop();
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr575:
                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                  addr567:
                                                                                                                                                                                                                  addr543:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr570:
                                                                                                                                                                                                                  §§pop().§§slot[4].addEventListener(§"0§.§3!A§,this.§1,§);
                                                                                                                                                                                                                  addr569:
                                                                                                                                                                                                                  §§goto(addr575);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr575);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            catch(e:Error)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr567);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr575);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr528:
                                                                                                                                                                                                         (this.§6!"§.getItemByName("TextField_Level_Num") as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelNum) - 1];
                                                                                                                                                                                                         addr526:
                                                                                                                                                                                                         if(!_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr543);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr575);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr569);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr394);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr364);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr575);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr526);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr360);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr255);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr501);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr461);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr434);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr528);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr435);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr381);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr319);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr501);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr303);
                                                                                                                                             }
                                                                                                                                             §§goto(addr443);
                                                                                                                                          }
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       §§goto(addr575);
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                                 §§goto(addr395);
                                                                                                                              }
                                                                                                                              §§goto(addr509);
                                                                                                                           }
                                                                                                                           §§goto(addr461);
                                                                                                                        }
                                                                                                                        §§goto(addr570);
                                                                                                                        §§push(§§newactivation());
                                                                                                                     }
                                                                                                                     §§goto(addr359);
                                                                                                                  }
                                                                                                                  §§goto(addr570);
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            addr381:
                                                                                                            return;
                                                                                                         }
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      §§goto(addr436);
                                                                                                   }
                                                                                                   §§goto(addr570);
                                                                                                }
                                                                                                §§goto(addr509);
                                                                                                addr393:
                                                                                             }
                                                                                             §§push(§§newactivation());
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                §§pop().§§slot[5].removeChildAt(0);
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§goto(addr436);
                                                                                                }
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                             §§goto(addr509);
                                                                                          }
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                       §§goto(addr393);
                                                                                    }
                                                                                    §§goto(addr509);
                                                                                 }
                                                                                 §§goto(addr528);
                                                                              }
                                                                              §§goto(addr434);
                                                                           }
                                                                        }
                                                                        §§goto(addr490);
                                                                     }
                                                                     §§goto(addr509);
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      addr163:
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr176);
                                          }
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              continue loop5;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §1,§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(_loc4_)
                  {
                     §§pop().§§slot[1] = param1;
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[2] = e.currentTarget as §>x§;
                           addr114:
                           while(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                           }
                           continue loop2;
                        }
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr80);
                        }
                        try
                        {
                           §§push(§§newactivation());
                           §§push(levelName);
                           if(_loc4_)
                           {
                              §§push(§§pop().substring(2));
                           }
                           §§pop().§§slot[3] = §§pop();
                           if(_loc4_)
                           {
                              §§push(this.§6!"§);
                              if(_loc4_)
                              {
                                 §§push(§§pop().getItemByName("TextField_Level_Num"));
                                 if(_loc4_ || _loc3_)
                                 {
                                    (§§pop() as §[!%§).§^!1§.text = HighscoreSidebar.§&!`§[int(levelName) - 1];
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr202);
                                    }
                                    §§goto(addr255);
                                 }
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr255);
                        }
                        catch(e:Error)
                        {
                        }
                        §§goto(addr202);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §-!X§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Object = §4!_§.§,t§;
         if(!(_loc5_ && this))
         {
            if(_loc1_.name)
            {
               if(_loc6_)
               {
                  §§push(this.§6!"§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push("TextField_MyScoreName");
                     if(!_loc5_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(_loc6_)
                        {
                           (§§pop() as §[!%§).§^!1§.text = _loc1_.name + ":";
                           if(_loc6_ || this)
                           {
                              addr93:
                              if(this.§5d§ == §`!e§)
                              {
                                 addr97:
                                 var _loc3_:int = 0;
                                 var _loc4_:* = §"!P§;
                                 loop0:
                                 while(§§hasnext(_loc4_,_loc3_))
                                 {
                                    §§push(§§nextvalue(_loc3_,_loc4_));
                                    loop1:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() == this.§,x§)
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(!(_loc5_ && _loc1_))
                                                {
                                                   this.§,x§ = this.§,x§;
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       addr130:
                                       addr135:
                                       this.§[!S§(this.§,x§);
                                       (this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text = "" + §,L§.§8!F§.§%=§(this.§,x§);
                                       if(_loc6_ || _loc1_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr130);
                                             }
                                             break loop0;
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                              }
                              return;
                              addr66:
                           }
                        }
                        else
                        {
                           addr71:
                           (§§pop() as §[!%§).§^!1§.text = "My Score:";
                           if(_loc6_ || _loc2_)
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        addr70:
                        §§push(§§pop().getItemByName(§§pop()));
                     }
                     §§goto(addr71);
                  }
                  else
                  {
                     addr69:
                     §§push("TextField_MyScoreName");
                  }
                  §§goto(addr70);
               }
               §§goto(addr66);
            }
            else
            {
               §§push(this.§6!"§);
            }
            §§goto(addr69);
         }
         §§goto(addr93);
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!X§(param1);
         }
      }
      
      private function §1O§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§]§ = 0;
            while(true)
            {
               this.§8-§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§]e§ = 0;
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
         §§goto(addr62);
      }
      
      private function §,!X§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         var _loc2_:MovieClip = this.§6!"§.getItemByName("TextField_MyScoreNumber").mClip;
         var _loc3_:MovieClip = this.§6!"§.getItemByName("TextField_MyScoreName").mClip;
         if(_loc8_ || _loc2_)
         {
            if(this.§8-§)
            {
               if(!(_loc7_ && _loc2_))
               {
                  if(this.§4-§)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        addr61:
                        this.§4-§.filters = [new GlowFilter(16777215,1,32,8,this.§]e§,5,false,false)];
                     }
                     var _loc5_:* = 0;
                     var _loc6_:* = this.§@!7§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(!(_loc7_ && param1))
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              if(!(_loc7_ && this))
                              {
                                 this.§4-§.filters.push(_loc4_);
                              }
                              continue;
                           }
                           if(_loc8_ || _loc2_)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr128:
                                    if(int((this.§6!"§.getItemByName("TextField_MyScoreNumber") as §[!%§).§^!1§.text) > 0)
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc2_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]e§,3,false,false)];
                                          if(!_loc7_)
                                          {
                                             _loc3_.filters = [new GlowFilter(16777215,0.5,16,4,this.§]e§,3,false,false)];
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(0);
                                                if(_loc8_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      addr186:
                                                      _loc6_ = this.§@!7§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         break loop0;
                                                      }
                                                      addr219:
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      addr335:
                                                      §§push(this.§]§);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(3);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  this.§]e§ = 0;
                                                                  if(!_loc7_)
                                                                  {
                                                                     this.§]§ = 0;
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§4-§ = null;
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              this.§8-§ = false;
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 addr266:
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§]§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(§§pop() % §§pop());
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§]e§);
                                                                                                      if(!(_loc7_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() / 200);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§]e§ = §§pop();
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§push(this.§]e§);
                                                                                                         if(_loc7_ && this)
                                                                                                         {
                                                                                                            addr391:
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         if(§§pop() > 5.5)
                                                                                                         {
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               this.§]e§ = 5.5;
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§push((_loc5_ = this).§]§);
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                     }
                                                                                                                     _loc6_ = §§pop();
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr433:
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     _loc5_.§]§ = _loc6_;
                                                                                                                  }
                                                                                                                  if(_loc7_ && _loc3_)
                                                                                                                  {
                                                                                                                     loop1:
                                                                                                                     while(this.§4-§)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr457:
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           addr479:
                                                                                                                           addr479:
                                                                                                                           addr479:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_.filters = this.§@!7§;
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr473:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr474:
                                                                                                                     addr374:
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr432:
                                                                                                               §§goto(addr474);
                                                                                                            }
                                                                                                            break loop4;
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   addr281:
                                                                                                }
                                                                                                break loop4;
                                                                                             }
                                                                                             §§push(this);
                                                                                             §§push(this.§]e§);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() / 200);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().§]e§ = §§pop();
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§goto(addr391);
                                                                                                §§push(this.§]e§);
                                                                                             }
                                                                                             §§goto(addr479);
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             addr400:
                                                                                             this.§]e§ = 0;
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                addr410:
                                                                                                §§push((_loc5_ = this).§]§);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                }
                                                                                                _loc6_ = §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   _loc5_.§]§ = _loc6_;
                                                                                                }
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr473);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          break loop4;
                                                                                       }
                                                                                       §§goto(addr474);
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr334:
                                                                     }
                                                                     §§goto(addr474);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§4-§.filters = this.§@!7§;
                                                            §§goto(addr455);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr400);
                                          }
                                          §§goto(addr457);
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr410);
                              }
                           }
                           §§goto(addr186);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                           if(!(_loc7_ && param1))
                           {
                              _loc2_.filters.push(_loc4_);
                              if(!(_loc8_ || param1))
                              {
                                 continue;
                              }
                           }
                           _loc3_.filters.push(_loc4_);
                           continue;
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr128);
               }
               §§goto(addr61);
            }
            else
            {
               _loc2_.filters = this.§@!7§;
            }
            §§goto(addr479);
         }
         §§goto(addr61);
      }
      
      private function §%Y§(param1:Array, param2:int, param3:int) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:* = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:Object = null;
         var _loc4_:* = false;
         if(_loc14_)
         {
            this.§-B§ = param1;
            if(_loc14_)
            {
               if(!this.§6!"§)
               {
                  if(!(_loc13_ && param1))
                  {
                     §§goto(addr44);
                  }
               }
               var _loc5_:Class = §false§.§5#§("Component_HighscoreEntry");
               var _loc6_:MovieClip = this.§6!"§.getItemByName("Highscore_Holder").mClip;
               do
               {
                  if(_loc6_.numChildren > 0)
                  {
                     continue;
                  }
                  if(_loc14_)
                  {
                     break;
                  }
                  var _loc7_:* = 0;
                  if(!_loc13_)
                  {
                     (this.§6!"§.getItemByName("TextField_HeikkiScoreNumber") as §[!%§).§^!1§.text = "" + param3;
                  }
                  var _loc8_:int = 0;
                  if(!(_loc13_ && param3))
                  {
                     while(true)
                     {
                        §§push(_loc8_);
                        while(true)
                        {
                           §§push(§,g§);
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(_loc8_);
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 §§push(param2);
                                 if(!_loc14_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() - 1);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop() * §,g§);
                                 }
                                 §§push(int(§§pop() + §§pop()));
                                 if(!(_loc14_ || param1))
                                 {
                                    break;
                                 }
                                 _loc9_ = §§pop();
                                 if(!(_loc13_ && param1))
                                 {
                                    try
                                    {
                                       while(true)
                                       {
                                          _loc11_ = param1[_loc9_];
                                       }
                                       addr127:
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    (_loc10_ = new _loc5_()).TextField_Rank.text = _loc9_ + 1 + ".";
                                    if(!(_loc13_ && param2))
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc10_.TextField_Name.text = "";
                                          loop5:
                                          while(true)
                                          {
                                             if(_loc14_)
                                             {
                                                if(!(_loc13_ && param3))
                                                {
                                                   _loc10_.TextField_Points.text = "0";
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc14_ || param2)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc10_.y = _loc7_;
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc13_ && param2))
                                                                        {
                                                                           §§push(int(§§pop() + 19));
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        loop9:
                                                                        while(_loc14_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc6_.addChild(_loc10_);
                                                                              loop11:
                                                                              while(!(_loc13_ && param3))
                                                                              {
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    _loc8_++;
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_.TextField_Name.text = _loc11_.nickName;
                                                                                       loop19:
                                                                                       while(_loc14_)
                                                                                       {
                                                                                          _loc10_.TextField_Points.text = _loc11_.score;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc13_ && param2)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(_loc4_);
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      addr319:
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            break loop11;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr397:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(_loc11_.isPlayer));
                                                                                                                  addr372:
                                                                                                                  while(_loc13_)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  addr377:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     break loop19;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr376:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               addr366:
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr319);
                                                                                                      }
                                                                                                      addr394:
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc14_ || param2)
                                                                                 {
                                                                                    _loc10_.TextField_Rank.textColor = § -§;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    addr381:
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc10_.TextField_Name.textColor = § -§;
                                                                        break loop8;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc10_.TextField_Points.textColor = § -§;
                                                               addr292:
                                                               while(true)
                                                               {
                                                                  if(!(_loc13_ && param3))
                                                                  {
                                                                     this.§4-§ = _loc10_;
                                                                     while(true)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr286:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr376);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr345);
                                                   }
                                                }
                                                §§goto(addr397);
                                             }
                                             §§goto(addr292);
                                          }
                                       }
                                       §§goto(addr381);
                                    }
                                    §§goto(addr194);
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr127);
               }
               while(_loc6_.removeChildAt(0), !_loc13_);
               
               this.§4-§ = null;
               §§goto(addr73);
            }
         }
         addr44:
      }
      
      public function §[!S§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = HighscoreSidebar.§"!P§;
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
            while(true)
            {
               _loc3_ = §§pop();
               addr86:
               while(true)
               {
                  continue loop1;
               }
            }
         }
      }
      
      public function §<1§(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§>x§ = null;
         loop0:
         for each(_loc4_ in this.§]S§)
         {
            if(_loc4_.levelId != param1)
            {
               continue;
            }
            if(_loc7_ || param1)
            {
               §§push(_loc4_.§^9§(param2));
               if(!(_loc8_ && param3))
               {
                  if(§§pop() == false)
                  {
                     if(!(_loc8_ && param2))
                     {
                        §§push(param3);
                        if(!_loc8_)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              this.§-V§(false);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(this.§6!"§);
                              }
                              else
                              {
                                 loop8:
                                 while(true)
                                 {
                                    _loc4_.addEventListener(§"0§.§3!A§,this.§1,§);
                                    if(!(_loc8_ && param3))
                                    {
                                       if(!_loc8_)
                                       {
                                          addr95:
                                          if(!(_loc8_ && param1))
                                          {
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      break loop0;
                                                   }
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(this.§6!"§);
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.§6!"§);
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push("MovieClip_LoadingHiScores");
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop().getItemByName(§§pop()));
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop().setObjectToFront(§§pop());
                                                                     while(!_loc8_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6!"§);
                                                                        addr145:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              addr227:
                                                                              §§push("MovieClip_LoadingHiScores");
                                                                              break;
                                                                           }
                                                                           §§push("MovieClip_LoadingHiScores");
                                                                           if(!_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().getItemByName(§§pop()));
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 addr171:
                                                                                 §§pop().setVisibility(§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          this.§%Y§(_loc4_.§"!?§,_loc4_.§`^§,_loc4_.heikkiScore);
                                                                                          this.§-!X§();
                                                                                          this.§#!Z§(_loc4_.levelId,false);
                                                                                          addr205:
                                                                                          break loop0;
                                                                                          addr205:
                                                                                          addr224:
                                                                                          addr215:
                                                                                          addr201:
                                                                                       }
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§-V§(false);
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr191:
                                                                                    }
                                                                                    §§goto(addr171);
                                                                                 }
                                                                                 addr172:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr240:
                                                                                 §§pop().setVisibility(§§pop());
                                                                              }
                                                                              addr223:
                                                                              this.§6!"§.setObjectToFront(this.§6!"§.getItemByName("MovieClip_LoadingHiScores"));
                                                                              §§goto(addr224);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr239:
                                                                              §§push(true);
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                     addr139:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr95);
                                                }
                                                addr104:
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr139);
                                 }
                                 addr141:
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr141);
                        }
                        else
                        {
                           addr190:
                           if(!§§pop())
                           {
                              continue;
                           }
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     §§push(param3);
                  }
               }
               §§goto(addr190);
            }
            §§goto(addr205);
         }
      }
      
      public function §5K§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>x§ = null;
         for each(_loc1_ in this.§]S§)
         {
            if(_loc4_)
            {
               _loc1_.clearReloadTimer();
            }
         }
      }
      
      public function deActivate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2O§ = null;
         if(!_loc3_)
         {
            this.§-V§(false);
            if(_loc2_)
            {
               §§push(this.§6!"§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     addr43:
                     _loc1_ = this.§6!"§.getItemByName("HighscoreSidebar") as §2O§;
                     if(_loc2_)
                     {
                        this.§6!"§.clear();
                        if(!_loc3_)
                        {
                           this.§6!"§ = null;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr43);
      }
      
      public function get §2l§() : int
      {
         return this.§2!T§;
      }
      
      public function set container(param1:§2O§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6!"§ = param1;
         }
      }
      
      public function get container() : §2O§
      {
         return this.§6!"§;
      }
      
      public function get selectedLevelName() : String
      {
         return this.§,x§;
      }
      
      public function get currentState() : String
      {
         return this.§5d§;
      }
      
      public function set selectedLevelName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,x§ = param1;
         }
      }
   }
}
