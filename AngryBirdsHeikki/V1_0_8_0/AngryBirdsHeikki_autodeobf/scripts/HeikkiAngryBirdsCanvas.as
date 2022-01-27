package
{
   import §!v§.§7[§;
   import §#!T§.§&2§;
   import §0!&§.§@=§;
   import §9!?§.§#!=§;
   import §9!?§.§%t§;
   import §>!E§.§@x§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.getTimer;
   
   public class HeikkiAngryBirdsCanvas extends §@x§
   {
      
      public static const VERSION:String = "0.0.0.1";
       
      
      private const § !`§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-heikki.appspot\.com))|(angrybirds\-heikki.appspot\.com)|(heikki\.angrybirds\.com))(.*)/;
      
      private var §`A§:Boolean = false;
      
      public function HeikkiAngryBirdsCanvas()
      {
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.§%=§);
         }
      }
      
      private function init() : void
      {
         if(!this.§^]§())
         {
            return;
         }
         if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
         {
            loaderInfo.addEventListener(Event.COMPLETE,this.§!6§);
         }
         else
         {
            this.§9^§();
         }
      }
      
      private function §^]§() : Boolean
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
            navigateToURL(new URLRequest("http://heikki.angrybirds.com"),"_self");
            return false;
         }
         if(!this.§ !`§.test(pageURL))
         {
            navigateToURL(new URLRequest("http://heikki.angrybirds.com"),"_self");
            return false;
         }
         return true;
      }
      
      private function §%=§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§%=§);
         this.init();
      }
      
      private function §!6§(param1:Event) : void
      {
         loaderInfo.removeEventListener(Event.COMPLETE,this.§!6§);
         this.§9^§();
      }
      
      private function §9^§() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§7!J§);
         new §2!S§(this);
      }
      
      private function §7!J§(param1:UncaughtErrorEvent) : void
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
         if(!this.§`A§)
         {
            this.§`A§ = true;
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
            §#!=§.§^!4§(§%t§.ACTION_APPLICATION_CRASH,_loc2_.toString());
            if(§&2§.§1A§ != null)
            {
               _loc4_ = §&2§.§1A§.§6Q§();
            }
            if(_loc4_ == null || _loc4_.length == 0)
            {
               _loc4_ = "NoState";
            }
            if((_loc7_ = §@=§.§!!S§) == null)
            {
               _loc7_ = "";
            }
            _loc8_ = "GPU";
            if(§7[§.§7c§)
            {
               _loc8_ = "CPU";
            }
            _loc9_ = _loc2_.toString() + "::" + _loc4_ + "::" + _loc5_ + "::" + _loc8_ + "::" + _loc7_ + "::" + VERSION;
            §#!=§.§^!4§(§%t§.§>!`§,_loc9_,_loc6_);
            if(_loc3_)
            {
               _loc12_ = _loc9_ + "::" + _loc3_;
               §#!=§.§^!4§(§%t§.§96§,_loc12_,_loc6_);
            }
         }
      }
   }
}
