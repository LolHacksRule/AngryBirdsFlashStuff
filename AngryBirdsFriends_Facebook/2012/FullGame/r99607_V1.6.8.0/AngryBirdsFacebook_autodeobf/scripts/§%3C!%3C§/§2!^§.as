package §<!<§
{
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §2!^§
   {
      
      public static const §7A§:int = 5 * 60;
       
      
      private var §?"7§:String = "";
      
      private var §'I§:int = 300.0;
      
      private var §"e§:Timer;
      
      private var §&L§:§,!S§;
      
      private var §<V§:Boolean = false;
      
      private var §1B§:Boolean = false;
      
      public function §2!^§(param1:String, param2:int = 300.0)
      {
         super();
         this.§?"7§ = param1;
         this.§'I§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§"e§)
         {
            this.§"e§ = new Timer(this.§'I§ * 1000);
            this.§"e§.addEventListener(TimerEvent.TIMER,this.§7L§);
            this.§"e§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§"e§)
         {
            this.§"e§.stop();
            this.§"e§.removeEventListener(TimerEvent.TIMER,this.§7L§);
            this.§"e§ = null;
         }
      }
      
      public function set §0!o§(param1:Boolean) : void
      {
         this.§<V§ = param1;
         if(!this.§<V§ && this.§1B§)
         {
            §43§.§4!3§();
         }
      }
      
      public function §,!6§() : void
      {
         if(!this.§&L§)
         {
            this.§&L§ = new §,!S§();
            this.§&L§.addEventListener(Event.COMPLETE,this.§>"3§);
            this.§&L§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§&L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§&L§.addEventListener(§"!n§.§"+§,this.onError);
            this.§&L§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/serverversion"));
         }
      }
      
      private function §7L§(param1:Event) : void
      {
         this.§,!6§();
      }
      
      private function §>"3§(param1:Event) : void
      {
         var _loc2_:String = this.§&L§.data;
         if(this.§?"7§ == null || this.§?"7§.length == 0)
         {
            this.§?"7§ = _loc2_;
         }
         this.§&L§.removeEventListener(Event.COMPLETE,this.§>"3§);
         this.§&L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&L§.removeEventListener(§"!n§.§"+§,this.onError);
         this.§&L§ = null;
         if(_loc2_ != this.§?"7§)
         {
            if(this.§<V§)
            {
               this.§1B§ = true;
            }
            else
            {
               §43§.§4!3§();
            }
            this.§?"7§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         this.§&L§.removeEventListener(Event.COMPLETE,this.§>"3§);
         this.§&L§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&L§ = null;
      }
   }
}
