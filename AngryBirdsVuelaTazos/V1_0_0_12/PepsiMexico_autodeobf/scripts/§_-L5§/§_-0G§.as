package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-IC§.§_-Uw§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Ys§.§_-o-§;
   import §_-uG§.§_-JZ§;
   import §_-v3§.§_-G3§;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-0G§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "ForgotPasswordState";
       
      
      public function §_-0G§(param1:Boolean, param2:String = "ForgotPasswordState")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.stop();
         }
         §_-Bv§.setText("","TextField_UserNameField");
         §_-1B§.changeState(HighscoreSidebar.§_-bZ§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_ForgotPassword[0]);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         switch(param2)
         {
            case "SEND_PASSWORD":
               this.§_-4n§();
               break;
            case "CANCEL":
               mNextState = §_-pb§.§_-Mi§;
         }
      }
      
      private function §_-4n§() : void
      {
         var _loc1_:String = §_-Bv§.getText("TextField_UserNameField");
         if(_loc1_.length == 0)
         {
            this.§_-68§(§_-JZ§.§_-vE§.EMAIL_MISSING);
            return;
         }
         var _loc2_:RegExp = /^\S+@\S+\.\S+$/;
         if(!_loc2_.test(_loc1_))
         {
            this.§_-68§(§_-JZ§.§_-vE§.EMAIL_INVALID);
            return;
         }
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.data = "email=" + _loc1_;
         _loc3_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc4_.url = §_-0Y§.§_-n§;
         _loc3_.load(_loc4_);
         mNextState = §_-pb§.§_-Mi§;
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
      }
      
      private function §_-68§(param1:String) : void
      {
         §_-1B§.showHelpText("Error:\n" + param1);
      }
   }
}
