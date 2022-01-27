package §6!M§
{
   import §7!C§.§8!w§;
   
   public class §1",§ extends §3Y§
   {
      
      public static const § !r§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §1",§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §8!w§.§5!V§.animationManager.§+q§(§ !r§,[["1"],[§ !r§]]);
         super.initAnimations();
      }
      
      override public function getItem(param1:String) : §<!r§
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
         var _loc2_:§<!r§ = §<!d§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      override protected function createLevelItemParticle(param1:Object) : §[]§
      {
         var _loc2_:§[]§ = null;
         return new §6!7§(param1,§<!r§.§]$§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,0);
      }
      
      override protected function createLevelItemBird(param1:Object) : §9`§
      {
         var _loc2_:§9`§ = null;
         if(param1.definition == "TazosBird")
         {
            _loc2_ = new §?"H§(param1,§<!r§.§4!t§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§0!9§),false,§<G§);
         }
         else
         {
            _loc2_ = new §9`§(param1,§<!r§.§4!t§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§0!9§),false,§<G§);
         }
         return _loc2_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §%h§
      {
         var _loc4_:§%h§ = null;
         var _loc3_:String = param1.material;
         return new §@""§(param1,param2,!!_loc3_ ? §3F§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§'O§),false,§<G§);
      }
      
      override protected function createLevelItemPig(param1:Object) : §74§
      {
         return new §74§(param1,§<!r§.§`";§,!!param1.material ? §3F§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8a§),false,§<G§);
      }
   }
}
