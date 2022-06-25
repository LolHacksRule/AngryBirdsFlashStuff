package §^!m§
{
   import §!!j§.Popup;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §[!b§.§-!Q§;
   import flash.events.Event;
   
   public class §^!<§ extends Popup
   {
       
      
      public function §^!<§(param1:§&!G§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§2!z§.§ _§.Views.PopupView_EggFound[0],param1);
            loop0:
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
               while(true)
               {
                  §-!Q§.§#3§("Found_GoldenEgg");
                  loop2:
                  while(!_loc4_)
                  {
                     mClip.gotoAndPlay(1);
                     while(true)
                     {
                        mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               if(_loc3_ || _loc2_)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  addr79:
                  while(true)
                  {
                     mClip.stop();
                     while(_loc3_)
                     {
                        preClose();
                        if(_loc3_)
                        {
                           §§goto(addr35);
                        }
                     }
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            addr35:
            return;
         }
         §§goto(addr79);
      }
   }
}
