package §?!2§
{
   import §!r§.§&$§;
   import §"§.§%§;
   import §"§.§0F§;
   import §"§.§;!E§;
   import §"§.§<U§;
   import §9"U§.§[!b§;
   import §?"6§.§`!^§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.events.MouseEvent;
   import §null §.§5#§;
   
   public class §+!F§ extends §`!^§
   {
       
      
      public function §+!F§(param1:§;!E§, param2:§5#§)
      {
         super(param1,param2);
      }
      
      override protected function get isAllowedToWin() : Boolean
      {
         var _loc1_:§<U§ = §+!E§.slingshot as §<U§;
         return !this.§`!V§ && (_loc1_ && !_loc1_.§8c§);
      }
      
      override protected function isSpecialUsed() : Boolean
      {
         var _loc1_:§&$§ = this.§#"!§();
         if(_loc1_)
         {
            return true;
         }
         return super.isSpecialUsed();
      }
      
      private function §#"!§() : §&$§
      {
         var _loc2_:§&$§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < §+!E§.objects.objectCount)
         {
            _loc2_ = §+!E§.objects.getObject(_loc1_) as §&$§;
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
         if(!§0F§(§+!E§).§"Y§(§[!b§.§9!m§))
         {
            return 0;
         }
         var _loc1_:Number = §'""§.getLevelForId(§'""§.currentLevel).getEagleScore(§+!E§.levelItemManager,§+!E§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         §=Q§.§!#,§();
         §=Q§.§`!A§("level_complete_episode_iv","5");
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         if(§'!6§ != §+"j§)
         {
            §=Q§.§!#,§();
            §=Q§.§`!A§("level_fail_episode_iv","5");
         }
      }
      
      override public function isGameOverBlocked() : Boolean
      {
         var _loc1_:Boolean = super.isGameOverBlocked();
         _loc1_ = _loc1_ || §0F§(§+!E§).§9N§.§]!§();
         return Boolean(_loc1_ || this.§`!V§);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = §throw§(§4"#§.singleton).§?"T§.hitTestPoint(param1.stageX,param1.stageY);
         if(param1.delta != 0 && !_loc2_)
         {
            §>"u§(param1.delta > 0);
         }
      }
      
      protected function get §`!V§() : Boolean
      {
         var _loc1_:§%#7§ = §<!J§.§=!%§.slingshot;
         return _loc1_.§&"P§.length > 0 && _loc1_.§&"P§[_loc1_.§#!A§].levelItem.itemName == §&$§.§5!L§;
      }
      
      public function get §,i§() : Boolean
      {
         if(§<!J§.§=!%§.levelObjects.activeObject)
         {
            return §<!J§.§=!%§.levelObjects.activeObject.itemName == §&$§.§5!L§;
         }
         return false;
      }
   }
}
