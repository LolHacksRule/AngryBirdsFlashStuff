package §%$!§
{
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>#U§ extends Sprite
   {
      
      private static const §6"v§:Number = 1;
      
      private static const §0$'§:Number = 1.3;
      
      private static const §`"%§:Number = 0.3;
      
      private static const §0!Q§:int = 3;
       
      
      private var mTween:§7$C§;
      
      private var §7"j§:MovieClip;
      
      private var §@!X§:int = 3;
      
      public function §>#U§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §6"v§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§7"j§ = new §6$A§.§1!m§("DailyRewardItem")();
         addChild(this.§7"j§);
         this.§7"j§.x = -this.§7"j§.width / 2;
         this.§7"j§.y = -this.§7"j§.height / 2;
         if(param1.day < param2)
         {
            this.§7"j§.mcBack.gotoAndStop(1);
            this.§7"j§.mcReward.visible = true;
            this.§7"j§.mcToday.visible = false;
            this.§7"j§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§7"j§.mcBack.gotoAndStop(2);
            this.§7"j§.mcReward.visible = true;
            this.§7"j§.mcToday.visible = true;
            this.§7"j§.mcClaimed.visible = false;
            this.§@#^§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§7"j§.mcBack.gotoAndStop(6);
            this.§7"j§.mcReward.visible = true;
            this.§7"j§.mcToday.visible = true;
            this.§7"j§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§7"j§.mcBack.gotoAndStop(5);
            this.§7"j§.mcReward.visible = true;
            this.§7"j§.mcToday.visible = false;
            this.§7"j§.mcClaimed.visible = false;
         }
         else
         {
            this.§7"j§.mcBack.gotoAndStop(4);
            this.§7"j§.mcReward.visible = true;
            this.§7"j§.mcToday.visible = false;
            this.§7"j§.mcClaimed.visible = false;
         }
         this.§7"j§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§7"j§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function §@#^§(param1:Boolean = false) : void
      {
         --this.§@!X§;
         if(this.mTween || param1)
         {
            this.mTween = §"!&§.§`"H§.§1"W§(this,{
               "scaleX":§0$'§,
               "scaleY":§0$'§
            },null,§`"%§,§"!&§.§0!§);
            this.mTween.onComplete = this.§4"m§;
            this.mTween.play();
         }
      }
      
      private function §4"m§() : void
      {
         if(this.mTween)
         {
            this.mTween = §"!&§.§`"H§.§1"W§(this,{
               "scaleX":§6"v§,
               "scaleY":§6"v§
            },null,§`"%§,§"!&§.§^F§);
            if(this.§@!X§ > 0)
            {
               this.mTween.onComplete = this.§@#^§;
            }
            this.mTween.play();
         }
      }
   }
}
