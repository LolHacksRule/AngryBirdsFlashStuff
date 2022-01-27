package §>!X§
{
   import §3R§.§1!R§;
   import §3R§.§;!h§;
   import §7!C§.§8!w§;
   
   public class §6!Q§ extends §[!2§
   {
      
      public static const §=e§:String = "all";
      
      public static const §^!!§:String = "all_powerups";
      
      public static const §'5§:String = "level_birds";
       
      
      public function §6!Q§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §'5§:
               _loc2_ = this.get(§8!w§.§5!V§);
               break;
            case §=e§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§^!!§),this.getTutorialNamesForMapping(§'5§));
         }
         return _loc2_;
      }
      
      protected function get(param1:§1!R§) : Vector.<String>
      {
         var _loc3_:§;!h§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
            {
               _loc2_.push(_loc3_.name.toUpperCase());
            }
         }
         return _loc2_;
      }
   }
}
