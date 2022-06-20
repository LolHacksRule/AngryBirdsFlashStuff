package §%#x§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §6y§
   {
       
      
      private var §?$%§:int = 0;
      
      private var §'!H§:Array;
      
      private var §9",§:Array;
      
      private var §&#Y§:Array;
      
      private var §+"§:Loader;
      
      public function §6y§()
      {
         this.§'!H§ = [];
         this.§9",§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §;"n§() : void
      {
         if(this.§?$%§ == 0 && this.§'!H§.length > 0)
         {
            this.§0$+§();
         }
      }
      
      private function §0$+§() : void
      {
         ++this.§?$%§;
         var _loc1_:String = this.§'!H§[0].url;
         var _loc2_:String = this.§'!H§[0].link;
         var _loc3_:String = this.§'!H§[0].linkid;
         var _loc4_:String = this.§'!H§[0].adid;
         var _loc5_:§5"j§ = this.§?"J§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§+"§ = _loc5_.§,"7§(_loc1_);
         this.§+"§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+"§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         this.§+"§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`%§);
      }
      
      private function §`%§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§'!H§.shift();
         --this.§?$%§;
         this.§;"n§();
      }
      
      private function §3"`§(param1:IOErrorEvent) : void
      {
         this.§'!H§.shift();
         --this.§?$%§;
         this.§;"n§();
      }
      
      public function §!!`§(param1:String, param2:String, param3:String, param4:String) : §5"j§
      {
         var _loc5_:§5"j§;
         if((_loc5_ = this.§?"J§(param1,param2,param3,param4)).§&i§())
         {
            return _loc5_;
         }
         this.§'!H§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§;"n§();
         return _loc5_;
      }
      
      private function §?"J§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §5"j§
      {
         var _loc5_:§5"j§;
         if((_loc5_ = this.§9",§[param1]) == null)
         {
            _loc5_ = new §5"j§(param2,param3,param4);
            this.§9",§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§+"§ && this.§+"§.contentLoaderInfo)
         {
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+"§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
            this.§+"§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`%§);
         }
         this.§'!H§ = null;
         this.§9",§ = null;
         this.§&#Y§ = null;
      }
   }
}
