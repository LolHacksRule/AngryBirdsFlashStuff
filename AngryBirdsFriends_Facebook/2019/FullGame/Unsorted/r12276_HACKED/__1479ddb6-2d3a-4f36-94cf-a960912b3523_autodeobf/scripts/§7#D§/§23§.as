package §7#D§
{
   import § null§.§5"<§;
   import § null§.§@§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §23§ extends Sprite
   {
      
      private static const §`!m§:Number = 1;
      
      private static const §3"b§:Number = 1.3;
      
      private static const §2"D§:Number = 0.3;
      
      private static const §?!O§:int = 3;
       
      
      private var mTween:§@#5§;
      
      private var §7I§:MovieClip;
      
      private var §%F§:int = 3;
      
      public function §23§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §`!m§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§7I§ = new §=@§.§9!x§("DailyRewardItem")();
         addChild(this.§7I§);
         this.§7I§.x = -this.§7I§.width / 2;
         this.§7I§.y = -this.§7I§.height / 2;
         if(param1.day < param2)
         {
            this.§7I§.mcBack.gotoAndStop(1);
            this.§7I§.mcReward.visible = true;
            this.§7I§.mcToday.visible = false;
            this.§7I§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§7I§.mcBack.gotoAndStop(2);
            this.§7I§.mcReward.visible = true;
            this.§7I§.mcToday.visible = true;
            this.§7I§.mcClaimed.visible = false;
            this.§&"E§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§7I§.mcBack.gotoAndStop(6);
            this.§7I§.mcReward.visible = true;
            this.§7I§.mcToday.visible = true;
            this.§7I§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§7I§.mcBack.gotoAndStop(5);
            this.§7I§.mcReward.visible = true;
            this.§7I§.mcToday.visible = false;
            this.§7I§.mcClaimed.visible = false;
         }
         else
         {
            this.§7I§.mcBack.gotoAndStop(4);
            this.§7I§.mcReward.visible = true;
            this.§7I§.mcToday.visible = false;
            this.§7I§.mcClaimed.visible = false;
         }
         this.§7I§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§7I§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function §&"E§(param1:Boolean = false) : void
      {
         --this.§%F§;
         if(this.mTween || param1)
         {
            this.mTween = §5"<§.§3"1§.§3#§(this,{
               "scaleX":§3"b§,
               "scaleY":§3"b§
            },null,§2"D§,§5"<§.§&"1§);
            this.mTween.onComplete = this.§+! §;
            this.mTween.play();
         }
      }
      
      private function §+! §() : void
      {
         if(this.mTween)
         {
            this.mTween = §5"<§.§3"1§.§3#§(this,{
               "scaleX":§`!m§,
               "scaleY":§`!m§
            },null,§2"D§,§5"<§.§[u§);
            if(this.§%F§ > 0)
            {
               this.mTween.onComplete = this.§&"E§;
            }
            this.mTween.play();
         }
      }
   }
}
