package §]"'§
{
   import §,#C§.§;"L§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §8"n§ extends §"$>§
   {
      
      public static const §%!3§:String = "PiggyCurrency";
      
      public static const §""s§:String = "Bird Coins";
      
      private static const §@"7§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §`f§:int = 500;
      
      private static const §@@§:int = 300;
       
      
      private var §5#x§:int = 0;
      
      private var §#"S§:int = 0;
      
      private var §'#c§:§'!n§;
      
      private var §>h§:Timer;
      
      private var §0!d§:Timer;
      
      public function §8"n§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §"$6§() : int
      {
         return this.§5#x§;
      }
      
      public function §2#[§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§5#x§;
         var _loc4_:int = param1 - _loc3_;
         this.§5#x§ = param1;
         if(!param2)
         {
            dispatchEvent(new §;"L§(§;"L§.§1#5§,false,false,_loc4_,this.§5#x§));
         }
         return _loc4_;
      }
      
      public function §9$C§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§"$6§ || param1 == 0)
         {
            return;
         }
         this.§#"S§ += param1;
         if(param2)
         {
            if(!this.§0!d§)
            {
               this.§0!d§ = new Timer(§@@§,1);
               this.§0!d§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+$+§);
               this.§0!d§.start();
            }
         }
         else
         {
            this.§ W§();
         }
      }
      
      private function §+$+§(param1:TimerEvent) : void
      {
         this.§0!d§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§+$+§);
         this.§0!d§.stop();
         this.§0!d§ = null;
         this.§ W§();
      }
      
      private function § W§() : void
      {
         if(this.§#"S§ <= 0)
         {
            return;
         }
         if(!this.§'#c§)
         {
            this.§'#c§ = new §'!n§();
            this.§'#c§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§'#c§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§'#c§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§'#c§.willTrigger(Event.COMPLETE))
         {
            if(this.§>h§)
            {
               this.§>h§.stop();
            }
            this.§>h§ = new Timer(§`f§,1);
            this.§>h§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§9!t§);
            this.§>h§.start();
            return;
         }
         var _loc1_:int = this.§#"S§;
         this.§#"S§ = 0;
         var _loc2_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §@"7§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§'#c§.addEventListener(Event.COMPLETE,this.§8!]§);
         this.§'#c§.load(_loc2_);
      }
      
      private function §8!]§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§'#c§.data;
         this.§'#c§.removeEventListener(Event.COMPLETE,this.§8!]§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §>I§.§ !C§)
            {
               §@"%§(§'"a§.§!!8§.dataModel).§8!8§.§2#[§(_loc3_.q);
            }
            else if(_loc3_.i == §8"n§.§%!3§)
            {
               this.§2#[§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §9!t§(param1:TimerEvent) : void
      {
         this.§>h§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§9!t§);
         this.§>h§.stop();
         this.§>h§ = null;
         this.§ W§();
      }
   }
}
