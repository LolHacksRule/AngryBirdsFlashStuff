package
{
   import com.angrybirds.data.DataModel;
   import com.angrybirds.graphapi.FirstTimePayerPromotion;
   import com.angrybirds.graphapi.GraphAPICaller;
   import com.rovio.sound.ThemeMusicManager;
   import com.rovio.states.StateBase;
   
   public interface IAngryBirdsFacebook extends IAngryBirds
   {
       
      
      function setFirstGameStateFacebook() : void;
      
      function getThemeMusicManager() : ThemeMusicManager;
      
      function getAssetsRoot() : String;
      
      function getBuildNumber() : String;
      
      function setNextStateToLevel(param1:String) : void;
      
      function get firstTimePayerPromotion() : FirstTimePayerPromotion;
      
      function get graphAPICaller() : GraphAPICaller;
      
      function initHighScoreListManager(param1:Object) : void;
      
      function get dataModel() : DataModel;
      
      function getStateObject(param1:String) : StateBase;
      
      function setNextState(param1:String) : void;
   }
}
