package §#[§
{
   import § true§.§'8§;
   import § true§.§0O§;
   import §&C§.§0!5§;
   import §&C§.§;D§;
   import §-!F§.§2[§;
   import §0@§.Sprite;
   import §7! §.§4n§;
   
   public class §@"§ extends §0O§
   {
       
      
      private var §]!o§:Boolean = false;
      
      public function §@"§(param1:String, param2:Number, param3:§4n§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §^!M§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§0!5§ = null;
         if(§,!d§.mLayers[param1])
         {
            (_loc4_ = §,!d§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§%I§ = param3;
               §,!d§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§;D§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§2[§.§^N§)
            {
               case "2-3":
                  _loc3_ = "0xfbc277";
                  _loc4_ = "MCDONALDS_THEME1_BREAKFAST";
                  _loc5_ = "MCDONALDS_THEME1_BG1";
                  break;
               case "2-4":
                  _loc3_ = "0x79d2ff";
                  _loc4_ = "MCDONALDS_THEME1_LUNCH";
                  _loc5_ = "MCDONALDS_THEME1_BG_1_LUNCH";
                  break;
               case "2-5":
                  _loc3_ = "0xffc8f0";
                  _loc4_ = "MCDONALDS_THEME1_DINNER";
                  _loc5_ = "MCDONALDS_THEME1_BG_1_DINNER";
                  break;
               default:
                  _loc3_ = "0xfbc277";
                  _loc4_ = "MCDONALDS_THEME1_BREAKFAST";
                  _loc5_ = "MCDONALDS_THEME1_BG1";
            }
            this.§^!M§(1,_loc4_,_loc3_);
            this.§^!M§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§]!o§ && param1)
         {
            this.§]!o§ = true;
            this.§4!!§();
         }
      }
      
      private function §4!!§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as §5D§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§0!5§, param2:Sprite, param3:§4n§, param4:Number) : §'8§
      {
         return new §5D§(param1,param2,param3,param4);
      }
   }
}
