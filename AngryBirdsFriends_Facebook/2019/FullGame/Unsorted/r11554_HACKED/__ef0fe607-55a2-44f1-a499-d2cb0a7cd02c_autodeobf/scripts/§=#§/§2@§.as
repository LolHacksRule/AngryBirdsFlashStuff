package §=#§
{
   import § #s§.Item;
   import § #s§.§`c§;
   import §&!P§.§@#m§;
   import §2!X§.Avatar;
   import §^$'§.§2$§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §2@§ extends §%"O§
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
      
      private var §0!M§:Timer;
      
      private var §;#h§:Timer;
      
      private var §-!d§:int = 30;
      
      private var §=m§:Number = 0;
      
      private var §'"_§:Number = 0;
      
      private var §5B§:Number = 40.0;
      
      public function §2@§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§`c§ = null;
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
         if(this.§;#h§)
         {
            this.§;#h§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§2!p§);
            this.§;#h§.stop();
         }
         if(this.§0!M§)
         {
            this.§0!M§.removeEventListener(TimerEvent.TIMER,this.§!#]§);
            this.§0!M§.stop();
         }
         if(§4"9§)
         {
            while(§4"9§.numChildren > 0)
            {
               §4"9§.removeChildAt(0);
            }
         }
         §4"9§ = null;
      }
      
      public function §9##§(param1:§^!9§) : void
      {
         this.§%"w§ = param1;
         this.§%!z§ = param1.start;
         if(this.§0!M§)
         {
            this.§0!M§.removeEventListener(TimerEvent.TIMER,this.§!#]§);
            this.§0!M§.stop();
         }
         this.§0!M§ = new Timer(0);
         this.§0!M§.addEventListener(TimerEvent.TIMER,this.§!#]§);
         this.§0!M§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §5!,§.render(§'!j§,this.renderAvatar,§?"H§(),§<"K§,null,null,this.§-!d§);
      }
      
      private function §!#]§(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§=m§;
         this.§'"_§ += _loc2_;
         if(this.§'"_§ > this.§5B§)
         {
            this.§%!z§ += 1;
            this.§'"_§ = 0;
            §5!,§.render(§'!j§,this.renderAvatar,§?"H§(),§<"K§,this.§%!z§,this.§+"1§,this.§-!d§);
         }
         if(this.§%!z§ >= this.§%"w§.end)
         {
            this.§0!M§.stop();
            this.§0!M§.removeEventListener(TimerEvent.TIMER,this.§!#]§);
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
         this.§;#h§ = new Timer(5000 + Math.random() * 1000,1);
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
         §4"9§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
