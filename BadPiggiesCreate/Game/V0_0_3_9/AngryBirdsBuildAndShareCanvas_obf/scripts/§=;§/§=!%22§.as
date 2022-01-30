package §=;§
{
   import §&"&§.§3R§;
   import §&"&§.§8!"§;
   import §3!S§.§%s§;
   import §6!&§.§",§;
   import §6!&§.§0!b§;
   import §9!#§.§?X§;
   import §@!;§.§&F§;
   import §@!N§.§3E§;
   import §]'§.§0r§;
   
   public class §=!"§ extends §?X§
   {
      
      public static const §8G§:String = "LevelLoadStateEditor";
      
      private static var §1!a§:§",§ = null;
      
      private static var §`G§:String = null;
      
      private static var §8!4§:String = null;
       
      
      public function §=!"§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         super(param1,param2);
      }
      
      public static function loadLevel(param1:§",§, param2:String) : void
      {
         §5!'§ = §7W§;
         §1!a§ = param1;
         §`G§ = param2;
         §3E§.§!`§(param2 == StateLevelEditor.§8G§);
      }
      
      public static function §#!v§(param1:§",§, param2:XML) : void
      {
         §5!'§ = §7W§;
         §0r§.§!W§(param2);
         if(param1 == null)
         {
            §1!a§ = §0r§.§;"1§();
         }
         else
         {
            §1!a§ = param1;
         }
         §`G§ = StateLevelEditor.§8G§;
         §3E§.§!`§(true);
      }
      
      public static function §>A§(param1:String) : void
      {
         §5!'§ = §7W§;
         §1!a§ = new §",§();
         §`G§ = param1;
      }
      
      public static function §;!8§(param1:String, param2:String) : void
      {
         §5!'§ = §7W§;
         §8!4§ = param2;
         §`G§ = param1;
         §1!a§ = null;
      }
      
      public static function §2!2§(param1:String) : void
      {
         §5!'§ = §7W§;
         §`G§ = param1;
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function initLevelLoad() : void
      {
         if(§8!4§ != null && §8!4§.length > 0)
         {
            §3R§.loadLevel(§8!4§,this.§2"5§,this.§1!K§);
            §8!4§ = null;
         }
         else
         {
            this.initLevelMain(§1!a§);
         }
      }
      
      override public function isReady() : Boolean
      {
         return §%s§.§`!f§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         if(§`G§ != null)
         {
            mNextState = §`G§;
            §`G§ = null;
         }
         else
         {
            mNextState = StateLevelEditor.§8G§;
         }
         §8!"§.doJsCall("onLevelLoaded");
      }
      
      public function §2"5§(param1:Object) : void
      {
         §1!a§ = §",§.§4!S§(param1 as String);
         this.initLevelMain(§1!a§);
         var _loc2_:Object = JSON.parse(param1 as String);
         _loc2_.thumbnail = null;
         _loc2_.data = null;
         §8!"§.doJsCall("onLevelChange",_loc2_);
      }
      
      override protected function initLevelMain(param1:§0!b§) : void
      {
         super.initLevelMain(param1);
         if(param1 is §",§)
         {
            §0r§.§!S§(param1 as §",§);
            return;
         }
         throw new Error("levelData should be LevelModelEditor");
      }
      
      public function §1!K§() : void
      {
         §&F§.log("LEVEL LOAD FAILED!!");
      }
   }
}
