package §<"c§
{
   import § "4§.§8!R§;
   import §'#&§.§3!l§;
   import §+!c§.§6!R§;
   import §+!c§.§9"-§;
   import §+!c§.§9"1§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9U§ extends §]"_§
   {
      
      private static const §&!X§:Number = 16.666666666666668;
      
      private static const §7"X§:int = 7;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §9U§))
         {
            §&!X§ = 1000 / 60;
         }
         do
         {
            §7"X§ = 7;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private var §7#`§:§6!R§;
      
      private var §=4§:§[#R§;
      
      private var §"!§:§9"1§;
      
      private var §2#3§:MovieClip;
      
      private var § do§:MovieClip;
      
      private var §-"F§:Vector.<§9"-§>;
      
      public function §9U§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§-"F§ = new Vector.<§9"-§>();
            loop0:
            do
            {
               super(param1,param3,param4,param2);
               while(§7"X§ % 2 == 0)
               {
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  if(!_loc5_)
                  {
                     addr55:
                     break;
                  }
               }
               return;
            }
            while(!_loc6_);
            
            throw new Error("Visible planets must be an odd number.");
         }
         §§goto(addr55);
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               §@;§ = new §]#[§(this);
               while(true)
               {
                  §@;§.init(§&$§.§@8§.Views.View_ChapterSelection[0]);
                  addr94:
                  while(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.update(param1);
            do
            {
               this.§7#`§.update(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §6"x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1#`§();
         }
      }
      
      private function §1#`§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§9"-§ = null;
         if(_loc4_)
         {
            this.§2#3§ = §@;§.getItemByName("MovieClip_AllEpisodes").mClip.allEpisodes;
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  this.§ do§ = §@;§.getItemByName("Container_SetSelectedPlanet").mClip;
                  continue loop0;
               }
            }
            addr54:
         }
         while(true)
         {
            this.§#"!§();
            if(!(_loc4_ || this))
            {
               continue;
            }
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr54);
            }
            §§goto(addr39);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§2#3§.numChildren)
         {
            _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc1_));
            if(_loc4_ || _loc1_)
            {
               if(_loc2_.name != "planet_hoth")
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc2_.buttonMode = true;
                     if(!_loc4_)
                     {
                     }
                     addr113:
                     _loc3_ = new §9"-§(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        this.§-"F§.push(_loc3_);
                        if(_loc4_ || _loc3_)
                        {
                        }
                        addr149:
                        _loc1_++;
                        continue;
                     }
                     _loc2_.episodeButton = _loc3_;
                     §§goto(addr149);
                  }
                  _loc2_.addEventListener(MouseEvent.CLICK,this.§+"K§);
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§goto(addr113);
               }
               §§goto(addr149);
            }
            §§goto(addr113);
         }
      }
      
      private function §#"!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               if(§§pop() >= this.§ do§.numChildren)
               {
                  loop2:
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop4:
                           while(true)
                           {
                              do
                              {
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(§§pop() >= this.§2#3§.numChildren)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          this.§2#3§.getChildAt(_loc1_).visible = true;
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             _loc1_++;
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              while(_loc3_ || this);
                              
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               else
               {
                  this.§ do§.getChildAt(_loc1_).visible = false;
               }
               _loc1_++;
               continue loop0;
            }
         }
      }
      
      private function §+"K§(param1:MouseEvent) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(isTransitioning)
            {
               if(_loc7_ || param1)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:MovieClip = MovieClip(param1.currentTarget);
            var _loc3_:String = _loc2_.name;
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(§§pop().split("_")[1]);
            }
            var _loc4_:* = §§pop();
            if(_loc7_)
            {
               §?!r§.§"#_§("misc_menubuttonproceed_1");
            }
            var _loc5_:* = _loc4_;
            if(_loc7_ || param1)
            {
               if("friends" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr123:
                     §§push(1);
                     if(_loc6_)
                     {
                     }
                  }
                  addr131:
                  switch(§§pop())
                  {
                     case 0:
                        this.navigateToFriends();
                        return;
                     case 1:
                        this.navigateToToons();
                        if(_loc7_ || param1)
                        {
                           return;
                        }
                        break;
                     default:
                        this.§ do§[_loc3_].visible = true;
                  }
                  continue loop0;
               }
               if("toons" === _loc5_)
               {
                  §§goto(addr123);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr131);
            }
            §§goto(addr123);
         }
         addr28:
      }
      
      protected function navigateToToons() : void
      {
      }
      
      protected function navigateToFriends() : void
      {
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            do
            {
               §@;§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.stop();
               do
               {
                  §@;§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.stop();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      override public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.activateComplete(param1);
            loop0:
            while(true)
            {
               if(§3"v§ != §3>§.§^!7§)
               {
                  while(true)
                  {
                     this.§#"!§();
                     addr124:
                     while(true)
                     {
                     }
                     loop5:
                     while(_loc3_ || param1)
                     {
                        §@;§.getItemByName("MovieClip_IdleAnimationBack").mClip.idleAnimation.play();
                        loop6:
                        while(true)
                        {
                           §4#;§.singleton.playThemeMusic();
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                              continue loop6;
                              addr32:
                              if(_loc3_)
                              {
                                 this.onTransitionComplete("in");
                              }
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              addr44:
                              if(_loc3_ || _loc3_)
                              {
                                 addr25:
                                 return;
                              }
                              addr106:
                              while(true)
                              {
                                 §@;§.getItemByName("MovieClip_IdleAnimationFront").mClip.idleAnimation.play();
                                 continue loop5;
                                 §§goto(addr44);
                              }
                           }
                           §§goto(addr124);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§5n§();
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §5n§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§2#3§.numChildren)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        break;
                     }
                     addr214:
                     if(§§pop() < this.§ do§.numChildren)
                     {
                        _loc2_ = MovieClip(this.§ do§.getChildAt(_loc1_));
                        if(_loc3_)
                        {
                           this.§5!l§(_loc2_,§+!b§.getEpisodeByName(_loc2_.name.split("_")[1]));
                           if(_loc3_)
                           {
                              _loc1_++;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr214);
                        }
                        addr213:
                     }
                  }
                  §§goto(addr218);
               }
               _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc1_));
               if(_loc3_ || this)
               {
                  §§push(_loc2_.name == "planet_friends");
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc2_.name == "planet_hoth");
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(!_loc4_)
                                                      {
                                                         this.§5!l§(_loc2_,§+!b§.getEpisodeByName(_loc2_.name.split("_")[1]));
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr87:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc1_++;
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   addr50:
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.name == "planet_toons");
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_ && this)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(!§§pop());
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      while(_loc3_ || _loc3_)
                                                      {
                                                         §§pop();
                                                      }
                                                      continue loop4;
                                                      addr59:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr59);
                                                      §§goto(addr50);
                                                   }
                                                }
                                                addr85:
                                             }
                                          }
                                       }
                                       addr124:
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                           §§goto(addr124);
                        }
                     }
                  }
               }
               §§goto(addr110);
            }
            break;
         }
         _loc1_ = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            §§goto(addr213);
         }
         addr218:
      }
      
      private function §5!l§(param1:MovieClip, param2:§3![§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc3_:§8!R§ = §4#;§.singleton.dataModel.userProgress;
         if(_loc5_ || param2)
         {
            param1.infoBox.info.txtScore.text = _loc3_.§]#B§(param2).toString();
            while(true)
            {
               param1.infoBox.info.txtStars.text = _loc3_.§'e§(param2).toString() + "/" + param2.§!#J§() * 3;
               loop1:
               while(!(_loc6_ && _loc3_))
               {
                  param1.infoBox.info.txtFalcons.text = _loc3_.§`"q§(param2).toString() + "/" + param2.§!#J§();
                  loop2:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(param2.name == "4")
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           addr110:
                           loop3:
                           while(true)
                           {
                              param1.gotoAndStop(!!_loc4_ ? "locked" : "unlocked");
                              addr71:
                              while(true)
                              {
                                 param1.mouseEnabled = !_loc4_;
                                 while(_loc5_)
                                 {
                                    param1.infoBox.info.visible = !_loc4_;
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                 }
                              }
                              addr52:
                              break loop2;
                           }
                        }
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            super.onTransitionComplete(param1);
            if(_loc5_)
            {
               if(param1 == "in")
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr44:
                     _loc3_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc5_)
                     {
                        if(§§pop() < this.§ do§.numChildren)
                        {
                           _loc2_ = MovieClip(this.§ do§.getChildAt(_loc3_));
                           if(!(_loc4_ && this))
                           {
                              _loc2_.visible = false;
                              if(_loc4_)
                              {
                                 continue;
                              }
                           }
                           _loc3_++;
                           continue;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              break;
                           }
                           loop1:
                           for(; §§pop() < this.§2#3§.numChildren; while(true)
                           {
                              continue loop1;
                           })
                           {
                              _loc2_ = MovieClip(this.§2#3§.getChildAt(_loc3_));
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§push(!_loc2_.visible);
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          addr182:
                                          while(true)
                                          {
                                             §§push(§3"v§ == §+#?§.§^!7§);
                                             if(_loc5_ || param1)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       addr181:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(_loc5_)
                                          {
                                             §9"-§(_loc2_.episodeButton).§2!t§();
                                             while(true)
                                             {
                                             }
                                          }
                                          continue;
                                          addr156:
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          _loc2_.visible = true;
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             _loc3_++;
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                if(true)
                                                {
                                                   break loop5;
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr163);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr188);
                        }
                        §§goto(addr183);
                     }
                     break;
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     §§goto(addr99);
                  }
               }
               addr188:
               return;
            }
         }
         §§goto(addr44);
      }
      
      override protected function beforeTransitionStart(param1:§6y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §3!l§(§7!=§).§%'§(§+!b§.getEpisode(§+!b§.currentEpisode).name);
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§>]§);
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  §§push(§6y§.§;X§);
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §?!r§.§"#_§("tournament_outro_transition");
                     }
                     if(!(_loc2_ && this))
                     {
                        if(_loc3_)
                        {
                           addr20:
                           return;
                           addr74:
                        }
                        break;
                     }
                     addr82:
                  }
                  §§goto(addr20);
               }
               §?!r§.§"#_§("tournament_intro_transition");
               §§goto(addr82);
            }
         }
         §§goto(addr74);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §7!=§ = new §3!l§(param1,§%G§.stage,24,true);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setViewSize(param1,param2);
            do
            {
               this.§"!§.setSize(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
   }
}
