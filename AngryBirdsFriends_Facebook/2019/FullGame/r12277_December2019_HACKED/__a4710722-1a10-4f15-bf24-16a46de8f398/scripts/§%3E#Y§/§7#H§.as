package §>#Y§
{
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §<M§.§'_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §7#H§ extends §`#Y§
   {
      
      public static const §?"7§:String = "PiggyCurrency";
      
      public static const §1§:String = "Bird Coins";
      
      private static const §2!!§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §6#2§:int = 500;
      
      private static const §,@§:int = 300;
       
      
      private var §>Z§:int = 0;
      
      private var §`!N§:int = 0;
      
      private var §]!f§:§5"f§;
      
      private var §!$;§:Timer;
      
      private var §&Z§:Timer;
      
      public function §7#H§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §5"i§() : int
      {
         return this.§>Z§;
      }
      
      public function §finally§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§>Z§;
         var _loc4_:int = param1 - _loc3_;
         this.§>Z§ = param1;
         if(!param2)
         {
            dispatchEvent(new §'_§(§'_§.§9"2§,false,false,_loc4_,this.§>Z§));
         }
         return _loc4_;
      }
      
      public function §%K§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§5"i§ || param1 == 0)
         {
            return;
         }
         this.§`!N§ += param1;
         if(param2)
         {
            if(!this.§&Z§)
            {
               this.§&Z§ = new Timer(§,@§,1);
               this.§&Z§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6# §);
               this.§&Z§.start();
            }
         }
         else
         {
            this.§!#O§();
         }
      }
      
      private function §6# §(param1:TimerEvent) : void
      {
         this.§&Z§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§6# §);
         this.§&Z§.stop();
         this.§&Z§ = null;
         this.§!#O§();
      }
      
      private function §!#O§() : void
      {
         if(this.§`!N§ <= 0)
         {
            return;
         }
         if(!this.§]!f§)
         {
            this.§]!f§ = new §5"f§();
            this.§]!f§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§]!f§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§]!f§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§]!f§.willTrigger(Event.COMPLETE))
         {
            if(this.§!$;§)
            {
               this.§!$;§.stop();
            }
            this.§!$;§ = new Timer(§6#2§,1);
            this.§!$;§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8#;§);
            this.§!$;§.start();
            return;
         }
         var _loc1_:int = this.§`!N§;
         this.§`!N§ = 0;
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §2!!§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§]!f§.addEventListener(Event.COMPLETE,this.§?[§);
         this.§]!f§.load(_loc2_);
      }
      
      private function §?[§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§]!f§.data;
         this.§]!f§.removeEventListener(Event.COMPLETE,this.§?[§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §2$8§.§,"p§)
            {
               §,#b§(§^"a§.§9!h§.dataModel).§%$;§.§finally§(_loc3_.q);
            }
            else if(_loc3_.i == §7#H§.§?"7§)
            {
               this.§finally§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §8#;§(param1:TimerEvent) : void
      {
         this.§!$;§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§8#;§);
         this.§!$;§.stop();
         this.§!$;§ = null;
         this.§!#O§();
      }
   }
}
