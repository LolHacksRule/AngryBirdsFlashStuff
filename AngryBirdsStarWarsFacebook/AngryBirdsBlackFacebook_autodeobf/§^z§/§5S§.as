package §^z§
{
   import §"a§.§6#!§;
   import §,"N§.§6"w§;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.events.MouseEvent;
   
   public class §5S§ extends §6#!§
   {
       
      
      public function §5S§(param1:§#_§, param2:§+"2§)
      {
         super(param1,param2);
      }
      
      override protected function get isAllowedToWin() : Boolean
      {
         var _loc1_:§>f§ = §2#G§.slingshot as §>f§;
         return !this.§`T§ && (_loc1_ && !_loc1_.§=#`§);
      }
      
      override protected function isSpecialUsed() : Boolean
      {
         var _loc1_:§=1§ = this.§&#+§();
         if(_loc1_)
         {
            return true;
         }
         return super.isSpecialUsed();
      }
      
      private function §&#+§() : §=1§
      {
         var _loc2_:§=1§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < §2#G§.objects.objectCount)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §=1§;
            if(_loc2_)
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      override public function getEagleScore() : int
      {
         if(!§8"f§(§2#G§).§8%§(§6"w§.§+!G§))
         {
            return 0;
         }
         var _loc1_:Number = §+!b§.getLevelForId(§+!b§.currentLevel).getEagleScore(§2#G§.levelItemManager,§2#G§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §?!r§.§0"#§();
         §?!r§.§"#_§("level_complete_episode_iv","5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         if(§[F§ != §7!T§)
         {
            §?!r§.§0"#§();
            §?!r§.§"#_§("level_fail_episode_iv","5");
         }
      }
      
      override public function isGameOverBlocked() : Boolean
      {
         var _loc1_:Boolean = super.isGameOverBlocked();
         _loc1_ = _loc1_ || §8"f§(§2#G§).§=j§.§6!4§();
         return Boolean(_loc1_ || this.§`T§);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = §@!m§(§4#;§.singleton).§""s§.hitTestPoint(param1.stageX,param1.stageY);
         if(param1.delta != 0 && !_loc2_)
         {
            §8"a§(param1.delta > 0);
         }
      }
      
      protected function get §`T§() : Boolean
      {
         var _loc1_:§;x§ = §,!q§.§9!,§.slingshot;
         return _loc1_.§,!?§.length > 0 && _loc1_.§,!?§[_loc1_.§72§].levelItem.itemName == §=1§.§+"§;
      }
      
      public function get §`"o§() : Boolean
      {
         if(§,!q§.§9!,§.levelObjects.activeObject)
         {
            return §,!q§.§9!,§.levelObjects.activeObject.itemName == §=1§.§+"§;
         }
         return false;
      }
   }
}
