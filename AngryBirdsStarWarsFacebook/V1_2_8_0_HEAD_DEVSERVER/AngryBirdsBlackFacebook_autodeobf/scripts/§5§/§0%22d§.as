package §5§#7
{
   import §,"N§.§@#B§;
   import §6!H§.§&"f§;
   import §6!H§.§8!r§;
   import §7P§.§-!F§;
   import §7P§.§-E§;
   import §7P§.§8!?§;
   import §7P§.§9"J§;
   import §7P§.§=1§;
   import §7P§.§@!8§;
   import §7P§.§]!-§;
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §0"d§ extends §`!n§
   {
      
      public static const ALL:String = "all";
      
      public static const §+X§:String = "all_powerups";
      
      public static const §=!7§:String = "level_birds";
       
      
      public function §0"d§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §+X§:
               _loc2_ = this.§?"k§();
               break;
            case §=!7§:
               _loc2_ = this.§5"o§(§,!q§.§9!,§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+X§),this.getTutorialNamesForMapping(§=!7§));
         }
         return _loc2_;
      }
      
      protected function §?"k§() : Vector.<String>
      {
         var _loc4_:§8!r§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:Vector.<§8!r§> = _loc2_.§]"<§.§;#?§.§^"'§;
         for each(_loc4_ in _loc3_)
         {
            _loc1_.push(_loc4_.§="A§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §5"o§(param1:§#_§) : Vector.<String>
      {
         var _loc3_:§`"]§ = null;
         var _loc4_:String = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§,!?§)
         {
            if(_loc3_.name != §=1§.§+"§)
            {
               _loc4_ = this.§#"q§(_loc3_.name).toUpperCase();
               if(_loc2_.indexOf(_loc4_) < 0)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      protected function §#"q§(param1:String) : String
      {
         var _loc2_:§&"f§ = §@#B§(§4#;§.singleton.dataModel).birdLevels;
         if(param1.indexOf(§-!F§.§+"§) == 0)
         {
            return §-!F§.§+"§ + "_" + _loc2_.red;
         }
         if(param1.indexOf(§@!8§.§+"§) == 0)
         {
            return §@!8§.§+"§ + "_" + _loc2_.blue;
         }
         if(param1.indexOf(§]!-§.§+"§) == 0)
         {
            return §]!-§.§+"§ + "_" + _loc2_.§8#<§;
         }
         if(param1.indexOf(§-E§.§+"§) == 0)
         {
            return §-E§.§+"§ + "_" + _loc2_.yellow;
         }
         if(param1.indexOf(§9"J§.§+"§) == 0)
         {
            return §9"J§.§+"§ + "_" + _loc2_.black;
         }
         if(param1.indexOf(§8!?§.§+"§) == 0)
         {
            return §8!?§.§+"§ + "_" + _loc2_.pink;
         }
         throw new Error("Bird type not found: \'" + param1 + "\'");
      }
   }
}
