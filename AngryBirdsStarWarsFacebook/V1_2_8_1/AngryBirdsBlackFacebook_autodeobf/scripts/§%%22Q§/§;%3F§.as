package §%"Q§
{
   import §!b§.§]!s§;
   import §#g§.§>"-§;
   import §&!j§.§5#+§;
   import §`"n§.§""r§;
   import com.angrybirds.§<!J§;
   import §null §.§5#§;
   
   public class §;?§ extends §'!d§
   {
       
      
      protected var §%"n§:Boolean = false;
      
      public function §;?§(param1:§5#§, param2:§>"-§, param3:§5#+§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function initLevelLoad() : void
      {
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = true;
         super.initLevelLoad();
         this.loadPlayToken();
      }
      
      protected function loadPlayToken() : void
      {
         §""r§(§4"#§.singleton.dataModel.userProgress).§5#6§(§'""§.currentLevel,false);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return !§""r§(§4"#§.singleton.dataModel.userProgress).§<S§ && super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + §'""§.currentLevelNumericName;
         §]!s§.§#!g§(_loc1_);
         §throw§(§<!J§.§#!L§).§^!O§.§!"j§();
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
      }
   }
}
