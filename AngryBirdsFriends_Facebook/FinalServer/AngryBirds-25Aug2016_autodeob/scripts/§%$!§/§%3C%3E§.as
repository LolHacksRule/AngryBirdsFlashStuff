package §%$!§
{
   import §#!s§.§[J§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §<>§ extends §<,§
   {
      
      public static const §<!w§:String = "PiggyCurrency";
      
      public static const §7#t§:String = "Bird Coins";
      
      private static const §"#x§:String = "/v2/dailyreward/getPiggyBankReward?quantity";
      
      private static const §=#Y§:int = 500;
      
      private static const §<#4§:int = 300;
       
      
      private var §^#>§:int = 0;
      
      private var §7Y§:int = 0;
      
      private var §!" §:§5$!§;
      
      private var §%!j§:Timer;
      
      private var §72§:Timer;
      
      public function §<>§(param1:Object = null)
      {
         super(param1);
      }
      
      public function get §[#u§() : int
      {
         return this.§^#>§;
      }
      
      public function §1u§(param1:int, param2:Boolean = false) : int
      {
         var _loc3_:int = this.§^#>§;
         var _loc4_:int = param1 - _loc3_;
         this.§^#>§ = param1;
         if(!param2)
         {
            dispatchEvent(new §[J§(§[J§.§ !&§,false,false,_loc4_,this.§^#>§));
         }
         return _loc4_;
      }
      
      public function §5#G§(param1:int, param2:Boolean) : void
      {
         if(param1 > this.§[#u§ || param1 == 0)
         {
            return;
         }
         this.§7Y§ += param1;
         if(param2)
         {
            if(!this.§72§)
            {
               this.§72§ = new Timer(§<#4§,1);
               this.§72§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-#o§);
               this.§72§.start();
            }
         }
         else
         {
            this.§^![§();
         }
      }
      
      private function §-#o§(param1:TimerEvent) : void
      {
         this.§72§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-#o§);
         this.§72§.stop();
         this.§72§ = null;
         this.§^![§();
      }
      
      private function §^![§() : void
      {
         if(this.§7Y§ <= 0)
         {
            return;
         }
         if(!this.§!" §)
         {
            this.§!" § = new §5$!§();
            this.§!" §.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§!" §.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§!" §.dataFormat = URLLoaderDataFormat.TEXT;
         }
         if(this.§!" §.willTrigger(Event.COMPLETE))
         {
            if(this.§%!j§)
            {
               this.§%!j§.stop();
            }
            this.§%!j§ = new Timer(§=#Y§,1);
            this.§%!j§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,"Q§);
            this.§%!j§.start();
            return;
         }
         var _loc1_:int = this.§7Y§;
         this.§7Y§ = 0;
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §"#x§ + "=" + _loc1_);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§!" §.addEventListener(Event.COMPLETE,this.§'#m§);
         this.§!" §.load(_loc2_);
      }
      
      private function §'#m§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = this.§!" §.data;
         this.§!" §.removeEventListener(Event.COMPLETE,this.§'#m§);
         for each(_loc3_ in _loc2_.items)
         {
            if(_loc3_.i == §=]§.§;Q§)
            {
               §+3§(§8G§.§%#S§.dataModel).§<$&§.§1u§(_loc3_.q);
            }
            else if(_loc3_.i == §<>§.§<!w§)
            {
               this.§1u§(_loc3_.q,false);
            }
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         throw new Error("V2--Get piggy bank reward error:" + param1.text + " id: " + param1.errorID);
      }
      
      private function §,"Q§(param1:TimerEvent) : void
      {
         this.§%!j§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,"Q§);
         this.§%!j§.stop();
         this.§%!j§ = null;
         this.§^![§();
      }
   }
}
