package §`7§
{
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §?P§.§2"n§;
   import §?P§.§]"$§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §1$&§
   {
      
      public static const §]!'§:int = 5 * 60;
       
      
      private var §-"R§:String = "";
      
      private var §#"t§:int = 300.0;
      
      private var §each §:Timer;
      
      private var §@!0§:§1"V§;
      
      private var §6!W§:Boolean = false;
      
      private var §&"i§:Boolean = false;
      
      public function §1$&§(param1:String, param2:int = 300.0)
      {
         super();
         this.§-"R§ = param1;
         this.§#"t§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§each §)
         {
            this.§each § = new Timer(this.§#"t§ * 1000);
            this.§each §.addEventListener(TimerEvent.TIMER,this.§^#x§);
            this.§each §.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§each §)
         {
            this.§each §.stop();
            this.§each §.removeEventListener(TimerEvent.TIMER,this.§^#x§);
            this.§each § = null;
         }
      }
      
      public function set §"!m§(param1:Boolean) : void
      {
         var _loc2_:§%#;§ = null;
         this.§6!W§ = param1;
         if(!this.§6!W§ && this.§&"i§)
         {
            _loc2_ = new §2"n§(§]"$§.ERROR,§^"U§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §-#8§() : void
      {
         if(!this.§@!0§)
         {
            this.§@!0§ = new §1"V§();
            this.§@!0§.addEventListener(Event.COMPLETE,this.§0;§);
            this.§@!0§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§@!0§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §^#x§(param1:Event) : void
      {
         this.§-#8§();
      }
      
      private function §0;§(param1:Event) : void
      {
         var _loc3_:§%#;§ = null;
         var _loc2_:String = this.§@!0§.data;
         if(this.§-"R§ == null || this.§-"R§.length == 0)
         {
            this.§-"R§ = _loc2_;
         }
         this.§@!0§.removeEventListener(Event.COMPLETE,this.§0;§);
         this.§@!0§ = null;
         if(_loc2_ != this.§-"R§)
         {
            if(this.§6!W§)
            {
               this.§&"i§ = true;
            }
            else
            {
               _loc3_ = new §2"n§(§]"$§.ERROR,§^"U§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§-"R§ = _loc2_;
            this.stop();
         }
      }
      
      public function §^!Y§() : String
      {
         return this.§-"R§;
      }
   }
}
