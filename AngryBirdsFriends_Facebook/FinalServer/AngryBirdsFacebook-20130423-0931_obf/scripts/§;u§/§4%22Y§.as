package §;u§
{
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`!6§.§!D§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §4"Y§ extends §7D§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "GoldenEggsState";
         }
      }
      
      private var §%"M§:uint;
      
      private var §&!L§:uint = 5000;
      
      private var §6!s§:int = 10;
      
      protected var §0!I§:MovieClip;
      
      private var §@"G§:Vector.<§!D§>;
      
      public function §4"Y§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override protected function initView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.initView();
            while(true)
            {
               this.§0!I§ = new §?q§.§ q§("GoldenEggsLevelSelection")();
            }
            addr76:
         }
         loop1:
         do
         {
            §4W§.mClip.addChild(this.§0!I§);
            while(!_loc1_)
            {
               this.§3[§();
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr76);
         }
         while(!_loc2_);
         
      }
      
      private function §3[§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§!D§ = null;
         if(!_loc5_)
         {
            this.§@"G§ = new Vector.<§!D§>(this.§6!s§);
         }
         var _loc1_:int = 1;
         while(_loc1_ <= this.§6!s§)
         {
            §§push("1000-");
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() + _loc1_);
            }
            _loc2_ = §§pop();
            if(!(_loc6_ || _loc3_))
            {
               break;
            }
            _loc3_ = this.§0!I§["egg" + _loc1_];
            (_loc4_ = new §!D§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§9c§);
            if(_loc6_ || this)
            {
               this.§@"G§[_loc1_] = _loc4_;
               if(!_loc5_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3-§ = null;
         if(_loc4_ || this)
         {
            super.activate();
         }
         _loc1_ = LevelManager.§`"Q§();
         if(_loc4_)
         {
            if(_loc1_ != null)
            {
               loop0:
               while(true)
               {
                  §§push(_loc1_.name);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() == "1000")
                     {
                        loop1:
                        while(true)
                        {
                           §2"@§.visible = true;
                           loop2:
                           while(true)
                           {
                              §§push(§?l§.§ "G§);
                              while(true)
                              {
                                 (§§pop() as §%"S§).§96§.§<!J§ = false;
                                 loop4:
                                 while(!(_loc5_ && _loc1_))
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(§?l§.§ "G§);
                                       loop5:
                                       while(true)
                                       {
                                          (§§pop() as §%"S§).§!n§("");
                                          addr105:
                                          while(_loc4_ || _loc2_)
                                          {
                                             if(_loc4_ || _loc1_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    else
                                    {
                                       §2"@§.visible = false;
                                       addr173:
                                    }
                                    mNextState = §9"@§.STATE_NAME;
                                    break;
                                 }
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr173);
                  }
                  break;
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && this))
               {
                  §2"@§.setText(_loc2_,"TextField_LevelName");
                  while(true)
                  {
                     §2"@§.setText(AngryBirdsFP11.sUserProgress.§[!a§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc1_),"Textfield_CollectedStars");
                  }
                  addr308:
               }
               loop10:
               while(true)
               {
                  §2"@§.setText(AngryBirdsFP11.sUserProgress.§]L§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc1_),"Textfield_ME_Score");
                  while(!_loc5_)
                  {
                     §2"@§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
                     loop12:
                     for(; !_loc5_; addr215:,if(_loc5_ && this)
                     {
                        continue;
                     },if(false)
                     {
                        while(true)
                        {
                           §2"@§.getItemByName("Button_Next").setVisibility(false);
                           §§goto(addr230);
                           §§goto(addr215);
                        }
                        continue;
                        addr224:
                     },var _loc3_:Object = _loc1_.§-D§(0),if(!_loc5_)
                     {
                        §;!@§ = new §3"K§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
                        §2"@§.getItemByName("MovieClip_ColorFade").changeMovieClip(§;!@§);
                        addr381:
                     },this.§3"P§(),this.§%"M§ = getTimer(),addr369:,if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                           if(_loc4_)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 §§goto(addr369);
                              }
                              return;
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr381);
                     },addr362:,§§goto(addr362))
                     {
                        §2"@§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
                        while(true)
                        {
                           §2"@§.getItemByName("Button_Prev").setVisibility(false);
                           continue loop10;
                           addr232:
                           if(_loc4_ || _loc1_)
                           {
                              §2"@§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
                              if(_loc4_)
                              {
                                 continue loop12;
                              }
                              addr230:
                              while(!_loc5_)
                              {
                                 §§goto(addr232);
                              }
                              continue loop10;
                           }
                        }
                     }
                  }
                  §§goto(addr308);
               }
            }
            §§goto(addr190);
         }
         §§goto(addr63);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(getTimer() - this.§%"M§ >= this.§&!L§)
            {
               loop0:
               while(true)
               {
                  this.§%"M§ = getTimer();
                  addr58:
                  while(true)
                  {
                     this.§3"P§();
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr58);
      }
      
      private function §3"P§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 1;
         while(true)
         {
            if(_loc1_ > this.§6!s§)
            {
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.updateEgg(_loc1_);
               while(true)
               {
                  _loc1_++;
               }
               addr49:
            }
            while(!_loc2_)
            {
               §§goto(addr49);
            }
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§@"G§[param1].updateEgg();
         }
      }
      
      protected function §9c§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§!D§(param1.currentTarget).§4^§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §%"S§.§!C§.§5!N§(_loc2_);
         }
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
