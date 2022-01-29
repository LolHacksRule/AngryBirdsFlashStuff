package §6§#3
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §0"m§
   {
       
      
      private var §"Q§:int = 0;
      
      private var §!"s§:Array;
      
      private var §'"u§:Array;
      
      private var §%s§:Array;
      
      private var §>v§:Loader;
      
      public function §0"m§()
      {
         this.§!"s§ = [];
         this.§'"u§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §@!-§() : void
      {
         if(this.§"Q§ == 0 && this.§!"s§.length > 0)
         {
            this.§^W§();
         }
      }
      
      private function §^W§() : void
      {
         ++this.§"Q§;
         var _loc1_:String = this.§!"s§[0].url;
         var _loc2_:String = this.§!"s§[0].link;
         var _loc3_:String = this.§!"s§[0].linkid;
         var _loc4_:String = this.§!"s§[0].adid;
         var _loc5_:§@#J§ = this.§4$!§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§>v§ = _loc5_.§=!Q§(_loc1_);
         this.§>v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         this.§>v§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1#o§);
      }
      
      private function §1#o§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§!"s§.shift();
         --this.§"Q§;
         this.§@!-§();
      }
      
      private function §5L§(param1:IOErrorEvent) : void
      {
         this.§!"s§.shift();
         --this.§"Q§;
         this.§@!-§();
      }
      
      public function §5#§(param1:String, param2:String, param3:String, param4:String) : §@#J§
      {
         var _loc5_:§@#J§;
         if((_loc5_ = this.§4$!§(param1,param2,param3,param4)).§^y§())
         {
            return _loc5_;
         }
         this.§!"s§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§@!-§();
         return _loc5_;
      }
      
      private function §4$!§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §@#J§
      {
         var _loc5_:§@#J§;
         if((_loc5_ = this.§'"u§[param1]) == null)
         {
            _loc5_ = new §@#J§(param2,param3,param4);
            this.§'"u§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§>v§ && this.§>v§.contentLoaderInfo)
         {
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
            this.§>v§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1#o§);
         }
         this.§!"s§ = null;
         this.§'"u§ = null;
         this.§%s§ = null;
      }
   }
}
