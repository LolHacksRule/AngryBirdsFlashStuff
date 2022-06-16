package §4#a§
{
   import §"!!§.§+"0§;
   import §"$!§.§7#U§;
   import §%#w§.§2#s§;
   import §-!S§.§##>§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §8#!§.§5`§;
   import §<"w§.§1"W§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Timer;
   
   public class §<#F§ extends EventDispatcher implements §1"W§
   {
      
      private static const §,#w§:int = 30000;
      
      public static const §"#m§:String = "/league";
      
      private static const §^#%§:String = "/currentStandings";
      
      private static const §'$+§:String = "/currentLevelStandings";
      
      private static const §,#h§:String = "/claimLeagueReward";
      
      private static const §2U§:String = "/getProfile";
      
      public static const §?#'§:String = "/saveProfile";
      
      private static var §<"x§:Number = 0;
       
      
      private var §`">§:Timer;
      
      private var §#"e§:§1"V§;
      
      private var §["q§:§1"V§;
      
      private var §7"G§:§1"V§;
      
      private var §]l§:§1"V§;
      
      private var §4!U§:§1"V§;
      
      private const §9"g§:String = "/getAllUnconcludedResults";
      
      private const §^[§:String = "/claimAllRewards";
      
      private const §+#a§:String = "/getAllPreviousResults";
      
      protected var §6!z§:Object;
      
      private var §@"O§:Boolean;
      
      public function §<#F§(param1:IEventDispatcher = null)
      {
         this.§6!z§ = {};
         super(param1);
      }
      
      public function § !>§(param1:Boolean = false) : void
      {
         if(param1 && this.§`!4§() && §2#s§.§6!§.§%"6§())
         {
            this.§,m§(new §7#U§(§7#U§.§^G§,§2#s§.§6!§.§%"6§()));
            return;
         }
         this.§#"e§ = new §1"V§();
         this.§#"e§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§#"e§.addEventListener(Event.COMPLETE,this.§,m§);
         this.§#"e§.addEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         this.§#"e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         this.§#"e§.addEventListener(§;m§.§!$5§,this.§+$=§);
         var _loc2_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §"#m§ + §^#%§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§#"e§.load(_loc2_);
      }
      
      public function §-%§() : void
      {
         this.§["q§ = new §1"V§();
         this.§["q§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§["q§.addEventListener(Event.COMPLETE,this.§9$2§);
         this.§["q§.addEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         this.§["q§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         this.§["q§.addEventListener(§;m§.§!$5§,this.§+$=§);
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §"#m§ + §2U§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§["q§.load(_loc1_);
      }
      
      public function §2"d§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §"#m§ + §,#h§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]l§ = new §1"V§();
         this.§]l§.addEventListener(Event.COMPLETE,this.§4$$§);
         this.§]l§.addEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
         this.§]l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
         this.§]l§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]l§.load(_loc1_);
      }
      
      public function §6">§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9"g§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§7"G§ = new §1"V§();
         this.§7"G§.addEventListener(Event.COMPLETE,this.§?h§);
         this.§7"G§.addEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         this.§7"G§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         this.§7"G§.addEventListener(§;m§.§!$5§,this.§+$=§);
         this.§7"G§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§7"G§.load(_loc1_);
      }
      
      public function §">§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§^[§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§]l§ = new §1"V§();
         this.§]l§.addEventListener(Event.COMPLETE,this.§7$<§);
         this.§]l§.addEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
         this.§]l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
         this.§]l§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]l§.load(_loc1_);
      }
      
      public function §###§() : void
      {
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§+#a§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§4!U§ = new §1"V§();
         this.§4!U§.addEventListener(Event.COMPLETE,this.§?!e§);
         this.§4!U§.addEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         this.§4!U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         this.§4!U§.addEventListener(§;m§.§!$5§,this.§+$=§);
         this.§4!U§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§4!U§.load(_loc1_);
      }
      
      protected function §?h§(param1:Event) : void
      {
         this.§7"G§.removeEventListener(Event.COMPLETE,this.§?h§);
         this.§7"G§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         this.§7"G§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         this.§7"G§.removeEventListener(§;m§.§!$5§,this.§+$=§);
         dispatchEvent(new §7#U§(§7#U§.§,!e§,param1.currentTarget.data));
      }
      
      protected function §7$<§(param1:Event) : void
      {
         if(this.§]l§)
         {
            this.§]l§.removeEventListener(Event.COMPLETE,this.§7$<§);
            this.§]l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
            this.§]l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
            this.§]l§ = null;
         }
         dispatchEvent(new §7#U§(§7#U§.§^i§,param1.currentTarget.data));
      }
      
      protected function §?!e§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§4!U§)
         {
            this.§4!U§.removeEventListener(Event.COMPLETE,this.§?!e§);
            this.§4!U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
            this.§4!U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
            this.§4!U§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §7#U§(§7#U§.§9u§,_loc2_));
         }
      }
      
      private function §,m§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§#"e§)
         {
            this.§#"e§.removeEventListener(Event.COMPLETE,this.§,m§);
            this.§#"e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
            this.§#"e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
            this.§#"e§.removeEventListener(§;m§.§!$5§,this.§+$=§);
            this.§#"e§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §7#U§(param1) && §7#U§(param1).data)
         {
            _loc2_ = §7#U§(param1).data;
         }
         dispatchEvent(new §7#U§(§7#U§.§^G§,_loc2_));
      }
      
      private function §'=§(param1:TimerEvent) : void
      {
         this.§`">§.stop();
         this.§`">§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'=§);
         this.§`">§ = null;
         this.§ !>§();
      }
      
      private function §9$2§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§["q§)
         {
            this.§["q§.removeEventListener(Event.COMPLETE,this.§9$2§);
            this.§["q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
            this.§["q§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
            this.§["q§.removeEventListener(§;m§.§!$5§,this.§+$=§);
            this.§["q§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §7#U§(§7#U§.§[l§,_loc2_));
      }
      
      protected function §4$$§(param1:Event) : void
      {
         this.§]l§.removeEventListener(Event.COMPLETE,this.§4$$§);
         this.§]l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
         this.§]l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
         this.§]l§ = null;
         dispatchEvent(new §7#U§(§7#U§.§ !y§,param1.currentTarget.data));
      }
      
      private function §+$=§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(this.§#"e§)
         {
            this.§#"e§.removeEventListener(Event.COMPLETE,this.§,m§);
            this.§#"e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
            this.§#"e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
            this.§#"e§.removeEventListener(§;m§.§!$5§,this.§+$=§);
            this.§#"e§ = null;
         }
         if(this.§`">§)
         {
            this.§`">§.stop();
            this.§`">§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'=§);
            this.§`">§ = null;
         }
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §8$"§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(this.§]l§)
         {
            this.§]l§.removeEventListener(Event.COMPLETE,this.§7$<§);
            this.§]l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§8$"§);
            this.§]l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§8$"§);
            this.§]l§ = null;
         }
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §?@§(param1:String, param2:Boolean = true) : §+"0§
      {
         var _loc3_:Object = null;
         if(param2 && this.§6!z§[param1] && §+"0§(this.§6!z§[param1]).§>";§() && this.§6!z§[param1].data.length > 0)
         {
            if(§2#s§.§6!§.§&!A§() >= §2#s§.§+#I§)
            {
               this.§7"N§();
               this.§6!z§[param1].data.sortOn("rank",Array.NUMERIC);
            }
            for each(_loc3_ in this.§6!z§[param1].data)
            {
               if(_loc3_.targetOffset)
               {
                  _loc3_.targetOffset = 0;
               }
               if(_loc3_.offset)
               {
                  _loc3_.offset = 0;
               }
            }
            return this.§6!z§[param1];
         }
         return this.§6!z§[param1] = new §+"0§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName,AngryBirdsBase.SERVER_ROOT + §"#m§ + §'$+§ + "?level=" + param1,false,null,true,false,true);
      }
      
      private function §7"N§() : void
      {
         var _loc1_:String = null;
         if(!this.§@"O§)
         {
            this.§@"O§ = true;
            for each(_loc1_ in §5`§.§6!§.levelIDs)
            {
               if(this.§?"+§(_loc1_))
               {
                  this.§?"+§(_loc1_).§""§ = 0;
               }
            }
         }
      }
      
      public function §?g§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(this.§6!z§[_loc2_])
            {
               this.§6!z§[_loc2_] = null;
            }
         }
      }
      
      public function §?"+§(param1:String) : §+"0§
      {
         return this.§6!z§[param1];
      }
      
      public function §0#T§(param1:String, param2:String) : Number
      {
         var _loc3_:§+"0§ = this.§6!z§[param1] as §+"0§;
         return _loc3_.§ "R§(param2);
      }
      
      public function §8R§() : Boolean
      {
         return this.§#"e§ != null;
      }
      
      private function §`!4§() : Boolean
      {
         var _loc1_:Number = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
         var _loc2_:int = (_loc1_ - §<"x§) / 1000;
         _loc2_ = Math.max(0,_loc2_);
         if(_loc2_ < §5`§.§9"I§)
         {
            return true;
         }
         §<"x§ = _loc1_;
         return false;
      }
   }
}
