package §_-8§
{
   import §_-9C§.§_-6M§;
   import §_-Jx§.§_-Ao§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-qT§.§_-O5§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-3Z§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "ForgotPasswordState";
       
      
      public function §_-3Z§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(false);
         §_-Ih§.setText("","TextField_UserNameField");
         §_-5D§.changeState(HighscoreSidebar.§_-D4§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-zK§();
               break;
            case "CANCEL":
               mNextState = §_-D§.§_-7m§;
         }
      }
      
      private function §_-zK§() : void
      {
         var _loc1_:String = §_-Ih§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-UU§(§_-6M§.§_-bX§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-UU§(§_-6M§.§_-bX§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc4_.url = §_-Tj§.§_-yy§;
         _loc3_.load(_loc4_);
         mNextState = §_-D§.§_-7m§;
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-UU§(param1:String) : void
      {
         §_-5D§.showHelpText("Error:\n" + param1);
      }
   }
}
