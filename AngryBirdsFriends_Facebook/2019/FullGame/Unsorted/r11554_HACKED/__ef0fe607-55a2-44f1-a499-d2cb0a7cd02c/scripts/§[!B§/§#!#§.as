package §[!B§
{
   import § !D§.§'"u§;
   import § !D§.§;M§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §6W§.§="u§;
   import §=!2§.§%"T§;
   
   public class §#!#§ extends §="u§
   {
      
      public static const §`$%§:String = "all";
      
      public static const §5"1§:String = "all_powerups";
      
      public static const §4#M§:String = "level_normal_birds";
      
      public static const §4"8§:String = "level_all_birds";
       
      
      public function §#!#§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §5"1§:
               _loc2_ = this.§]#1§();
               break;
            case §4#M§:
               _loc2_ = this.§4V§(§%"T§.§;`§,false);
               break;
            case §4"8§:
               _loc2_ = this.§4V§(§%"T§.§;`§,true);
               break;
            case §`$%§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§5"1§),this.getTutorialNamesForMapping(§4"8§));
         }
         return _loc2_;
      }
      
      protected function §]#1§() : Vector.<String>
      {
         var _loc2_:§4"p§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §0!w§.§'#v§)
         {
            _loc1_.push(_loc2_.§]'§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §4V§(param1:§'"u§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§;M§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §%"T§.§;`§.slingshot.mBirds)
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
