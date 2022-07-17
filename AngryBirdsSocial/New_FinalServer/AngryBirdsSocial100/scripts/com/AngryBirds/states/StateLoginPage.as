package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.ui.ViewLoginPage;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   
   public class StateLoginPage extends StateBase
   {
      
      public static const STATE_NAME:String = "FakeLoginState";
       
      
      public function StateLoginPage(param1:Boolean = false, param2:String = "FakeLoginState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLoginPage(this);
         mUIView.init(null);
         setCleanUpAfterDeactivating(true);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "SKIP_LOGIN":
               mNextState = StateLevelLoad.STATE_NAME;
               if(!AngryBirdsSocial.USER_INFO)
               {
                  AngryBirdsSocial.USER_INFO = new UserInfoModel();
                  break;
               }
               break;
            case "LOGIN":
               this.doFakeLogin();
         }
      }
      
      private function doFakeLogin() : void
      {
         var _loc1_:String = mUIView.getText("TextField_Email");
         var _loc2_:String = mUIView.getText("TextField_Password");
         AngryBirdsServer.login(_loc1_,_loc2_,this.loginResponseReceived);
      }
      
      private function loginResponseReceived(param1:Object) : void
      {
         if(param1.token)
         {
            AngryBirdsSocial.USER.email = mUIView.getText("TextField_Email");
            AngryBirdsSocial.USER.password = mUIView.getText("TextField_Password");
            AngryBirdsSocial.USER.name = param1.username.toString();
            AngryBirdsSocial.USER.authenticationToken = param1.token.toString();
            if(!AngryBirdsSocial.USER_INFO)
            {
               AngryBirdsSocial.USER_INFO = new UserInfoModel();
            }
            AngryBirdsSocial.USER_INFO.userName = AngryBirdsSocial.USER.name;
            AngryBirdsServer.getUserSettings(AngryBirdsSocial.handleGetUserSettingsResponse);
            mNextState = StateLevelLoad.STATE_NAME;
         }
      }
   }
}
