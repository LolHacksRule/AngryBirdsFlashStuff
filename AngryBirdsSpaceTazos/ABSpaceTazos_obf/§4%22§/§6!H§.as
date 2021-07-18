package §4"§
{
   import flash.events.Event;
   
   public class §6!H§ extends Event
   {
      
      public static const §''§:String = "VerificationEmailResendCompleteEvent.OnVerificationEmailSendComplete";
      
      public static const §3!b§:String = "VerificationEmailResendCompleteEvent.OnVerificationEmailSendError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §''§ = "VerificationEmailResendCompleteEvent.OnVerificationEmailSendComplete";
         }
         do
         {
            §3!b§ = "VerificationEmailResendCompleteEvent.OnVerificationEmailSendError";
         }
         while(!_loc2_);
         
      }
      
      public function §6!H§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
   }
}
