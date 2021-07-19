package §'!3§
{
   import §'"!§.§+§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §1'§.§?>§;
   import §24§.§4!H§;
   import §2u§.§]"%§;
   import §>G§.PopupClosedEvent;
   import §[!Z§.§>D§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §62§ extends §;!o§
   {
      
      private static const §?!o§:Number = 1;
      
      private static var §^q§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!o§ = 1;
            do
            {
               §^q§ = §`U§;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected var §+3§:MovieClip;
      
      protected var §?!%§:String;
      
      private const §?o§:int = 300;
      
      private var §,!6§:int;
      
      private var §`!P§:int = 1;
      
      private var §!"$§:Timer;
      
      private var §-!a§:Boolean;
      
      private var §`h§:§]"%§;
      
      private var §>U§:Boolean;
      
      private var §%!"§:Boolean;
      
      public function §62§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            §9p§ = true;
            while(true)
            {
               §]G§ = false;
               addr177:
               addr150:
               while(true)
               {
                  §^J§ = true;
               }
               if(_loc9_ && param3)
               {
                  continue;
               }
               loop5:
               while(true)
               {
                  super(§`!t§.§class§,§4z§.DEFAULT,§4!H§.§7o§(§^q§));
                  while(true)
                  {
                     this.§?!%§ = param4;
                     loop7:
                     while(true)
                     {
                        §@^§ = true;
                        loop8:
                        while(!_loc9_)
                        {
                           this.§+3§ = param3;
                           while(_loc8_)
                           {
                              continue loop7;
                              loop10:
                              while(!(_loc9_ && param2))
                              {
                                 if(_loc8_)
                                 {
                                    this.§+3§.name = "MovieClip_TutorialClip";
                                    loop11:
                                    while(true)
                                    {
                                       this.§,!6§ = this.§+3§.totalFrames;
                                       addr64:
                                       while(!_loc9_)
                                       {
                                          if(!_loc9_)
                                          {
                                             this.§>U§ = param6;
                                             continue loop11;
                                          }
                                       }
                                       continue loop10;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr177);
                                 }
                                 while(true)
                                 {
                                    §]!b§ = new §?>§(0,0,0,0.7);
                                    break loop8;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc8_)
                           {
                              §§goto(addr150);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(param6)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr140);
                              }
                              addr172:
                           }
                        }
                        §§goto(addr177);
                     }
                  }
               }
            }
         }
         §§goto(addr172);
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §29§.getItemByName("MovieClip_Tutorial").mClip;
         loop0:
         while(true)
         {
            if(_loc1_.numChildren > 0)
            {
               _loc1_.removeChildAt(0);
               continue;
            }
            loop1:
            while(true)
            {
               _loc1_.addChild(this.§+3§);
               while(true)
               {
                  this.§!"$§ = new Timer(this.§?o§,this.§,!6§ - 1);
                  loop3:
                  while(!(_loc3_ && _loc1_))
                  {
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     this.§!"$§.addEventListener(TimerEvent.TIMER,this.§1T§);
                     loop4:
                     while(true)
                     {
                        this.§`h§ = §29§.getItemByName("Button_CloseTutorial") as §]"%§;
                        do
                        {
                           this.§`h§.setVisibility(true);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc2_ || _loc1_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        while(_loc3_);
                        
                        return;
                     }
                  }
               }
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.show(param1);
            loop0:
            while(true)
            {
               this.§29§.mClip.scaleX = §?!o§;
               while(true)
               {
                  this.§29§.mClip.scaleY = §?!o§;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     §>D§.§6A§("Channel_Theme");
                     loop3:
                     while(true)
                     {
                        §>D§.§6A§("7");
                        loop4:
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §>D§.§9!q§("tutorial_music","7");
                                 if(_loc3_ || _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              return;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.hide(param1);
            do
            {
               §>D§.§6A§("7");
            }
            while(_loc4_ && this);
            
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 == "in")
            {
               if(_loc2_)
               {
                  addr48:
                  this.§!"$§.start();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("CLOSE_TUTORIAL" === _loc4_)
            {
               addr72:
               §§push(0);
               if(_loc6_ || param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            loop3:
            switch(§§pop())
            {
               case 0:
                  §9p§ = this.§%!"§;
                  loop0:
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        §]G§ = this.§%!"§;
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              close();
                              if(!(_loc6_ || param3))
                              {
                                 break loop3;
                              }
                              if(_loc6_)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        break loop3;
                     }
                  }
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+3§.stop();
         }
         loop0:
         while(true)
         {
            §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
            while(true)
            {
               dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§8!;§));
               while(!_loc1_)
               {
                  continue loop0;
                  super.dispose();
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§+3§)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr28);
               }
               else
               {
                  addr220:
                  this.§`!P§ = 1;
                  loop0:
                  while(true)
                  {
                     addr179:
                     while(true)
                     {
                        if(this.§!"$§.currentCount < this.§!"$§.repeatCount)
                        {
                           loop12:
                           while(true)
                           {
                              this.§+3§.gotoAndStop(this.§`!P§);
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                              loop13:
                              while(true)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    addr176:
                                    addr187:
                                    while(!_loc5_)
                                    {
                                       this.§!"$§.start();
                                       while(true)
                                       {
                                          §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
                                          loop10:
                                          while(!(_loc5_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§`h§);
                                                if(!_loc5_)
                                                {
                                                   §§push(!§§pop().visible);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(this.§`h§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§pop().setVisibility(true);
                                                                  continue loop13;
                                                               }
                                                               addr143:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop().mClip));
                                                                  continue loop15;
                                                               }
                                                            }
                                                         }
                                                         continue loop12;
                                                         addr93:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr93);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop10;
                                                   }
                                                }
                                                §§goto(addr121);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§-!a§ = true;
                                       continue loop0;
                                    }
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr143);
                                    §§push(this.§`h§);
                                    continue loop13;
                                 }
                                 continue loop0;
                              }
                           }
                           return;
                        }
                        §§goto(addr187);
                        continue loop0;
                     }
                  }
                  addr223:
               }
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§`!P§);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  _loc2_.§`!P§ = _loc3_;
               }
               if(_loc4_ || _loc3_)
               {
                  if(this.§`!P§ > this.§,!6§)
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§goto(addr220);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr155);
         }
         addr28:
      }
      
      private function §,o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
            loop0:
            while(true)
            {
               this.§`h§.setVisibility(true);
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!§@"+§)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr20);
            }
         }
         addr20:
      }
   }
}
