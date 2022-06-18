package §]"6§
{
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!a§ extends Sprite
   {
      
      private static const §4P§:Number = 1;
      
      private static const §`!T§:Number = 1.3;
      
      private static const §&;§:Number = 0.3;
      
      private static const §>"r§:int = 3;
       
      
      private var §>"n§:§-#C§;
      
      private var §,!'§:MovieClip;
      
      private var §`&§:int = 3;
      
      public function §!a§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §4P§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§,!'§ = new §+$#§.§["`§("DailyRewardItem")();
         addChild(this.§,!'§);
         this.§,!'§.x = -this.§,!'§.width / 2;
         this.§,!'§.y = -this.§,!'§.height / 2;
         if(param1.day < param2)
         {
            this.§,!'§.mcBack.gotoAndStop(1);
            this.§,!'§.mcReward.visible = true;
            this.§,!'§.mcToday.visible = false;
            this.§,!'§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§,!'§.mcBack.gotoAndStop(2);
            this.§,!'§.mcReward.visible = true;
            this.§,!'§.mcToday.visible = true;
            this.§,!'§.mcClaimed.visible = false;
            this.§1"s§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§,!'§.mcBack.gotoAndStop(6);
            this.§,!'§.mcReward.visible = true;
            this.§,!'§.mcToday.visible = true;
            this.§,!'§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§,!'§.mcBack.gotoAndStop(5);
            this.§,!'§.mcReward.visible = true;
            this.§,!'§.mcToday.visible = false;
            this.§,!'§.mcClaimed.visible = false;
         }
         else
         {
            this.§,!'§.mcBack.gotoAndStop(4);
            this.§,!'§.mcReward.visible = true;
            this.§,!'§.mcToday.visible = false;
            this.§,!'§.mcClaimed.visible = false;
         }
         this.§,!'§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§,!'§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.stop();
            this.§>"n§ = null;
         }
      }
      
      private function §1"s§(param1:Boolean = false) : void
      {
         --this.§`&§;
         if(this.§>"n§ || param1)
         {
            this.§>"n§ = §6"w§.§ "D§.§""3§(this,{
               "scaleX":§`!T§,
               "scaleY":§`!T§
            },null,§&;§,§6"w§.§2!i§);
            this.§>"n§.onComplete = this.§&"I§;
            this.§>"n§.play();
         }
      }
      
      private function §&"I§() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§ = §6"w§.§ "D§.§""3§(this,{
               "scaleX":§4P§,
               "scaleY":§4P§
            },null,§&;§,§6"w§.§1#h§);
            if(this.§`&§ > 0)
            {
               this.§>"n§.onComplete = this.§1"s§;
            }
            this.§>"n§.play();
         }
      }
   }
}
