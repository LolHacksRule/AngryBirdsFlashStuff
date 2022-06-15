package §@"Z§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3#9§ extends Sprite
   {
      
      private static const §2Y§:Number = 1;
      
      private static const §1"E§:Number = 1.3;
      
      private static const §-"+§:Number = 0.3;
      
      private static const § !a§:int = 3;
       
      
      private var §-c§:§+,§;
      
      private var §extends§:MovieClip;
      
      private var §1"c§:int = 3;
      
      public function §3#9§(param1:Object, param2:int, param3:int)
      {
         super();
         this.init(param1,param2,param3);
         scaleX = scaleY = §2Y§;
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         this.§extends§ = new §@`§.§4!i§("DailyRewardItem")();
         addChild(this.§extends§);
         this.§extends§.x = -this.§extends§.width / 2;
         this.§extends§.y = -this.§extends§.height / 2;
         if(param1.day < param2)
         {
            this.§extends§.mcBack.gotoAndStop(1);
            this.§extends§.mcReward.visible = true;
            this.§extends§.mcToday.visible = false;
            this.§extends§.mcClaimed.visible = true;
         }
         else if(param1.day == param2 && param2 < 5)
         {
            this.§extends§.mcBack.gotoAndStop(2);
            this.§extends§.mcReward.visible = true;
            this.§extends§.mcToday.visible = true;
            this.§extends§.mcClaimed.visible = false;
            this.§ "§(true);
         }
         else if(param1.day == param2 && param2 == 5)
         {
            this.§extends§.mcBack.gotoAndStop(6);
            this.§extends§.mcReward.visible = true;
            this.§extends§.mcToday.visible = true;
            this.§extends§.mcClaimed.visible = false;
         }
         else if(param1.day == 5)
         {
            this.§extends§.mcBack.gotoAndStop(5);
            this.§extends§.mcReward.visible = true;
            this.§extends§.mcToday.visible = false;
            this.§extends§.mcClaimed.visible = false;
         }
         else
         {
            this.§extends§.mcBack.gotoAndStop(4);
            this.§extends§.mcReward.visible = true;
            this.§extends§.mcToday.visible = false;
            this.§extends§.mcClaimed.visible = false;
         }
         this.§extends§.mcReward.txtAmount.text = "x " + param1.quantity;
         this.§extends§.mcReward.gotoAndStop(param3 + 1);
      }
      
      public function dispose() : void
      {
         if(this.§-c§)
         {
            this.§-c§.stop();
            this.§-c§ = null;
         }
      }
      
      private function § "§(param1:Boolean = false) : void
      {
         --this.§1"c§;
         if(this.§-c§ || param1)
         {
            this.§-c§ = §""Z§.§3!]§.§5"0§(this,{
               "scaleX":§1"E§,
               "scaleY":§1"E§
            },null,§-"+§,§""Z§.§0"2§);
            this.§-c§.onComplete = this.§]!P§;
            this.§-c§.play();
         }
      }
      
      private function §]!P§() : void
      {
         if(this.§-c§)
         {
            this.§-c§ = §""Z§.§3!]§.§5"0§(this,{
               "scaleX":§2Y§,
               "scaleY":§2Y§
            },null,§-"+§,§""Z§.§8O§);
            if(this.§1"c§ > 0)
            {
               this.§-c§.onComplete = this.§ "§;
            }
            this.§-c§.play();
         }
      }
   }
}
