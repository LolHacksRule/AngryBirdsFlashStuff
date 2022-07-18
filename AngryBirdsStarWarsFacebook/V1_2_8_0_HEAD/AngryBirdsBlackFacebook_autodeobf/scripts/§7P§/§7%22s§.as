package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §,"N§.§@#B§;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §6!H§.§&"f§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §?m§.§=!z§;
   import §^#>§.§#_§;
   import §^#>§.§'"3§;
   
   public class §7"s§ extends §^!K§
   {
       
      
      public function §7"s§(param1:§#_§, param2:§=!z§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §#W§(param1:§'"3§, param2:§?"N§) : void
      {
         var _loc3_:Sprite = new Sprite();
         §!V§.addChild(_loc3_);
         var _loc4_:§3C§ = new §3C§(_loc3_,§2#G§.mLevelEngine.mWorld,param2);
         §1!b§.push(_loc4_);
      }
      
      private function §-!7§(param1:String) : String
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
         return param1;
      }
      
      override protected function createObjectInstance(param1:§94§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         if(§2#G§.levelItemManager.getItem(param1.type) is §=+§)
         {
            param1.type = this.§-!7§(param1.type);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number) : §`#G§
      {
         switch(param4.itemName)
         {
            case "BLOCK_TOURNAMENT_EMPEROR_HOLOGRAM":
               return new §"!?§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TORPEDO_LAUNCHER":
               return new §`!>§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TURBINE_4X2":
            case "BLOCK_TOURNAMENT_TURBINE_2X1":
               return new §7"?§(param1,param2,param3,param4,param5,param6);
            default:
               return super.createObjectBlockSpace(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §@#Y§(param1:§'"3§, param2:§?"N§, param3:Number) : void
      {
         var _loc4_:Sprite = new Sprite();
         §8!>§.addChild(_loc4_);
         var _loc5_:§=T§ = new §=T§(_loc4_,§2#G§.mLevelEngine.mWorld,param2,param3);
         §1!b§.push(_loc5_);
      }
      
      public function §##8§() : Boolean
      {
         var _loc1_:int = §1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            if(§1!b§[_loc1_] is §=1§ || §1!b§[_loc1_] is §7#"§)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
   }
}
