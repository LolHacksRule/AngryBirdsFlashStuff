package §&r§
{
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,"?§ extends Sprite
   {
      
      private static const §""N§:Number = 1;
      
      private static const §`"N§:Number = 1.3;
      
      private static const §3!-§:Number = 0.3;
      
      private static const §=J§:int = 3;
       
      
      private var § !5§:§6!K§;
      
      private var §[e§:MovieClip;
      
      private var §4"!§:int = 3;
      
      public function §,"?§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §""N§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§[e§ = new §?q§.§ q§("DailyRewardItem")();
         addChild(this.§[e§);
         this.§[e§.x = -this.§[e§.width / 2;
         this.§[e§.y = -this.§[e§.height / 2;
         if(param1.day < param2)
         {
            this.§[e§.mcBack.gotoAndStop(1);
            this.§[e§.mcReward.visible = true;
            this.§[e§.mcToday.visible = false;
            this.§[e§.mcClaimed.visible = true;
         }
         else if(param1.day == param2)
         {
            this.§[e§.mcBack.gotoAndStop(2);
            this.§[e§.mcReward.visible = true;
            this.§[e§.mcToday.visible = true;
            this.§[e§.mcClaimed.visible = false;
            this.§`"F§(true);
         }
         else if(param1.day == param2 + 1)
         {
            this.§[e§.mcBack.gotoAndStop(3);
            this.§[e§.mcReward.visible = true;
            this.§[e§.mcToday.visible = false;
            this.§[e§.mcClaimed.visible = false;
         }
         else if(param1.day == param2 + 4)
         {
            this.§[e§.mcBack.gotoAndStop(5);
            this.§[e§.mcReward.visible = true;
            this.§[e§.mcToday.visible = false;
            this.§[e§.mcClaimed.visible = false;
         }
         else
         {
            this.§[e§.mcBack.gotoAndStop(4);
            this.§[e§.mcReward.visible = true;
            this.§[e§.mcToday.visible = false;
            this.§[e§.mcClaimed.visible = false;
         }
         this.§[e§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§[e§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.stop();
            this.§ !5§ = null;
         }
      }
      
      private function §`"F§(param1:Boolean = false) : void
      {
         --this.§4"!§;
         if(this.§ !5§ || param1)
         {
            this.§ !5§ = §0W§.§&"5§.§]!r§(this,{
               "scaleX":§`"N§,
               "scaleY":§`"N§
            },null,§3!-§,§0W§.§4!E§);
            this.§ !5§.onComplete = this.§4"R§;
            this.§ !5§.play();
         }
      }
      
      private function §4"R§() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§ = §0W§.§&"5§.§]!r§(this,{
               "scaleX":§""N§,
               "scaleY":§""N§
            },null,§3!-§,§0W§.§]!t§);
            if(this.§4"!§ > 0)
            {
               this.§ !5§.onComplete = this.§`"F§;
            }
            this.§ !5§.play();
         }
      }
   }
}
