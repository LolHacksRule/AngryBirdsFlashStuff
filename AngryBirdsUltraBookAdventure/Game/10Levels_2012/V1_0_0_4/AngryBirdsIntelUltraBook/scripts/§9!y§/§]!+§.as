package §9!y§
{
   import §"R§.§ !Q§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.Event;
   
   public class §]!+§ extends Popup
   {
       
      
      public function §]!+§(param1:§'!^§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(§[!'§.§+@§.Views.PopupView_EggFound[0],param1);
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
            }
            addr89:
         }
         loop1:
         do
         {
            § !Q§.playSound("Found_GoldenEgg");
            while(_loc4_)
            {
               mClip.gotoAndPlay(1);
               while(!_loc5_)
               {
                  mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  if(_loc4_ || param1)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr89);
         }
         while(_loc5_);
         
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               if(!_loc2_)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  addr74:
                  while(true)
                  {
                     mClip.stop();
                     while(!_loc2_)
                     {
                        preClose();
                        if(!_loc2_)
                        {
                           §§goto(addr45);
                        }
                     }
                  }
                  addr74:
               }
               §§goto(addr74);
            }
            addr45:
            return;
         }
         §§goto(addr74);
      }
   }
}
