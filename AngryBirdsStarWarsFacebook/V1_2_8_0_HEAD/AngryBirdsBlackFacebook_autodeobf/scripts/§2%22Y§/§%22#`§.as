package §2"Y§
{
   import com.angrybirds.§,!q§;
   
   public class §"#`§ extends §>"X§
   {
      
      public static const §[c§:String = "INGAME_TEXTURE_COMMON";
       
      
      public function §"#`§()
      {
         super();
      }
      
      override public function initAnimations() : void
      {
         §,!q§.§9!,§.animationManager.§%#M§(§[c§,[§[c§]);
         super.initAnimations();
      }
      
      override protected function createLevelItemPig(param1:Object) : §%#@§
      {
         return new §="p§(param1,§"t§.§5s§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§'!Y§),false,§>"Q§);
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §["$§
      {
         var _loc3_:String = param1.material;
         return new §8!D§(param1,param2,!!_loc3_ ? §-#J§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8!S§),false,§>"Q§);
      }
      
      override protected function createLevelItemBird(param1:Object) : §=+§
      {
         return new §=+§(param1,§"t§.§&#F§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§+L§),false,§>"Q§);
      }
   }
}
