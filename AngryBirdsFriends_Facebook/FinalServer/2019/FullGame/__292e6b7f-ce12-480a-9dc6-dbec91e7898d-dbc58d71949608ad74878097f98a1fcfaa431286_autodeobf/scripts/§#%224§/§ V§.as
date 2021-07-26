package §#"4§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.§0#e§;
   import §?Q§.§@#D§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class § V§
   {
      
      public static const § # §:int = 5 * 60;
       
      
      private var §9$=§:String = "";
      
      private var §1;§:int = 300.0;
      
      private var §3%§:Timer;
      
      private var §+U§:§-$C§;
      
      private var §^!J§:Boolean = false;
      
      private var §-$+§:Boolean = false;
      
      public function § V§(param1:String, param2:int = 300.0)
      {
         super();
         this.§9$=§ = param1;
         this.§1;§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§3%§)
         {
            this.§3%§ = new Timer(this.§1;§ * 1000);
            this.§3%§.addEventListener(TimerEvent.TIMER,this.§5=§);
            this.§3%§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§3%§)
         {
            this.§3%§.stop();
            this.§3%§.removeEventListener(TimerEvent.TIMER,this.§5=§);
            this.§3%§ = null;
         }
      }
      
      public function set §8#P§(param1:Boolean) : void
      {
         var _loc2_:§,#@§ = null;
         this.§^!J§ = param1;
         if(!this.§^!J§ && this.§-$+§)
         {
            _loc2_ = new §0#e§(§@#D§.ERROR,§5R§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §<!s§() : void
      {
         if(!this.§+U§)
         {
            this.§+U§ = new §-$C§();
            this.§+U§.addEventListener(Event.COMPLETE,this.§="i§);
            this.§+U§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§+U§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §5=§(param1:Event) : void
      {
         this.§<!s§();
      }
      
      private function §="i§(param1:Event) : void
      {
         var _loc3_:§,#@§ = null;
         var _loc2_:String = this.§+U§.data;
         if(this.§9$=§ == null || this.§9$=§.length == 0)
         {
            this.§9$=§ = _loc2_;
         }
         this.§+U§.removeEventListener(Event.COMPLETE,this.§="i§);
         this.§+U§ = null;
         if(_loc2_ != this.§9$=§)
         {
            if(this.§^!J§)
            {
               this.§-$+§ = true;
            }
            else
            {
               _loc3_ = new §0#e§(§@#D§.ERROR,§5R§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§9$=§ = _loc2_;
            this.stop();
         }
      }
      
      public function §3!4§() : String
      {
         return this.§9$=§;
      }
   }
}
