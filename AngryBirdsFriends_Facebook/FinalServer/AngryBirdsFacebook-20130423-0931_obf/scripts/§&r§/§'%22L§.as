package §&r§
{
   import §&S§.§&!l§;
   import §&S§.§6!F§;
   import §,l§.§["K§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §9@§.§@q§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'"L§ extends Popup implements §&!l§
   {
      
      private static var §`n§:Object;
      
      private static const §-9§:Number = 60000.0;
      
      private static const §1Q§:Number = 3600000.0;
      
      private static const §4h§:Number = 8.64E7;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-9§ = 60 * 1000;
            do
            {
               §1Q§ = 60 * §-9§;
               do
               {
                  §4h§ = 24 * §1Q§;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || §'"L§));
            
         }
      }
      
      private var §4!u§:§6!F§;
      
      private var §"p§:Timer;
      
      private var §9!i§:Vector.<§,"?§>;
      
      public function §'"L§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§9!i§ = new Vector.<§,"?§>();
            while(true)
            {
               super(§ "<§.§%I§.Views.PopupView_DailyReward[0],param1);
               loop1:
               while(!(_loc4_ && _loc3_))
               {
                  §""W§ = §[M§;
                  while(!§`n§)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     if(_loc3_ || param1)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr47);
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         addr47:
         throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
      }
      
      public static function §'p§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §`n§ = param1;
         }
      }
      
      public static function get §!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(§`n§));
            if(_loc1_ || §'"L§)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && §'"L§))
                  {
                     §§pop();
                     addr52:
                     return §`n§.rewardGiven == true;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
         do
         {
            this.preClose();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §?!f§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§4!u§ = param1;
         }
      }
      
      public function §!U§(param1:§6!F§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §;"Z§() : §6!F§
      {
         return this.§4!u§;
      }
      
      public function get walletContainer() : Sprite
      {
         return mClip;
      }
      
      protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,"?§ = null;
         if(!(_loc4_ && _loc3_))
         {
            mClip.txtPowerup.text = "";
            if(!_loc4_)
            {
               addr32:
               mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§if §);
            }
            var _loc1_:* = int(§`n§.prizeSchedule.length - 1);
            loop0:
            while(_loc1_ >= 0)
            {
               _loc2_ = new §,"?§(§`n§.prizeSchedule[_loc1_],§`n§.dayInSchedule,_loc1_);
               if(_loc3_ || this)
               {
                  this.§9!i§.push(_loc2_);
                  while(true)
                  {
                     mClip.mcContainer.addChild(_loc2_);
                     addr96:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        _loc2_.y = 385;
                        while(_loc3_)
                        {
                           §§push(_loc1_);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc1_ = §§pop();
                           if(_loc4_ && _loc1_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop4;
                           }
                           §§goto(addr96);
                        }
                        addr125:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                     while(true)
                     {
                        _loc2_.x = 110 + 500 * (_loc1_ / (§`n§.prizeSchedule.length - 1));
                        §§goto(addr125);
                     }
                     addr131:
                  }
               }
               §§goto(addr131);
            }
            if(!_loc4_)
            {
               mClip.mcReward.visible = false;
               if(!(_loc4_ && _loc1_))
               {
                  this.§"p§ = new Timer(300,1);
                  do
                  {
                     this.§"p§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
                     do
                     {
                        this.§"p§.start();
                     }
                     while(!(_loc3_ || _loc2_));
                     
                  }
                  while(_loc4_);
                  
                  addr197:
               }
               return;
            }
            §§goto(addr197);
         }
         §§goto(addr32);
      }
      
      private function § !§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§"p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
            if(_loc4_ || this)
            {
               addr37:
               this.§"p§.stop();
            }
            var _loc2_:Object = §`n§.prizeSchedule[§`n§.dayInSchedule - 1];
            if(!(_loc5_ && this))
            {
               §§push(!mClip);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop11:
                        while(true)
                        {
                           §§pop();
                           loop10:
                           while(true)
                           {
                              addr146:
                              §§push(!this.§4!u§);
                              addr166:
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop11;
                              }
                              while(true)
                              {
                                 §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(!§`n§.items);
                                    if(_loc4_)
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                mClip.mcReward.visible = true;
                                                loop6:
                                                while(_loc4_ || this)
                                                {
                                                   loop7:
                                                   do
                                                   {
                                                      §§push(this.§4!u§);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§pop().§!!J§(§`n§.items.items[0].q);
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               addr126:
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  this.close();
                                                                  break loop6;
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§push(this.§4!u§);
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               §§pop().§5!q§(_loc2_.quantity);
                                                               if(_loc4_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(false);
                                                   
                                                   §§push(§["K§.§9",§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   if(_loc4_)
                                                   {
                                                      mClip.mcCount.awardCount.text = "x " + _loc2_.quantity;
                                                   }
                                                   mClip.txtPowerup.text = _loc3_;
                                                   §@q§.§[!_§(§@q§.§5!J§,§["K§.§0#§,_loc2_.quantity);
                                                   addr245:
                                                   if(!_loc5_)
                                                   {
                                                      §@q§.§&?§(§@q§.§5!J§,§["K§.§0#§,_loc2_.quantity);
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr245);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   addr254:
                                                   §§goto(addr254);
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   break loop4;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr126);
                                       }
                                       return;
                                       addr124:
                                       addr142:
                                    }
                                    break;
                                 }
                              }
                           }
                        }
                        addr179:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           §§goto(addr166);
                        }
                        §§goto(addr124);
                     }
                  }
               }
               §§goto(addr179);
            }
            §§goto(addr142);
         }
         §§goto(addr37);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.preClose();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,"?§ = null;
         if(!_loc5_)
         {
            super.preClose();
         }
         for each(_loc2_ in this.§9!i§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.dispose();
            }
         }
         if(_loc6_ || this)
         {
            this.§9!i§ = new Vector.<§,"?§>();
            while(true)
            {
               §`n§ = null;
               while(_loc6_ || param1)
               {
                  mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§if §);
                  loop3:
                  while(!(_loc5_ && _loc2_))
                  {
                     while(true)
                     {
                        mClip.btnContinue.enabled = false;
                        if(!(_loc5_ && _loc2_))
                        {
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.open(param1);
            while(true)
            {
               this.§?!f§(new §6!F§(this,true));
            }
            addr120:
         }
         loop1:
         while(true)
         {
            this.init();
            loop2:
            while(true)
            {
               this.§-"U§();
               while(true)
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr67:
                  for(; _loc3_ || _loc2_; mClip.y = (mClip.stage.stageHeight - 550) / 2,if(!(_loc2_ && param1))
                  {
                     return;
                  })
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr120);
                  }
               }
               continue loop1;
            }
         }
      }
      
      private function §-"U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§4!u§.§!!J§(§`n§.items.itemsPrev[0].q);
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§",§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
               while(true)
               {
               }
               addr99:
            }
            loop1:
            while(true)
            {
               if(this.§"p§)
               {
                  while(true)
                  {
                     this.§"p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
                     addr88:
                     while(true)
                     {
                     }
                     addr60:
                     if(_loc1_)
                     {
                        continue;
                     }
                     this.§!U§(this.§4!u§);
                     while(true)
                     {
                        addr29:
                        while(true)
                        {
                           super.close();
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           addr58:
                           while(_loc2_)
                           {
                              §§goto(addr60);
                           }
                           §§goto(addr88);
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(this.§4!u§)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr29);
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr88);
      }
   }
}
