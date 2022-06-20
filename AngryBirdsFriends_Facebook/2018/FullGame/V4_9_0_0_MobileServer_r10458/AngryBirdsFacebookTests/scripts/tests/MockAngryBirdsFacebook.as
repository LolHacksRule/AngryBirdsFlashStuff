package tests
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.graphapi.FirstTimePayerPromotion;
   import com.angrybirds.graphapi.GraphAPICaller;
   import com.rovio.sound.ThemeMusicManager;
   import com.rovio.states.StateBase;
   
   public class MockAngryBirdsFacebook implements IAngryBirdsFacebook
   {
       
      
      public function MockAngryBirdsFacebook()
      {
         super();
      }
      
      public function get dataModel() : DataModel
      {
         return null;
      }
      
      public function get firstTimePayerPromotion() : FirstTimePayerPromotion
      {
         return null;
      }
      
      public function getAssetsRoot() : String
      {
         return null;
      }
      
      public function getStateObject(name:String) : StateBase
      {
         return null;
      }
      
      public function getThemeMusicManager() : ThemeMusicManager
      {
         return null;
      }
      
      public function get graphAPICaller() : GraphAPICaller
      {
         return null;
      }
      
      public function setFirstGameStateFacebook() : void
      {
      }
      
      public function setFriendsBarTitle(title:String) : void
      {
      }
      
      public function setNextState(newState:String) : void
      {
      }
      
      public function setNextStateToLevel(levelId:String) : void
      {
      }
      
      public function initHighScoreListManager(dataObject:Object) : void
      {
      }
      
      public function getBuildNumber() : String
      {
         return "";
      }
   }
}
