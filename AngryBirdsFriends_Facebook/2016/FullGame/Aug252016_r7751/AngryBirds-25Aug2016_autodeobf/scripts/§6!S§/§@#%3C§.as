package §6!S§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §@#<§
   {
       
      
      private var §[!I§:int = 0;
      
      private var §`u§:Array;
      
      private var §2F§:Array;
      
      private var §<#a§:Array;
      
      private var § each§:Loader;
      
      public function §@#<§()
      {
         this.§`u§ = [];
         this.§2F§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §05§() : void
      {
         if(this.§[!I§ == 0 && this.§`u§.length > 0)
         {
            this.§2"<§();
         }
      }
      
      private function §2"<§() : void
      {
         ++this.§[!I§;
         var _loc1_:String = this.§`u§[0].url;
         var _loc2_:String = this.§`u§[0].link;
         var _loc3_:String = this.§`u§[0].linkid;
         var _loc4_:String = this.§`u§[0].adid;
         var _loc5_:§"#a§ = this.§-$3§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§ each§ = _loc5_.§!#I§(_loc1_);
         this.§ each§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ each§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         this.§ each§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>$8§);
      }
      
      private function §>$8§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§`u§.shift();
         --this.§[!I§;
         this.§05§();
      }
      
      private function §5"R§(param1:IOErrorEvent) : void
      {
         this.§`u§.shift();
         --this.§[!I§;
         this.§05§();
      }
      
      public function §,!&§(param1:String, param2:String, param3:String, param4:String) : §"#a§
      {
         var _loc5_:§"#a§;
         if((_loc5_ = this.§-$3§(param1,param2,param3,param4)).§;"h§())
         {
            return _loc5_;
         }
         this.§`u§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§05§();
         return _loc5_;
      }
      
      private function §-$3§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §"#a§
      {
         var _loc5_:§"#a§;
         if((_loc5_ = this.§2F§[param1]) == null)
         {
            _loc5_ = new §"#a§(param2,param3,param4);
            this.§2F§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§ each§ && this.§ each§.contentLoaderInfo)
         {
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ each§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
            this.§ each§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>$8§);
         }
         this.§`u§ = null;
         this.§2F§ = null;
         this.§<#a§ = null;
      }
   }
}
