package § "!§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §@!"§.§?l§;
   import §]!w§.§[!X§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]"@§ extends §2w§
   {
      
      private static const §<"Q§:§,"@§ = new §,"@§(15,40);
      
      private static const §%!=§:§,"@§ = new §,"@§(115,131);
      
      private static const §?!u§:§,"@§ = new §,"@§(132,145);
      
      private static const §1!T§:Array = [§<"Q§,§%!=§,§?!u§];
      
      private static const §#"6§:Array = [§<"Q§,§?!u§];
      
      private static var §["O§:§04§;
       
      
      private var §]^§:§,"@§;
      
      private var §1"A§:§[!X§;
      
      private var §#s§:int;
      
      private var §8w§:Timer;
      
      private var §<!,§:int = 30;
      
      private var §"G§:Number = 0;
      
      private var §+!6§:Number = 0;
      
      private var §2z§:Number = 40.0;
      
      private var §2'§:Array;
      
      private var §9!Q§:Bitmap;
      
      public function §]"@§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§0"H§ = null;
         this.§2'§ = [];
         var _loc4_:Array = §<D§.§'!^§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§;"V§ == "CategoryBirds")
            {
               _loc6_ = §]"1§.§&"5§.characters.§>"!§(_loc5_.§&N§);
               this.§1"A§ = new §[!X§(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§8w§)
         {
            this.§8w§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
            this.§8w§.stop();
         }
         for each(_loc1_ in this.§2'§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§2'§ = [];
         if(§9"W§)
         {
            while(§9"W§.numChildren > 0)
            {
               §9"W§.removeChildAt(0);
            }
         }
         §9"W§ = null;
         if(this.§9!Q§)
         {
            this.§9!Q§ = null;
         }
      }
      
      public function § I§(param1:§,"@§) : void
      {
         this.§]^§ = param1;
         this.§#s§ = param1.start;
         §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §6!w§.render(§+!Q§,this.renderAvatar,§ ^§(),§=U§,null,null,this.§<!,§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§"G§;
         this.§+!6§ += _loc2_;
         if(this.§+!6§ > this.§2z§)
         {
            this.§#s§ += 1;
            this.§+!6§ = 0;
         }
         if(this.§2'§[this.§#s§] == null)
         {
            §6!w§.render(§+!Q§,this.renderAvatar,§ ^§(),§=U§,this.§#s§,this.§1"A§,this.§<!,§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§2'§[this.§#s§]));
         }
         if(this.§#s§ >= this.§]^§.end)
         {
            §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§"G§ = getTimer();
      }
      
      public function § "Y§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§8w§)
         {
            this.§8w§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
            this.§8w§.stop();
         }
         this.§8w§ = new Timer(3000 + Math.random() * 1000,1);
         this.§8w§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
         this.§8w§.start();
      }
      
      private function § !§(param1:TimerEvent) : void
      {
         this.§ n§();
         this.§ "Y§();
      }
      
      public function § n§() : void
      {
         var _loc1_:Array = §1!T§;
         if(§+!Q§.indexOf("M50003") != -1 || §+!Q§.indexOf("M50006") != -1 && §+!Q§.indexOf("C10005") != -1 || §+!Q§.indexOf("M50010") != -1)
         {
            _loc1_ = §#"6§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§ I§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         if(§9"W§ == null)
         {
            §9"W§ = new Sprite();
         }
         if(§9"W§.parent != this)
         {
            addChild(§9"W§);
         }
         while(§9"W§.numChildren > 0)
         {
            §9"W§.removeChildAt(0);
         }
         this.§9!Q§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §9"W§.addChild(this.§9!Q§);
         this.§9!Q§.x = -10;
         this.§9!Q§.y = -10 - this.§<!,§;
         if(this.§2'§[this.§#s§] == null)
         {
            this.§2'§[this.§#s§] = param1;
         }
      }
   }
}
