package §3D§
{
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §"!g§ extends EventDispatcher implements §-!^§
   {
      
      public static const §0U§:Number = 1800000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§0U§));
            §§push(30 * 60);
            if(!(_loc2_ && §"!g§))
            {
               §§push(§§pop() * 1000);
            }
            §§pop().§0U§ = §§pop();
         }
      }
      
      private var § 1§:String;
      
      private var §6t§:Boolean = true;
      
      private var §4=§:Array;
      
      private var §13§:int = -1;
      
      private var §<q§:int = 1;
      
      private var §;!z§:Number = 0;
      
      public function §"!g§(param1:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               addr33:
               while(true)
               {
                  this.§ 1§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§4=§ = [];
            if(!(_loc3_ && _loc2_))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr33);
            }
            §§goto(addr37);
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= 50)
            {
               if(!_loc3_)
               {
                  break;
               }
               loop5:
               while(_loc3_ && _loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop5;
                  }
               }
               continue;
            }
            this.§4=§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            §§goto(addr102);
         }
      }
      
      public function §;B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;!z§ = 0;
         }
         do
         {
            this.§6t§ = true;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §3!l§(param1:Boolean = false) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§'k§ = null;
         var _loc6_:Object = null;
         if(_loc7_)
         {
            §§push(this.§6t§);
            if(!(_loc8_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc7_)
                  {
                     §§goto(addr43);
                  }
               }
               var _loc2_:Date = new Date();
               if(!_loc8_)
               {
                  §§push(param1);
                  if(!(_loc8_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr290:
                              while(true)
                              {
                                 §§push(_loc2_.time - this.§;!z§ > §0U§);
                              }
                           }
                           addr289:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§;!z§ = _loc2_.time;
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§ 1§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(this.§ 1§);
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              addr140:
                                                                              §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!(_loc7_ || this))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       _loc3_ = "episodeHighscore";
                                                                                       _loc4_ = "1";
                                                                                       addr129:
                                                                                       if(this.§ 1§ != HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
                                                                                       {
                                                                                          addr102:
                                                                                          §§push(this.§ 1§);
                                                                                          §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                §§push(this.§ 1§);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3);
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!(_loc7_ || _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr129);
                                                                                                                  }
                                                                                                                  _loc4_ = "3";
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     addr291:
                                                                                                                     if(§@!^§.§2j§)
                                                                                                                     {
                                                                                                                        addr294:
                                                                                                                        §§push("episodeId");
                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr323:
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                              }
                                                                                                                              _loc5_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 this.§6t§ = false;
                                                                                                                              }
                                                                                                                              break loop17;
                                                                                                                           }
                                                                                                                           addr322:
                                                                                                                           §§push(null);
                                                                                                                           §§goto(addr323);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr321:
                                                                                                                           §§push(_loc4_);
                                                                                                                        }
                                                                                                                        §§goto(addr322);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push("episodeId");
                                                                                                                     }
                                                                                                                     §§goto(addr321);
                                                                                                                     addr95:
                                                                                                                  }
                                                                                                                  §§goto(addr291);
                                                                                                               }
                                                                                                               addr125:
                                                                                                               §§goto(addr95);
                                                                                                            }
                                                                                                            §§goto(addr294);
                                                                                                         }
                                                                                                         §§goto(addr291);
                                                                                                      }
                                                                                                      §§goto(addr102);
                                                                                                   }
                                                                                                   §§goto(addr129);
                                                                                                }
                                                                                                §§goto(addr102);
                                                                                             }
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                _loc4_ = "2";
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             §§goto(addr294);
                                                                                          }
                                                                                          §§goto(addr129);
                                                                                       }
                                                                                       if(!(_loc8_ && _loc2_))
                                                                                       {
                                                                                          _loc4_ = "1";
                                                                                       }
                                                                                       §§goto(addr125);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc3_ = "highscore";
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          if(§@!^§.§2j§)
                                                                                          {
                                                                                             addr355:
                                                                                             §§push("levelId");
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(this.§ 1§);
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   §§push(null);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr381:
                                                                                                      _loc6_ = §§pop();
                                                                                                   }
                                                                                                   _loc5_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      this.§6t§ = false;
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   break loop17;
                                                                                                }
                                                                                                addr380:
                                                                                                §§push(null);
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr378:
                                                                                                §§push(this.§ 1§);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("levelId");
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc8_ && this)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       while(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          §§pop();
                                                                                          while(!(_loc8_ && param1))
                                                                                          {
                                                                                             §§push(this.§ 1§);
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr259:
                                                                                       return §§pop();
                                                                                       addr239:
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr289);
                                                                                    §§goto(addr140);
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr182:
                                                                              }
                                                                           }
                                                                           while(!(_loc8_ && _loc3_))
                                                                           {
                                                                              §§goto(addr182);
                                                                              §§push(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2);
                                                                              §§goto(addr230);
                                                                           }
                                                                           addr230:
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  return true;
                                                               }
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         continue;
                                                         addr213:
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(false);
                              }
                              §§goto(addr259);
                           }
                        }
                     }
                  }
               }
               §§goto(addr290);
            }
            §§goto(addr43);
         }
         addr43:
         return false;
      }
      
      public function §case §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§<q§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               _loc1_.§<q§ = _loc2_;
            }
            if(!_loc4_)
            {
               if(this.§<q§ > HighscoreSidebar.§-!-§)
               {
                  if(_loc3_)
                  {
                     addr67:
                     this.§<q§ = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      public function §4!S§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§<q§);
            if(_loc3_)
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               _loc1_.§<q§ = _loc2_;
            }
            if(_loc3_ || _loc2_)
            {
               if(this.§<q§ < 1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr71:
                     this.§<q§ = HighscoreSidebar.§-!-§;
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(!_loc3_)
         {
            if(_loc2_.highScore is Array)
            {
               while(true)
               {
                  this.§4=§ = _loc2_.highScore as Array;
                  addr123:
                  addr85:
                  while(true)
                  {
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§6t§ = true;
                     loop7:
                     for(; _loc4_; while(true)
                     {
                        dispatchEvent(new §?3§(§?3§.§]!f§));
                        if(_loc3_ && _loc3_)
                        {
                           continue loop7;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        addr83:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr85);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§13§ = _loc2_.timeLeftCompetition;
                                 break loop7;
                              }
                              addr97:
                           }
                        }
                        §§goto(addr123);
                     },return)
                     {
                        if(_loc4_ || param1)
                        {
                           continue;
                        }
                        §§goto(addr123);
                     }
                     while(true)
                     {
                        (§ !g§.§;!'§ as §`Y§).§&,§.§5g§(this.§13§);
                        §§goto(addr83);
                     }
                  }
                  addr50:
               }
            }
            while(true)
            {
               if(_loc2_.timeLeftCompetition)
               {
                  §§goto(addr97);
               }
               §§goto(addr50);
               §§goto(addr123);
            }
         }
         §§goto(addr73);
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6t§ = true;
         }
      }
      
      public function get §;!Q§() : Boolean
      {
         return this.§6t§;
      }
      
      public function get §-W§() : Array
      {
         return this.§4=§;
      }
      
      public function get levelId() : String
      {
         return this.§ 1§;
      }
      
      public function get §-s§() : int
      {
         return this.§<q§;
      }
      
      public function get §3!J§() : int
      {
         return this.§13§;
      }
   }
}
