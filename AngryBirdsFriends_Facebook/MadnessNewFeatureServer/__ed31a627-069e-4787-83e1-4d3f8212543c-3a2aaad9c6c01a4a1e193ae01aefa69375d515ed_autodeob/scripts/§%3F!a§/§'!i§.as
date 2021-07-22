package §?!a§
{
   import §%y§.§7$@§;
   import §%y§.Item;
   import §'Z§.§<&§;
   import §4q§.Avatar;
   import §6"p§.§7§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §'!i§ extends §=4§
   {
      
      private static const §]5§:§2"4§ = new §2"4§(15,40);
      
      private static const §+#E§:§2"4§ = new §2"4§(115,131);
      
      private static const §;8§:§2"4§ = new §2"4§(132,145);
      
      private static const §`#V§:Array = [§]5§,§+#E§,§;8§];
      
      private static const §7"%§:Array = [§]5§,§;8§];
      
      private static var § $0§:§0!#§;
       
      
      private var §[D§:§2"4§;
      
      private var §3"Q§:Avatar;
      
      private var §<!h§:int;
      
      private var §"6§:Timer;
      
      private var §>!9§:Timer;
      
      private var §0#a§:int = 30;
      
      private var §-!K§:Number = 0;
      
      private var §#0§:Number = 0;
      
      private var § #F§:Number = 40.0;
      
      public function §'!i§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§7$@§ = null;
         var _loc4_:Array = §<&§.§;i§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§>"r§ == "CategoryBirds")
            {
               _loc6_ = §7#8§.§`"H§.characters.§[#B§(_loc5_.mId);
               this.§3"Q§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.§>!9§)
         {
            this.§>!9§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
            this.§>!9§.stop();
         }
         if(this.§"6§)
         {
            this.§"6§.removeEventListener(TimerEvent.TIMER,this.§""c§);
            this.§"6§.stop();
         }
         if(§&"9§)
         {
            while(§&"9§.numChildren > 0)
            {
               §&"9§.removeChildAt(0);
            }
         }
         §&"9§ = null;
      }
      
      public function §-"R§(param1:§2"4§) : void
      {
         this.§[D§ = param1;
         this.§<!h§ = param1.start;
         if(this.§"6§)
         {
            this.§"6§.removeEventListener(TimerEvent.TIMER,this.§""c§);
            this.§"6§.stop();
         }
         this.§"6§ = new Timer(0);
         this.§"6§.addEventListener(TimerEvent.TIMER,this.§""c§);
         this.§"6§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §2#=§.render(§^"5§,this.renderAvatar,§ !@§(),§65§,null,null,this.§0#a§);
      }
      
      private function §""c§(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§-!K§;
         this.§#0§ += _loc2_;
         if(this.§#0§ > this.§ #F§)
         {
            this.§<!h§ += 1;
            this.§#0§ = 0;
            §2#=§.render(§^"5§,this.renderAvatar,§ !@§(),§65§,this.§<!h§,this.§3"Q§,this.§0#a§);
         }
         if(this.§<!h§ >= this.§[D§.end)
         {
            this.§"6§.stop();
            this.§"6§.removeEventListener(TimerEvent.TIMER,this.§""c§);
         }
         this.§-!K§ = getTimer();
      }
      
      public function §["t§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§>!9§)
         {
            this.§>!9§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
            this.§>!9§.stop();
         }
         this.§>!9§ = new Timer(5000 + Math.random() * 1000,1);
         this.§>!9§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§&"a§);
         this.§>!9§.start();
      }
      
      private function §&"a§(param1:TimerEvent) : void
      {
         this.§2%§();
         this.§["t§();
      }
      
      public function §2%§() : void
      {
         var _loc1_:Array = §`#V§;
         if(§^"5§.indexOf("M50003") != -1 || §^"5§.indexOf("M50006") != -1 && §^"5§.indexOf("C10005") != -1 || §^"5§.indexOf("M50010") != -1)
         {
            _loc1_ = §7"%§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§-"R§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§&"9§ == null)
         {
            §&"9§ = new Sprite();
         }
         if(§&"9§.parent != this)
         {
            addChild(§&"9§);
         }
         while(§&"9§.numChildren > 0)
         {
            §&"9§.removeChildAt(0);
         }
         §&"9§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
