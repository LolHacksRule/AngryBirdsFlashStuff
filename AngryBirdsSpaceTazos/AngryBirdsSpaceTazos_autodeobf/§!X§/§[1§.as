package §!X§
{
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   
   public class §[1§ extends §3"B§
   {
      
      public static const §^!p§:String = "all";
      
      public static const §'L§:String = "all_powerups";
      
      public static const §'!9§:String = "level_birds";
       
      
      public function §[1§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §'!9§:
               _loc2_ = this.§#>§(§9q§.§>!L§);
               break;
            case §^!p§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§'L§),this.getTutorialNamesForMapping(§'!9§));
         }
         return _loc2_;
      }
      
      protected function §#>§(param1:§^g§) : Vector.<String>
      {
         var _loc3_:§-T§ = null;
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
