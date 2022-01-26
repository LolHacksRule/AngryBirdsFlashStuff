package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-S9§.§_-3W§;
   import §_-cu§.§_-UO§;
   import §_-m7§.HighscoreSidebar;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-pl§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "ForgotPasswordState";
       
      
      public function §_-pl§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.stop();
         }
         §_-kl§.setText("","TextField_UserNameField");
         §_-dM§.changeState(HighscoreSidebar.§_-xo§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-9q§();
               break;
            case "CANCEL":
               mNextState = §_-QV§.§_-1h§;
         }
      }
      
      private function §_-9q§() : void
      {
         var _loc1_:String = §_-kl§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-44§(§_-3W§.§_-f7§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-44§(§_-3W§.§_-f7§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc4_.url = §_-2U§.§_-id§;
         _loc3_.load(_loc4_);
         mNextState = §_-QV§.§_-1h§;
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-44§(param1:String) : void
      {
         §_-dM§.showHelpText("Error:\n" + param1);
      }
   }
}
