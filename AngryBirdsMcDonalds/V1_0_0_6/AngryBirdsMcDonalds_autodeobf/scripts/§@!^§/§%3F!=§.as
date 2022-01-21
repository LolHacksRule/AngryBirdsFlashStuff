package §@!^§
{
   import §#!G§.§,!6§;
   import §#!G§.§?k§;
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   import §7_§.§^d§;
   import §]k§.§'m§;
   import §]k§.§2!'§;
   
   public class §?!=§ extends §?k§
   {
       
      
      private var §^![§:Boolean = false;
      
      public function §?!=§(param1:String, param2:Number, param3:§<!'§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §^!1§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§2!'§ = null;
         if(§10§.mLayers[param1])
         {
            (_loc4_ = §10§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§'!m§ = param3;
               §10§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§'m§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§^d§.§@P§)
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
            this.§^!1§(1,_loc4_,_loc3_);
            this.§^!1§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§^![§ && param1)
         {
            this.§^![§ = true;
            this.§5!`§();
         }
      }
      
      private function §5!`§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as §6!Z§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§2!'§, param2:Sprite, param3:§<!'§, param4:Number) : §,!6§
      {
         return new §6!Z§(param1,param2,param3,param4);
      }
   }
}
