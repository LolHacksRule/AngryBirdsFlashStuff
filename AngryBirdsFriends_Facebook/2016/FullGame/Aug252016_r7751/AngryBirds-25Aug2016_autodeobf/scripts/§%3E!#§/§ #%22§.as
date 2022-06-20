package §>!#§
{
   import §?"R§.§@"l§;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class § #"§
   {
      
      public static const §?"Z§:int = 5 * 60;
       
      
      private var §;!X§:String = "";
      
      private var §<"1§:int = 300.0;
      
      private var §?"i§:Timer;
      
      private var §`#2§:§5$!§;
      
      private var §;"p§:Boolean = false;
      
      private var §,!f§:Boolean = false;
      
      public function § #"§(param1:String, param2:int = 300.0)
      {
         super();
         this.§;!X§ = param1;
         this.§<"1§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§?"i§)
         {
            this.§?"i§ = new Timer(this.§<"1§ * 1000);
            this.§?"i§.addEventListener(TimerEvent.TIMER,this.§'!;§);
            this.§?"i§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§?"i§)
         {
            this.§?"i§.stop();
            this.§?"i§.removeEventListener(TimerEvent.TIMER,this.§'!;§);
            this.§?"i§ = null;
         }
      }
      
      public function set §'"C§(param1:Boolean) : void
      {
         var _loc2_:§8!H§ = null;
         this.§;"p§ = param1;
         if(!this.§;"p§ && this.§,!f§)
         {
            _loc2_ = new §@"l§(§[W§.ERROR,§<d§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §0"g§() : void
      {
         if(!this.§`#2§)
         {
            this.§`#2§ = new §5$!§();
            this.§`#2§.addEventListener(Event.COMPLETE,this.§%!d§);
            this.§`#2§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§`#2§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §'!;§(param1:Event) : void
      {
         this.§0"g§();
      }
      
      private function §%!d§(param1:Event) : void
      {
         var _loc3_:§8!H§ = null;
         var _loc2_:String = this.§`#2§.data;
         if(this.§;!X§ == null || this.§;!X§.length == 0)
         {
            this.§;!X§ = _loc2_;
         }
         this.§`#2§.removeEventListener(Event.COMPLETE,this.§%!d§);
         this.§`#2§ = null;
         if(_loc2_ != this.§;!X§)
         {
            if(this.§;"p§)
            {
               this.§,!f§ = true;
            }
            else
            {
               _loc3_ = new §@"l§(§[W§.ERROR,§<d§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§;!X§ = _loc2_;
            this.stop();
         }
      }
      
      public function §^!c§() : String
      {
         return this.§;!X§;
      }
   }
}
