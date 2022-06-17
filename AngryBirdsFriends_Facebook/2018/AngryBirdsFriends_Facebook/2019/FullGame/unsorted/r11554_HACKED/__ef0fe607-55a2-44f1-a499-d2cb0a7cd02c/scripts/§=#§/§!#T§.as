package §=#§
{
   import § #s§.Item;
   import § #s§.§`c§;
   import §&!P§.§@#m§;
   import §2!X§.Avatar;
   import §=!2§.§%"T§;
   import §^$'§.§2$§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §!#T§ extends §%"O§
   {
      
      private static const §7$=§:§^!9§ = new §^!9§(15,40);
      
      private static const §<![§:§^!9§ = new §^!9§(115,131);
      
      private static const §9#N§:§^!9§ = new §^!9§(132,145);
      
      private static const §2"R§:Array = [§7$=§,§<![§,§9#N§];
      
      private static const §'e§:Array = [§7$=§,§9#N§];
      
      private static var §?G§:§%#k§;
       
      
      private var §%"w§:§^!9§;
      
      private var §+"1§:Avatar;
      
      private var §%!z§:int;
      
      private var §;#h§:Timer;
      
      private var §-!d§:int = 30;
      
      private var §=m§:Number = 0;
      
      private var §'"_§:Number = 0;
      
      private var §5B§:Number = 40.0;
      
      private var §<!6§:Array;
      
      private var §>$D§:Bitmap;
      
      public function §!#T§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§`c§ = null;
         this.§<!6§ = [];
         var _loc4_:Array = §2$§.§-"^§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§1! § == "CategoryBirds")
            {
               _loc6_ = §@#m§.§?q§.characters.§>#§(_loc5_.mId);
               this.§+"1§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §%"T§.§>$<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§;#h§)
         {
            this.§;#h§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
            this.§;#h§.stop();
         }
         for each(_loc1_ in this.§<!6§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§<!6§ = [];
         if(§4"9§)
         {
            while(§4"9§.numChildren > 0)
            {
               §4"9§.removeChildAt(0);
            }
         }
         §4"9§ = null;
         if(this.§>$D§)
         {
            this.§>$D§ = null;
         }
      }
      
      public function §9##§(param1:§^!9§) : void
      {
         this.§%"w§ = param1;
         this.§%!z§ = param1.start;
         §%"T§.§>$<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §5!,§.render(§'!j§,this.renderAvatar,§?"H§(),§<"K§,null,null,this.§-!d§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§=m§;
         this.§'"_§ += _loc2_;
         if(this.§'"_§ > this.§5B§)
         {
            this.§%!z§ += 1;
            this.§'"_§ = 0;
         }
         if(this.§<!6§[this.§%!z§] == null)
         {
            §5!,§.render(§'!j§,this.renderAvatar,§?"H§(),§<"K§,this.§%!z§,this.§+"1§,this.§-!d§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§<!6§[this.§%!z§]),null);
         }
         if(this.§%!z§ >= this.§%"w§.end)
         {
            §%"T§.§>$<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§=m§ = getTimer();
      }
      
      public function §;!]§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§;#h§)
         {
            this.§;#h§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
            this.§;#h§.stop();
         }
         this.§;#h§ = new Timer(3000 + Math.random() * 1000,1);
         this.§;#h§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
         this.§;#h§.start();
      }
      
      private function §2!p§(param1:TimerEvent) : void
      {
         this.§;#y§();
         this.§;!]§();
      }
      
      public function §;#y§() : void
      {
         var _loc1_:Array = §2"R§;
         if(§'!j§.indexOf("M50003") != -1 || §'!j§.indexOf("M50006") != -1 && §'!j§.indexOf("C10005") != -1 || §'!j§.indexOf("M50010") != -1)
         {
            _loc1_ = §'e§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§9##§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§4"9§ == null)
         {
            §4"9§ = new Sprite();
         }
         if(§4"9§.parent != this)
         {
            addChild(§4"9§);
         }
         while(§4"9§.numChildren > 0)
         {
            §4"9§.removeChildAt(0);
         }
         this.§>$D§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §4"9§.addChild(this.§>$D§);
         this.§>$D§.x = -10;
         this.§>$D§.y = -10 - this.§-!d§;
         if(this.§<!6§[this.§%!z§] == null)
         {
            this.§<!6§[this.§%!z§] = param1;
         }
      }
   }
}
