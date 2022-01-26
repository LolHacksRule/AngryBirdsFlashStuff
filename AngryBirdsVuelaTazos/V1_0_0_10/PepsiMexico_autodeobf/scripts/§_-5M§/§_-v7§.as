package §_-5M§
{
   import §_-2t§.§implements§;
   import §_-B2§.§_-H4§;
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-v7§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "ForgotPasswordState";
       
      
      public function §_-v7§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.stop();
         }
         §_-wB§.setText("","TextField_UserNameField");
         §_-6B§.changeState(HighscoreSidebar.§_-vX§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-hS§();
               break;
            case "CANCEL":
               mNextState = §_-Hq§.§_-7J§;
         }
      }
      
      private function §_-hS§() : void
      {
         var _loc1_:String = §_-wB§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-qd§(§implements§.§_-r7§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-qd§(§implements§.§_-r7§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc4_.url = §_-5e§.§_-uw§;
         _loc3_.load(_loc4_);
         mNextState = §_-Hq§.§_-7J§;
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-qd§(param1:String) : void
      {
         §_-6B§.showHelpText("Error:\n" + param1);
      }
   }
}
