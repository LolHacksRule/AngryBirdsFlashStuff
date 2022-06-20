package §&"J§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §%y§.§`"Y§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §2"e§ extends §6r§
   {
      
      public static const §&#o§:String = "PiggyCurrency";
      
      public static const §+"Y§:String = "Bird Coins";
      
      private static const §0L§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §4#A§:int = 500;
      
      private static const §^e§:int = 300;
       
      
      private var §;!P§:int = 0;
      
      private var §3M§:int = 0;
      
      private var §<#Y§:§4"v§;
      
      private var §`#0§:Timer;
      
      private var §0"`§:Timer;
      
      public function §2"e§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §5##§() : int
      {
         return this.§;!P§;
      }
      
      public function §`"p§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§;!P§;
         var _loc4_:int = param1 - _loc3_;
         this.§;!P§ = param1;
         if(!param2)
         {
            dispatchEvent(new §`"Y§(§`"Y§.§6#x§,false,false,_loc4_,this.§;!P§));
         }
         return _loc4_;
      }
      
      public function §3"z§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§5##§ || param1 == 0)
         {
            return;
         }
         this.§3M§ += param1;
         if(param2)
         {
            if(!this.§0"`§)
            {
               this.§0"`§ = new Timer(§^e§,1);
               this.§0"`§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ "n§);
               this.§0"`§.start();
            }
         }
         else
         {
            this.§`#-§();
         }
      }
      
      private function § "n§(param1:TimerEvent) : void
      {
         this.§0"`§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ "n§);
         this.§0"`§.stop();
         this.§0"`§ = null;
         this.§`#-§();
      }
      
      private function §`#-§() : void
      {
         if(this.§3M§ <= 0)
         {
            return;
         }
         if(!this.§<#Y§)
         {
            this.§<#Y§ = new §4"v§();
            this.§<#Y§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§<#Y§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§<#Y§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§<#Y§.willTrigger(Event.COMPLETE))
         {
            if(this.§`#0§)
            {
               this.§`#0§.stop();
            }
            this.§`#0§ = new Timer(§4#A§,1);
            this.§`#0§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!x§);
            this.§`#0§.start();
            return;
         }
         var _loc1_:int = this.§3M§;
         this.§3M§ = 0;
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §0L§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§<#Y§.addEventListener(Event.COMPLETE,this.§@!C§);
         this.§<#Y§.load(_loc2_);
      }
      
      private function §@!C§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§<#Y§.data;
         this.§<#Y§.removeEventListener(Event.COMPLETE,this.§@!C§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §6$0§.§3#j§)
            {
               §`]§(§-#+§.§;!$§.dataModel).§>p§.§`"p§(_loc3_.q);
            }
            else if(_loc3_.i == §2"e§.§&#o§)
            {
               this.§`"p§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §5!x§(param1:TimerEvent) : void
      {
         this.§`#0§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5!x§);
         this.§`#0§.stop();
         this.§`#0§ = null;
         this.§`#-§();
      }
   }
}
