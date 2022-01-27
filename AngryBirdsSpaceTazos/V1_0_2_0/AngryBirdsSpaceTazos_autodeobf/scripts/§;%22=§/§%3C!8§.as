package §;"=§
{
   import §+!9§.§;0§;
   
   public class §<!8§ extends §6!<§
   {
      
      public static const §6!X§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §<!8§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §;0§.§@!^§.animationManager.§]"§(§6!X§,[["1"],[§6!X§]]);
         super.initAnimations();
      }
      
      override public function getItem(param1:String) : §]"<§
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
         var _loc2_:§]"<§ = §="§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      override protected function createLevelItemParticle(param1:Object) : §return§
      {
         var _loc2_:§return§ = null;
         return new §9!f§(param1,§]"<§.§3!c§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,0);
      }
      
      override protected function createLevelItemBird(param1:Object) : §[e§
      {
         var _loc2_:§[e§ = null;
         if(param1.definition == "TazosBird")
         {
            _loc2_ = new §1!7§(param1,§]"<§.§[8§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§[P§),false,§5"<§);
         }
         else
         {
            _loc2_ = new §[e§(param1,§]"<§.§[8§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§[P§),false,§5"<§);
         }
         return _loc2_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §+C§
      {
         var _loc4_:§+C§ = null;
         var _loc3_:String = param1.material;
         return new §-!&§(param1,param2,!!_loc3_ ? §8!1§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§=-§),false,§5"<§);
      }
      
      override protected function createLevelItemPig(param1:Object) : §-'§
      {
         return new §-'§(param1,§]"<§.§?![§,!!param1.material ? §8!1§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§#">§),false,§5"<§);
      }
   }
}
