package §0b§
{
   import §5!q§.§+e§;
   import §5!q§.§3"X§;
   import §6"R§.§!!V§;
   import §6"R§.§'u§;
   import §6"R§.§3#+§;
   import §6"R§.§7#"§;
   import §6"R§.§7h§;
   import §6"R§.§8!t§;
   import §6"R§.§<"D§;
   import §@b§.§-";§;
   import §@b§.§1"0§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   
   public class §&w§ extends §""W§
   {
      
      public static const §-!6§:String = "all";
      
      public static const §-"L§:String = "all_powerups";
      
      public static const §4$§:String = "level_birds";
       
      
      public function §&w§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §-"L§:
               _loc2_ = this.§3R§();
               break;
            case §4$§:
               _loc2_ = this.§8#7§(§;!e§.§<x§);
               break;
            case §-!6§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§-"L§),this.getTutorialNamesForMapping(§4$§));
         }
         return _loc2_;
      }
      
      protected function §3R§() : Vector.<String>
      {
         var _loc4_:§1"0§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:§-!w§ = §-!w§(§;"@§.singleton.dataModel);
         var _loc3_:Vector.<§1"0§> = _loc2_.§=>§.§[!D§.§8"A§;
         for each(_loc4_ in _loc3_)
         {
            _loc1_.push(_loc4_.§0B§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §8#7§(param1:§3"X§) : Vector.<String>
      {
         var _loc3_:§+e§ = null;
         var _loc4_:String = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§1#!§)
         {
            if(_loc3_.name != §7#"§.§^!3§)
            {
               _loc4_ = this.§@"l§(_loc3_.name).toUpperCase();
               if(_loc2_.indexOf(_loc4_) < 0)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      protected function §@"l§(param1:String) : String
      {
         var _loc2_:§-";§ = §-!w§(§;"@§.singleton.dataModel).birdLevels;
         if(param1.indexOf(§7h§.§^!3§) == 0)
         {
            return §7h§.§^!3§ + "_" + _loc2_.red;
         }
         if(param1.indexOf(§<"D§.§^!3§) == 0)
         {
            return §<"D§.§^!3§ + "_" + _loc2_.blue;
         }
         if(param1.indexOf(§!!V§.§^!3§) == 0)
         {
            return §!!V§.§^!3§ + "_" + _loc2_.§>!d§;
         }
         if(param1.indexOf(§8!t§.§^!3§) == 0)
         {
            return §8!t§.§^!3§ + "_" + _loc2_.yellow;
         }
         if(param1.indexOf(§'u§.§^!3§) == 0)
         {
            return §'u§.§^!3§ + "_" + _loc2_.black;
         }
         if(param1.indexOf(§3#+§.§^!3§) == 0)
         {
            return §3#+§.§^!3§ + "_" + _loc2_.pink;
         }
         throw new Error("Bird type not found: \'" + param1 + "\'");
      }
   }
}
