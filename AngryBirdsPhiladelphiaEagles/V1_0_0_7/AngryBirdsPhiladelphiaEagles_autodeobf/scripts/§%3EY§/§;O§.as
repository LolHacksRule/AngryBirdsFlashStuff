package §>Y§
{
   import §"^§.§9=§;
   import §&[§.§6M§;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §3!%§.§9i§;
   import §9[§.§7$§;
   import §]8§.§6v§;
   
   public class §;O§ extends §^!@§
   {
      
      public static const §4!C§:String = "LevelLoadStateClassic";
      
      private static var §7Q§:Number;
      
      private static var §;!<§:§7$§;
      
      private static var §+S§:§6M§;
       
      
      public function §;O§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      public static function § true§() : void
      {
         §-k§.§+p§(§-k§.§7#§());
         § r§ = §"B§;
      }
      
      public static function §,!<§(param1:int) : void
      {
         § !#§ = param1;
         § r§ = §"B§;
      }
      
      public static function §%e§() : void
      {
         if(§9=§.§<!@§.camera)
         {
            §7Q§ = §9=§.§<!@§.camera.§"o§;
         }
         § r§ = §"B§;
      }
      
      override public function deActivate() : void
      {
         if(§;!<§)
         {
            §;!<§.§%5§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§9i§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#!K§ = §-k§.§>!5§(§-k§.§%D§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§7Q§))
            {
               §9=§.§<!@§.camera.§,! §(§7Q§);
               §7Q§ = NaN;
            }
         }
         else
         {
            _loc2_ = §-k§.§#L§(§-k§.§%D§);
            if(_loc2_)
            {
               if(!§+S§)
               {
                  §+S§ = new §6M§();
               }
               if(!§;!<§)
               {
                  §;!<§ = new §7$§();
                  _loc4_ = §8z§.assetsUrl || "";
                  _loc5_ = §8z§.buildNumber || "";
                  §;!<§.init(§6v§.§`!-§(),_loc4_,_loc5_,§+S§);
               }
               §;!<§.§;!0§();
               _loc3_ = "packages/chapter" + _loc2_.name + ".pak";
               §;!<§.§<!N§(<pack url="{_loc3_}"/>);
               §;!<§.§^W§(this.§"i§);
            }
         }
      }
      
      protected function §"i§() : void
      {
         var _loc1_:§#!K§ = §-k§.§>!5§(§-k§.§%D§);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            if(!isNaN(§7Q§))
            {
               §9=§.§<!@§.camera.§,! §(§7Q§);
               §7Q§ = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §9=§.§<!@§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §9=§.§<!@§.§?b§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§?I§();
      }
      
      protected function §?I§() : String
      {
         return StatePlay.§4!C§;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = §8!F§.§4!C§;
      }
   }
}
