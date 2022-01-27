package §>P§
{
   import com.angrybirds.§;!e§;
   
   public class §+"o§ extends §5"3§
   {
      
      public static const §2!8§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §+"o§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §;!e§.§<x§.animationManager.§`'§(§2!8§,[§2!8§]);
         super.initAnimations();
      }
      
      override protected function createLevelItemPig(param1:Object) : §&"T§
      {
         return new §@D§(param1,§=!,§.§="!§,!!param1.material ? §9",§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;D§),false,§+!r§);
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §=4§
      {
         var _loc3_:String = param1.material;
         return new §;+§(param1,param2,!!_loc3_ ? §9",§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§0"X§),false,§+!r§);
      }
      
      override protected function createLevelItemBird(param1:Object) : §&"§
      {
         return new §&"§(param1,§=!,§.§3!b§,!!param1.material ? §9",§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§+!W§),false,§+!r§);
      }
   }
}
