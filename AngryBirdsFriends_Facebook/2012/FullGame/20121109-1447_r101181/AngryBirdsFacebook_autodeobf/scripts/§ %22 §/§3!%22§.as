package § " §
{
   import §!"=§.§8S§;
   import §!K§.Item;
   import §!K§.§]q§;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import §]!A§.;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §3!"§ extends §3P§
   {
      
      private static const §2f§:§+!t§ = new §+!t§(15,40);
      
      private static const §[m§:§+!t§ = new §+!t§(115,131);
      
      private static const §'Q§:§+!t§ = new §+!t§(132,145);
      
      private static const §@!B§:Array = [§2f§,§[m§,§'Q§];
      
      private static const §,!9§:Array = [§2f§,§'Q§];
      
      private static var §9l§:§@Y§;
       
      
      private var §%">§:§+!t§;
      
      private var §;O§:§8S§;
      
      private var §&"B§:int;
      
      private var §'!q§:Timer;
      
      private var §@"3§:int = 30;
      
      private var §0! §:Number = 0;
      
      private var §+!1§:Number = 0;
      
      private var §?!g§:Number = 40.0;
      
      private var §@!A§:Array;
      
      private var §;!X§:Bitmap;
      
      public function §3!"§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§]q§ = null;
         this.§@!A§ = [];
         var _loc4_:Array = §3!D§.§!!@§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§[C§ == "CategoryBirds")
            {
               _loc6_ = §=!F§.§;"§.characters.§4"3§(_loc5_.§;!Y§);
               this.§;O§ = new §8S§(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§'!q§)
         {
            this.§'!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
            this.§'!q§.stop();
         }
         for each(_loc1_ in this.§@!A§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§@!A§ = [];
         if(§62§)
         {
            while(§62§.numChildren > 0)
            {
               §62§.removeChildAt(0);
            }
         }
         §62§ = null;
         if(this.§;!X§)
         {
            this.§;!X§ = null;
         }
      }
      
      public function §;Z§(param1:§+!t§) : void
      {
         this.§%">§ = param1;
         this.§&"B§ = param1.start;
         §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §'"=§.render(§@!0§,this.renderAvatar,§#D§(),§&%§,null,null,this.§@"3§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§0! §;
         this.§+!1§ += _loc2_;
         if(this.§+!1§ > this.§?!g§)
         {
            this.§&"B§ += 1;
            this.§+!1§ = 0;
         }
         if(this.§@!A§[this.§&"B§] == null)
         {
            §'"=§.render(§@!0§,this.renderAvatar,§#D§(),§&%§,this.§&"B§,this.§;O§,this.§@"3§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§@!A§[this.§&"B§]));
         }
         if(this.§&"B§ >= this.§%">§.end)
         {
            §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§0! § = getTimer();
      }
      
      public function §^!6§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§'!q§)
         {
            this.§'!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
            this.§'!q§.stop();
         }
         this.§'!q§ = new Timer(3000 + Math.random() * 1000,1);
         this.§'!q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
         this.§'!q§.start();
      }
      
      private function §'t§(param1:TimerEvent) : void
      {
         this.§@!S§();
         this.§^!6§();
      }
      
      public function §@!S§() : void
      {
         var _loc1_:Array = §@!B§;
         if(§@!0§.indexOf("M50003") != -1 || §@!0§.indexOf("M50006") != -1 && §@!0§.indexOf("C10005") != -1)
         {
            _loc1_ = §,!9§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§;Z§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         if(§62§ == null)
         {
            §62§ = new Sprite();
         }
         if(§62§.parent != this)
         {
            addChild(§62§);
         }
         while(§62§.numChildren > 0)
         {
            §62§.removeChildAt(0);
         }
         this.§;!X§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §62§.addChild(this.§;!X§);
         this.§;!X§.x = -10;
         this.§;!X§.y = -10 - this.§@"3§;
         if(this.§@!A§[this.§&"B§] == null)
         {
            this.§@!A§[this.§&"B§] = param1;
         }
      }
   }
}
