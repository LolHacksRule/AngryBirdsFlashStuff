package §"!&§
{
   import §,"&§.§9q§;
   
   public class §!"7§ extends §8"F§
   {
      
      public static const §%"=§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §!"7§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §9q§.§>!L§.animationManager.§["7§(§%"=§,[["1"],[§%"=§]]);
         super.initAnimations();
      }
      
      override public function getItem(param1:String) : §8X§
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
         var _loc2_:§8X§ = §1"0§[param1.toLowerCase()];
         if(_loc2_ == null)
         {
         }
         return _loc2_;
      }
      
      override protected function createLevelItemParticle(param1:Object) : §%F§
      {
         var _loc2_:§%F§ = null;
         return new §70§(param1,§8X§.§,"4§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,0);
      }
      
      override protected function createLevelItemBird(param1:Object) : §+W§
      {
         var _loc2_:§+W§ = null;
         if(param1.definition == "TazosBird")
         {
            _loc2_ = new §+g§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§),false,§9"3§);
         }
         else
         {
            _loc2_ = new §+W§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§),false,§9"3§);
         }
         return _loc2_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §`D§
      {
         var _loc4_:§`D§ = null;
         var _loc3_:String = param1.material;
         return new §"!#§(param1,param2,!!_loc3_ ? §]X§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§ -§),false,§9"3§);
      }
      
      override protected function createLevelItemPig(param1:Object) : §3",§
      {
         return new §3",§(param1,§8X§.§<g§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§1!$§),false,§9"3§);
      }
   }
}
