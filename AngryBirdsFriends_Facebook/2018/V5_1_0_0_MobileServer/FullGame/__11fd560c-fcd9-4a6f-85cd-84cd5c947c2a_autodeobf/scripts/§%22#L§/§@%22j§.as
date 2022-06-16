package §"#L§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@"j§ extends Sprite
   {
      
      private static const §-"9§:Number = 1;
      
      private static const §="r§:Number = 1.3;
      
      private static const §8z§:Number = 0.3;
      
      private static const §!"Q§:int = 3;
       
      
      private var mTween:§4[§;
      
      private var §with§:MovieClip;
      
      private var §22§:int = 3;
      
      public function §@"j§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §-"9§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§with§ = new §!"f§.§##?§("DailyRewardItem")();
         addChild(this.§with§);
         this.§with§.x = -this.§with§.width / 2;
         this.§with§.y = -this.§with§.height / 2;
         if(param1.day < param2)
         {
            this.§with§.mcBack.gotoAndStop(1);
            this.§with§.mcReward.visible = true;
            this.§with§.mcToday.visible = false;
            this.§with§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§with§.mcBack.gotoAndStop(2);
            this.§with§.mcReward.visible = true;
            this.§with§.mcToday.visible = true;
            this.§with§.mcClaimed.visible = false;
            this.§9T§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§with§.mcBack.gotoAndStop(6);
            this.§with§.mcReward.visible = true;
            this.§with§.mcToday.visible = true;
            this.§with§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§with§.mcBack.gotoAndStop(5);
            this.§with§.mcReward.visible = true;
            this.§with§.mcToday.visible = false;
            this.§with§.mcClaimed.visible = false;
         }
         else
         {
            this.§with§.mcBack.gotoAndStop(4);
            this.§with§.mcReward.visible = true;
            this.§with§.mcToday.visible = false;
            this.§with§.mcClaimed.visible = false;
         }
         this.§with§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§with§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
      }
      
      private function §9T§(param1:Boolean = false) : void
      {
         --this.§22§;
         if(this.mTween || param1)
         {
            this.mTween = §&"H§.§6!§.§6C§(this,{
               "scaleX":§="r§,
               "scaleY":§="r§
            },null,§8z§,§&"H§.§9"_§);
            this.mTween.onComplete = this.§<!T§;
            this.mTween.play();
         }
      }
      
      private function §<!T§() : void
      {
         if(this.mTween)
         {
            this.mTween = §&"H§.§6!§.§6C§(this,{
               "scaleX":§-"9§,
               "scaleY":§-"9§
            },null,§8z§,§&"H§.§=>§);
            if(this.§22§ > 0)
            {
               this.mTween.onComplete = this.§9T§;
            }
            this.mTween.play();
         }
      }
   }
}
