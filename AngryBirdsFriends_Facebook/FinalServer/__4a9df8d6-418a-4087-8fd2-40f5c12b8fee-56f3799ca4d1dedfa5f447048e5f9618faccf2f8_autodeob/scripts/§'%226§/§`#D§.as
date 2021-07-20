package §'"6§
{
   import §-;§.§+"d§;
   import §-;§.§<K§;
   import §<#o§.§"!#§;
   import §>2§.§!6§;
   import §>2§.§>#!§;
   import §`#@§.§7n§;
   
   public class §`#D§ extends §"!#§
   {
      
      public static const §&#z§:String = "all";
      
      public static const §?"4§:String = "all_powerups";
      
      public static const §@$>§:String = "level_normal_birds";
      
      public static const § "Z§:String = "level_all_birds";
       
      
      public function §`#D§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §?"4§:
               _loc2_ = this.§-_§();
               break;
            case §@$>§:
               _loc2_ = this.§'g§(§7n§.§6#K§,false);
               break;
            case § "Z§:
               _loc2_ = this.§'g§(§7n§.§6#K§,true);
               break;
            case §&#z§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§?"4§),this.getTutorialNamesForMapping(§ "Z§));
         }
         return _loc2_;
      }
      
      protected function §-_§() : Vector.<String>
      {
         var _loc2_:§<K§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §+"d§.§]V§)
         {
            _loc1_.push(_loc2_.§1#7§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §'g§(param1:§!6§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§>#!§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §7n§.§6#K§.slingshot.mBirds)
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
