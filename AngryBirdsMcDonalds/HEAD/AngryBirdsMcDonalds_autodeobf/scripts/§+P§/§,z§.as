package §+P§
{
   import §!_§.§;U§;
   import §!_§.§<C§;
   import §,4§.§;_§;
   import §-R§.;
   import §-R§.§3$§;
   import §9`§.§#U§;
   import §`!n§.Sprite;
   
   public class §,z§ extends §#4§
   {
       
      
      private var §^C§:Boolean = false;
      
      public function §,z§(param1:String, param2:Number, param3:§#U§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §5!f§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§;U§ = null;
         if(§0`§.mLayers[param1])
         {
            (_loc4_ = §0`§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§-!M§ = param3;
               §0`§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§<C§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§;_§.§2!Q§)
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
            this.§5!f§(1,_loc4_,_loc3_);
            this.§5!f§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§^C§ && param1)
         {
            this.§^C§ = true;
            this.§[[§();
         }
      }
      
      private function §[[§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as §8!;§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§;U§, param2:Sprite, param3:§#U§, param4:Number) : §3$§
      {
         return new §8!;§(param1,param2,param3,param4);
      }
   }
}
