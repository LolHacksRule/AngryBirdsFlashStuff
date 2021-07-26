package §^"w§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §[#M§
   {
       
      
      private var §,k§:int = 0;
      
      private var §;!@§:Array;
      
      private var §]$B§:Array;
      
      private var §[#v§:Array;
      
      private var §@$2§:Loader;
      
      public function §[#M§()
      {
         this.§;!@§ = [];
         this.§]$B§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §"#?§() : void
      {
         if(this.§,k§ == 0 && this.§;!@§.length > 0)
         {
            this.§9!<§();
         }
      }
      
      private function §9!<§() : void
      {
         ++this.§,k§;
         var _loc1_:String = this.§;!@§[0].url;
         var _loc2_:String = this.§;!@§[0].link;
         var _loc3_:String = this.§;!@§[0].linkid;
         var _loc4_:String = this.§;!@§[0].adid;
         var _loc5_:§8"P§ = this.§`"a§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§@$2§ = _loc5_.§6T§(_loc1_);
         this.§@$2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§@$2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         this.§@$2§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^"0§);
      }
      
      private function §^"0§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§;!@§.shift();
         --this.§,k§;
         this.§"#?§();
      }
      
      private function §4"v§(param1:IOErrorEvent) : void
      {
         this.§;!@§.shift();
         --this.§,k§;
         this.§"#?§();
      }
      
      public function § "V§(param1:String, param2:String, param3:String, param4:String) : §8"P§
      {
         var _loc5_:§8"P§;
         if((_loc5_ = this.§`"a§(param1,param2,param3,param4)).§ $8§())
         {
            return _loc5_;
         }
         this.§;!@§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§"#?§();
         return _loc5_;
      }
      
      private function §`"a§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §8"P§
      {
         var _loc5_:§8"P§;
         if((_loc5_ = this.§]$B§[param1]) == null)
         {
            _loc5_ = new §8"P§(param2,param3,param4);
            this.§]$B§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§@$2§ && this.§@$2§.contentLoaderInfo)
         {
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§@$2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
            this.§@$2§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^"0§);
         }
         this.§;!@§ = null;
         this.§]$B§ = null;
         this.§[#v§ = null;
      }
   }
}
