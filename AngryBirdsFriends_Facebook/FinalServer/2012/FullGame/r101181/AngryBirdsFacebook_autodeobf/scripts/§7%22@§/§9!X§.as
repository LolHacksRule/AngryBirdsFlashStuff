package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §&q§.§%1§;
   import §1r§.§%_§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §9!X§ extends §]!K§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "GoldenEggsState";
         }
      }
      
      private var §4z§:uint;
      
      private var §["=§:uint = 5000;
      
      private var §""0§:int = 10;
      
      protected var §6"9§:MovieClip;
      
      private var §;!r§:Vector.<§%_§>;
      
      public function §9!X§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
         }
         do
         {
            §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.initView();
            while(true)
            {
               this.§6"9§ = new §8B§.§6"C§("GoldenEggsLevelSelection")();
               while(true)
               {
                  §]!d§.mClip.addChild(this.§6"9§);
                  §§goto(addr65);
               }
            }
         }
         addr65:
         while(true)
         {
            this.§35§();
            if(!_loc1_)
            {
               if(_loc2_ || this)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §35§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§%_§ = null;
         if(_loc6_)
         {
            this.§;!r§ = new Vector.<§%_§>(this.§""0§);
         }
         var _loc1_:int = 1;
         while(_loc1_ <= this.§""0§)
         {
            §§push("1000-");
            if(!_loc5_)
            {
               §§push(§§pop() + _loc1_);
            }
            _loc2_ = §§pop();
            if(!(_loc6_ || _loc3_))
            {
               break;
            }
            _loc3_ = this.§6"9§["egg" + _loc1_];
            (_loc4_ = new §%_§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§%n§);
            if(!_loc5_)
            {
               this.§;!r§[_loc1_] = _loc4_;
               if(_loc6_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            super.activate();
         }
         var _loc1_:§>x§ = LevelManager.§9"D§();
         if(!(_loc4_ && _loc3_))
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §§push(_loc1_.name);
                  if(_loc5_ || _loc1_)
                  {
                     if(§§pop() == "1000")
                     {
                        loop1:
                        while(true)
                        {
                           §6w§.visible = true;
                           loop2:
                           while(true)
                           {
                              §§push(§#6§.§ q§);
                              loop3:
                              while(true)
                              {
                                 (§§pop() as §3T§).§9!Q§.§`W§ = false;
                                 loop4:
                                 while(_loc5_ || _loc1_)
                                 {
                                    §§push(§#6§.§ q§);
                                    loop5:
                                    while(true)
                                    {
                                       (§§pop() as §3T§).§?D§("");
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§#6§.§ q§);
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   (§§pop() as §3T§).§`!P§(§ K§.§7!y§);
                                                   loop8:
                                                   while(_loc5_ || this)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§#6§.§6!z§);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(§§pop().background);
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           addr71:
                                                                           §#6§.§6!z§.background.§^!P§();
                                                                           addr72:
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr173:
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop8;
                                                                           addr70:
                                                                        }
                                                                        return;
                                                                        addr153:
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr72);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr71);
                                                         }
                                                         §§goto(addr70);
                                                      }
                                                      §§push(LevelManager.§9"D§().writtenName);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr195:
                                                         §§push(§§pop());
                                                      }
                                                      var _loc2_:* = §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §6w§.setText(_loc2_,"TextField_LevelName");
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §6w§.setText(AngryBirdsFP11.sUserProgress.§9o§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc1_),"Textfield_CollectedStars");
                                                            while(true)
                                                            {
                                                               §6w§.setText(AngryBirdsFP11.sUserProgress.§7L§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc1_),"Textfield_ME_Score");
                                                               addr278:
                                                               while(_loc5_)
                                                               {
                                                                  §6w§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
                                                               }
                                                               continue loop10;
                                                               loop14:
                                                               for(; _loc5_ || _loc1_; while(true)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §6w§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop14;
                                                               },while(true)
                                                               {
                                                                  §6w§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
                                                                  continue loop14;
                                                               })
                                                               {
                                                                  §6w§.getItemByName("Button_Prev").setVisibility(false);
                                                                  while(true)
                                                                  {
                                                                     addr219:
                                                                     addr208:
                                                                     while(true)
                                                                     {
                                                                        §6w§.getItemByName("Button_Next").setVisibility(false);
                                                                        continue loop14;
                                                                     }
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr219);
                                                                        }
                                                                        else
                                                                        {
                                                                           var _loc3_:Object = _loc1_.§^" §(0);
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §-9§ = new §%1§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
                                                                              §6w§.getItemByName("MovieClip_ColorFade").changeMovieClip(§-9§);
                                                                              this.§^![§();
                                                                              this.§4z§ = getTimer();
                                                                              addr384:
                                                                              addr372:
                                                                              addr365:
                                                                           }
                                                                           §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc4_ && _loc2_)
                                                                                    {
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              §§goto(addr365);
                                                                           }
                                                                           addr361:
                                                                           §§goto(addr361);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop5;
                                             }
                                             continue loop3;
                                          }
                                          if(_loc4_)
                                          {
                                             break loop0;
                                          }
                                          continue loop1;
                                       }
                                       addr169:
                                       mNextState = §8"D§.STATE_NAME;
                                       §§goto(addr153);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr195);
               }
               §6w§.visible = false;
               §§goto(addr169);
            }
            §§goto(addr173);
         }
         §§goto(addr111);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(getTimer() - this.§4z§ >= this.§["=§)
            {
               loop0:
               while(true)
               {
                  this.§4z§ = getTimer();
                  addr74:
                  while(true)
                  {
                     this.§^![§();
                     if(_loc3_)
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr45);
               }
            }
            addr45:
            return;
         }
         §§goto(addr74);
      }
      
      private function §^![§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 1;
         while(true)
         {
            if(_loc1_ > this.§""0§)
            {
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
            }
            else
            {
               this.updateEgg(_loc1_);
            }
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§;!r§[param1].updateEgg();
         }
      }
      
      protected function §%n§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§%_§(param1.currentTarget).§@"=§);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §3T§.§67§.§5O§(_loc2_);
         }
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
