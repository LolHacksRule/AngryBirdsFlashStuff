package §`"T§
{
   import §!r§.§&$§;
   import §!r§.§3J§;
   import §!r§.§6;§;
   import §!r§.§71§;
   import §!r§.§;" §;
   import §!r§.§@]§;
   import §!r§.§`"w§;
   import §"§.§1!T§;
   import §"§.§;!E§;
   import §'"A§.§!§;
   import §'"A§.§#§;
   import §9"U§.§7"1§;
   import com.angrybirds.§<!J§;
   
   public class §7?§ extends §6^§
   {
      
      public static const §]!M§:String = "all";
      
      public static const §+"6§:String = "all_powerups";
      
      public static const §%%§:String = "level_birds";
       
      
      public function §7?§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §+"6§:
               _loc2_ = this.§>"d§();
               break;
            case §%%§:
               _loc2_ = this.§"#$§(§<!J§.§=!%§);
               break;
            case §]!M§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+"6§),this.getTutorialNamesForMapping(§%%§));
         }
         return _loc2_;
      }
      
      protected function §>"d§() : Vector.<String>
      {
         var _loc4_:§!#2§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:§7"1§ = §7"1§(§4"#§.singleton.dataModel);
         var _loc3_:Vector.<§!#2§> = _loc2_.§@!K§.§<!h§.§2d§;
         for each(_loc4_ in _loc3_)
         {
            _loc1_.push(_loc4_.§1!b§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §"#$§(param1:§;!E§) : Vector.<String>
      {
         var _loc3_:§1!T§ = null;
         var _loc4_:String = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§&"P§)
         {
            if(_loc3_.name != §&$§.§5!L§)
            {
               _loc4_ = this.§6J§(_loc3_.name).toUpperCase();
               if(_loc2_.indexOf(_loc4_) < 0)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      protected function §6J§(param1:String) : String
      {
         var _loc2_:§##4§ = §7"1§(§4"#§.singleton.dataModel).birdLevels;
         if(param1.indexOf(§3J§.§5!L§) == 0)
         {
            return §3J§.§5!L§ + "_" + _loc2_.red;
         }
         if(param1.indexOf(§`"w§.§5!L§) == 0)
         {
            return §`"w§.§5!L§ + "_" + _loc2_.blue;
         }
         if(param1.indexOf(§6;§.§5!L§) == 0)
         {
            return §6;§.§5!L§ + "_" + _loc2_.§0"0§;
         }
         if(param1.indexOf(§71§.§5!L§) == 0)
         {
            return §71§.§5!L§ + "_" + _loc2_.yellow;
         }
         if(param1.indexOf(§;" §.§5!L§) == 0)
         {
            return §;" §.§5!L§ + "_" + _loc2_.black;
         }
         if(param1.indexOf(§@]§.§5!L§) == 0)
         {
            return §@]§.§5!L§ + "_" + _loc2_.pink;
         }
         throw new Error("Bird type not found: \'" + param1 + "\'");
      }
   }
}
