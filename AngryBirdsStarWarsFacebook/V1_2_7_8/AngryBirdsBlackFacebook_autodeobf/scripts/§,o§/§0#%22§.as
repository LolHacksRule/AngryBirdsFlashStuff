package §,o§
{
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §5!q§.§&§;
   import §5!q§.§-R§;
   import §5!q§.§3"X§;
   import §5!q§.§6"@§;
   import §6"R§.§7#"§;
   import §]!=§.§;"I§;
   import §`"8§.§#f§;
   import com.angrybirds.§;!e§;
   import flash.events.MouseEvent;
   
   public class §0#"§ extends §;"I§
   {
       
      
      public function §0#"§(param1:§3"X§, param2:§7!m§)
      {
         super(param1,param2);
      }
      
      override protected function get isAllowedToWin() : Boolean
      {
         var _loc1_:§&#3§ = §]""§.slingshot as §&#3§;
         return !this.§-K§ && (_loc1_ && !_loc1_.§=!N§);
      }
      
      override protected function isSpecialUsed() : Boolean
      {
         var _loc1_:§7#"§ = this.§[&§();
         if(_loc1_)
         {
            return true;
         }
         return super.isSpecialUsed();
      }
      
      private function §[&§() : §7#"§
      {
         var _loc2_:§7#"§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < §]""§.objects.objectCount)
         {
            _loc2_ = §]""§.objects.getObject(_loc1_) as §7#"§;
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
         if(!§6"@§(§]""§).§`#§(§#f§.§"X§))
         {
            return 0;
         }
         var _loc1_:Number = § !p§.getLevelForId(§ !p§.currentLevel).getEagleScore(§]""§.levelItemManager,§]""§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §@§.§+A§();
         §@§.§=Y§("level_complete_episode_iv","5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         if(§9!J§ != § #§)
         {
            §@§.§+A§();
            §@§.§=Y§("level_fail_episode_iv","5");
         }
      }
      
      override public function isGameOverBlocked() : Boolean
      {
         var _loc1_:Boolean = super.isGameOverBlocked();
         _loc1_ = _loc1_ || §6"@§(§]""§).§2#7§.§4"9§();
         return Boolean(_loc1_ || this.§-K§);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = §&"1§(§;"@§.singleton).§`!u§.hitTestPoint(param1.stageX,param1.stageY);
         if(param1.delta != 0 && !_loc2_)
         {
            §`T§(param1.delta > 0);
         }
      }
      
      protected function get §-K§() : Boolean
      {
         var _loc1_:§-R§ = §;!e§.§<x§.slingshot;
         return _loc1_.§1#!§.length > 0 && _loc1_.§1#!§[_loc1_.§%r§].levelItem.itemName == §7#"§.§^!3§;
      }
      
      public function get §>#$§() : Boolean
      {
         if(§;!e§.§<x§.levelObjects.activeObject)
         {
            return §;!e§.§<x§.levelObjects.activeObject.itemName == §7#"§.§^!3§;
         }
         return false;
      }
   }
}
