package § J§
{
   import §""6§.§!v§;
   import §'x§.§?z§;
   import §+%§.§5!F§;
   import §+%§.§5!O§;
   import §,Q§.§="+§;
   import §,Q§.§="2§;
   import §1"3§.§6!W§;
   import §;X§.§ do§;
   import §]X§.§<!-§;
   
   public class §6"6§ extends §!v§
   {
      
      public static const §^z§:String = "LevelLoadStateEditor";
      
      private static var §,u§:§5!O§ = null;
      
      private static var §3!O§:String = null;
      
      private static var §;[§:String = null;
       
      
      public function §6"6§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§5!O§, param2:String) : void
      {
         §+"'§ = §=2§;
         §,u§ = param1;
         §3!O§ = param2;
         §6!W§.§?!G§(param2 == StateLevelEditor.§^z§);
      }
      
      public static function §#z§(param1:§5!O§, param2:XML) : void
      {
         §+"'§ = §=2§;
         §<!-§.§5!`§(param2);
         if(param1 == null)
         {
            §,u§ = §<!-§.§?Q§();
         }
         else
         {
            §,u§ = param1;
         }
         §3!O§ = StateLevelEditor.§^z§;
         §6!W§.§?!G§(true);
      }
      
      public static function §9!h§(param1:String) : void
      {
         §+"'§ = §=2§;
         §,u§ = new §5!O§();
         §3!O§ = param1;
      }
      
      public static function §?"&§(param1:String, param2:String) : void
      {
         §+"'§ = §=2§;
         §;[§ = param2;
         §3!O§ = param1;
         §,u§ = null;
      }
      
      public static function §0!f§(param1:String) : void
      {
         §+"'§ = §=2§;
         §3!O§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§;[§ != null && §;[§.length > 0)
         {
            §="+§.loadLevel(§;[§,this.§8!x§,this.§`x§);
            §;[§ = null;
         }
         else
         {
            this.initLevelMain(§,u§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §?z§.§=7§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§3!O§ != null)
         {
            mNextState = §3!O§;
            §3!O§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§^z§;
         }
         §="2§.doJsCall("onLevelLoaded");
      }
      
      public function §8!x§(param1:Object) : void
      {
         §,u§ = §5!O§.§+!R§(param1 as String);
         this.initLevelMain(§,u§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §="2§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§5!F§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §5!O§)
         {
            §<!-§.§ !P§(param1 as §5!O§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §`x§() : void
      {
         § do§.log("LEVEL LOAD FAILED!!");
      }
   }
}
