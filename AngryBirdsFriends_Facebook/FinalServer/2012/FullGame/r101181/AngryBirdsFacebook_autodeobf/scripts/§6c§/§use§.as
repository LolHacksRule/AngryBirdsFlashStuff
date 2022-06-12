package §6c§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §3!7§.§>,§;
   import §]!A§.§&A§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §use§ extends Popup
   {
      
      protected static var §'!2§:Object;
      
      private static const §!! §:Number = 60000.0;
      
      private static const §""!§:Number = 3600000.0;
      
      private static const §]l§:Number = 8.64E7;
      
      private static const §%!f§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!! § = 60 * 1000;
            do
            {
               §""!§ = 60 * §!! §;
               do
               {
                  §]l§ = 24 * §""!§;
                  do
                  {
                     §%!f§ = 2000;
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_ && §use§);
            
         }
      }
      
      protected var §4!U§:Timer;
      
      private var §8K§:Vector.<§^!?§>;
      
      public function §use§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§8K§ = new Vector.<§^!?§>();
            loop0:
            do
            {
               super(§ "A§.§4[§.Views.PopupView_DailyReward[0],param1);
               loop1:
               do
               {
                  §]"5§ = §%!x§;
                  loop2:
                  while(§'!2§)
                  {
                     loop3:
                     while(true)
                     {
                        this.init();
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                        addr74:
                        if(!(_loc3_ || _loc3_))
                        {
                           continue loop2;
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               while(_loc4_);
               
               return;
            }
            while(_loc4_);
            
            throw new Error("Can\'t open daily gift popup when you didn\'t get any gifts.");
         }
         §§goto(addr74);
      }
      
      public static function §-l§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §'!2§ = param1;
         }
      }
      
      public static function get §[!_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Boolean(§'!2§));
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr43:
                     return §'!2§.rewardGiven == true;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            do
            {
               this.preClose();
            }
            while(_loc2_);
            
         }
      }
      
      protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^!?§ = null;
         if(!_loc4_)
         {
            mClip.mcCount.stop();
         }
         while(true)
         {
            mClip.mcReward.stop();
            loop1:
            while(true)
            {
               mClip.txtPowerup.text = "";
               while(true)
               {
                  mClip.btnContinue.addEventListener(MouseEvent.CLICK,this.§@!a§);
                  loop3:
                  while(_loc3_)
                  {
                     this.§4!U§ = new Timer(§%!f§);
                     loop4:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           this.§4!U§.addEventListener(TimerEvent.TIMER,this.§^!s§);
                           do
                           {
                              this.§4!U§.start();
                           }
                           while(!(_loc3_ || _loc1_));
                           
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      private function §^!s§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§4!U§.reset();
            if(!_loc5_)
            {
               addr23:
               this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
            }
            §§push(§>,§.§'!i§(§'!2§.itemId).§]6§);
            if(_loc4_)
            {
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               mClip.mcCount.gotoAndStop(§'!2§.quantity);
               if(_loc4_ || param1)
               {
                  mClip.mcReward.gotoAndStop(_loc2_);
               }
            }
            §§push(§>,§.§'!i§(§'!2§.itemId).§7!5§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               if(§'!2§.quantity > 1)
               {
                  if(_loc4_)
                  {
                     addr122:
                     §§push(§&A§.§[!H§);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop().replace("%1",§'!2§.quantity).replace("%2",_loc3_));
                     }
                     _loc3_ = §§pop();
                  }
                  while(true)
                  {
                     §§goto(addr93);
                  }
               }
               addr93:
               while(true)
               {
                  mClip.txtPowerup.text = _loc3_;
                  if(_loc4_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr122);
         }
         §§goto(addr23);
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.preClose();
         }
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!?§ = null;
         if(!_loc6_)
         {
            super.preClose();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§4!U§.reset();
               while(_loc5_)
               {
                  this.§4!U§.removeEventListener(TimerEvent.TIMER,this.§^!s§);
                  if(_loc5_)
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
            for each(_loc2_ in this.§8K§)
            {
               if(!_loc6_)
               {
                  _loc2_.dispose();
               }
            }
            if(_loc5_ || _loc2_)
            {
               this.§8K§ = new Vector.<§^!?§>();
               while(true)
               {
                  §'!2§ = null;
                  while(true)
                  {
                     mClip.btnContinue.removeEventListener(MouseEvent.CLICK,this.§@!a§);
                     §§goto(addr117);
                  }
               }
            }
            addr117:
            while(true)
            {
               mClip.btnContinue.enabled = false;
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop4;
                  }
                  continue loop5;
               }
            }
            return;
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
            while(true)
            {
               mClip.x = (mClip.stage.stageWidth - 716) / 2;
               while(_loc2_ || this)
               {
                  mClip.y = (mClip.stage.stageHeight - 550) / 2;
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.close();
         }
      }
   }
}
