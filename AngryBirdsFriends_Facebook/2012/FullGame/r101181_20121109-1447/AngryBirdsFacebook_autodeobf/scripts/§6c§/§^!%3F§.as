package §6c§
{
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^!?§ extends Sprite
   {
      
      private static const §=!Y§:Number = 1;
      
      private static const §7"0§:Number = 1.3;
      
      private static const §5!O§:Number = 0.3;
      
      private static const §"I§:int = 3;
       
      
      private var §]!2§:§"m§;
      
      private var §&"$§:MovieClip;
      
      private var §-!>§:int = 3;
      
      public function §^!?§(param1:Object, param2:int)
      {
         super();
         this.init(param1,param2);
         scaleX = scaleY = §=!Y§;
      }
      
      private function init(param1:Object, param2:int) : void
      {
         this.§&"$§ = new §8B§.§6"C§("DailyRewardItem")();
         addChild(this.§&"$§);
         this.§&"$§.x = -this.§&"$§.width / 2;
         this.§&"$§.y = -this.§&"$§.height / 2;
         if(param1.day < param2)
         {
            this.§&"$§.mcBack.gotoAndStop(1);
            this.§&"$§.mcReward.visible = true;
            this.§&"$§.mcToday.visible = false;
            this.§&"$§.mcClaimed.visible = true;
         }
         else if(param1.day == param2)
         {
            this.§&"$§.mcBack.gotoAndStop(2);
            this.§&"$§.mcReward.visible = true;
            this.§&"$§.mcToday.visible = true;
            this.§&"$§.mcClaimed.visible = false;
            this.§`9§(true);
         }
         else if(param1.day == param2 + 1)
         {
            this.§&"$§.mcBack.gotoAndStop(3);
            this.§&"$§.mcReward.visible = true;
            this.§&"$§.mcToday.visible = false;
            this.§&"$§.mcClaimed.visible = false;
         }
         else
         {
            this.§&"$§.mcBack.gotoAndStop(4);
            this.§&"$§.mcReward.visible = true;
            this.§&"$§.mcToday.visible = false;
            this.§&"$§.mcClaimed.visible = false;
         }
         this.§&"$§.mcReward.gotoAndStop(param1.quantity);
      }
      
      public function dispose() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.stop();
            this.§]!2§ = null;
         }
      }
      
      private function §`9§(param1:Boolean = false) : void
      {
         --this.§-!>§;
         if(this.§]!2§ || param1)
         {
            this.§]!2§ = §>!+§.§;"§.§^!K§(this,{
               "scaleX":§7"0§,
               "scaleY":§7"0§
            },null,§5!O§,§>!+§.§!!>§);
            this.§]!2§.onComplete = this.§#z§;
            this.§]!2§.play();
         }
      }
      
      private function §#z§() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§ = §>!+§.§;"§.§^!K§(this,{
               "scaleX":§=!Y§,
               "scaleY":§=!Y§
            },null,§5!O§,§>!+§.§'"'§);
            if(this.§-!>§ > 0)
            {
               this.§]!2§.onComplete = this.§`9§;
            }
            this.§]!2§.play();
         }
      }
   }
}
