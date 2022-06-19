package §1o§
{
   import §+I§.§9!%§;
   import §,!F§.§@"B§;
   import §-"-§.§@!t§;
   import §8!-§.Item;
   import §8!-§.§["<§;
   import §["@§.§["%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §3"4§ extends §%"%§
   {
      
      private static const §`4§:§6"1§ = new §6"1§(15,40);
      
      private static const §'",§:§6"1§ = new §6"1§(115,131);
      
      private static const §`X§:§6"1§ = new §6"1§(132,145);
      
      private static const §9!J§:Array = [§`4§,§'",§,§`X§];
      
      private static const § !@§:Array = [§`4§,§`X§];
      
      private static var §!A§:§3v§;
       
      
      private var §[!'§:§6"1§;
      
      private var §@t§:§@"B§;
      
      private var §4!<§:int;
      
      private var §@"$§:Timer;
      
      private var §0,§:int = 30;
      
      private var § do§:Number = 0;
      
      private var §8!#§:Number = 0;
      
      private var §'-§:Number = 40.0;
      
      private var §^!N§:Array;
      
      private var §`!m§:Bitmap;
      
      public function §3"4§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§["<§ = null;
         this.§^!N§ = [];
         var _loc4_:Array = §["%§.§1!q§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§;F§ == "CategoryBirds")
            {
               _loc6_ = §@!t§.§8c§.characters.§!v§(_loc5_.§4W§);
               this.§@t§ = new §@"B§(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §9!%§.§ !W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§@"$§)
         {
            this.§@"$§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§#!I§);
            this.§@"$§.stop();
         }
         for each(_loc1_ in this.§^!N§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§^!N§ = [];
         if(§'!@§)
         {
            while(§'!@§.numChildren > 0)
            {
               §'!@§.removeChildAt(0);
            }
         }
         §'!@§ = null;
         if(this.§`!m§)
         {
            this.§`!m§ = null;
         }
      }
      
      public function §2I§(param1:§6"1§) : void
      {
         this.§[!'§ = param1;
         this.§4!<§ = param1.start;
         §9!%§.§ !W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §#!D§.render(§>!R§,this.renderAvatar,§#"=§(),§@E§,null,null,this.§0,§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§ do§;
         this.§8!#§ += _loc2_;
         if(this.§8!#§ > this.§'-§)
         {
            this.§4!<§ += 1;
            this.§8!#§ = 0;
         }
         if(this.§^!N§[this.§4!<§] == null)
         {
            §#!D§.render(§>!R§,this.renderAvatar,§#"=§(),§@E§,this.§4!<§,this.§@t§,this.§0,§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§^!N§[this.§4!<§]));
         }
         if(this.§4!<§ >= this.§[!'§.end)
         {
            §9!%§.§ !W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§ do§ = getTimer();
      }
      
      public function §,!1§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§@"$§)
         {
            this.§@"$§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§#!I§);
            this.§@"$§.stop();
         }
         this.§@"$§ = new Timer(3000 + Math.random() * 1000,1);
         this.§@"$§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§#!I§);
         this.§@"$§.start();
      }
      
      private function §#!I§(param1:TimerEvent) : void
      {
         this.§!"A§();
         this.§,!1§();
      }
      
      public function §!"A§() : void
      {
         var _loc1_:Array = §9!J§;
         if(§>!R§.indexOf("M50003") != -1 || §>!R§.indexOf("M50006") != -1 && §>!R§.indexOf("C10005") != -1)
         {
            _loc1_ = § !@§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§2I§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         if(§'!@§ == null)
         {
            §'!@§ = new Sprite();
         }
         if(§'!@§.parent != this)
         {
            addChild(§'!@§);
         }
         while(§'!@§.numChildren > 0)
         {
            §'!@§.removeChildAt(0);
         }
         this.§`!m§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §'!@§.addChild(this.§`!m§);
         this.§`!m§.x = -10;
         this.§`!m§.y = -10 - this.§0,§;
         if(this.§^!N§[this.§4!<§] == null)
         {
            this.§^!N§[this.§4!<§] = param1;
         }
      }
   }
}
