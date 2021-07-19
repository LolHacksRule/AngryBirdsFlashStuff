package §<"c§
{
   import § "4§.§8!R§;
   import §'#&§.§3!l§;
   import §+!c§.§9"1§;
   import §+!c§.§]A§;
   import §+D§.§^"m§;
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§"#G§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §]!$§.§6y§;
   import §]!$§.§`#?§;
   import com.angrybirds.§,!q§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §3>§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelSelectionState";
      
      private static const §&!X§:Number = 16.666666666666668;
      
      protected static var § else§:int = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!7§ = "LevelSelectionState";
         }
         while(true)
         {
            §&!X§ = 1000 / 60;
            while(_loc1_)
            {
               § else§ = 10;
               if(!(_loc2_ && §3>§))
               {
                  return;
               }
            }
         }
      }
      
      protected var §=#a§:Number;
      
      protected var §"!§:§9"1§;
      
      protected var §"V§:§"#G§ = null;
      
      protected var §4!n§:int;
      
      protected var §@]§:Vector.<§]A§>;
      
      protected var §;"9§:Vector.<§]A§>;
      
      protected var §4"j§:Vector.<§]A§>;
      
      protected var §-!]§:§[#R§;
      
      private var §&o§:MovieClip;
      
      private var §<!a§:MovieClip;
      
      private var § do§:MovieClip;
      
      private var §^"Y§:Array;
      
      private var §#"x§:int = 0;
      
      private var §-!@§:int = 0;
      
      private var §%%§:int = 0;
      
      public function §3>§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§;"9§ = new Vector.<§]A§>(§ else§);
         }
         loop0:
         while(true)
         {
            this.§4"j§ = new Vector.<§]A§>(§ else§);
            do
            {
               this.§^"Y§ = [];
               continue loop0;
            }
            while(!(_loc6_ || param1));
            
            return;
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §7#^§ = true;
            do
            {
               §7!z§.push("start_run_levelselection","end_run_levelselection");
               do
               {
                  this.§!#<§();
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected function §!#<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §@;§ = new §]#[§(this);
            do
            {
               §@;§.init(§&$§.§@8§.Views.View_LevelSelection[0]);
               do
               {
                  this.§&o§ = §@;§.getItemByName("MovieClip_Levels").mClip.levels;
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
         loop2:
         while(true)
         {
            if(this.§&o§.numChildren > 0)
            {
               this.§&o§.removeChildAt(0);
               continue;
            }
            loop3:
            while(true)
            {
               this.§<!a§ = §@;§.getItemByName("MovieClip_PagingDots").mClip.pagingDots;
               loop4:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     if(this.§<!a§.numChildren <= 0)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           this.§ do§ = §@;§.getItemByName("Container_SetSelectedPlanet").mClip;
                        }
                        loop6:
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§"!§ = new §9"1§("StarBackground");
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop6;
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     this.§<!a§.removeChildAt(0);
                  }
                  return;
               }
               continue loop2;
            }
         }
      }
      
      private function §%!7§(param1:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         if(!_loc6_)
         {
            §§push(§,!q§.§9!,§);
            loop0:
            while(true)
            {
               §§pop().clearLevel();
               addr51:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     §§push(§,!q§.§9!,§);
                     if(_loc6_)
                     {
                        break;
                     }
                     §§pop().§]"J§(false);
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §4#;§.singleton.playThemeMusic();
            if(_loc6_ && param1)
            {
               continue;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr40);
            }
            §§goto(addr51);
         }
         var _loc2_:§"#G§ = §"#G§(§+!b§.getEpisode(§+!b§.currentEpisode));
         if(_loc7_)
         {
            this.§5n§();
         }
         §§push(this.§"V§ == _loc2_);
         if(!(_loc6_ && this))
         {
            §§push(!§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            if(_loc3_)
            {
               loop6:
               while(true)
               {
                  this.§"V§ = _loc2_;
                  loop7:
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        this.§4!n§ = this.§"V§.levelsPerPage * this.§"V§.§6">§;
                        while(_loc7_)
                        {
                           _loc4_ = 0;
                           if(_loc7_ || this)
                           {
                              if(_loc7_)
                              {
                                 if(true)
                                 {
                                    addr156:
                                    if(_loc4_ < this.§ do§.numChildren)
                                    {
                                       _loc5_ = MovieClip(this.§ do§.getChildAt(_loc4_));
                                       _loc5_.visible = _loc5_.name == "planet_" + this.§"V§.name;
                                       if(_loc7_ || param1)
                                       {
                                          _loc4_++;
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 continue loop8;
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    this.§8"6§();
                                    if(!_loc6_)
                                    {
                                       this.§@]§ = new Vector.<§]A§>();
                                    }
                                    this.§""j§();
                                    while(!(_loc7_ || _loc2_))
                                    {
                                       §§goto(addr217);
                                    }
                                    addr217:
                                    while(true)
                                    {
                                       this.§+!L§(param1,_loc3_);
                                       if(!(_loc6_ && param1))
                                       {
                                          break;
                                       }
                                       §§goto(addr193);
                                       §§goto(addr210);
                                    }
                                    addr193:
                                    addr210:
                                    addr178:
                                 }
                                 return;
                              }
                              break loop8;
                           }
                        }
                        continue loop7;
                     }
                     continue loop6;
                  }
               }
               addr124:
            }
            §§goto(addr178);
         }
         §§goto(addr124);
      }
      
      private function §5n§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ do§.numChildren)
         {
            _loc2_ = MovieClip(this.§ do§.getChildAt(_loc1_));
            if(!_loc3_)
            {
               this.§5!l§(_loc2_,§+!b§.getEpisodeByName(_loc2_.name.split("_")[1]));
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      private function §5!l§(param1:MovieClip, param2:§3![§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc3_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         if(_loc6_)
         {
            param1.infoBox.info.txtScore.text = _loc3_.§]#B§(param2).toString();
         }
         while(true)
         {
            param1.infoBox.info.txtStars.text = _loc3_.§'e§(param2).toString() + "/" + param2.§!#J§() * 3;
            loop1:
            while(true)
            {
               param1.infoBox.info.txtFalcons.text = _loc3_.§`"q§(param2).toString() + "/" + param2.§!#J§();
               while(param2.name == "4")
               {
                  while(!_loc5_)
                  {
                     continue loop1;
                  }
               }
               §§goto(addr28);
            }
            if(_loc6_ || param1)
            {
               addr28:
               return;
            }
         }
      }
      
      protected function §8"6§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               if(§§pop() < this.§4"j§.length)
               {
                  if(this.§4"j§[_loc1_])
                  {
                     §§goto(addr169);
                  }
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(0);
                  loop3:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc3_ && this)
                           {
                              continue loop3;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           if(§§pop() >= this.§;"9§.length)
                           {
                              if(!_loc2_)
                              {
                                 loop9:
                                 while(_loc3_ && this)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          addr68:
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                _loc1_++;
                                                continue loop9;
                                             }
                                          }
                                          else
                                          {
                                             while(!(_loc3_ && _loc2_))
                                             {
                                                this.§4=§(this.§;"9§[_loc1_]);
                                                §§goto(addr68);
                                             }
                                             addr132:
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             addr151:
                                             addr176:
                                             this.§4=§(this.§4"j§[_loc1_]);
                                             while(true)
                                             {
                                                this.§4"j§[_loc1_] = null;
                                                §§goto(addr141);
                                             }
                                             §§goto(addr143);
                                             addr113:
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§;"9§[_loc1_] = null;
                                          continue loop8;
                                       }
                                    }
                                    this.§&o§.removeChild(this.§4"j§[_loc1_]);
                                    §§goto(addr176);
                                 }
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop2;
                              }
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                              if(!(_loc3_ && _loc2_))
                              {
                                 return;
                              }
                              addr141:
                              if(!_loc3_)
                              {
                                 addr143:
                                 break loop1;
                              }
                              §§goto(addr151);
                           }
                           else if(this.§;"9§[_loc1_])
                           {
                              if(!_loc3_)
                              {
                                 this.§&o§.removeChild(this.§;"9§[_loc1_]);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr48);
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr169);
            }
            while(true)
            {
               _loc1_++;
               §§goto(addr132);
               §§goto(addr143);
            }
         }
      }
      
      private function §+!L§(param1:Boolean, param2:Boolean) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = 0;
         var _loc9_:* = 0;
         var _loc3_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         var _loc5_:Array = this.§"V§.§0!_§();
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(!_loc11_)
            {
               loop1:
               while(true)
               {
                  §§push(this.§4!n§);
                  if(!(_loc11_ && param2))
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc11_)
                        {
                           addr136:
                           §§push(_loc4_);
                           if(!_loc11_)
                           {
                              break loop0;
                           }
                           §§push(int(§§pop()));
                           if(!_loc11_)
                           {
                              addr166:
                              §§push(int(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           if(!_loc11_)
                           {
                              §§push(param2);
                              if(!_loc11_)
                              {
                                 §§push(!§§pop());
                                 if(_loc10_)
                                 {
                                    addr186:
                                    if(§§pop())
                                    {
                                       if(!_loc11_)
                                       {
                                          addr190:
                                          §§pop();
                                          if(_loc10_ || param1)
                                          {
                                             addr201:
                                             if(§+!b§.currentLevel)
                                             {
                                                if(!(_loc11_ && this))
                                                {
                                                   §§push(int(_loc5_.indexOf(§+!b§.currentLevel)));
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc11_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         addr249:
                                                         if(_loc10_)
                                                         {
                                                            §§push(-1);
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(§3"v§ == §"C§.§^!7§);
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr368:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(!(_loc10_ || _loc3_))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           addr337:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              break loop15;
                                                                              §§goto(addr337);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(this.§#"x§ == _loc8_)
                                                                           {
                                                                              while(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 this.scrollIndex = this.scrollIndex;
                                                                                 while(true)
                                                                                 {
                                                                                    this.§[H§();
                                                                                    addr290:
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc11_ && param2))
                                                                                          {
                                                                                             return;
                                                                                          }
                                                                                          addr340:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#"x§ = -1;
                                                                                             addr343:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                 }
                                                                                 addr279:
                                                                                 if(!(_loc10_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr286:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§+G§(_loc8_,param1);
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                                 addr262:
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                  }
                                                                  addr367:
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            addr236:
                                                            §§push(_loc9_);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(_loc11_)
                                                               {
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            _loc7_ = §§pop();
                                                            addr243:
                                                            §§push(int(Math.floor(_loc7_ / § else§)));
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr249);
                                                }
                                             }
                                          }
                                          §§goto(addr236);
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr201);
                        }
                     }
                     else
                     {
                        §§push(_loc3_.getScoreForLevel(_loc5_[_loc6_]));
                        loop2:
                        while(true)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc11_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    addr119:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc3_.getEagleScoreForLevel(_loc5_[_loc6_]));
                                             if(_loc10_ || param2)
                                             {
                                                continue loop2;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                if(!_loc10_)
                                                {
                                                   break;
                                                   addr34:
                                                }
                                                while(true)
                                                {
                                                   _loc6_++;
                                                   if(!(_loc10_ || this))
                                                   {
                                                      break loop5;
                                                   }
                                                   if(_loc10_ || param1)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr84:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(_loc11_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr136);
                                       }
                                    }
                                    addr119:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr84);
                                       }
                                    }
                                    addr82:
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr119);
                           }
                           addr145:
                           if(§§pop() == §§pop() - 1)
                           {
                              addr146:
                              §§push(_loc4_);
                              if(_loc11_ && param1)
                              {
                              }
                              §§goto(addr136);
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(_loc10_)
                              {
                                 addr162:
                                 §§push(int(§§pop() + 1));
                                 if(!_loc11_)
                                 {
                                    §§goto(addr166);
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr145);
               }
            }
            break;
         }
         §§push(this.§4!n§);
         if(_loc10_)
         {
            §§goto(addr145);
         }
         §§goto(addr162);
      }
      
      protected function §""j§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         var _loc1_:int = Math.ceil((this.§"V§.§!#J§() + this.§"V§.lockedLevelCount) / § else§);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc6_ || this)
            {
               §§push(this.§^"Y§);
               if(!(_loc7_ && this))
               {
                  if(§§pop() < §§pop().length)
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc7_ && _loc3_))
                        {
                           break loop0;
                        }
                        §§goto(addr156);
                     }
                     addr143:
                  }
                  addr155:
                  addr156:
                  var _loc2_:Number = §§pop();
                  var _loc3_:int = 0;
                  if(_loc6_)
                  {
                     while(_loc3_ < _loc1_)
                     {
                        (_loc5_ = this.§^"Y§[_loc3_]).x = -(_loc1_ - 1) / 2 * _loc2_ + _loc3_ * _loc2_;
                        if(_loc6_)
                        {
                           _loc5_.gotoAndStop(_loc3_ == 0 ? "true" : "false");
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        _loc3_++;
                     }
                  }
                  return;
                  §§push(35);
               }
               while(§§pop() <= §§pop().length)
               {
                  §§goto(addr155);
               }
               break;
               §§goto(addr156);
               addr153:
            }
            break;
         }
         while(true)
         {
            §§goto(addr153);
         }
      }
      
      private function §^8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Boolean(this.§-!]§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr93:
                     do
                     {
                        §§push(Boolean(isTransitioning));
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc2_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr86:
                     break;
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
                  §§goto(addr93);
               }
               addr50:
               addr54:
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               while(_loc2_)
               {
                  §§goto(addr86);
                  §§goto(addr50);
               }
            }
         }
         while(true)
         {
            this.§+G§(this.§^"Y§.indexOf(param1.currentTarget));
            if(_loc3_)
            {
               break;
            }
            §§goto(addr54);
         }
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activateComplete(param1);
            do
            {
               this.§%!7§(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function get scrollIndex() : Number
      {
         return this.§=#a§;
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         if(_loc11_ || param1)
         {
            this.§=#a§ = param1;
         }
         §§push(§ else§ / 2);
         if(_loc11_ || _loc2_)
         {
            §§push(§§pop() - 0.5);
            if(_loc11_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(§ else§ / 2);
         if(!_loc12_)
         {
            §§push(0.5);
            if(!_loc12_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc12_)
               {
                  §§push(§ else§ / 2);
                  if(!_loc12_)
                  {
                     addr75:
                     §§push(§§pop() - 0.5);
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc11_ || this)
                  {
                  }
                  addr86:
                  var _loc3_:* = §§pop();
                  var _loc4_:* = 0;
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc11_ || _loc3_)
                     {
                        if(!(_loc12_ && param1))
                        {
                           if(§§pop() >= this.§;"9§.length)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 addr503:
                                 loop10:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop11:
                                    while(!(_loc12_ && this))
                                    {
                                       if(_loc11_)
                                       {
                                          if(!_loc12_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc11_ || _loc2_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         if(§§pop() >= this.§4"j§.length)
                                                         {
                                                            if(_loc11_ || this)
                                                            {
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§7n§();
                                                                  addr129:
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.abs(_loc9_) <= _loc3_);
                                                                        loop21:
                                                                        while(!_loc12_)
                                                                        {
                                                                           addr244:
                                                                           §§push(§§pop());
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 _loc10_ = §§pop();
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc12_ && _loc3_))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop19:
                                                                                       while(!_loc12_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         while(_loc11_ || param1)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr340);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(-1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§goto(addr367);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr364:
                                                                                                            }
                                                                                                            §§goto(addr478);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr322:
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  addr291:
                                                                                                                  §§pop();
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§4"j§[_loc4_] == null);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           if(_loc11_ || this)
                                                                                                                           {
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop15:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       this.§4"j§[_loc4_] = this.addButton(this.§-!@§ * § else§ + _loc4_);
                                                                                                                                       loop24:
                                                                                                                                       while(_loc11_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                             if(!(_loc11_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             if(!(_loc12_ && param1))
                                                                                                                                             {
                                                                                                                                                addr181:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop14:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      this.§ !k§(this.§4"j§[_loc4_],_loc9_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            break loop14;
                                                                                                                                                         }
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr181);
                                                                                                                                                   }
                                                                                                                                                   addr182:
                                                                                                                                                }
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_++;
                                                                                                                                                   addr148:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         addr561:
                                                                                                                                                         addr596:
                                                                                                                                                         this.§;"9§[_loc4_] = null;
                                                                                                                                                         while(!(_loc12_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr549:
                                                                                                                                                               §§push(Boolean(_loc7_));
                                                                                                                                                               §§push(Boolean(_loc7_));
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr553:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(this.§;"9§[_loc4_]));
                                                                                                                                                                     }
                                                                                                                                                                     addr554:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop22;
                                                                                                                                                                  }
                                                                                                                                                                  addr516:
                                                                                                                                                                  _loc4_++;
                                                                                                                                                                  break loop11;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr608:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§push(this.§;"9§[_loc4_] != null);
                                                                                                                                                                  break loop19;
                                                                                                                                                                  addr609:
                                                                                                                                                               }
                                                                                                                                                               addr587:
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  break loop24;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr546);
                                                                                                                                                            }
                                                                                                                                                            addr546:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop20;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§4=§(this.§;"9§[_loc4_]);
                                                                                                                                                            §§goto(addr576);
                                                                                                                                                            §§goto(addr561);
                                                                                                                                                         }
                                                                                                                                                         addr576:
                                                                                                                                                         addr561:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr182);
                                                                                                                                                      }
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr624:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr637:
                                                                                                                                                   §§push(Number(Number(-1)));
                                                                                                                                                   §§push(Number(Number(-1)));
                                                                                                                                                   if(!(_loc12_ && param1))
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr673:
                                                                                                                                                         §§push(this.§=#a§);
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr666:
                                                                                                                                                            §§push(§§pop() * §§pop() * § else§ + _loc4_ - _loc2_);
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                         }
                                                                                                                                                         _loc6_ = §§pop() / §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr603);
                                                                                                                                                            break loop11;
                                                                                                                                                         }
                                                                                                                                                         addr674:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr666);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr629:
                                                                                                                                                   §§push(Number(1));
                                                                                                                                                   if(!(_loc12_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr637);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr666);
                                                                                                                                             }
                                                                                                                                             §§goto(addr603);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       this.§&o§.removeChild(this.§;"9§[_loc4_]);
                                                                                                                                       §§goto(addr596);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr163);
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                              addr212:
                                                                                                                           }
                                                                                                                           §§goto(addr549);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(!(_loc12_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc12_)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc12_ && param1))
                                                                                                                                    {
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc11_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc12_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(!(_loc12_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§=#a§);
                                                                                                                                                            if(!_loc12_)
                                                                                                                                                            {
                                                                                                                                                               addr408:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc11_ || this)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§ else§);
                                                                                                                                                                     if(!(_loc12_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc11_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc12_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc12_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc12_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc2_);
                                                                                                                                                                                                         if(_loc11_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc11_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(!_loc12_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr471:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                                                                     addr472:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                        if(_loc11_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr475:
                                                                                                                                                                                                                           while(!_loc12_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                                                                    continue loop26;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr666);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop31;
                                                                                                                                                                                                                           addr475:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr478);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr471:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr475);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr666);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr472);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr637);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr637);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr673);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr440:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr471);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr666);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr435:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr666);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr471);
                                                                                                                                                                        }
                                                                                                                                                                        addr424:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr435);
                                                                                                                                                                  }
                                                                                                                                                                  addr416:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr440);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr472);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr666);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr424);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr478);
                                                                                                                                                }
                                                                                                                                                §§goto(addr673);
                                                                                                                                             }
                                                                                                                                             §§goto(addr408);
                                                                                                                                          }
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                       §§goto(addr673);
                                                                                                                                       addr367:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr416);
                                                                                                                              }
                                                                                                                              §§goto(addr666);
                                                                                                                              addr350:
                                                                                                                           }
                                                                                                                           §§goto(addr609);
                                                                                                                        }
                                                                                                                        addr340:
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           §§goto(addr516);
                                                                                                                        }
                                                                                                                        addr340:
                                                                                                                     }
                                                                                                                     §§goto(addr554);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr606:
                                                                                                               §§goto(addr607);
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr534:
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         this.§ !k§(this.§;"9§[_loc4_],_loc6_);
                                                                                                         §§goto(addr340);
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr516);
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                          _loc7_ = §§pop();
                                                                                          break loop21;
                                                                                       }
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       §§goto(addr603);
                                                                                       addr270:
                                                                                    }
                                                                                    §§goto(addr549);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr549);
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                        §§goto(addr606);
                                                                     }
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         else
                                                         {
                                                            addr305:
                                                            §§push(this.§#"x§);
                                                            if(_loc11_ || this)
                                                            {
                                                               §§push(this.§-!@§);
                                                               if(_loc11_ || this)
                                                               {
                                                                  §§goto(addr322);
                                                                  §§push(§§pop() < §§pop());
                                                               }
                                                               else
                                                               {
                                                                  addr623:
                                                                  §§push(§§pop() < §§pop());
                                                               }
                                                               §§goto(addr624);
                                                            }
                                                         }
                                                         §§goto(addr629);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr364);
                                             }
                                             continue;
                                          }
                                          §§goto(addr637);
                                       }
                                       §§goto(addr534);
                                    }
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr674);
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§#"x§);
                              if(_loc11_ || this)
                              {
                                 §§goto(addr623);
                                 §§push(this.§-!@§);
                              }
                           }
                        }
                        §§goto(addr637);
                     }
                     §§goto(addr503);
                  }
               }
               §§goto(addr86);
               §§push(Number(§§pop()));
            }
            §§goto(addr75);
         }
         §§goto(addr86);
      }
      
      protected function §7n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= this.§^"Y§.length)
                  {
                     if(_loc3_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              loop2:
                              while(true)
                              {
                                 _loc1_++;
                                 addr45:
                                 while(!_loc3_)
                                 {
                                    loop6:
                                    while(_loc3_ || _loc2_)
                                    {
                                       continue loop2;
                                       while(true)
                                       {
                                          §§pop()[§§pop()].gotoAndStop("true");
                                          continue loop6;
                                       }
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       addr66:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   if(_loc3_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this.§^"Y§);
                                                               }
                                                               else
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     addr111:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr112:
                                                                        loop10:
                                                                        while(_loc3_)
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr122:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * (this.§-!@§ - this.§#"x§));
                                                                                 break loop10;
                                                                              }
                                                                              addr140:
                                                                           }
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr78:
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§^"Y§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr97:
                                                            }
                                                            §§goto(addr98);
                                                         }
                                                         §§goto(addr97);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr112);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr111);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr45);
                  }
                  else
                  {
                     addr138:
                     §§push(this.§#"x§);
                     §§push(this.§=#a§);
                  }
                  §§goto(addr140);
               }
               §§goto(addr138);
            }
            §§goto(addr66);
         }
      }
      
      protected function § !k§(param1:§]A§, param2:Number) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc3_:Number = Math.abs(param2);
         §§push(0.825);
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc12_ && param1))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     §§push(param2);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(!(_loc12_ && _loc3_))
                           {
                              §§push(§§pop() < §§pop());
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(param2);
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                §§push(1);
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§ else§);
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(§§pop() / 2);
                                                                                 loop69:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§push(0.5);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr365:
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop65:
                                                                                             while(_loc13_)
                                                                                             {
                                                                                                §§push(§ else§);
                                                                                                loop59:
                                                                                                while(!_loc12_)
                                                                                                {
                                                                                                   §§push(§§pop() / 2);
                                                                                                   loop60:
                                                                                                   for(; !(_loc12_ && param1); if(_loc12_ && param1)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc13_ || param1)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr282);
                                                                                                      }
                                                                                                      §§goto(addr681);
                                                                                                   },§§goto(addr668))
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         loop61:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc13_ || this))
                                                                                                            {
                                                                                                               break;
                                                                                                               addr416:
                                                                                                            }
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            while(!(_loc12_ && param1))
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                            addr287:
                                                                                                            if(!(_loc13_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(!(_loc12_ && this))
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  loop67:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc12_)
                                                                                                                     {
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           addr345:
                                                                                                                           loop58:
                                                                                                                           for(; !(_loc12_ && this); §§goto(addr345))
                                                                                                                           {
                                                                                                                              §§push(param2);
                                                                                                                              if(_loc13_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc13_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc12_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop65;
                                                                                                                                    }
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    addr140:
                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             continue loop59;
                                                                                                                                          }
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          addr154:
                                                                                                                                          if(_loc13_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             addr621:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr628:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         break loop65;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr627:
                                                                                                                                                }
                                                                                                                                                loop42:
                                                                                                                                                while(!_loc12_)
                                                                                                                                                {
                                                                                                                                                   addr689:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   loop36:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr694:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr695:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               param2 = §§pop();
                                                                                                                                                               loop73:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop51:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                     addr532:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        addr533:
                                                                                                                                                                        while(!(_loc12_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc13_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr549:
                                                                                                                                                                                 loop55:
                                                                                                                                                                                 while(_loc13_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr556:
                                                                                                                                                                                    if(_loc13_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                       loop56:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc13_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop73;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc12_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                param1.x = Math.sin(_loc4_ * Math.PI) * 380;
                                                                                                                                                                                                if(_loc13_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop56;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc13_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      §§push(Math.cos(_loc4_ * Math.PI) * 230);
                                                                                                                                                                                                      if(!(_loc12_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 230);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      if(!(_loc12_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc13_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc12_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop58;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                            §§push(0.45);
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(1 - Math.min(1,Math.abs(param2)));
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * 0.4);
                                                                                                                                                                                                                  if(!(_loc12_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr750:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                                                                                                                  §§pop().scaleY = §§pop();
                                                                                                                                                                                                                  §§pop().scaleX = _loc11_;
                                                                                                                                                                                                                  break loop8;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr750);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr252:
                                                                                                                                                                                                            if(!_loc12_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr639:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop8;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr708:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(Math.pow(_loc7_,1.04)));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         break loop61;
                                                                                                                                                                                                         addr224:
                                                                                                                                                                                                         if(_loc12_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc4_ = Number(§§pop() + _loc10_ * (1 - _loc5_));
                                                                                                                                                                                                         §§goto(addr252);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop8;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                addr642:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - Math.pow(1 - _loc7_,1.4));
                                                                                                                                                                                                   addr649:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop55;
                                                                                                                                                                                                      §§goto(addr556);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr671:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             addr704:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                addr705:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   addr706:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      addr707:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                         §§goto(addr708);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop73;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr649);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                       break loop58;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr713:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr714:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                                                                          addr715:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                             addr701:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr548:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr703);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    addr664:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       addr665:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                          addr666:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - _loc6_);
                                                                                                                                                                                             addr668:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                addr669:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr670:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      §§goto(addr671);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr663:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr683:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           addr684:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              addr685:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr686:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr692:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr627);
                                                                                                                                             §§goto(addr154);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr683);
                                                                                                                                       }
                                                                                                                                       addr682:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          break loop69;
                                                                                                                                       }
                                                                                                                                       §§goto(addr686);
                                                                                                                                       §§goto(addr140);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr287);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop68:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr317:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc12_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               continue loop67;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr714);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr707);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr548);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop64:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         if(_loc13_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc12_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop60;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop68;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr416);
                                                                                                                                                               }
                                                                                                                                                               addr257:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  break loop64;
                                                                                                                                                               }
                                                                                                                                                               addr712:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      addr457:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr316:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                             addr524:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr523:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr533);
                                                                                                                                    addr282:
                                                                                                                                 }
                                                                                                                                 §§goto(addr713);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr189:
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                    {
                                                                                                                                       if(_loc13_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!(_loc12_ && param2))
                                                                                                                                          {
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                continue loop67;
                                                                                                                                             }
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                continue loop69;
                                                                                                                                             }
                                                                                                                                             if(_loc13_ || this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr224);
                                                                                                                                             }
                                                                                                                                             while(!_loc12_)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr665);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr241:
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr244);
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr532);
                                                                                                                                       }
                                                                                                                                       §§goto(addr706);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr257);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr317);
                                                                                                                           }
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr576);
                                                                                                                              §§goto(addr346);
                                                                                                                           }
                                                                                                                           addr346:
                                                                                                                        }
                                                                                                                        §§goto(addr669);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(_loc13_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr438:
                                                                                                                     }
                                                                                                                     §§goto(addr524);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr591);
                                                                                                               }
                                                                                                               addr590:
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            addr680:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               addr681:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr682);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr590);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc13_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(_loc13_ || this)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr621);
                                                                                                                     }
                                                                                                                     addr620:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                  }
                                                                                                                  §§goto(addr626);
                                                                                                               }
                                                                                                               §§goto(addr685);
                                                                                                            }
                                                                                                            §§goto(addr684);
                                                                                                         }
                                                                                                         addr604:
                                                                                                      }
                                                                                                      §§goto(addr705);
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   addr397:
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc13_ || param2)
                                                                                                {
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      param2 = §§pop();
                                                                                                      §§goto(addr639);
                                                                                                   }
                                                                                                   §§goto(addr695);
                                                                                                }
                                                                                                §§goto(addr663);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr664);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1);
                                                                                    if(!(_loc12_ && this))
                                                                                    {
                                                                                       §§goto(addr589);
                                                                                       §§push(§§pop() - _loc6_);
                                                                                    }
                                                                                    §§goto(addr604);
                                                                                    §§goto(addr365);
                                                                                 }
                                                                              }
                                                                              §§goto(addr642);
                                                                           }
                                                                           addr529:
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr757:
                                                                     return;
                                                                  }
                                                               }
                                                               §§goto(addr670);
                                                            }
                                                         }
                                                         §§goto(addr628);
                                                      }
                                                   }
                                                   §§goto(addr692);
                                                }
                                             }
                                             §§goto(addr694);
                                          }
                                       }
                                       §§goto(addr715);
                                    }
                                    addr487:
                                 }
                                 else
                                 {
                                    §§push(param2);
                                 }
                                 §§goto(addr523);
                              }
                           }
                           §§goto(addr666);
                        }
                     }
                  }
                  §§goto(addr712);
               }
            }
         }
         §§goto(addr529);
      }
      
      protected function addButton(param1:int) : §]A§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         var _loc3_:String = this.§"V§.getLevelName(param1);
         var _loc4_:§]A§ = this.getLevelButton();
         if(!_loc6_)
         {
            if(_loc3_ != null)
            {
               _loc4_.§2p§ = false;
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  §§push(_loc2_.isLevelOpen(_loc3_));
                  if(!(_loc6_ && param1))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().locked = §§pop();
                  loop0:
                  while(_loc7_ || _loc3_)
                  {
                     _loc4_.§@"T§ = param1 + 1;
                     loop1:
                     while(_loc7_)
                     {
                        _loc4_.§[!F§ = _loc2_.getStarsForLevel(_loc3_);
                        loop2:
                        while(true)
                        {
                           if(!(_loc7_ || param1))
                           {
                              continue loop1;
                           }
                           if(!_loc7_)
                           {
                              addr313:
                              _loc4_.§2p§ = true;
                              break loop0;
                           }
                           _loc4_.§,!M§ = _loc2_.getEagleScoreForLevel(_loc3_);
                           if(_loc7_ || param1)
                           {
                              §§push(_loc4_);
                              if(_loc7_)
                              {
                                 §§push(_loc2_.getScoreForLevel(_loc3_));
                                 if(_loc7_ || this)
                                 {
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§pop();
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr215:
                                                      §§push(_loc2_.getEagleScoreForLevel(_loc3_) == 0);
                                                      if(_loc7_)
                                                      {
                                                         addr218:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§pop();
                                                            }
                                                            addr238:
                                                            §§pop().§3P§ = !§§pop();
                                                            loop3:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc4_.locked);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§pop();
                                                                                 addr121:
                                                                                 §§push(this.§"V§);
                                                                                 §§push(this.§"V§.name + "-");
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop() + (param1 + 1));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + "-INTRO");
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop().getCutScene(§§pop()) == null);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop().hasIntro = §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc4_.locked);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       addr61:
                                                                                       §§pop();
                                                                                       §§push(this.§"V§);
                                                                                       §§push(this.§"V§.name + "-");
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + (param1 + 1));
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr82:
                                                                                             §§push(§§pop() + "-OUTRO");
                                                                                          }
                                                                                          §§push(§§pop().getCutScene(§§pop()) == null);
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             addr95:
                                                                                             §§pop().hasOutro = !§§pop();
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                this.§&o§.addChildAt(_loc4_,0);
                                                                                             }
                                                                                             if(true)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             continue;
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr95);
                                                                                       }
                                                                                       §§goto(addr82);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr95);
                                                                           }
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§push(_loc4_.locked);
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr238);
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr95);
                        }
                        _loc4_.scaleX = _loc4_.scaleY = 0.5;
                        if(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr95);
                        }
                        addr348:
                        return _loc4_;
                     }
                  }
                  §§goto(addr317);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr313);
      }
      
      protected function getLevelButton() : §]A§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§@]§.length > 0)
            {
               if(_loc2_)
               {
                  return this.§@]§.pop();
               }
            }
         }
         var _loc1_:§]A§ = new §]A§(this.§"V§.levelButtons[0]);
         if(_loc2_ || this)
         {
            _loc1_.addEventListener(MouseEvent.CLICK,this.§&K§);
         }
         return _loc1_;
      }
      
      protected function §&K§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(isTransitioning)
            {
               if(_loc4_)
               {
                  return;
               }
            }
         }
         var _loc2_:§]A§ = param1.currentTarget as §]A§;
         if(!(_loc3_ && this))
         {
            §§push(_loc2_.locked);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§2p§);
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr108:
                                 if(_loc4_ || _loc2_)
                                 {
                                    loop10:
                                    while(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §?!r§.§"#_§("misc_menubuttonproceed_1");
                                          loop12:
                                          while(true)
                                          {
                                             §+!b§.loadLevel(this.§"V§.getLevelName(_loc2_.§@"T§ - 1));
                                             while(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   § g§(StateCutScene.§^!7§);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         break loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                addr150:
                                                while(!_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§4#;§.§<N§);
                                                      if(_loc4_)
                                                      {
                                                         addr91:
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr91);
                                                            }
                                                            continue loop2;
                                                            addr126:
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr101:
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§goto(addr108);
                                                         }
                                                         while(!(_loc3_ && this))
                                                         {
                                                            continue loop0;
                                                            §§goto(addr101);
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop11;
                                          }
                                          break loop10;
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr126);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      private function §4=§(param1:§]A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.§3P§ = false;
         }
         do
         {
            this.§@]§.push(param1);
         }
         while(!_loc2_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
         }
         loop0:
         do
         {
            §§push(this.§-!]§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§-!]§);
                     addr100:
                     while(true)
                     {
                        §§pop().stop();
                        loop6:
                        while(true)
                        {
                           this.§-!]§ = null;
                           addr72:
                           addr81:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§8"6§();
                  while(!(_loc1_ && _loc1_))
                  {
                     §+!b§.resetPreviousLevel();
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr72);
                  §§goto(addr81);
               }
            }
            §§goto(addr100);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.update(param1);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setViewSize(param1,param2);
            do
            {
               this.§"!§.setSize(param1,param2);
            }
            while(_loc3_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("PREV" === _loc4_)
            {
               if(_loc5_ || param2)
               {
                  §§push(0);
                  if(!(_loc5_ || this))
                  {
                     addr148:
                  }
               }
               else
               {
                  addr118:
                  §§push(1);
                  if(_loc6_ && param1)
                  {
                  }
               }
            }
            else
            {
               if("NEXT" === _loc4_)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr118);
                  }
               }
               else if("BACK" !== _loc4_)
               {
                  addr153:
                  switch(§§pop())
                  {
                     case 0:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        if(_loc5_)
                        {
                           this.§+G§(this.§#"x§ - 1);
                           break;
                           addr68:
                        }
                        break;
                     case 1:
                        §?!r§.§"#_§("misc_menubuttonproceed_1");
                        loop0:
                        while(true)
                        {
                           this.§+G§(this.§#"x§ + 1);
                           addr52:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                        }
                        addr36:
                        break;
                     case 2:
                        §?!r§.§"#_§("misc_menubuttonback_1");
                        if(!_loc6_)
                        {
                           § g§(§"C§.§^!7§,true);
                           if(!_loc6_)
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr68);
                                 }
                              }
                              else
                              {
                                 §§goto(addr52);
                              }
                              §§goto(addr36);
                           }
                           break;
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr153);
               if(!(_loc6_ && param3))
               {
                  §§goto(addr148);
               }
            }
            §§goto(addr153);
         }
         §§goto(addr118);
      }
      
      private function §+G§(param1:int, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§-!]§);
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc5_ || param1)
                     {
                        §§push(this.§#"x§);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 this.§-!@§ = param1;
                                 loop3:
                                 while(_loc5_ || param1)
                                 {
                                    this.§=#a§ = 0;
                                    loop4:
                                    while(true)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(param2);
                                          if(!_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                                this.§-!]§ = §-#C§.§%!E§.§^!H§(this,{"scrollIndex":1},null,2.3,§9!Z§.easeInOut);
                                                while(!_loc6_)
                                                {
                                                   if(!(_loc5_ || this))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(this.§-!]§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§pop().onComplete = this.§[H§;
                                                      addr75:
                                                      while(_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr107:
                                                addr94:
                                             }
                                             continue;
                                             §§push(this.§-!@§);
                                             break loop1;
                                          }
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:* = this.§-!@§ < Math.ceil((this.§4!n§ + this.§"V§.lockedLevelCount) / § else§) - 1;
                                    if(!_loc6_)
                                    {
                                       §§push(§@;§.getItemByName("Button_Prev") as §^"m§);
                                       if(!_loc6_)
                                       {
                                          if(_loc3_)
                                          {
                                             addr274:
                                             §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   addr307:
                                                   §§pop().setComponentState(§§pop());
                                                   addr306:
                                                   do
                                                   {
                                                      §§push(§@;§.getItemByName("Button_Next") as §^"m§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   while(§§pop().setComponentState(§§pop()), !(_loc5_ || this));
                                                   
                                                   return;
                                                   addr308:
                                                }
                                                §§goto(addr307);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr306);
                                             }
                                          }
                                          §§goto(addr307);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr308);
                                 }
                              }
                           }
                           return;
                        }
                        addr194:
                        §§goto(addr195);
                        §§push(§§pop() > §§pop());
                     }
                     break;
                  }
                  §§goto(addr194);
                  §§push(0);
                  addr165:
               }
               addr189:
               return;
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§pop().play();
               while(true)
               {
                  if(_loc5_ || _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr130);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr68);
      }
      
      private function §[H§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#"x§ = this.§-!@§;
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= § else§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§-!]§ = null;
               }
               if(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     this.§4"j§[_loc1_] = null;
                     addr91:
                  }
                  _loc1_++;
               }
               continue;
            }
            this.§;"9§[_loc1_] = this.§4"j§[_loc1_];
            §§goto(addr91);
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §7!=§ = new §3!l§(param1,§%G§.stage,§&!X§);
         }
      }
      
      override protected function beforeTransitionStart(param1:§6y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §3!l§(§7!=§).§%'§(§+!b§.getEpisode(§+!b§.currentEpisode).name);
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§>]§);
               addr77:
               addr78:
               addr24:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               addr24:
               §?!r§.§"#_§("levelselect_levels_appear");
               return;
            }
         }
         §§goto(addr60);
      }
      
      override protected function getRunTransitionData() : §6y§
      {
         return new §6y§("start_run_levelselection",§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,§+#=§,§^!`§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || param1)
         {
            §§push(param1.keyCode - Keyboard.NUMBER_0);
            if(!_loc4_)
            {
               §§push(§§pop() - 1);
            }
            §§push(int(§§pop()));
            while(true)
            {
               _loc2_ = §§pop();
               addr89:
               if(_loc4_ && this)
               {
                  continue;
               }
               §§push(§§pop() < Math.ceil(this.§4!n§ / § else§));
               if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc4_ && this))
                  {
                     loop6:
                     while(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(this.§-!]§);
                           if(_loc3_ || param1)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§-!]§);
                                    addr133:
                                    while(true)
                                    {
                                       §§pop().stop();
                                       addr134:
                                       loop12:
                                       while(true)
                                       {
                                          this.§-!]§ = null;
                                          addr67:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop7;
                                             }
                                             this.§[H§();
                                             while(_loc4_ && this)
                                             {
                                                continue loop12;
                                             }
                                             continue loop12;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§+G§(_loc2_,true);
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       break;
                                    }
                                    §§goto(addr67);
                                 }
                                 §§goto(addr55);
                                 §§goto(addr55);
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr170:
                              loop5:
                              while(_loc3_ || _loc2_)
                              {
                                 addr149:
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr89);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() >= 0);
                                       addr139:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    addr137:
                                 }
                                 §§goto(addr139);
                              }
                              while(true)
                              {
                                 §§goto(addr137);
                              }
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr134);
                     }
                     return;
                  }
                  §§goto(addr139);
               }
               §§goto(addr141);
            }
         }
         §§goto(addr170);
      }
   }
}
