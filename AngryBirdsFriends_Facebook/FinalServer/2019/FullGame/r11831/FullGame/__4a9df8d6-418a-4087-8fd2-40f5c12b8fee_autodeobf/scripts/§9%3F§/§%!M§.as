package §9?§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §%!M§
   {
       
      
      private var §@#9§:int = 0;
      
      private var §"Q§:Array;
      
      private var §[+§:Array;
      
      private var §=!]§:Array;
      
      private var §2!N§:Loader;
      
      public function §%!M§()
      {
         this.§"Q§ = [];
         this.§[+§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §"$1§() : void
      {
         if(this.§@#9§ == 0 && this.§"Q§.length > 0)
         {
            this.§2![§();
         }
      }
      
      private function §2![§() : void
      {
         ++this.§@#9§;
         var _loc1_:String = this.§"Q§[0].url;
         var _loc2_:String = this.§"Q§[0].link;
         var _loc3_:String = this.§"Q§[0].linkid;
         var _loc4_:String = this.§"Q§[0].adid;
         var _loc5_:§""S§ = this.§[y§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§2!N§ = _loc5_.§!!f§(_loc1_);
         this.§2!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         this.§2!N§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-O§);
      }
      
      private function §-O§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"Q§.shift();
         --this.§@#9§;
         this.§"$1§();
      }
      
      private function §3Q§(param1:IOErrorEvent) : void
      {
         this.§"Q§.shift();
         --this.§@#9§;
         this.§"$1§();
      }
      
      public function §!!S§(param1:String, param2:String, param3:String, param4:String) : §""S§
      {
         var _loc5_:§""S§;
         if((_loc5_ = this.§[y§(param1,param2,param3,param4)).§[#e§())
         {
            return _loc5_;
         }
         this.§"Q§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§"$1§();
         return _loc5_;
      }
      
      private function §[y§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §""S§
      {
         var _loc5_:§""S§;
         if((_loc5_ = this.§[+§[param1]) == null)
         {
            _loc5_ = new §""S§(param2,param3,param4);
            this.§[+§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§2!N§ && this.§2!N§.contentLoaderInfo)
         {
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§2!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
            this.§2!N§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-O§);
         }
         this.§"Q§ = null;
         this.§[+§ = null;
         this.§=!]§ = null;
      }
   }
}
