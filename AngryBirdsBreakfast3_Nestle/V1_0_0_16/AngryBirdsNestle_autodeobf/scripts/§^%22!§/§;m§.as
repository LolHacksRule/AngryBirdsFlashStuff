package §^"!§
{
   import §0!m§.§@!S§;
   import §@V§.§#=§;
   import §@V§.§&#§;
   
   public class §;m§ extends §9z§
   {
      
      public static const ALL:String = "all";
      
      public static const §+"!§:String = "all_powerups";
      
      public static const §`X§:String = "level_birds";
       
      
      public function §;m§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §`X§:
               _loc2_ = this.§&!2§(§@!S§.§2A§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+"!§),this.getTutorialNamesForMapping(§`X§));
         }
         return _loc2_;
      }
      
      protected function §&!2§(param1:§#=§) : Vector.<String>
      {
         var _loc3_:§&#§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§&]§)
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
