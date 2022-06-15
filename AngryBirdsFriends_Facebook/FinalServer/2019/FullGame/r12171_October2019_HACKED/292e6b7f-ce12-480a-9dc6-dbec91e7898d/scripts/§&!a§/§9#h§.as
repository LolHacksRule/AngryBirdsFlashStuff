package §&!a§
{
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9#h§ extends Sprite
   {
      
      private static const §9d§:Number = 1;
      
      private static const §<$>§:Number = 1.3;
      
      private static const §,#B§:Number = 0.3;
      
      private static const §;!<§:int = 3;
       
      
      private var mTween:§@$-§;
      
      private var §#4§:MovieClip;
      
      private var §,J§:int = 3;
      
      public function §9#h§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §9d§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§#4§ = new §[a§.§8#k§("DailyRewardItem")();
         addChild(this.§#4§);
         this.§#4§.x = -this.§#4§.width / 2;
         this.§#4§.y = -this.§#4§.height / 2;
         if(param1.day < param2)
         {
            this.§#4§.mcBack.gotoAndStop(1);
            this.§#4§.mcReward.visible = true;
            this.§#4§.mcToday.visible = false;
            this.§#4§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§#4§.mcBack.gotoAndStop(2);
            this.§#4§.mcReward.visible = true;
            this.§#4§.mcToday.visible = true;
            this.§#4§.mcClaimed.visible = false;
            this.§6!Z§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§#4§.mcBack.gotoAndStop(6);
            this.§#4§.mcReward.visible = true;
            this.§#4§.mcToday.visible = true;
            this.§#4§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§#4§.mcBack.gotoAndStop(5);
            this.§#4§.mcReward.visible = true;
            this.§#4§.mcToday.visible = false;
            this.§#4§.mcClaimed.visible = false;
         }
         else
         {
            this.§#4§.mcBack.gotoAndStop(4);
            this.§#4§.mcReward.visible = true;
            this.§#4§.mcToday.visible = false;
            this.§#4§.mcClaimed.visible = false;
         }
         this.§#4§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§#4§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function §6!Z§(param1:Boolean = false) : void
      {
         --this.§,J§;
         if(this.mTween || param1)
         {
            this.mTween = §6"W§.§+!,§.§9!n§(this,{
               "scaleX":§<$>§,
               "scaleY":§<$>§
            },null,§,#B§,§6"W§.§9"$§);
            this.mTween.onComplete = this.§@[§;
            this.mTween.play();
         }
      }
      
      private function §@[§() : void
      {
         if(this.mTween)
         {
            this.mTween = §6"W§.§+!,§.§9!n§(this,{
               "scaleX":§9d§,
               "scaleY":§9d§
            },null,§,#B§,§6"W§.§%#T§);
            if(this.§,J§ > 0)
            {
               this.mTween.onComplete = this.§6!Z§;
            }
            this.mTween.play();
         }
      }
   }
}
