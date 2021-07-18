package
{
   import §0!=§.§'"]§;
   import com.furusystems.dconsole2.DConsole;
   import flash.events.Event;
   
   public class AngryBirdsBlackFacebookCanvas extends §'"]§
   {
       
      
      public function AngryBirdsBlackFacebookCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
      }
      
      private function §2f§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§2f§);
         new §@!m§(this,"","");
         addChild(DConsole.view);
      }
   }
}
