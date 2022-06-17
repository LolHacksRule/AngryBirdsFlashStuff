package §3R§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §4#=§
   {
       
      
      private var §`y§:int = 0;
      
      private var §0"G§:Array;
      
      private var §-u§:Array;
      
      private var §@z§:Array;
      
      private var §&![§:Loader;
      
      public function §4#=§()
      {
         this.§0"G§ = [];
         this.§-u§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §'#!§() : void
      {
         if(this.§`y§ == 0 && this.§0"G§.length > 0)
         {
            this.§7$;§();
         }
      }
      
      private function §7$;§() : void
      {
         ++this.§`y§;
         var _loc1_:String = this.§0"G§[0].url;
         var _loc2_:String = this.§0"G§[0].link;
         var _loc3_:String = this.§0"G§[0].linkid;
         var _loc4_:String = this.§0"G§[0].adid;
         var _loc5_:§##X§ = this.§;O§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§&![§ = _loc5_.§9#'§(_loc1_);
         this.§&![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&![§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         this.§&![§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#g§);
      }
      
      private function §!#g§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0"G§.shift();
         --this.§`y§;
         this.§'#!§();
      }
      
      private function §%Y§(param1:IOErrorEvent) : void
      {
         this.§0"G§.shift();
         --this.§`y§;
         this.§'#!§();
      }
      
      public function §8!K§(param1:String, param2:String, param3:String, param4:String) : §##X§
      {
         var _loc5_:§##X§;
         if((_loc5_ = this.§;O§(param1,param2,param3,param4)).§;"A§())
         {
            return _loc5_;
         }
         this.§0"G§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§'#!§();
         return _loc5_;
      }
      
      private function §;O§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §##X§
      {
         var _loc5_:§##X§;
         if((_loc5_ = this.§-u§[param1]) == null)
         {
            _loc5_ = new §##X§(param2,param3,param4);
            this.§-u§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§&![§ && this.§&![§.contentLoaderInfo)
         {
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
            this.§&![§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#g§);
         }
         this.§0"G§ = null;
         this.§-u§ = null;
         this.§@z§ = null;
      }
   }
}
