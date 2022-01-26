package §else§
{
   import §_-6r§.§_-7P§;
   import §_-PD§.HighscoreSidebar;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import §_-zL§.§_-5B§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-PC§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "ForgotPasswordState";
       
      
      public function §_-PC§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(false);
         §_-NY§.setText("","TextField_UserNameField");
         §_-1S§.changeState(HighscoreSidebar.§_-x1§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-kU§();
               break;
            case "CANCEL":
               mNextState = §_-mk§.§_-Az§;
         }
      }
      
      private function §_-kU§() : void
      {
         var _loc1_:String = §_-NY§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-4j§(§_-5B§.§_-X8§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc4_.url = §_-Qu§.§_-p2§;
         _loc3_.load(_loc4_);
         mNextState = §_-mk§.§_-Az§;
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-4j§(param1:String) : void
      {
         §_-1S§.showHelpText("Error:\n" + param1);
      }
   }
}
