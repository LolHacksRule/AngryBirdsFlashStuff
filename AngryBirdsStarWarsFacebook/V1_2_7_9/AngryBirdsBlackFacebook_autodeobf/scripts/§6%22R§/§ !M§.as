package §6"R§
{
   import §,#+§.§="l§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §5!q§.§3"X§;
   import §5!q§.§[E§;
   import §>P§.§&"§;
   import §>P§.§=!,§;
   import §@b§.§-";§;
   import §`"8§.§-!w§;
   
   public class § !M§ extends §,"z§
   {
       
      
      public function § !M§(param1:§3"X§, param2:§="l§, param3:Sprite, param4:String, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §7#%§(param1:§[E§, param2:§%!0§) : void
      {
         var _loc3_:Sprite = new Sprite();
         §[#5§.addChild(_loc3_);
         var _loc4_:§]"-§ = new §]"-§(_loc3_,§]""§.mLevelEngine.mWorld,param2);
         §,z§.push(_loc4_);
      }
      
      private function §5"8§(param1:String) : String
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
         return param1;
      }
      
      override protected function createObjectInstance(param1:§^d§, param2:Sprite, param3:Boolean = true, param4:Number = 1.0) : §!z§
      {
         if(§]""§.levelItemManager.getItem(param1.type) is §&"§)
         {
            param1.type = this.§5"8§(param1.type);
         }
         return super.createObjectInstance(param1,param2,param3,param4);
      }
      
      override protected function createObjectBlockSpace(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number) : §6"1§
      {
         switch(param4.itemName)
         {
            case "BLOCK_TOURNAMENT_EMPEROR_HOLOGRAM":
               return new §>"y§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TORPEDO_LAUNCHER":
               return new §+"w§(param1,param2,param3,param4,param5,param6);
            case "BLOCK_TOURNAMENT_TURBINE_4X2":
            case "BLOCK_TOURNAMENT_TURBINE_2X1":
               return new §&I§(param1,param2,param3,param4,param5,param6);
            default:
               return super.createObjectBlockSpace(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §^H§(param1:§[E§, param2:§%!0§, param3:Number) : void
      {
         var _loc4_:Sprite = new Sprite();
         §=h§.addChild(_loc4_);
         var _loc5_:§6M§ = new §6M§(_loc4_,§]""§.mLevelEngine.mWorld,param2,param3);
         §,z§.push(_loc5_);
      }
      
      public function §6>§() : Boolean
      {
         var _loc1_:int = §,z§.length - 1;
         while(_loc1_ >= 0)
         {
            if(§,z§[_loc1_] is §7#"§ || §,z§[_loc1_] is §^"!§)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
   }
}
