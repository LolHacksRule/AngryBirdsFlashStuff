package §,n§
{
   import §1"1§.§3!m§;
   import §1"o§.Avatar;
   import §4#[§.§6U§;
   import §6#s§.§8#?§;
   import §6#s§.Item;
   import §?§.§>"$§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §;c§ extends §^;§
   {
      
      private static const §'"w§:§3K§ = new §3K§(15,40);
      
      private static const §9'§:§3K§ = new §3K§(115,131);
      
      private static const §""8§:§3K§ = new §3K§(132,145);
      
      private static const §]#X§:Array = [§'"w§,§9'§,§""8§];
      
      private static const §1!D§:Array = [§'"w§,§""8§];
      
      private static var § "N§:§2m§;
       
      
      private var §0v§:§3K§;
      
      private var §6"5§:Avatar;
      
      private var §+!M§:int;
      
      private var §9"3§:Timer;
      
      private var §4#Y§:int = 30;
      
      private var §`"`§:Number = 0;
      
      private var §]"g§:Number = 0;
      
      private var §?!k§:Number = 40.0;
      
      private var §7c§:Array;
      
      private var §7-§:Bitmap;
      
      public function §;c§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§8#?§ = null;
         this.§7c§ = [];
         var _loc4_:Array = §6U§.§;!,§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§3$1§ == "CategoryBirds")
            {
               _loc6_ = §3!m§.§3!]§.characters.§]"T§(_loc5_.mId);
               this.§6"5§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §>"$§.§<_§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§9"3§)
         {
            this.§9"3§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
            this.§9"3§.stop();
         }
         for each(_loc1_ in this.§7c§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§7c§ = [];
         if(§,q§)
         {
            while(§,q§.numChildren > 0)
            {
               §,q§.removeChildAt(0);
            }
         }
         §,q§ = null;
         if(this.§7-§)
         {
            this.§7-§ = null;
         }
      }
      
      public function §5X§(param1:§3K§) : void
      {
         this.§0v§ = param1;
         this.§+!M§ = param1.start;
         §>"$§.§<_§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §%"l§.render(§?D§,this.renderAvatar,§[!V§(),§"!H§,null,null,this.§4#Y§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§`"`§;
         this.§]"g§ += _loc2_;
         if(this.§]"g§ > this.§?!k§)
         {
            this.§+!M§ += 1;
            this.§]"g§ = 0;
         }
         if(this.§7c§[this.§+!M§] == null)
         {
            §%"l§.render(§?D§,this.renderAvatar,§[!V§(),§"!H§,this.§+!M§,this.§6"5§,this.§4#Y§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§7c§[this.§+!M§]),null);
         }
         if(this.§+!M§ >= this.§0v§.end)
         {
            §>"$§.§<_§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§`"`§ = getTimer();
      }
      
      public function §"T§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§9"3§)
         {
            this.§9"3§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
            this.§9"3§.stop();
         }
         this.§9"3§ = new Timer(3000 + Math.random() * 1000,1);
         this.§9"3§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-#J§);
         this.§9"3§.start();
      }
      
      private function §-#J§(param1:TimerEvent) : void
      {
         this.§6!2§();
         this.§"T§();
      }
      
      public function §6!2§() : void
      {
         var _loc1_:Array = §]#X§;
         if(§?D§.indexOf("M50003") != -1 || §?D§.indexOf("M50006") != -1 && §?D§.indexOf("C10005") != -1 || §?D§.indexOf("M50010") != -1)
         {
            _loc1_ = §1!D§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§5X§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§,q§ == null)
         {
            §,q§ = new Sprite();
         }
         if(§,q§.parent != this)
         {
            addChild(§,q§);
         }
         while(§,q§.numChildren > 0)
         {
            §,q§.removeChildAt(0);
         }
         this.§7-§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §,q§.addChild(this.§7-§);
         this.§7-§.x = -10;
         this.§7-§.y = -10 - this.§4#Y§;
         if(this.§7c§[this.§+!M§] == null)
         {
            this.§7c§[this.§+!M§] = param1;
         }
      }
   }
}
