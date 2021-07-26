package §!#C§
{
   import §"z§.§@$<§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §]"W§ extends §7C§
   {
      
      public static const §%$,§:String = "PiggyCurrency";
      
      public static const §&Y§:String = "Bird Coins";
      
      private static const §=#'§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §9"=§:int = 500;
      
      private static const §7"8§:int = 300;
       
      
      private var §="d§:int = 0;
      
      private var §;!]§:int = 0;
      
      private var §[!1§:§!!o§;
      
      private var §3!E§:Timer;
      
      private var §%!"§:Timer;
      
      public function §]"W§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §<B§() : int
      {
         return this.§="d§;
      }
      
      public function § "Y§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§="d§;
         var _loc4_:int = param1 - _loc3_;
         this.§="d§ = param1;
         if(!param2)
         {
            dispatchEvent(new §@$<§(§@$<§.§3#g§,false,false,_loc4_,this.§="d§));
         }
         return _loc4_;
      }
      
      public function §[!t§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§<B§ || param1 == 0)
         {
            return;
         }
         this.§;!]§ += param1;
         if(param2)
         {
            if(!this.§%!"§)
            {
               this.§%!"§ = new Timer(§7"8§,1);
               this.§%!"§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§3]§);
               this.§%!"§.start();
            }
         }
         else
         {
            this.§7$-§();
         }
      }
      
      private function §3]§(param1:TimerEvent) : void
      {
         this.§%!"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§3]§);
         this.§%!"§.stop();
         this.§%!"§ = null;
         this.§7$-§();
      }
      
      private function §7$-§() : void
      {
         if(this.§;!]§ <= 0)
         {
            return;
         }
         if(!this.§[!1§)
         {
            this.§[!1§ = new §!!o§();
            this.§[!1§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§[!1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§[!1§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§[!1§.willTrigger(Event.COMPLETE))
         {
            if(this.§3!E§)
            {
               this.§3!E§.stop();
            }
            this.§3!E§ = new Timer(§9"=§,1);
            this.§3!E§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§9$>§);
            this.§3!E§.start();
            return;
         }
         var _loc1_:int = this.§;!]§;
         this.§;!]§ = 0;
         var _loc2_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §=#'§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§[!1§.addEventListener(Event.COMPLETE,this.§@"t§);
         this.§[!1§.load(_loc2_);
      }
      
      private function §@"t§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§[!1§.data;
         this.§[!1§.removeEventListener(Event.COMPLETE,this.§@"t§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §null§.§%l§)
            {
               §4!Q§(§ #v§.§1!!§.dataModel).§1W§.§ "Y§(_loc3_.q);
            }
            else if(_loc3_.i == §]"W§.§%$,§)
            {
               this.§ "Y§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §9$>§(param1:TimerEvent) : void
      {
         this.§3!E§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9$>§);
         this.§3!E§.stop();
         this.§3!E§ = null;
         this.§7$-§();
      }
   }
}
