package §throw§
{
   import §#N§.§3!,§;
   import §#N§.§=4§;
   import §&[§.§&!m§;
   import §2!g§.Sprite;
   import §5!!§.§0@§;
   import §5!!§.§77§;
   import §`!d§.§7!§;
   
   public class §"r§ extends §0@§
   {
       
      
      private var §;[§:Boolean = false;
      
      public function §"r§(param1:String, param2:Number, param3:§&!m§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      private function §=!8§(param1:int, param2:String, param3:String = "") : void
      {
         var _loc4_:§=4§ = null;
         if(§9!E§.mLayers[param1])
         {
            (_loc4_ = §9!E§.mLayers[param1]).mName = param2;
            if(param3 != "")
            {
               _loc4_.§-8§ = param3;
               §9!E§.mColorSky = parseInt(param3,16);
            }
         }
      }
      
      override protected function preProcessBackground(param1:§3!,§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param2 == "MCDONALDS_THEME_1")
         {
            switch(§7!§.§+e§)
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
            this.§=!8§(1,_loc4_,_loc3_);
            this.§=!8§(4,_loc5_);
         }
      }
      
      public function set loop(param1:Boolean) : void
      {
         if(!this.§;[§ && param1)
         {
            this.§;[§ = true;
            this.§@_§();
         }
      }
      
      private function §@_§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < mLayers.length)
         {
            (mLayers[_loc1_] as §-c§).loop = true;
            _loc1_++;
         }
      }
      
      override protected function newLevelBackgroundLayer(param1:§=4§, param2:Sprite, param3:§&!m§, param4:Number) : §77§
      {
         return new §-c§(param1,param2,param3,param4);
      }
   }
}
