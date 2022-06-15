package §5!g§
{
   import § #j§.§-w§;
   import §#g§.§1§;
   import §#g§.§8§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §?#z§.§]$?§;
   
   public class §2[§ extends §-w§
   {
      
      public static const §[!=§:String = "all";
      
      public static const §!"w§:String = "all_powerups";
      
      public static const §0!N§:String = "level_normal_birds";
      
      public static const §9%§:String = "level_all_birds";
       
      
      public function §2[§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §!"w§:
               _loc2_ = this.§8$#§();
               break;
            case §0!N§:
               _loc2_ = this.§^!y§(§]$?§.§2#§,false);
               break;
            case §9%§:
               _loc2_ = this.§^!y§(§]$?§.§2#§,true);
               break;
            case §[!=§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§!"w§),this.getTutorialNamesForMapping(§9%§));
         }
         return _loc2_;
      }
      
      protected function §8$#§() : Vector.<String>
      {
         var _loc2_:§!#;§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in § "T§.§"!K§)
         {
            _loc1_.push(_loc2_.§8t§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §^!y§(param1:§8#3§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§1#0§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §]$?§.§2#§.slingshot.mBirds)
         {
            if(!((_loc4_.name == "BIRD_SARDINE" || _loc4_.name == "BIRD_WINGMAN" || _loc4_.name == "POWERUP_BOOMBOX") && !param2))
            {
               if(_loc3_.indexOf(_loc4_.name) < 0)
               {
                  _loc3_.push(_loc4_.name);
               }
            }
         }
         return _loc3_;
      }
   }
}
