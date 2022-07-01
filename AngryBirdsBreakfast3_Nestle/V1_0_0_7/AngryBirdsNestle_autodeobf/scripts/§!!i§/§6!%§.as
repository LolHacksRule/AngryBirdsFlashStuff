package §!!i§
{
   import §]A§.§0n§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §6!%§ extends §@Y§
   {
      
      public static const ALL:String = "all";
      
      public static const §?J§:String = "all_powerups";
      
      public static const §%C§:String = "level_birds";
       
      
      public function §6!%§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §%C§:
               _loc2_ = this.§&!@§(§#Z§.§'0§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§?J§),this.getTutorialNamesForMapping(§%C§));
         }
         return _loc2_;
      }
      
      protected function §&!@§(param1:§[d§) : Vector.<String>
      {
         var _loc3_:§0n§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§3!Q§)
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
