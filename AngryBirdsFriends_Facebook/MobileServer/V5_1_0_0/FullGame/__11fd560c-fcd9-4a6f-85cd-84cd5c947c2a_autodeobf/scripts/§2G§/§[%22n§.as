package §2G§
{
   import §&T§.§'"B§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §["n§ extends §;G§
   {
      
      public static const §+"F§:String = "PiggyCurrency";
      
      public static const §`#m§:String = "Bird Coins";
      
      private static const §&!D§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §,$5§:int = 500;
      
      private static const §7n§:int = 300;
       
      
      private var §[$$§:int = 0;
      
      private var §#"^§:int = 0;
      
      private var §"!3§:§1"V§;
      
      private var §=! §:Timer;
      
      private var §0!W§:Timer;
      
      public function §["n§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §##!§() : int
      {
         return this.§[$$§;
      }
      
      public function §6!w§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§[$$§;
         var _loc4_:int = param1 - _loc3_;
         this.§[$$§ = param1;
         if(!param2)
         {
            dispatchEvent(new §'"B§(§'"B§.§,!d§,false,false,_loc4_,this.§[$$§));
         }
         return _loc4_;
      }
      
      public function §!j§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§##!§ || param1 == 0)
         {
            return;
         }
         this.§#"^§ += param1;
         if(param2)
         {
            if(!this.§0!W§)
            {
               this.§0!W§ = new Timer(§7n§,1);
               this.§0!W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@"t§);
               this.§0!W§.start();
            }
         }
         else
         {
            this.§9!E§();
         }
      }
      
      private function §@"t§(param1:TimerEvent) : void
      {
         this.§0!W§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@"t§);
         this.§0!W§.stop();
         this.§0!W§ = null;
         this.§9!E§();
      }
      
      private function §9!E§() : void
      {
         if(this.§#"^§ <= 0)
         {
            return;
         }
         if(!this.§"!3§)
         {
            this.§"!3§ = new §1"V§();
            this.§"!3§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§"!3§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§"!3§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§"!3§.willTrigger(Event.COMPLETE))
         {
            if(this.§=! §)
            {
               this.§=! §.stop();
            }
            this.§=! § = new Timer(§,$5§,1);
            this.§=! §.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@#>§);
            this.§=! §.start();
            return;
         }
         var _loc1_:int = this.§#"^§;
         this.§#"^§ = 0;
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §&!D§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§"!3§.addEventListener(Event.COMPLETE,this.§"§);
         this.§"!3§.load(_loc2_);
      }
      
      private function §"§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§"!3§.data;
         this.§"!3§.removeEventListener(Event.COMPLETE,this.§"§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §"G§.§6!@§)
            {
               §#"8§(§,A§.§2#O§.dataModel).§""[§.§6!w§(_loc3_.q);
            }
            else if(_loc3_.i == §["n§.§+"F§)
            {
               this.§6!w§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §@#>§(param1:TimerEvent) : void
      {
         this.§=! §.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@#>§);
         this.§=! §.stop();
         this.§=! § = null;
         this.§9!E§();
      }
   }
}
