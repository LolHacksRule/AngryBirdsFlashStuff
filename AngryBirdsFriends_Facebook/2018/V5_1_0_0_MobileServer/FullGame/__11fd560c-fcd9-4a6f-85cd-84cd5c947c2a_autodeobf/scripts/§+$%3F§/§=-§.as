package §+$?§
{
   import §-!T§.§6#g§;
   import §-!T§.Item;
   import §-"V§.§^#y§;
   import §;#D§.§3#U§;
   import §=A§.§[`§;
   import §`!N§.Avatar;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §=-§ extends §="@§
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
      
      private var §,#`§:Timer;
      
      private var §@#p§:int = 30;
      
      private var §"$8§:Number = 0;
      
      private var §<#m§:Number = 0;
      
      private var §88§:Number = 40.0;
      
      private var §7I§:Array;
      
      private var §!l§:Bitmap;
      
      public function §=-§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§6#g§ = null;
         this.§7I§ = [];
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
         var _loc1_:BitmapData = null;
         §3#U§.§9#^§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§,#`§)
         {
            this.§,#`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§^!`§);
            this.§,#`§.stop();
         }
         for each(_loc1_ in this.§7I§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§7I§ = [];
         if(§ g§)
         {
            while(§ g§.numChildren > 0)
            {
               § g§.removeChildAt(0);
            }
         }
         § g§ = null;
         if(this.§!l§)
         {
            this.§!l§ = null;
         }
      }
      
      public function §<"F§(param1:§"!%§) : void
      {
         this.§-!G§ = param1;
         this.§8!J§ = param1.start;
         §3#U§.§9#^§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §[#Y§.render(§["S§,this.renderAvatar,§"u§(),§#+§,null,null,this.§@#p§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§"$8§;
         this.§<#m§ += _loc2_;
         if(this.§<#m§ > this.§88§)
         {
            this.§8!J§ += 1;
            this.§<#m§ = 0;
         }
         if(this.§7I§[this.§8!J§] == null)
         {
            §[#Y§.render(§["S§,this.renderAvatar,§"u§(),§#+§,this.§8!J§,this.§^#s§,this.§@#p§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§7I§[this.§8!J§]),null);
         }
         if(this.§8!J§ >= this.§-!G§.end)
         {
            §3#U§.§9#^§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
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
         this.§,#`§ = new Timer(3000 + Math.random() * 1000,1);
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
         this.§!l§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         § g§.addChild(this.§!l§);
         this.§!l§.x = -10;
         this.§!l§.y = -10 - this.§@#p§;
         if(this.§7I§[this.§8!J§] == null)
         {
            this.§7I§[this.§8!J§] = param1;
         }
      }
   }
}
