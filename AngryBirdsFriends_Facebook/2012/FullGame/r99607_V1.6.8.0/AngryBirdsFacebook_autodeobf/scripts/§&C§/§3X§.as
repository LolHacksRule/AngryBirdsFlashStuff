package §&C§
{
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3X§ extends Sprite
   {
      
      private static const §]!h§:Number = 1;
      
      private static const §8C§:Number = 1.3;
      
      private static const §6!n§:Number = 0.3;
      
      private static const §3P§:int = 3;
       
      
      private var § 5§:§-!F§;
      
      private var §=3§:MovieClip;
      
      private var §<!E§:int = 3;
      
      public function §3X§(param1:Object, param2:int)
      {
         super();
         this.init(param1,param2);
         scaleX = scaleY = §]!h§;
      }
      
      private function init(param1:Object, param2:int) : void
      {
         this.§=3§ = new §#!J§.§1!Y§("DailyRewardItem")();
         addChild(this.§=3§);
         this.§=3§.x = -this.§=3§.width / 2;
         this.§=3§.y = -this.§=3§.height / 2;
         if(param1.day < param2)
         {
            this.§=3§.mcBack.gotoAndStop(1);
            this.§=3§.mcReward.visible = true;
            this.§=3§.mcToday.visible = false;
            this.§=3§.mcClaimed.visible = true;
         }
         else if(param1.day == param2)
         {
            this.§=3§.mcBack.gotoAndStop(2);
            this.§=3§.mcReward.visible = true;
            this.§=3§.mcToday.visible = true;
            this.§=3§.mcClaimed.visible = false;
            this.§%A§(true);
         }
         else if(param1.day == param2 + 1)
         {
            this.§=3§.mcBack.gotoAndStop(3);
            this.§=3§.mcReward.visible = true;
            this.§=3§.mcToday.visible = false;
            this.§=3§.mcClaimed.visible = false;
         }
         else
         {
            this.§=3§.mcBack.gotoAndStop(4);
            this.§=3§.mcReward.visible = true;
            this.§=3§.mcToday.visible = false;
            this.§=3§.mcClaimed.visible = false;
         }
         this.§=3§.mcReward.gotoAndStop(param1.quantity);
      }
      
      public function dispose() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.stop();
            this.§ 5§ = null;
         }
      }
      
      private function §%A§(param1:Boolean = false) : void
      {
         --this.§<!E§;
         if(this.§ 5§ || param1)
         {
            this.§ 5§ = §7!b§.§8c§.§4&§(this,{
               "scaleX":§8C§,
               "scaleY":§8C§
            },null,§6!n§,§7!b§.§!!h§);
            this.§ 5§.onComplete = this.§?1§;
            this.§ 5§.play();
         }
      }
      
      private function §?1§() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§ = §7!b§.§8c§.§4&§(this,{
               "scaleX":§]!h§,
               "scaleY":§]!h§
            },null,§6!n§,§7!b§.§-z§);
            if(this.§<!E§ > 0)
            {
               this.§ 5§.onComplete = this.§%A§;
            }
            this.§ 5§.play();
         }
      }
   }
}
