package §3C§
{
   import §0N§.§0!g§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §7!H§.AbstractPopup;
   import §9y§.§3!D§;
   import §9y§.§8"3§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^p§ extends AbstractPopup
   {
      
      private static var §7"@§:Class;
      
      public static var §>F§:Number = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §7"@§ = §,5§;
            do
            {
               §>F§ = 4000;
            }
            while(_loc2_);
            
         }
      }
      
      private var §<!W§:Number;
      
      private var §?4§:§8"3§;
      
      private var §-9§:String;
      
      private var §+C§:Timer;
      
      public function §^p§(param1:String, param2:Number = 2000)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§-9§ = param1;
            do
            {
               this.§<!W§ = param2;
               do
               {
                  super(§1#§.§7!_§,§8"6§.§ K§,§0!g§.§[!y§(§7"@§));
               }
               while(_loc3_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§+C§ = new Timer(this.§<!W§,1);
               loop1:
               while(true)
               {
                  this.§+C§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§[!5§);
                  while(!_loc2_)
                  {
                     this.§+C§.start();
                     while(true)
                     {
                        this.§?4§ = new §8"3§(§[S§,-§`Y§.§3!h§ / 2);
                        while(true)
                        {
                           §§push(this.§?4§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§-9§);
                              addr92:
                              while(true)
                              {
                                 §§pop().show(§§pop());
                                 continue loop5;
                              }
                           }
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr86);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         }
         do
         {
            this.§?4§.hide();
         }
         while(!(_loc3_ || param1));
         
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.show(param1);
         }
      }
      
      private function §[!5§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?4§.hide();
         }
      }
      
      private function §2">§(param1:§3!D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§+C§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§[!5§);
            while(true)
            {
               §§push(this.§?4§);
               loop1:
               while(true)
               {
                  §§pop().removeEventListener(§3!D§.§7!I§,this.§2">§);
                  while(true)
                  {
                     §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
                     addr67:
                     while(!(_loc4_ && param2))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            super.hide(param1,param2);
            if(!_loc4_)
            {
               break;
            }
            §§goto(addr35);
         }
      }
   }
}
