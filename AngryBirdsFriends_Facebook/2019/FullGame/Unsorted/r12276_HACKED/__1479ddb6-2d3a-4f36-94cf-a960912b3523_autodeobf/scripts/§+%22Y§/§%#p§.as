package §+"Y§
{
   import §+!n§.§+!p§;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §?$#§.§;![§;
   import §?$#§.§<d§;
   import §`!u§.§-#d§;
   
   public class §%#p§ extends §-#d§
   {
      
      public static const §4#L§:String = "all";
      
      public static const §`8§:String = "all_powerups";
      
      public static const §9C§:String = "level_normal_birds";
      
      public static const §7#q§:String = "level_all_birds";
       
      
      public function §%#p§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §`8§:
               _loc2_ = this.§!%§();
               break;
            case §9C§:
               _loc2_ = this.§=!u§(§+!p§.§`?§,false);
               break;
            case §7#q§:
               _loc2_ = this.§=!u§(§+!p§.§`?§,true);
               break;
            case §4#L§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§`8§),this.getTutorialNamesForMapping(§7#q§));
         }
         return _loc2_;
      }
      
      protected function §!%§() : Vector.<String>
      {
         var _loc2_:§1!^§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §<$B§.§6#P§)
         {
            _loc1_.push(_loc2_.§=#@§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §=!u§(param1:§<d§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§;![§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §+!p§.§`?§.slingshot.mBirds)
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
