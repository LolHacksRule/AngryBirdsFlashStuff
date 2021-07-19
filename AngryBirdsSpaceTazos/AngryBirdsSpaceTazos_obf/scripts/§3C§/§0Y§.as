package §3C§
{
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §4"§.PopupClosedEvent;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§@_§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0Y§ extends §9!;§
   {
      
      private static const §]!r§:Number = 0.75;
      
      private static var §`G§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §]!r§ = 0.75;
            do
            {
               §`G§ = § !v§;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      protected var §?!B§:MovieClip;
      
      protected var §7!n§:String;
      
      private const §[y§:int = 300;
      
      private var §^"A§:int;
      
      private var § !P§:int = 1;
      
      private var §8!h§:Timer;
      
      private var §]j§:Boolean;
      
      private var §>T§:§@_§;
      
      private var §4!O§:Boolean;
      
      public function §0Y§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = false;
               addr152:
               while(true)
               {
                  super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§`G§));
                  addr147:
                  while(true)
                  {
                     this.§7!n§ = param4;
                  }
               }
               addr107:
               if(_loc8_ && param3)
               {
                  continue;
               }
               this.§?!B§.gotoAndStop(1);
               loop6:
               while(true)
               {
                  this.§?!B§.name = "MovieClip_TutorialClip";
                  loop7:
                  while(true)
                  {
                     this.§^"A§ = this.§?!B§.totalFrames;
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr59:
                           if(_loc8_ && param1)
                           {
                              break;
                           }
                           this.§4!O§ = param6;
                           while(!_loc8_)
                           {
                              continue loop6;
                              this.§]j§ = false;
                              if(!_loc8_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        continue loop7;
                     }
                     addr93:
                     loop5:
                     while(true)
                     {
                        if(_loc7_ || param3)
                        {
                           addr100:
                           if(!(_loc8_ && param1))
                           {
                              §§goto(addr107);
                           }
                           else
                           {
                              while(true)
                              {
                                 §#!j§ = true;
                                 break loop5;
                                 §§goto(addr100);
                              }
                              addr126:
                           }
                        }
                        break;
                        §§goto(addr59);
                     }
                     while(!_loc8_)
                     {
                        this.§?!B§ = param3;
                        §§goto(addr93);
                     }
                     §§goto(addr147);
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      override protected function init() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         if(_loc6_ || _loc2_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §[S§.getItemByName("MovieClip_Tutorial").mClip;
         loop0:
         while(true)
         {
            if(_loc1_.numChildren <= 0)
            {
               if(_loc6_)
               {
                  _loc1_.addChild(this.§?!B§);
                  if(!(_loc7_ && _loc1_))
                  {
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     var _loc5_:* = this.§7!n§;
                     if(!(_loc7_ && _loc2_))
                     {
                        if("RedBigBird" === _loc5_)
                        {
                           if(_loc6_)
                           {
                              addr136:
                              §§push(0);
                              if(!_loc6_)
                              {
                              }
                           }
                           else
                           {
                              addr214:
                              §§push(5);
                              if(_loc6_)
                              {
                                 addr217:
                              }
                           }
                           addr222:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc2_ = "MovieClip_Avatar_Big_Brother";
                                 if(_loc6_ || _loc3_)
                                 {
                                    break loop0;
                                 }
                                 do
                                 {
                                    this.§>T§ = §[S§.getItemByName("Button_CloseTutorial") as §@_§;
                                    do
                                    {
                                       this.§>T§.setVisibility(false);
                                       do
                                       {
                                          §3!+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
                                       }
                                       while(!(_loc6_ || _loc1_));
                                       
                                    }
                                    while(_loc7_);
                                    
                                 }
                                 while(_loc7_ && this);
                                 
                                 return;
                                 addr345:
                                 addr312:
                              case 1:
                                 _loc2_ = "MovieClip_Avatar_Blue";
                                 break loop0;
                              case 2:
                                 _loc2_ = "MovieClip_Avatar_Bomb";
                                 break loop0;
                              case 3:
                                 _loc2_ = "MovieClip_Avatar_Red";
                                 break;
                              case 4:
                                 _loc2_ = "MovieClip_Avatar_Lazer";
                                 break loop0;
                              case 5:
                                 _loc2_ = "MovieClip_Avatar_Tazos";
                                 if(false)
                                 {
                                    break;
                                 }
                                 break loop0;
                           }
                           break;
                        }
                        if("SmallBlueBird" === _loc5_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(1);
                              if(!_loc6_)
                              {
                                 addr182:
                              }
                           }
                           else
                           {
                              addr207:
                              §§push(4);
                              if(!_loc6_)
                              {
                                 §§goto(addr217);
                              }
                              else
                              {
                                 addr210:
                              }
                           }
                        }
                        else
                        {
                           if("BlackBird" === _loc5_)
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(2);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§goto(addr182);
                                 }
                              }
                              else
                              {
                                 §§goto(addr214);
                              }
                           }
                           else if("RedBird" === _loc5_)
                           {
                              if(_loc6_)
                              {
                                 §§push(3);
                                 if(_loc7_ && _loc2_)
                                 {
                                 }
                                 §§goto(addr222);
                              }
                              else
                              {
                                 §§goto(addr207);
                              }
                           }
                           else
                           {
                              if("LaserBird" === _loc5_)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr207);
                                 }
                                 else
                                 {
                                    §§goto(addr214);
                                 }
                              }
                              else if("TazosBird" === _loc5_)
                              {
                                 §§goto(addr214);
                              }
                              else
                              {
                                 §§push(6);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr222);
                        §§goto(addr214);
                     }
                     §§goto(addr136);
                  }
                  break;
               }
               break;
            }
            _loc1_.removeChildAt(0);
         }
         if(_loc2_)
         {
            if(!(_loc7_ && _loc2_))
            {
               _loc3_ = § !h§.§["3§(_loc2_);
               if(!(_loc7_ && _loc1_))
               {
                  if(!_loc3_)
                  {
                  }
                  addr267:
                  this.§8!h§ = new Timer(this.§[y§,this.§^"A§ - 1);
                  if(!(_loc7_ && _loc1_))
                  {
                     this.§8!h§.addEventListener(TimerEvent.TIMER,this.§9!k§);
                     §§goto(addr345);
                  }
                  §§goto(addr337);
               }
               _loc4_ = new _loc3_();
               _loc1_ = §[S§.getItemByName("MovieClip_Avatar").mClip;
               if(_loc6_)
               {
                  _loc1_.removeChildAt(0);
                  if(_loc6_)
                  {
                     _loc1_.addChild(_loc4_);
                  }
               }
               §§goto(addr267);
            }
            §§goto(addr312);
         }
         §§goto(addr267);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.show(param1);
            while(true)
            {
               this.§[S§.mClip.scaleX = §]!r§;
               while(!_loc3_)
               {
                  this.§[S§.mClip.scaleY = §]!r§;
                  while(!_loc3_)
                  {
                     §<!O§.§,!z§("Channel_Theme");
                     loop3:
                     while(!_loc3_)
                     {
                        §<!O§.§,!z§("7");
                        while(true)
                        {
                           §<!O§.playSound("tutorial_music","7");
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
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
         if(_loc3_ || param2)
         {
            super.hide(param1);
         }
         do
         {
            §<!O§.§,!z§("7");
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == "in")
            {
               if(!_loc2_)
               {
                  this.§8!h§.start();
               }
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param2)
         {
            if("CLOSE_TUTORIAL" === _loc4_)
            {
               addr48:
               §§push(0);
               if(_loc5_ && param2)
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
                  close();
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?!B§.stop();
            loop0:
            do
            {
               §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
               while(true)
               {
                  dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§`T§));
                  while(!_loc2_)
                  {
                     super.dispose();
                     if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(!this.§?!B§)
            {
               if(!_loc5_)
               {
                  return;
               }
               loop0:
               while(true)
               {
                  §§push(this.§>T§);
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop().mClip));
                     addr150:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(_loc4_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§>T§);
                                       if(_loc4_ || this)
                                       {
                                          continue loop1;
                                       }
                                       addr142:
                                       while(true)
                                       {
                                          §§pop().setVisibility(true);
                                       }
                                    }
                                    else
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             this.§]j§ = true;
                                             while(!(_loc4_ || this))
                                             {
                                                while(true)
                                                {
                                                   this.§ !P§ = 1;
                                                   addr228:
                                                   while(true)
                                                   {
                                                      addr184:
                                                      while(true)
                                                      {
                                                         if(this.§8!h§.currentCount == this.§8!h§.repeatCount)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr68:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            this.§?!B§.gotoAndStop(this.§ !P§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               break;
                                                            }
                                                            addr144:
                                                            while(true)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                             this.§8!h§.reset();
                                             break loop4;
                                             addr202:
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr202);
                              }
                              this.§8!h§.start();
                              addr178:
                              §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
                              continue loop0;
                           }
                           addr152:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr142);
                                       §§push(this.§>T§);
                                    }
                                    break;
                                 }
                                 §§goto(addr144);
                              }
                           }
                           §§goto(addr178);
                           addr129:
                        }
                        §§goto(addr68);
                     }
                  }
               }
            }
            else
            {
               addr36:
               var _loc2_:*;
               §§push((_loc2_ = this).§ !P§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_ || _loc3_)
               {
                  _loc2_.§ !P§ = _loc3_;
               }
               if(!(_loc5_ && _loc3_))
               {
                  if(this.§ !P§ > this.§^"A§)
                  {
                     §§goto(addr225);
                  }
                  §§goto(addr184);
               }
            }
            §§goto(addr228);
         }
         §§goto(addr36);
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
            loop0:
            while(true)
            {
               this.§>T§.setVisibility(true);
               loop1:
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  if(!§-!w§)
                  {
                     break;
                  }
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §-!w§.stop();
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
   }
}
