package
{
   import com.AngryBirds.AvatarCreator.components.Avatar;
   import com.AngryBirds.AvatarCreator.data.Characters;
   import com.AngryBirds.AvatarCreator.data.Items;
   import com.AngryBirds.AvatarCreator.io.AngryBirdsExternalInterface;
   import com.AngryBirds.AvatarCreator.io.AngryBirdsServer;
   import com.AngryBirds.AvatarCreator.states.StateAvatarCreator;
   import com.rovio.BasicGame;
   import com.rovio.factory.Log;
   import com.rovio.model.UserModel;
   import com.rovio.states.StateBase;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class AvatarCreator extends BasicGame
   {
      
      public static var VERSION_NUMBER:String = "Tuesday 03/22";
      
      public static var USER:UserModel;
      
      public static var smAvatar:Avatar = null;
      
      public static var smAvatars:Array = null;
      
      public static var smItems:Items = null;
      
      public static var smCharacters:Characters = null;
      
      public static var smPaidItems:Array = null;
      
      public static var smLevel:Number = 0;
      
      public static var smCredits:Number = 0;
      
      public static var smDebugText:TextField = null;
       
      
      public function AvatarCreator()
      {
         AngryBirdsServer.initServerConfiguration();
         super();
         addState(new StateAvatarCreator(false));
         this.initObjects();
         Log.setDisplayContainer(this);
         AngryBirdsServer.initCommands();
         AngryBirdsExternalInterface.init();
      }
      
      public static function setDebugText(param1:String) : void
      {
         smDebugText.text = VERSION_NUMBER + ": " + param1;
      }
      
      public function initObjects() : void
      {
         if(!USER)
         {
            USER = new UserModel();
         }
         smAvatars = new Array();
         smItems = new Items();
         smItems.loadItems();
         smCharacters = new Characters();
         smCharacters.loadCharacters();
         smPaidItems = new Array();
         smDebugText = new TextField();
         smDebugText.width = 500;
         smDebugText.x = 5;
         smDebugText.y = -2;
         smDebugText.selectable = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.align = "left";
         _loc1_.color = 16711680;
         _loc1_.size = 12;
         smDebugText.setTextFormat(_loc1_);
         smDebugText.defaultTextFormat = _loc1_;
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = super.updateState(param1);
         if(!getCurrentStateObject().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               trace("WARNING: AngryBirdsSocial -> updateState() state flow is entering to Template state, current state is " + getCurrentStateObject().mName);
            }
         }
         return _loc2_;
      }
      
      override public function setFirstGameState() : void
      {
         super.setFirstGameState();
         setNextState(StateAvatarCreator.STATE_NAME);
      }
   }
}
