package §_-eS§
{
   import §_-7§.§_-42§;
   import §_-7§.§_-EJ§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §_-Vn§
   {
      
      public static const §_-jd§:int = 5 * 60;
       
      
      private var §_-TU§:String = "";
      
      private var §_-1f§:int = 300.0;
      
      private var §_-0CK§:Timer;
      
      private var §_-uG§:§_-ur§;
      
      private var §_-NT§:Boolean = false;
      
      private var §_-qo§:Boolean = false;
      
      public function §_-Vn§(param1:String, param2:int = 300.0)
      {
         super();
         this.§_-TU§ = param1;
         this.§_-1f§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§_-0CK§)
         {
            this.§_-0CK§ = new Timer(this.§_-1f§ * 1000);
            this.§_-0CK§.addEventListener(TimerEvent.TIMER,this.§_-jG§);
            this.§_-0CK§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§_-0CK§)
         {
            this.§_-0CK§.stop();
            this.§_-0CK§.removeEventListener(TimerEvent.TIMER,this.§_-jG§);
            this.§_-0CK§ = null;
         }
      }
      
      public function set §_-LA§(param1:Boolean) : void
      {
         this.§_-NT§ = param1;
         if(!this.§_-NT§ && this.§_-qo§)
         {
            §_-EJ§.§_-L7§();
         }
      }
      
      public function §_-Jz§() : void
      {
         if(!this.§_-uG§)
         {
            this.§_-uG§ = new §_-ur§();
            this.§_-uG§.addEventListener(Event.COMPLETE,this.§_-07H§);
            this.§_-uG§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§_-uG§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§_-uG§.addEventListener(§_-a5§.§_-Gy§,this.onError);
            this.§_-uG§.load(§_-P-§.§_-0Ak§(AngryBirdsFP11.§_-08Q§ + "/serverversion"));
         }
      }
      
      private function §_-jG§(param1:Event) : void
      {
         this.§_-Jz§();
      }
      
      private function §_-07H§(param1:Event) : void
      {
         var _loc2_:String = this.§_-uG§.data;
         if(this.§_-TU§ == null || this.§_-TU§.length == 0)
         {
            this.§_-TU§ = _loc2_;
         }
         this.§_-uG§.removeEventListener(Event.COMPLETE,this.§_-07H§);
         this.§_-uG§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-uG§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-uG§.removeEventListener(§_-a5§.§_-Gy§,this.onError);
         this.§_-uG§ = null;
         if(_loc2_ != this.§_-TU§)
         {
            if(this.§_-NT§)
            {
               this.§_-qo§ = true;
            }
            else
            {
               §_-EJ§.§_-L7§();
            }
            this.§_-TU§ = _loc2_;
            this.stop();
         }
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §_-a5§.§_-Gy§)
         {
            §_-EJ§.§_-QC§(§_-42§.§_-06o§);
         }
         this.§_-uG§.removeEventListener(Event.COMPLETE,this.§_-07H§);
         this.§_-uG§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§_-uG§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§_-uG§ = null;
      }
   }
}
