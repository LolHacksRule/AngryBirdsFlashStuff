package §0!8§
{
   import § !%§.§7!>§;
   import § 6§.§=e§;
   import § 6§.§`!P§;
   import §&c§.Sprite;
   import §]o§.§8I§;
   import §]o§.§=1§;
   import §finally§.§8k§;
   
   public class §1U§ extends §8I§
   {
       
      
      private var §>!&§:Boolean = false;
      
      public function §1U§(param1:String, param2:Number, param3:§7!>§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §`Y§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§=e§ = null;
         if(§'0§.mLayers[param1])
         {
            (_loc4_ = §'0§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§=!-§ = param3;
               §'0§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§`!P§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§8k§.§8h§)
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
            this.§`Y§(1,_loc4_,_loc3_);
            this.§`Y§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§>!&§ && param1)
         {
            this.§>!&§ = true;
            this.§`0§();
         }
      }
      
      private function §`0§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as §@!n§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§=e§, param2:Sprite, param3:§7!>§, param4:Number) : §=1§
      {
         return new §@!n§(param1,param2,param3,param4);
      }
   }
}
