package §2G§
{
   import §4",§.Avatar;
   import §4§.§7j§;
   import §>#l§.§=#j§;
   import §@`§.§'$8§;
   import §@`§.Item;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §+"d§ extends §2@§
   {
      
      private static const §,F§:§?"l§ = new §?"l§(15,40);
      
      private static const §'"v§:§?"l§ = new §?"l§(115,131);
      
      private static const §-"e§:§?"l§ = new §?"l§(132,145);
      
      private static const §9$>§:Array = [§,F§,§'"v§,§-"e§];
      
      private static const §^$;§:Array = [§,F§,§-"e§];
      
      private static var §5#p§:§;"4§;
       
      
      private var §9#b§:§?"l§;
      
      private var §40§:Avatar;
      
      private var §0"P§:int;
      
      private var §5"J§:Timer;
      
      private var §>"=§:Timer;
      
      private var §@#]§:int = 30;
      
      private var §-#"§:Number = 0;
      
      private var §;#?§:Number = 0;
      
      private var §@"9§:Number = 40.0;
      
      public function §+"d§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§'$8§ = null;
         var _loc4_:Array = §=#j§.§+!T§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§'!P§ == "CategoryBirds")
            {
               _loc6_ = §7j§.§+!,§.characters.§>#6§(_loc5_.mId);
               this.§40§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.§>"=§)
         {
            this.§>"=§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
            this.§>"=§.stop();
         }
         if(this.§5"J§)
         {
            this.§5"J§.removeEventListener(TimerEvent.TIMER,this.§"$+§);
            this.§5"J§.stop();
         }
         if(§;!%§)
         {
            while(§;!%§.numChildren > 0)
            {
               §;!%§.removeChildAt(0);
            }
         }
         §;!%§ = null;
      }
      
      public function §8$7§(param1:§?"l§) : void
      {
         this.§9#b§ = param1;
         this.§0"P§ = param1.start;
         if(this.§5"J§)
         {
            this.§5"J§.removeEventListener(TimerEvent.TIMER,this.§"$+§);
            this.§5"J§.stop();
         }
         this.§5"J§ = new Timer(0);
         this.§5"J§.addEventListener(TimerEvent.TIMER,this.§"$+§);
         this.§5"J§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §3"A§.render(§^#I§,this.renderAvatar,§?#Y§(),§4!Q§,null,null,this.§@#]§);
      }
      
      private function §"$+§(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§-#"§;
         this.§;#?§ += _loc2_;
         if(this.§;#?§ > this.§@"9§)
         {
            this.§0"P§ += 1;
            this.§;#?§ = 0;
            §3"A§.render(§^#I§,this.renderAvatar,§?#Y§(),§4!Q§,this.§0"P§,this.§40§,this.§@#]§);
         }
         if(this.§0"P§ >= this.§9#b§.end)
         {
            this.§5"J§.stop();
            this.§5"J§.removeEventListener(TimerEvent.TIMER,this.§"$+§);
         }
         this.§-#"§ = getTimer();
      }
      
      public function §<e§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§>"=§)
         {
            this.§>"=§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
            this.§>"=§.stop();
         }
         this.§>"=§ = new Timer(5000 + Math.random() * 1000,1);
         this.§>"=§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7'§);
         this.§>"=§.start();
      }
      
      private function §7'§(param1:TimerEvent) : void
      {
         this.§;$@§();
         this.§<e§();
      }
      
      public function §;$@§() : void
      {
         var _loc1_:Array = §9$>§;
         if(§^#I§.indexOf("M50003") != -1 || §^#I§.indexOf("M50006") != -1 && §^#I§.indexOf("C10005") != -1 || §^#I§.indexOf("M50010") != -1)
         {
            _loc1_ = §^$;§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§8$7§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§;!%§ == null)
         {
            §;!%§ = new Sprite();
         }
         if(§;!%§.parent != this)
         {
            addChild(§;!%§);
         }
         while(§;!%§.numChildren > 0)
         {
            §;!%§.removeChildAt(0);
         }
         §;!%§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
