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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(§2!z§.§ _§.Views.PopupView_EggFound[0],param1);
            loop0:
            while(true)
            {
               mClip.EasterEgg.gotoAndStop(param3);
               addr84:
               while(true)
               {
                  §-!Q§.§#3§("Found_GoldenEgg");
                  addr44:
                  if(_loc4_ || this)
                  {
                     return;
                     addr51:
                  }
               }
               while(true)
               {
                  if(!(_loc5_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr78);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(mClip.currentFrame == mClip.totalFrames)
            {
               loop0:
               while(true)
               {
                  mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                  addr73:
                  addr50:
                  while(true)
                  {
                     mClip.stop();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
