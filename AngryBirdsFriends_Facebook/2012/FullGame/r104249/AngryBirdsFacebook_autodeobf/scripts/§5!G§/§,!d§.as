package §5!g§
{
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,!d§ extends Sprite
   {
      
      private static const §!$§:Number = 1;
      
      private static const §?"E§:Number = 1.3;
      
      private static const §?D§:Number = 0.3;
      
      private static const §,!k§:int = 3;
       
      
      private var §7j§:§!"&§;
      
      private var §5q§:MovieClip;
      
      private var §1!W§:int = 3;
      
      public function §,!d§(param1:Object, param2:int)
      {
         super();
         this.init(param1,param2);
         scaleX = scaleY = §!$§;
      }
      
      private function init(param1:Object, param2:int) : void
      {
         this.§5q§ = new §>"5§.§6s§("DailyRewardItem")();
         addChild(this.§5q§);
         this.§5q§.x = -this.§5q§.width / 2;
         this.§5q§.y = -this.§5q§.height / 2;
         if(param1.day < param2)
         {
            this.§5q§.mcBack.gotoAndStop(1);
            this.§5q§.mcReward.visible = true;
            this.§5q§.mcToday.visible = false;
            this.§5q§.mcClaimed.visible = true;
         }
         else if(param1.day == param2)
         {
            this.§5q§.mcBack.gotoAndStop(2);
            this.§5q§.mcReward.visible = true;
            this.§5q§.mcToday.visible = true;
            this.§5q§.mcClaimed.visible = false;
            this.§3!Z§(true);
         }
         else if(param1.day == param2 + 1)
         {
            this.§5q§.mcBack.gotoAndStop(3);
            this.§5q§.mcReward.visible = true;
            this.§5q§.mcToday.visible = false;
            this.§5q§.mcClaimed.visible = false;
         }
         else
         {
            this.§5q§.mcBack.gotoAndStop(4);
            this.§5q§.mcReward.visible = true;
            this.§5q§.mcToday.visible = false;
            this.§5q§.mcClaimed.visible = false;
         }
         this.§5q§.mcReward.gotoAndStop(param1.quantity);
      }
      
      public function dispose() : void
      {
         if(this.§7j§)
         {
            this.§7j§.stop();
            this.§7j§ = null;
         }
      }
      
      private function §3!Z§(param1:Boolean = false) : void
      {
         --this.§1!W§;
         if(this.§7j§ || param1)
         {
            this.§7j§ = §&p§.§1[§.§7!3§(this,{
               "scaleX":§?"E§,
               "scaleY":§?"E§
            },null,§?D§,§&p§.§%"8§);
            this.§7j§.onComplete = this.§9A§;
            this.§7j§.play();
         }
      }
      
      private function §9A§() : void
      {
         if(this.§7j§)
         {
            this.§7j§ = §&p§.§1[§.§7!3§(this,{
               "scaleX":§!$§,
               "scaleY":§!$§
            },null,§?D§,§&p§.§@s§);
            if(this.§1!W§ > 0)
            {
               this.§7j§.onComplete = this.§3!Z§;
            }
            this.§7j§.play();
         }
      }
   }
}
