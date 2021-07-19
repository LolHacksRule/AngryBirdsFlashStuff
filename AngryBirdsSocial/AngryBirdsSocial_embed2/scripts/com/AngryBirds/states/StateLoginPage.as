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
       
      
      public function StateLoginPage(initState:Boolean = false, name:String = "FakeLoginState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new ViewLoginPage(this);
         mUIView.init(null);
         if(AngryBirdsSocial.RUN_AS_EMBED_PLAYER)
         {
            mUIView.mMovieClip.scaleX = 0.5;
            mUIView.mMovieClip.scaleY = 0.5;
         }
         setCleanUpAfterDeactivating(true);
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
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
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "SKIP_LOGIN":
               mNextState = StateLevelLoad.STATE_NAME;
               if(!AngryBirdsSocial.USER_INFO)
               {
                  AngryBirdsSocial.USER_INFO = new UserInfoModel();
               }
               break;
            case "LOGIN":
               this.doFakeLogin();
         }
      }
      
      private function doFakeLogin() : void
      {
         var email:String = mUIView.getText("TextField_Email");
         var password:String = mUIView.getText("TextField_Password");
         AngryBirdsServer.login(email,password,this.loginResponseReceived);
      }
      
      private function loginResponseReceived(response:Object) : void
      {
         if(response.token)
         {
            AngryBirdsSocial.USER.email = mUIView.getText("TextField_Email");
            AngryBirdsSocial.USER.password = mUIView.getText("TextField_Password");
            AngryBirdsSocial.USER.name = response.username.toString();
            AngryBirdsSocial.USER.authenticationToken = response.token.toString();
            if(!AngryBirdsSocial.USER_INFO)
            {
               AngryBirdsSocial.USER_INFO = new UserInfoModel();
            }
            AngryBirdsSocial.USER_INFO.userName = AngryBirdsSocial.USER.name;
            mNextState = StateLevelLoad.STATE_NAME;
         }
      }
   }
}
