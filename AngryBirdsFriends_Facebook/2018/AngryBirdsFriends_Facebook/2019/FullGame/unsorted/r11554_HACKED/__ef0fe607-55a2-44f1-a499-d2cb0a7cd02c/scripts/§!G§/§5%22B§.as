package §!G§
{
   import §6§.§'#n§;
   import §6§.§]%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5"B§ extends Sprite
   {
      
      private static const §2"@§:Number = 1;
      
      private static const §&S§:Number = 1.3;
      
      private static const §>#F§:Number = 0.3;
      
      private static const §[#§:int = 3;
       
      
      private var mTween:§]%§;
      
      private var §=;§:MovieClip;
      
      private var §0!L§:int = 3;
      
      public function §5"B§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §2"@§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§=;§ = new §2"O§.§`>§("DailyRewardItem")();
         addChild(this.§=;§);
         this.§=;§.x = -this.§=;§.width / 2;
         this.§=;§.y = -this.§=;§.height / 2;
         if(param1.day < param2)
         {
            this.§=;§.mcBack.gotoAndStop(1);
            this.§=;§.mcReward.visible = true;
            this.§=;§.mcToday.visible = false;
            this.§=;§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§=;§.mcBack.gotoAndStop(2);
            this.§=;§.mcReward.visible = true;
            this.§=;§.mcToday.visible = true;
            this.§=;§.mcClaimed.visible = false;
            this.§7"T§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§=;§.mcBack.gotoAndStop(6);
            this.§=;§.mcReward.visible = true;
            this.§=;§.mcToday.visible = true;
            this.§=;§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§=;§.mcBack.gotoAndStop(5);
            this.§=;§.mcReward.visible = true;
            this.§=;§.mcToday.visible = false;
            this.§=;§.mcClaimed.visible = false;
         }
         else
         {
            this.§=;§.mcBack.gotoAndStop(4);
            this.§=;§.mcReward.visible = true;
            this.§=;§.mcToday.visible = false;
            this.§=;§.mcClaimed.visible = false;
         }
         this.§=;§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§=;§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function §7"T§(param1:Boolean = false) : void
      {
         --this.§0!L§;
         if(this.mTween || param1)
         {
            this.mTween = §'#n§.§?q§.§9!N§(this,{
               "scaleX":§&S§,
               "scaleY":§&S§
            },null,§>#F§,§'#n§.§^!k§);
            this.mTween.onComplete = this.§'!7§;
            this.mTween.play();
         }
      }
      
      private function §'!7§() : void
      {
         if(this.mTween)
         {
            this.mTween = §'#n§.§?q§.§9!N§(this,{
               "scaleX":§2"@§,
               "scaleY":§2"@§
            },null,§>#F§,§'#n§.§8"W§);
            if(this.§0!L§ > 0)
            {
               this.mTween.onComplete = this.§7"T§;
            }
            this.mTween.play();
         }
      }
   }
}
