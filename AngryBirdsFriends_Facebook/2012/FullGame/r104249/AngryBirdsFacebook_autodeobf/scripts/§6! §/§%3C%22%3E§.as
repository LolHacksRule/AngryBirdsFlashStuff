package §6! §
{
   import § !i§.§=?§;
   import §!9§.§%y§;
   import §5!G§.§&2§;
   import §5!q§.§2"L§;
   import §`!?§.§;!`§;
   import §`!?§.Item;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §<">§ extends §9!t§
   {
      
      private static const §`0§:§&!<§ = new §&!<§(15,40);
      
      private static const §!-§:§&!<§ = new §&!<§(115,131);
      
      private static const §>!V§:§&!<§ = new §&!<§(132,145);
      
      private static const §0"B§:Array = [§`0§,§!-§,§>!V§];
      
      private static const §%";§:Array = [§`0§,§>!V§];
      
      private static var §3§:§<h§;
       
      
      private var §9""§:§&!<§;
      
      private var §#a§:§2"L§;
      
      private var §=!f§:int;
      
      private var §4!g§:Timer;
      
      private var §7"=§:int = 30;
      
      private var §<""§:Number = 0;
      
      private var §3G§:Number = 0;
      
      private var §%Q§:Number = 40.0;
      
      private var §]=§:Array;
      
      private var §@!O§:Bitmap;
      
      public function §<">§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§;!`§ = null;
         this.§]=§ = [];
         var _loc4_:Array = §=?§.§""F§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§;!g§ == "CategoryBirds")
            {
               _loc6_ = §%y§.§1[§.characters.§2f§(_loc5_.§3!9§);
               this.§#a§ = new §2"L§(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         §&2§.§5!k§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,!#§);
            this.§4!g§.stop();
         }
         for each(_loc1_ in this.§]=§)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.§]=§ = [];
         if(§1""§)
         {
            while(§1""§.numChildren > 0)
            {
               §1""§.removeChildAt(0);
            }
         }
         §1""§ = null;
         if(this.§@!O§)
         {
            this.§@!O§ = null;
         }
      }
      
      public function §?!5§(param1:§&!<§) : void
      {
         this.§9""§ = param1;
         this.§=!f§ = param1.start;
         §&2§.§5!k§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §4I§.render(§9",§,this.renderAvatar,§[!s§(),§[G§,null,null,this.§7"=§);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§<""§;
         this.§3G§ += _loc2_;
         if(this.§3G§ > this.§%Q§)
         {
            this.§=!f§ += 1;
            this.§3G§ = 0;
         }
         if(this.§]=§[this.§=!f§] == null)
         {
            §4I§.render(§9",§,this.renderAvatar,§[!s§(),§[G§,this.§=!f§,this.§#a§,this.§7"=§);
         }
         else
         {
            this.renderAvatar(BitmapData(this.§]=§[this.§=!f§]));
         }
         if(this.§=!f§ >= this.§9""§.end)
         {
            §&2§.§5!k§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this.§<""§ = getTimer();
      }
      
      public function §=!O§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§4!g§)
         {
            this.§4!g§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,!#§);
            this.§4!g§.stop();
         }
         this.§4!g§ = new Timer(3000 + Math.random() * 1000,1);
         this.§4!g§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,!#§);
         this.§4!g§.start();
      }
      
      private function §,!#§(param1:TimerEvent) : void
      {
         this.§"!p§();
         this.§=!O§();
      }
      
      public function §"!p§() : void
      {
         var _loc1_:Array = §0"B§;
         if(§9",§.indexOf("M50003") != -1 || §9",§.indexOf("M50006") != -1 && §9",§.indexOf("C10005") != -1)
         {
            _loc1_ = §%";§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§?!5§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         if(§1""§ == null)
         {
            §1""§ = new Sprite();
         }
         if(§1""§.parent != this)
         {
            addChild(§1""§);
         }
         while(§1""§.numChildren > 0)
         {
            §1""§.removeChildAt(0);
         }
         this.§@!O§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
         §1""§.addChild(this.§@!O§);
         this.§@!O§.x = -10;
         this.§@!O§.y = -10 - this.§7"=§;
         if(this.§]=§[this.§=!f§] == null)
         {
            this.§]=§[this.§=!f§] = param1;
         }
      }
   }
}
