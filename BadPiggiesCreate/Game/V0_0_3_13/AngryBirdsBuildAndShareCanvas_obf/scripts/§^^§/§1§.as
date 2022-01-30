package §^^§
{
   import §#!8§.§&!'§;
   import §#!8§.§9,§;
   import §&W§.§7L§;
   import §07§.§^P§;
   import §0s§.§?!?§;
   import §0s§.§];§;
   import §2b§.§8!m§;
   import §2x§.§@q§;
   import §=!<§.§5!U§;
   
   public class §1§ extends §@q§
   {
      
      public static const §>H§:String = "LevelLoadStateEditor";
      
      private static var §%!y§:§?!?§ = null;
      
      private static var §2!3§:String = null;
      
      private static var §]!v§:String = null;
       
      
      public function §1§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§?!?§, param2:String) : void
      {
         §8f§ = §1!C§;
         §%!y§ = param1;
         §2!3§ = param2;
         §8!m§.§&!<§(param2 == StateLevelEditor.§>H§);
      }
      
      public static function §0l§(param1:§?!?§, param2:XML) : void
      {
         §8f§ = §1!C§;
         §^P§.§;!Q§(param2);
         if(param1 == null)
         {
            §%!y§ = §^P§.§@"3§();
         }
         else
         {
            §%!y§ = param1;
         }
         §2!3§ = StateLevelEditor.§>H§;
         §8!m§.§&!<§(true);
      }
      
      public static function §!"#§(param1:String) : void
      {
         §8f§ = §1!C§;
         §%!y§ = new §?!?§();
         §2!3§ = param1;
      }
      
      public static function §?A§(param1:String, param2:String) : void
      {
         §8f§ = §1!C§;
         §]!v§ = param2;
         §2!3§ = param1;
         §%!y§ = null;
      }
      
      public static function §+!u§(param1:String) : void
      {
         §8f§ = §1!C§;
         §2!3§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§]!v§ != null && §]!v§.length > 0)
         {
            §9,§.loadLevel(§]!v§,this.§5'§,this.§%a§);
            §]!v§ = null;
         }
         else
         {
            this.initLevelMain(§%!y§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §5!U§.§,!E§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§2!3§ != null)
         {
            mNextState = §2!3§;
            §2!3§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§>H§;
         }
         §&!'§.doJsCall("onLevelLoaded");
      }
      
      public function §5'§(param1:Object) : void
      {
         §%!y§ = §?!?§.§>I§(param1 as String);
         this.initLevelMain(§%!y§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §&!'§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§];§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §?!?§)
         {
            §^P§.§^!5§(param1 as §?!?§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §%a§() : void
      {
         §7L§.log("LEVEL LOAD FAILED!!");
      }
   }
}
