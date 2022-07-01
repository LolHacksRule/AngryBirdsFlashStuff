package §,i§
{
   import § i§.§'V§;
   import §+!v§.§2!f§;
   import §1U§.§"!V§;
   import §7M§.§ !e§;
   import §7M§.§"?§;
   import §7M§.§+R§;
   import §^!D§.§;^§;
   
   public class §>Y§ extends §@"!§
   {
      
      public static const §]"2§:String = "LevelLoadStateClassic";
      
      private static var §6;§:Number;
      
      private static var §?'§:§;^§;
      
      private static var §1!#§:§2!f§;
       
      
      public function §>Y§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function §;X§() : void
      {
         §"?§.loadLevel(§"?§.§7!=§());
         §&!v§ = §&"6§;
      }
      
      public static function §'!J§(param1:int) : void
      {
         § "&§ = param1;
         §&!v§ = §&"6§;
      }
      
      public static function §"l§() : void
      {
         if(§"!V§.§!j§.camera)
         {
            §6;§ = §"!V§.§!j§.camera.§ !y§;
         }
         §&!v§ = §&"6§;
      }
      
      override public function deActivate() : void
      {
         if(§?'§)
         {
            §?'§.§5!I§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§ !e§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§+R§ = §"?§.§+!M§(§"?§.§4M§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§6;§))
            {
               §"!V§.§!j§.camera.§%v§(§6;§);
               §6;§ = NaN;
            }
         }
         else
         {
            _loc2_ = §"?§.§ do§(§"?§.§4M§);
            if(_loc2_)
            {
               if(!§1!#§)
               {
                  §1!#§ = new §2!f§();
               }
               if(!§?'§)
               {
                  §?'§ = new §;^§();
                  _loc4_ = §2"$§.assetsUrl || "";
                  _loc5_ = §2"$§.buildNumber || "";
                  §?'§.init(§'V§.§#c§(),_loc4_,_loc5_,§1!#§);
               }
               §?'§.§[x§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §?'§.§%A§(<pack url="{_loc3_}"/>);
               §?'§.§6i§(this.§^;§);
            }
         }
      }
      
      protected function §^;§() : void
      {
         var _loc1_:§+R§ = §"?§.§+!M§(§"?§.§4M§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§6;§))
            {
               §"!V§.§!j§.camera.§%v§(§6;§);
               §6;§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §"!V§.§!j§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §"!V§.§!j§.§#P§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.getPlayState();
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§]"2§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §6!x§.§]"2§;
      }
   }
}
