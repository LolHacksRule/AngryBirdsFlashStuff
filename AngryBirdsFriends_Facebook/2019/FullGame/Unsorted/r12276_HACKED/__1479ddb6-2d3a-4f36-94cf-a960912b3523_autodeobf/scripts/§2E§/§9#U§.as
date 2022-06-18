package §2E§
{
   import § h§.§ "t§;
   import § h§.§-!S§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §9#U§
   {
      
      public static const §+!=§:int = 5 * 60;
       
      
      private var §0$&§:String = "";
      
      private var §?!J§:int = 300.0;
      
      private var §7$;§:Timer;
      
      private var §&k§:§5"f§;
      
      private var §!"L§:Boolean = false;
      
      private var §7![§:Boolean = false;
      
      public function §9#U§(param1:String, param2:int = 300.0)
      {
         super();
         this.§0$&§ = param1;
         this.§?!J§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§7$;§)
         {
            this.§7$;§ = new Timer(this.§?!J§ * 1000);
            this.§7$;§.addEventListener(TimerEvent.TIMER,this.§5#g§);
            this.§7$;§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§7$;§)
         {
            this.§7$;§.stop();
            this.§7$;§.removeEventListener(TimerEvent.TIMER,this.§5#g§);
            this.§7$;§ = null;
         }
      }
      
      public function set §%"E§(param1:Boolean) : void
      {
         var _loc2_:§?!y§ = null;
         this.§!"L§ = param1;
         if(!this.§!"L§ && this.§7![§)
         {
            _loc2_ = new § "t§(§-!S§.ERROR,§## §.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §var§() : void
      {
         if(!this.§&k§)
         {
            this.§&k§ = new §5"f§();
            this.§&k§.addEventListener(Event.COMPLETE,this.§<!r§);
            this.§&k§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§&k§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §5#g§(param1:Event) : void
      {
         this.§var§();
      }
      
      private function §<!r§(param1:Event) : void
      {
         var _loc3_:§?!y§ = null;
         var _loc2_:String = this.§&k§.data;
         if(this.§0$&§ == null || this.§0$&§.length == 0)
         {
            this.§0$&§ = _loc2_;
         }
         this.§&k§.removeEventListener(Event.COMPLETE,this.§<!r§);
         this.§&k§ = null;
         if(_loc2_ != this.§0$&§)
         {
            if(this.§!"L§)
            {
               this.§7![§ = true;
            }
            else
            {
               _loc3_ = new § "t§(§-!S§.ERROR,§## §.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§0$&§ = _loc2_;
            this.stop();
         }
      }
      
      public function §5"5§() : String
      {
         return this.§0$&§;
      }
   }
}
