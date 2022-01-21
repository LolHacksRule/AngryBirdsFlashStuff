package
{
   import § !Y§.§2#§;
   import § %§.§`M§;
   import §<!Z§.§,H§;
   import §?I§.§'k§;
   import §?I§.§2C§;
   import §finally§.§8k§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class AngryBirdsCanvasCustom extends §,H§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private const §?U§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-mcdonalds-cn.appspot\.com))|(angrybirds\-mcdonalds-cn.appspot\.com)|(mcd\.angrybirds\.com))(.*)/;
      
      private var §!!;§:Boolean = false;
      
      public function AngryBirdsCanvasCustom()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§?5§);
         }
      }
      
      private function init() : void
      {
         if(!this.§-p§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§]!S§);
         }
         else
         {
            this.§6!8§();
         }
      }
      
      private function §-p§() : Boolean
      {
         var pageURL:String = null;
         try
         {
            pageURL = ExternalInterface.call("window.location.href.toString");
         }
         catch(e:Error)
         {
            pageURL == null;
         }
         catch(e:SecurityError)
         {
            pageURL == null;
         }
         if(pageURL == null || pageURL.indexOf(".swf") != -1)
         {
            navigateToURL(new URLRequest("http://mcd.angrybirds.com"),"_self");
            return false;
         }
         if(!this.§?U§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://mcd.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
      
      private function §?5§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§?5§);
         this.init();
      }
      
      private function §]!S§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§]!S§);
         this.§6!8§();
      }
      
      private function §6!8§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§["§);
         new §2!M§(this);
      }
      
      private function §["§(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(!this.§!!;§)
         {
            this.§!!;§ = true;
            _loc2_ = 0;
            _loc3_ = null;
            _loc4_ = "";
            _loc5_ = "-";
            _loc6_ = Math.round(getTimer() / 1000);
            if(param1.error is Error)
            {
               _loc2_ = (_loc10_ = param1.error as Error).errorID;
               _loc5_ = _loc10_.message;
               _loc3_ = _loc10_.getStackTrace();
            }
            else if(param1.error is ErrorEvent)
            {
               _loc2_ = (_loc11_ = param1.error as ErrorEvent).errorID;
            }
            §'k§.§=<§(§2C§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§2#§.§>§ != null)
            {
               _loc4_ = §2#§.§>§.§@!,§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §8k§.§8h§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§`M§.§#z§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §'k§.§=<§(§2C§.§+!'§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §'k§.§=<§(§2C§.§"!4§,_loc12_,_loc6_,_loc2_);
            }
         }
      }
   }
}
