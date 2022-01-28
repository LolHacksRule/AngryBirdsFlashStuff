package §_-RV§
{
   import §_-7V§.§_-Gs§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-aV§.§_-mI§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-Ue§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "ForgotPasswordState";
       
      
      public function §_-Ue§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(false);
         §_-MF§.setText("","TextField_UserNameField");
         §_-e0§.changeState(HighscoreSidebar.§_-qH§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.dynamic();
               break;
            case "CANCEL":
               mNextState = §_-p§.§_-8r§;
         }
      }
      
      private function dynamic() : void
      {
         var _loc1_:String = §_-MF§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-nB§(§_-mI§.§_-ai§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-nB§(§_-mI§.§_-ai§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc4_.url = §_-q0§.§_-ho§;
         _loc3_.load(_loc4_);
         mNextState = §_-p§.§_-8r§;
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function get(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-nB§(param1:String) : void
      {
         §_-e0§.showHelpText("Error:\n" + param1);
      }
   }
}
