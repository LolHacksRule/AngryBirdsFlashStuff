package §+#B§
{
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.§^!X§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §&"U§
   {
      
      public static const §[;§:int = 5 * 60;
       
      
      private var §'!#§:String = "";
      
      private var §`"A§:int = 300.0;
      
      private var §'v§:Timer;
      
      private var §0$8§:§'!n§;
      
      private var §]#f§:Boolean = false;
      
      private var §1"W§:Boolean = false;
      
      public function §&"U§(param1:String, param2:int = 300.0)
      {
         super();
         this.§'!#§ = param1;
         this.§`"A§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§'v§)
         {
            this.§'v§ = new Timer(this.§`"A§ * 1000);
            this.§'v§.addEventListener(TimerEvent.TIMER,this.§ J§);
            this.§'v§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§'v§)
         {
            this.§'v§.stop();
            this.§'v§.removeEventListener(TimerEvent.TIMER,this.§ J§);
            this.§'v§ = null;
         }
      }
      
      public function set §8"N§(param1:Boolean) : void
      {
         var _loc2_:§@#G§ = null;
         this.§]#f§ = param1;
         if(!this.§]#f§ && this.§1"W§)
         {
            _loc2_ = new §^!X§(§%#§.ERROR,§9#5§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §7!X§() : void
      {
         if(!this.§0$8§)
         {
            this.§0$8§ = new §'!n§();
            this.§0$8§.addEventListener(Event.COMPLETE,this.§]"i§);
            this.§0$8§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§0$8§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function § J§(param1:Event) : void
      {
         this.§7!X§();
      }
      
      private function §]"i§(param1:Event) : void
      {
         var _loc3_:§@#G§ = null;
         var _loc2_:String = this.§0$8§.data;
         if(this.§'!#§ == null || this.§'!#§.length == 0)
         {
            this.§'!#§ = _loc2_;
         }
         this.§0$8§.removeEventListener(Event.COMPLETE,this.§]"i§);
         this.§0$8§ = null;
         if(_loc2_ != this.§'!#§)
         {
            if(this.§]#f§)
            {
               this.§1"W§ = true;
            }
            else
            {
               _loc3_ = new §^!X§(§%#§.ERROR,§9#5§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§'!#§ = _loc2_;
            this.stop();
         }
      }
      
      public function §[5§() : String
      {
         return this.§'!#§;
      }
   }
}
