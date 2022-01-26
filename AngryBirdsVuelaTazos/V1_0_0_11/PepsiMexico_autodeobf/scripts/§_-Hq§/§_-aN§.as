package §_-Hq§
{
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-bA§.§_-Xe§;
   import §_-d5§.§_-6Y§;
   import §_-ic§.HighscoreSidebar;
   import §_-xN§.§_-pB§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-aN§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "ForgotPasswordState";
       
      
      public function §_-aN§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.stop();
         }
         §_-qE§.setText("","TextField_UserNameField");
         §_-03§.changeState(HighscoreSidebar.set);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-Ez§();
               break;
            case "CANCEL":
               mNextState = §_-fY§.§_-dh§;
         }
      }
      
      private function §_-Ez§() : void
      {
         var _loc1_:String = §_-qE§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-Gk§(§_-Xe§.§_-d0§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc4_.url = §_-I8§.§_-cz§;
         _loc3_.load(_loc4_);
         mNextState = §_-fY§.§_-dh§;
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-Gk§(param1:String) : void
      {
         §_-03§.showHelpText("Error:\n" + param1);
      }
   }
}
