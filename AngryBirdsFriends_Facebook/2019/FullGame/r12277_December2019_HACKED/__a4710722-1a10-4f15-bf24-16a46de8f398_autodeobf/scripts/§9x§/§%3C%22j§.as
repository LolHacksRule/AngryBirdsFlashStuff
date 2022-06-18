package §9x§
{
   import §'!S§.§<"5§;
   import §,#D§.§;!9§;
   import §>!u§.Avatar;
   import §^"K§.§9#%§;
   import §^"K§.Item;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §<"j§ extends §9#4§
   {
      
      private static const §%#"§:§@!W§ = new §@!W§(15,40);
      
      private static const §6$$§:§@!W§ = new §@!W§(115,131);
      
      private static const §%x§:§@!W§ = new §@!W§(132,145);
      
      private static const §!"6§:Array = [§%#"§,§6$$§,§%x§];
      
      private static const §3!W§:Array = [§%#"§,§%x§];
      
      private static var §>2§:§;c§;
       
      
      private var §4"v§:§@!W§;
      
      private var §!"K§:Avatar;
      
      private var §;]§:int;
      
      private var §`$!§:Timer;
      
      private var §@!`§:Timer;
      
      private var §<" §:int = 30;
      
      private var §]$§:Number = 0;
      
      private var §[#'§:Number = 0;
      
      private var §'#i§:Number = 40.0;
      
      public function §<"j§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§9#%§ = null;
         var _loc4_:Array = §;!9§.§9#h§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§7#n§ == "CategoryBirds")
            {
               _loc6_ = §<"5§.§3"1§.characters.§7"G§(_loc5_.mId);
               this.§!"K§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.§@!`§)
         {
            this.§@!`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
            this.§@!`§.stop();
         }
         if(this.§`$!§)
         {
            this.§`$!§.removeEventListener(TimerEvent.TIMER,this.§=#9§);
            this.§`$!§.stop();
         }
         if(§5!!§)
         {
            while(§5!!§.numChildren > 0)
            {
               §5!!§.removeChildAt(0);
            }
         }
         §5!!§ = null;
      }
      
      public function §=#g§(param1:§@!W§) : void
      {
         this.§4"v§ = param1;
         this.§;]§ = param1.start;
         if(this.§`$!§)
         {
            this.§`$!§.removeEventListener(TimerEvent.TIMER,this.§=#9§);
            this.§`$!§.stop();
         }
         this.§`$!§ = new Timer(0);
         this.§`$!§.addEventListener(TimerEvent.TIMER,this.§=#9§);
         this.§`$!§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §3U§.render(§!Q§,this.renderAvatar,§&;§(),§1$4§,null,null,this.§<" §);
      }
      
      private function §=#9§(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§]$§;
         this.§[#'§ += _loc2_;
         if(this.§[#'§ > this.§'#i§)
         {
            this.§;]§ += 1;
            this.§[#'§ = 0;
            §3U§.render(§!Q§,this.renderAvatar,§&;§(),§1$4§,this.§;]§,this.§!"K§,this.§<" §);
         }
         if(this.§;]§ >= this.§4"v§.end)
         {
            this.§`$!§.stop();
            this.§`$!§.removeEventListener(TimerEvent.TIMER,this.§=#9§);
         }
         this.§]$§ = getTimer();
      }
      
      public function §5$!§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§@!`§)
         {
            this.§@!`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
            this.§@!`§.stop();
         }
         this.§@!`§ = new Timer(5000 + Math.random() * 1000,1);
         this.§@!`§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ ! §);
         this.§@!`§.start();
      }
      
      private function § ! §(param1:TimerEvent) : void
      {
         this.§0`§();
         this.§5$!§();
      }
      
      public function §0`§() : void
      {
         var _loc1_:Array = §!"6§;
         if(§!Q§.indexOf("M50003") != -1 || §!Q§.indexOf("M50006") != -1 && §!Q§.indexOf("C10005") != -1 || §!Q§.indexOf("M50010") != -1)
         {
            _loc1_ = §3!W§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§=#g§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§5!!§ == null)
         {
            §5!!§ = new Sprite();
         }
         if(§5!!§.parent != this)
         {
            addChild(§5!!§);
         }
         while(§5!!§.numChildren > 0)
         {
            §5!!§.removeChildAt(0);
         }
         §5!!§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
