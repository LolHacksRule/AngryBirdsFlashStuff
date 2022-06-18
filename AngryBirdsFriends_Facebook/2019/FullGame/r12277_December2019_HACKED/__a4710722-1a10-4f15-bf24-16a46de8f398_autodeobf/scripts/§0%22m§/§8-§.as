package §0"M§
{
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import §-"S§.§>#G§;
   import §1!1§.§<#M§;
   import §3#t§.§51§;
   import §4#$§.§5"L§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §7"1§.§="A§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §;J§.§"#`§;
   import §>#Y§.§,#b§;
   import §^#?§.§?#,§;
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
   
   public class §8-§ extends EventDispatcher implements §"#`§
   {
      
      private static const §[`§:int = 30000;
      
      public static const §,$4§:String = "/league";
      
      private static const §1"f§:String = "/currentStandings";
      
      private static const §%!F§:String = "/currentLevelStandings";
      
      private static const §'$=§:String = "/claimLeagueReward";
      
      private static const §^K§:String = "/getProfile";
      
      public static const §]$&§:String = "/saveProfile";
      
      private static var §[#&§:Number = 0;
      
      private static var §^"=§:int;
       
      
      private var §,"D§:Timer;
      
      private var §["M§:§5"f§;
      
      private var §^"4§:§5"f§;
      
      private var §5^§:§5"f§;
      
      private var §1"T§:§5"f§;
      
      private var §+#M§:§5"f§;
      
      private var §?#Y§:Array;
      
      private const §1"I§:String = "/getAllUnconcludedResults";
      
      private const §4!K§:String = "/claimAllRewards";
      
      private const §`#R§:String = "/getAllPreviousResults";
      
      protected var §9!G§:Object;
      
      private var §+1§:Boolean;
      
      public function §8-§(param1:IEventDispatcher = null)
      {
         this.§?#Y§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         this.§9!G§ = {};
         super(param1);
      }
      
      public function §0W§(param1:int) : void
      {
         if(this.§1"B§() && §?#,§.§3"1§.§8#O§() && param1 == §^"=§)
         {
            this.§+#Y§(new §<#M§(§<#M§.§"!n§,§?#,§.§3"1§.§8#O§()));
            return;
         }
         this.§["M§ = new §5"f§();
         this.§["M§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§["M§.addEventListener(Event.COMPLETE,this.§+#Y§);
         this.§["M§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         this.§["M§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         this.§["M§.addEventListener(§;" §.§`S§,this.§<"a§);
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §,$4§ + §1"f§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§["M§.load(_loc2_);
         §^"=§ = param1;
      }
      
      public function §!"b§(param1:int) : void
      {
         this.§^"4§ = new §5"f§();
         this.§^"4§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§^"4§.addEventListener(Event.COMPLETE,this.§=#b§);
         this.§^"4§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         this.§^"4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         this.§^"4§.addEventListener(§;" §.§`S§,this.§<"a§);
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §,$4§ + §^K§);
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§^"4§.load(_loc2_);
      }
      
      public function §2!V§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §,$4§ + §'$=§);
         if(§5"L§.§3"1§.§`#p§() > 0)
         {
            _loc1_.url += "&tournamentId=" + §5"L§.§3"1§.§`#p§();
         }
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§1"T§ = new §5"f§();
         this.§1"T§.addEventListener(Event.COMPLETE,this.§`U§);
         this.§1"T§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
         this.§1"T§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
         this.§1"T§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1"T§.load(_loc1_);
      }
      
      public function §^"0§(param1:int) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§1"I§ + "?st=" + §="A§.§<!9§);
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = this.§=l§();
         if(param1 > 0)
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         this.§5^§ = new §5"f§();
         this.§5^§.addEventListener(Event.COMPLETE,this.§->§);
         this.§5^§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         this.§5^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         this.§5^§.addEventListener(§;" §.§`S§,this.§<"a§);
         this.§5^§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§5^§.load(_loc2_);
      }
      
      public function §=!`§(param1:int) : void
      {
         var _loc2_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§4!K§ + "?st=" + §="A§.§<!9§);
         if(param1 <= 0)
         {
            _loc2_.url += "&tournamentId=" + §5"L§.§3"1§.§`#p§();
         }
         else
         {
            _loc2_.url += "&tournamentId=" + param1;
         }
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§1"T§ = new §5"f§();
         this.§1"T§.addEventListener(Event.COMPLETE,this.§`!%§);
         this.§1"T§.addEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
         this.§1"T§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
         this.§1"T§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§1"T§.load(_loc2_);
      }
      
      public function §?!p§() : void
      {
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§`#R§);
         _loc1_.method = URLRequestMethod.GET;
         _loc1_.contentType = "application/json";
         this.§+#M§ = new §5"f§();
         this.§+#M§.addEventListener(Event.COMPLETE,this.§ $E§);
         this.§+#M§.addEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         this.§+#M§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         this.§+#M§.addEventListener(§;" §.§`S§,this.§<"a§);
         this.§+#M§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§+#M§.load(_loc1_);
      }
      
      protected function §->§(param1:Event) : void
      {
         this.§5^§.removeEventListener(Event.COMPLETE,this.§->§);
         this.§5^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         this.§5^§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         this.§5^§.removeEventListener(§;" §.§`S§,this.§<"a§);
         dispatchEvent(new §<#M§(§<#M§.§7#x§,param1.currentTarget.data));
      }
      
      protected function §`!%§(param1:Event) : void
      {
         if(this.§1"T§)
         {
            this.§1"T§.removeEventListener(Event.COMPLETE,this.§`!%§);
            this.§1"T§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
            this.§1"T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
            this.§1"T§ = null;
         }
         dispatchEvent(new §<#M§(§<#M§.§2$A§,param1.currentTarget.data));
      }
      
      protected function § $E§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§+#M§)
         {
            this.§+#M§.removeEventListener(Event.COMPLETE,this.§ $E§);
            this.§+#M§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
            this.§+#M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
            this.§+#M§ = null;
            if(param1 && param1.currentTarget)
            {
               _loc2_ = param1.currentTarget.data;
            }
            dispatchEvent(new §<#M§(§<#M§.§;a§,_loc2_));
         }
      }
      
      private function §+#Y§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§["M§)
         {
            this.§["M§.removeEventListener(Event.COMPLETE,this.§+#Y§);
            this.§["M§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
            this.§["M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
            this.§["M§.removeEventListener(§;" §.§`S§,this.§<"a§);
            this.§["M§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         else if(param1 && §<#M§(param1) && §<#M§(param1).data)
         {
            _loc2_ = §<#M§(param1).data;
         }
         dispatchEvent(new §<#M§(§<#M§.§"!n§,_loc2_));
      }
      
      private function §@#[§(param1:TimerEvent) : void
      {
         this.§,"D§.stop();
         this.§,"D§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@#[§);
         this.§,"D§ = null;
         this.§0W§(§5"L§.§3"1§.§`#p§());
      }
      
      private function §=#b§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this.§^"4§)
         {
            this.§^"4§.removeEventListener(Event.COMPLETE,this.§=#b§);
            this.§^"4§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
            this.§^"4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
            this.§^"4§.removeEventListener(§;" §.§`S§,this.§<"a§);
            this.§^"4§ = null;
         }
         if(param1 && param1.currentTarget)
         {
            _loc2_ = param1.currentTarget.data;
         }
         dispatchEvent(new §<#M§(§<#M§.§<b§,_loc2_));
      }
      
      protected function §`U§(param1:Event) : void
      {
         this.§1"T§.removeEventListener(Event.COMPLETE,this.§`U§);
         this.§1"T§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
         this.§1"T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
         this.§1"T§ = null;
         dispatchEvent(new §<#M§(§<#M§.§ !r§,param1.currentTarget.data));
      }
      
      private function §<"a§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(this.§["M§)
         {
            this.§["M§.removeEventListener(Event.COMPLETE,this.§+#Y§);
            this.§["M§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
            this.§["M§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
            this.§["M§.removeEventListener(§;" §.§`S§,this.§<"a§);
            this.§["M§ = null;
         }
         if(this.§,"D§)
         {
            this.§,"D§.stop();
            this.§,"D§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§@#[§);
            this.§,"D§ = null;
         }
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §9!F§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(this.§1"T§)
         {
            this.§1"T§.removeEventListener(Event.COMPLETE,this.§`!%§);
            this.§1"T§.removeEventListener(IOErrorEvent.IO_ERROR,this.§9!F§);
            this.§1"T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!F§);
            this.§1"T§ = null;
         }
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      public function §?"x§(param1:String, param2:Boolean = true) : §51§
      {
         var _loc3_:Object = null;
         if(param2 && this.§9!G§[param1] && §51§(this.§9!G§[param1]).§4"§() && this.§9!G§[param1].data.length > 0)
         {
            if(§?#,§.§3"1§.§2M§() >= §?#,§.§3#`§)
            {
               this.§&"O§();
               this.§9!G§[param1].data.sortOn("rank",Array.NUMERIC);
            }
            for each(_loc3_ in this.§9!G§[param1].data)
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
            return this.§9!G§[param1];
         }
         return this.§9!G§[param1] = new §51§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName,AngryBirdsBase.SERVER_ROOT + §,$4§ + §%!F§ + "?level=" + param1 + "&" + §5"L§.§3"1§.§ !U§(),false,null,true,false,true);
      }
      
      private function §&"O§() : void
      {
         var _loc1_:String = null;
         if(!this.§+1§)
         {
            this.§+1§ = true;
            for each(_loc1_ in §5"L§.§3"1§.levelIDs)
            {
               if(this.§<w§(_loc1_))
               {
                  this.§<w§(_loc1_).§7H§ = 0;
               }
            }
         }
      }
      
      public function §3H§() : void
      {
         this.§9!G§ = {};
      }
      
      public function §<w§(param1:String) : §51§
      {
         return this.§9!G§[param1];
      }
      
      public function §&#i§(param1:String, param2:String) : Number
      {
         var _loc3_:§51§ = this.§9!G§[param1] as §51§;
         return _loc3_.§`!d§(param2);
      }
      
      public function §#!?§() : Boolean
      {
         return this.§["M§ != null;
      }
      
      private function §1"B§() : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = §5"L§.§3"1§.§@!-§();
         if(_loc1_ < §5"L§.§4"z§)
         {
            return false;
         }
         _loc2_ = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
         _loc1_ = (_loc2_ - §[#&§) / 1000;
         _loc1_ = Math.max(0,_loc1_);
         if(_loc1_ < §5"L§.§4"z§)
         {
            return true;
         }
         §[#&§ = _loc2_;
         return false;
      }
      
      public function §]r§() : void
      {
         §^"=§ = -1;
      }
      
      private function §=l§() : String
      {
         return this.§>O§(this.§?#Y§);
      }
      
      private function §>O§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
   }
}
