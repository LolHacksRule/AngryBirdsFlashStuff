package §!r§
{
   import §!!k§.§1!^§;
   import §"§.§%!_§;
   import §"§.§;!E§;
   import §#g§.§11§;
   import §#g§.§["%§;
   import §'"A§.§#§;
   import §9"U§.§7"1§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §null §.§'!k§;
   import §use§.Sprite;
   
   public class §+"X§ extends §%2§
   {
       
      
      public function §+"X§(param1:§;!E§, param2:§'!k§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §="p§(param1:§%!_§, param2:§;!T§) : void
      {
         var _loc3_:Sprite = new Sprite();
         §!!T§.addChild(_loc3_);
         var _loc4_:§<#&§ = new §<#&§(_loc3_,§+!E§.mLevelEngine.mWorld,param2);
         §7"q§.push(_loc4_);
      }
      
      private function §^C§(param1:String) : String
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
         return param1;
      }
      
      override protected function createObjectInstance(param1:§9v§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §?!x§
      {
         if(§+!E§.levelItemManager.getItem(param1.type) is §11§)
         {
            param1.type = this.§^C§(param1.type);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number) : §%E§
      {
         switch(param4.itemName)
         {
            case "BLOCK_TOURNAMENT_EMPEROR_HOLOGRAM":
               return new §";§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TORPEDO_LAUNCHER":
               return new §;D§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TURBINE_4X2":
            case "BLOCK_TOURNAMENT_TURBINE_2X1":
               return new §<" §(param1,param2,param3,param4,param5,param6);
            default:
               return super.createObjectBlockSpace(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §2§(param1:§%!_§, param2:§;!T§, param3:Number) : void
      {
         var _loc4_:Sprite = new Sprite();
         §0#+§.addChild(_loc4_);
         var _loc5_:§ ""§ = new § ""§(_loc4_,§+!E§.mLevelEngine.mWorld,param2,param3);
         §7"q§.push(_loc5_);
      }
      
      public function §^y§() : Boolean
      {
         var _loc1_:int = §7"q§.length - 1;
         while(_loc1_ >= 0)
         {
            if(§7"q§[_loc1_] is §&$§ || §7"q§[_loc1_] is §["0§)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
   }
}
