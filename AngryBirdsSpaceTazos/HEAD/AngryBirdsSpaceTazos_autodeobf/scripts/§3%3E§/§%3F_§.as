package §3>§
{
   import §>"2§.§8k§;
   
   public class §?_§ extends §[8§
   {
      
      public static const §^9§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §?_§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §8k§.§;!]§.animationManager.§6O§(§^9§,[["1"],[§^9§]]);
         super.initAnimations();
      }
      
      override public function getItem(param1:String) : §-"8§
      {
         switch(param1)
         {
            case "BIRD_BLUE":
               param1 = "SmallBlueBird";
               break;
            case "BIRD_BLACK":
               param1 = "BlackBird";
               break;
            case "BIRD_RED":
               param1 = "RedBird";
               break;
            case "BIRD_REDBIG":
               param1 = "RedBigBird";
         }
         var _loc2_:§-"8§ = §,[§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      override protected function createLevelItemParticle(param1:Object) : §7!%§
      {
         var _loc2_:§7!%§ = null;
         return new §`-§(param1,§-"8§.§ m§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,0);
      }
      
      override protected function createLevelItemBird(param1:Object) : §1!;§
      {
         var _loc2_:§1!;§ = null;
         if(param1.definition == "TazosBird")
         {
            _loc2_ = new §]z§(param1,§-"8§.§&!§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§>2§),false,§0"0§);
         }
         else
         {
            _loc2_ = new §1!;§(param1,§-"8§.§&!§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§>2§),false,§0"0§);
         }
         return _loc2_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §3n§
      {
         var _loc4_:§3n§ = null;
         var _loc3_:String = param1.material;
         return new §4"&§(param1,param2,!!_loc3_ ? §8!5§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§,"<§),false,§0"0§);
      }
      
      override protected function createLevelItemPig(param1:Object) : §34§
      {
         return new §34§(param1,§-"8§.§9!s§,!!param1.material ? §8!5§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!!?§),false,§0"0§);
      }
   }
}
