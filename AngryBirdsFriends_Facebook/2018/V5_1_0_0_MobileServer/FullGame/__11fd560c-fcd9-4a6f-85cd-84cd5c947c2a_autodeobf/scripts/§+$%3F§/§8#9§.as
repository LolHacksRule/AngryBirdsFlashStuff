package §+$?§
{
   import §-!T§.§6#g§;
   import §-!T§.Item;
   import §-"V§.§^#y§;
   import §=A§.§[`§;
   import §`!N§.Avatar;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §8#9§ extends §="@§
   {
      
      private static const §,Q§:§"!%§ = new §"!%§(15,40);
      
      private static const §;"G§:§"!%§ = new §"!%§(115,131);
      
      private static const §7=§:§"!%§ = new §"!%§(132,145);
      
      private static const §>#F§:Array = [§,Q§,§;"G§,§7=§];
      
      private static const §8!z§:Array = [§,Q§,§7=§];
      
      private static var §"!K§:§2!p§;
       
      
      private var §-!G§:§"!%§;
      
      private var §^#s§:Avatar;
      
      private var §8!J§:int;
      
      private var §-#>§:Timer;
      
      private var §,#`§:Timer;
      
      private var §@#p§:int = 30;
      
      private var §"$8§:Number = 0;
      
      private var §<#m§:Number = 0;
      
      private var §88§:Number = 40.0;
      
      public function §8#9§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§6#g§ = null;
         var _loc4_:Array = §[`§.§for §(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§=#s§ == "CategoryBirds")
            {
               _loc6_ = §^#y§.§6!§.characters.§0Z§(_loc5_.mId);
               this.§^#s§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.§,#`§)
         {
            this.§,#`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
            this.§,#`§.stop();
         }
         if(this.§-#>§)
         {
            this.§-#>§.removeEventListener(TimerEvent.TIMER,this.§7$0§);
            this.§-#>§.stop();
         }
         if(§ g§)
         {
            while(§ g§.numChildren > 0)
            {
               § g§.removeChildAt(0);
            }
         }
         § g§ = null;
      }
      
      public function §<"F§(param1:§"!%§) : void
      {
         this.§-!G§ = param1;
         this.§8!J§ = param1.start;
         if(this.§-#>§)
         {
            this.§-#>§.removeEventListener(TimerEvent.TIMER,this.§7$0§);
            this.§-#>§.stop();
         }
         this.§-#>§ = new Timer(0);
         this.§-#>§.addEventListener(TimerEvent.TIMER,this.§7$0§);
         this.§-#>§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §[#Y§.render(§["S§,this.renderAvatar,§"u§(),§#+§,null,null,this.§@#p§);
      }
      
      private function §7$0§(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§"$8§;
         this.§<#m§ += _loc2_;
         if(this.§<#m§ > this.§88§)
         {
            this.§8!J§ += 1;
            this.§<#m§ = 0;
            §[#Y§.render(§["S§,this.renderAvatar,§"u§(),§#+§,this.§8!J§,this.§^#s§,this.§@#p§);
         }
         if(this.§8!J§ >= this.§-!G§.end)
         {
            this.§-#>§.stop();
            this.§-#>§.removeEventListener(TimerEvent.TIMER,this.§7$0§);
         }
         this.§"$8§ = getTimer();
      }
      
      public function §7f§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§,#`§)
         {
            this.§,#`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
            this.§,#`§.stop();
         }
         this.§,#`§ = new Timer(5000 + Math.random() * 1000,1);
         this.§,#`§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
         this.§,#`§.start();
      }
      
      private function §^!`§(param1:TimerEvent) : void
      {
         this.§-!e§();
         this.§7f§();
      }
      
      public function §-!e§() : void
      {
         var _loc1_:Array = §>#F§;
         if(§["S§.indexOf("M50003") != -1 || §["S§.indexOf("M50006") != -1 && §["S§.indexOf("C10005") != -1 || §["S§.indexOf("M50010") != -1)
         {
            _loc1_ = §8!z§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§<"F§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§ g§ == null)
         {
            § g§ = new Sprite();
         }
         if(§ g§.parent != this)
         {
            addChild(§ g§);
         }
         while(§ g§.numChildren > 0)
         {
            § g§.removeChildAt(0);
         }
         § g§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
