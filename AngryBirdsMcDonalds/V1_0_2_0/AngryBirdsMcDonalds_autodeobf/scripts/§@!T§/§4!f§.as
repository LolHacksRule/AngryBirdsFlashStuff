package §@!T§
{
   import §+-§.§3!5§;
   import §5!l§.§ !D§;
   import §5x§.Sprite;
   import §6!X§.§!'§;
   import §6!X§.§"!'§;
   import §]6§.§9s§;
   import §]6§.§<!P§;
   
   public class §4!f§ extends §"!'§
   {
       
      
      private var §5n§:Boolean = false;
      
      public function §4!f§(param1:String, param2:Number, param3:§ !D§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §%I§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§<!P§ = null;
         if(§?!c§.mLayers[param1])
         {
            (_loc4_ = §?!c§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§8u§ = param3;
               §?!c§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§9s§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§3!5§.§-!2§)
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
            this.§%I§(1,_loc4_,_loc3_);
            this.§%I§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§5n§ && param1)
         {
            this.§5n§ = true;
            this.§#<§();
         }
      }
      
      private function §#<§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as § P§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§<!P§, param2:Sprite, param3:§ !D§, param4:Number) : §!'§
      {
         return new § P§(param1,param2,param3,param4);
      }
   }
}
