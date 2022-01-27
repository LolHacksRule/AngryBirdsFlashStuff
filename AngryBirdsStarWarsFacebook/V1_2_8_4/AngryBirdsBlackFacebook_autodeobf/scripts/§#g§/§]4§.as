package §#g§
{
   import com.angrybirds.§<!J§;
   
   public class §]4§ extends §>"-§
   {
      
      public static const §3M§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §]4§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §<!J§.§=!%§.animationManager.§&!d§(§3M§,[§3M§]);
         super.initAnimations();
      }
      
      override protected function createLevelItemPig(param1:Object) : §]_§
      {
         return new § "A§(param1,§["%§.§7##§,!!param1.material ? § "%§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!W§),false,§?$§);
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §[!F§
      {
         var _loc3_:String = param1.material;
         return new §5!M§(param1,param2,!!_loc3_ ? § "%§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8;§),false,§?$§);
      }
      
      override protected function createLevelItemBird(param1:Object) : §11§
      {
         return new §11§(param1,§["%§.§8!w§,!!param1.material ? § "%§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;![§),false,§?$§);
      }
   }
}
