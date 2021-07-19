package
{
   import §0!=§.§'"]§;
   import com.furusystems.dconsole2.DConsole;
   import flash.events.Event;
   
   public class AngryBirdsBlackFacebookCanvas extends §'"]§
   {
       
      
      public function AngryBirdsBlackFacebookCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         do
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         }
         while(_loc1_);
         
      }
      
      private function §2f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         }
         while(true)
         {
            new §@!m§(this,"","");
            while(!_loc2_)
            {
               addChild(DConsole.view);
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
   }
}
