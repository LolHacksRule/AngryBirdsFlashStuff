package §[!i§
{
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §7g§.PopupClosedEvent;
   import §<!F§.§,!e§;
   import each.§8!N§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §,!X§ extends §@"§
   {
      
      private static const §`!Z§:Number = 1;
      
      private static var §;t§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §,!X§)
         {
            §`!Z§ = 1;
            do
            {
               §;t§ = §!V§;
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      protected var §>!>§:MovieClip;
      
      protected var §]!S§:String;
      
      private const § !M§:int = 300;
      
      private var §^"-§:int;
      
      private var §4!M§:int = 1;
      
      private var §6!=§:Timer;
      
      private var §@!s§:Boolean;
      
      private var §,?§:§;§;
      
      private var §=!-§:Boolean;
      
      private var §?L§:Boolean;
      
      public function §,!X§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §-!w§ = true;
            while(true)
            {
               §@!X§ = false;
               loop7:
               for(; _loc8_ || param2; if(_loc9_ && param2)
               {
                  continue;
               },§§goto(addr100))
               {
                  §%!v§ = true;
                  while(true)
                  {
                     this.§>!>§ = param3;
                     loop9:
                     do
                     {
                        this.§>!>§.gotoAndStop(1);
                        loop10:
                        while(_loc8_ || param1)
                        {
                           this.§>!>§.name = "MovieClip_TutorialClip";
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 continue loop7;
                              }
                              continue loop10;
                           }
                           loop1:
                           while(true)
                           {
                              §0!T§ = true;
                              addr187:
                              while(true)
                              {
                                 if(!param6)
                                 {
                                    while(true)
                                    {
                                       §7!k§ = new §,!e§(0,0,0,0.7);
                                       break loop10;
                                    }
                                    addr164:
                                 }
                                 addr150:
                                 while(true)
                                 {
                                    super(§1!<§.§20§,§]l§.DEFAULT,§8!N§.§?!c§(§;t§));
                                    while(true)
                                    {
                                       this.§]!S§ = param4;
                                       continue loop7;
                                       addr100:
                                       if(!(_loc9_ && param3))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    break loop10;
                                 }
                                 break loop9;
                              }
                           }
                           addr81:
                        }
                        while(true)
                        {
                           §§goto(addr150);
                        }
                     }
                     while(_loc9_);
                     
                     if(!(_loc9_ && param3))
                     {
                        return;
                     }
                     §§goto(addr187);
                     loop13:
                     for(; _loc8_ || param3; if(!(_loc8_ || param3))
                     {
                        continue;
                     },§§goto(addr36))
                     {
                        this.§?L§ = param7;
                        while(!_loc9_)
                        {
                           this.§@!s§ = false;
                           if(_loc8_)
                           {
                              continue loop13;
                           }
                        }
                        §§goto(addr71);
                     }
                  }
               }
            }
         }
         §§goto(addr192);
      }
      
      override protected function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §@'§.getItemByName("MovieClip_Tutorial").mClip;
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
               _loc1_.addChild(this.§>!>§);
               loop2:
               while(_loc2_)
               {
                  this.§6!=§ = new Timer(this.§ !M§,this.§^"-§ - 1);
                  loop3:
                  while(true)
                  {
                     this.§6!=§.addEventListener(TimerEvent.TIMER,this.§`%§);
                     loop4:
                     while(true)
                     {
                        this.§,?§ = §@'§.getItemByName("Button_CloseTutorial") as §;§;
                        loop5:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc2_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 this.§,?§.setVisibility(true);
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    §6!c§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.show(param1);
            loop0:
            while(true)
            {
               this.§@'§.mClip.scaleX = §`!Z§;
               addr102:
               while(true)
               {
                  this.§@'§.mClip.scaleY = §`!Z§;
                  addr54:
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr61:
                  }
               }
               while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr102);
            }
         }
         §§goto(addr85);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.hide(param1);
            do
            {
               §'!c§.§;! §("7");
            }
            while(!_loc3_);
            
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == "in")
            {
               if(_loc3_ || this)
               {
                  this.§6!=§.start();
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("CLOSE_TUTORIAL" === _loc4_)
            {
               addr52:
               §§push(0);
               if(!_loc5_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.closePressed();
                  if(!(_loc6_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override protected function closePressed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-!w§ = this.§?L§;
         }
         do
         {
            §@!X§ = this.§?L§;
            do
            {
               close();
            }
            while(!(_loc1_ || _loc1_));
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>!>§.stop();
            loop0:
            while(true)
            {
               §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
               loop1:
               do
               {
                  dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§,!=§));
                  while(_loc2_)
                  {
                     super.dispose();
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
      
      private function §`%§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            if(!this.§>!>§)
            {
               if(!_loc4_)
               {
                  return;
               }
               loop1:
               while(true)
               {
                  this.§@!s§ = true;
                  loop2:
                  while(true)
                  {
                     this.§6!=§.reset();
                     loop3:
                     while(true)
                     {
                        this.§6!=§.start();
                        loop4:
                        for(; _loc5_; if(!(_loc5_ || this))
                        {
                           continue;
                        },§§goto(addr152))
                        {
                           while(true)
                           {
                              §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
                              loop8:
                              while(true)
                              {
                                 §§push(this.§,?§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop().mClip));
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                addr165:
                                                §§push(this.§,?§);
                                                if(_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§push(!§§pop().visible);
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         this.§>!>§.gotoAndStop(this.§4!M§);
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr125:
                                                            while(true)
                                                            {
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(this.§,?§);
                                                               while(true)
                                                               {
                                                                  §§pop().setVisibility(true);
                                                                  §§goto(addr165);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               continue loop4;
                                                            }
                                                            continue loop11;
                                                         }
                                                         addr152:
                                                      }
                                                      return;
                                                      addr96:
                                                      addr74:
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr136);
                                             }
                                             continue loop4;
                                          }
                                          continue;
                                          addr162:
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr162);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               addr195:
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§4!M§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  _loc2_.§4!M§ = _loc3_;
               }
               if(!(_loc4_ && param1))
               {
                  if(this.§4!M§ > this.§^"-§)
                  {
                     if(_loc5_)
                     {
                        this.§4!M§ = 1;
                        addr219:
                        while(true)
                        {
                        }
                        addr219:
                     }
                     §§goto(addr219);
                  }
                  while(true)
                  {
                     if(this.§6!=§.currentCount >= this.§6!=§.repeatCount)
                     {
                        §§goto(addr195);
                     }
                     §§goto(addr74);
                     §§goto(addr219);
                  }
               }
            }
            §§goto(addr219);
         }
         §§goto(addr181);
      }
      
      private function §1!O§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
            loop0:
            while(true)
            {
               this.§,?§.setVisibility(true);
               loop1:
               while(§#1§)
               {
                  if(!(_loc3_ && this))
                  {
                     continue loop0;
                  }
                  addr57:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
         while(true)
         {
            §#1§.stop();
            §§goto(addr57);
         }
      }
   }
}
