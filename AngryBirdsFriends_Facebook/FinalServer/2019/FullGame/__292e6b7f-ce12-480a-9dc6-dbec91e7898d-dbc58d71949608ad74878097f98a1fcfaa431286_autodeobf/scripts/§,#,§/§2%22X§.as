package §,#,§
{
   import §%"N§.§2w§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §2"X§ extends §1!P§
   {
      
      public static const §>x§:String = "PiggyCurrency";
      
      public static const §++§:String = "Bird Coins";
      
      private static const §<#O§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §8"$§:int = 500;
      
      private static const §8!w§:int = 300;
       
      
      private var §"!W§:int = 0;
      
      private var §,"7§:int = 0;
      
      private var §^`§:§-$C§;
      
      private var §#"7§:Timer;
      
      private var §9-§:Timer;
      
      public function §2"X§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §#"+§() : int
      {
         return this.§"!W§;
      }
      
      public function §?"K§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§"!W§;
         var _loc4_:int = param1 - _loc3_;
         this.§"!W§ = param1;
         if(!param2)
         {
            dispatchEvent(new §2w§(§2w§.§?"P§,false,false,_loc4_,this.§"!W§));
         }
         return _loc4_;
      }
      
      public function §>!^§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§#"+§ || param1 == 0)
         {
            return;
         }
         this.§,"7§ += param1;
         if(param2)
         {
            if(!this.§9-§)
            {
               this.§9-§ = new Timer(§8!w§,1);
               this.§9-§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§?#Z§);
               this.§9-§.start();
            }
         }
         else
         {
            this.§4!Z§();
         }
      }
      
      private function §?#Z§(param1:TimerEvent) : void
      {
         this.§9-§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§?#Z§);
         this.§9-§.stop();
         this.§9-§ = null;
         this.§4!Z§();
      }
      
      private function §4!Z§() : void
      {
         if(this.§,"7§ <= 0)
         {
            return;
         }
         if(!this.§^`§)
         {
            this.§^`§ = new §-$C§();
            this.§^`§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§^`§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§^`§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§^`§.willTrigger(Event.COMPLETE))
         {
            if(this.§#"7§)
            {
               this.§#"7§.stop();
            }
            this.§#"7§ = new Timer(§8"$§,1);
            this.§#"7§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+#A§);
            this.§#"7§.start();
            return;
         }
         var _loc1_:int = this.§,"7§;
         this.§,"7§ = 0;
         var _loc2_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §<#O§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§^`§.addEventListener(Event.COMPLETE,this.§@!W§);
         this.§^`§.load(_loc2_);
      }
      
      private function §@!W§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§^`§.data;
         this.§^`§.removeEventListener(Event.COMPLETE,this.§@!W§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §>#g§.§=-§)
            {
               §=#o§(§@z§.§ !D§.dataModel).§1q§.§?"K§(_loc3_.q);
            }
            else if(_loc3_.i == §2"X§.§>x§)
            {
               this.§?"K§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §+#A§(param1:TimerEvent) : void
      {
         this.§#"7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§+#A§);
         this.§#"7§.stop();
         this.§#"7§ = null;
         this.§4!Z§();
      }
   }
}
