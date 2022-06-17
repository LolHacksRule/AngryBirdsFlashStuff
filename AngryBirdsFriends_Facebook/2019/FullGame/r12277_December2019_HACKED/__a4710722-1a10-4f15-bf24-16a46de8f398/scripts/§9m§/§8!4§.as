package §9m§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.Security;
   
   public class §8!4§
   {
       
      
      private var §?"J§:int = 0;
      
      private var §+"s§:Array;
      
      private var § "_§:Array;
      
      private var §[#E§:Array;
      
      private var §<#G§:Loader;
      
      public function §8!4§()
      {
         this.§+"s§ = [];
         this.§ "_§ = [];
         super();
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
      }
      
      private function §1#R§() : void
      {
         if(this.§?"J§ == 0 && this.§+"s§.length > 0)
         {
            this.§'!C§();
         }
      }
      
      private function §'!C§() : void
      {
         ++this.§?"J§;
         var _loc1_:String = this.§+"s§[0].url;
         var _loc2_:String = this.§+"s§[0].link;
         var _loc3_:String = this.§+"s§[0].linkid;
         var _loc4_:String = this.§+"s§[0].adid;
         var _loc5_:§-w§ = this.§0!U§(_loc1_,_loc2_,_loc3_,_loc4_);
         this.§<#G§ = _loc5_.§3"I§(_loc1_);
         this.§<#G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<#G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         this.§<#G§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#i§);
      }
      
      private function §!#i§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§+"s§.shift();
         --this.§?"J§;
         this.§1#R§();
      }
      
      private function §%! §(param1:IOErrorEvent) : void
      {
         this.§+"s§.shift();
         --this.§?"J§;
         this.§1#R§();
      }
      
      public function §'!r§(param1:String, param2:String, param3:String, param4:String) : §-w§
      {
         var _loc5_:§-w§;
         if((_loc5_ = this.§0!U§(param1,param2,param3,param4)).§5!K§())
         {
            return _loc5_;
         }
         this.§+"s§.push({
            "url":param1,
            "link":param2,
            "linkid":param3,
            "adid":param4
         });
         this.§1#R§();
         return _loc5_;
      }
      
      private function §0!U§(param1:String, param2:String = "", param3:String = "", param4:String = "") : §-w§
      {
         var _loc5_:§-w§;
         if((_loc5_ = this.§ "_§[param1]) == null)
         {
            _loc5_ = new §-w§(param2,param3,param4);
            this.§ "_§[param1] = _loc5_;
         }
         return _loc5_;
      }
      
      public function dispose() : void
      {
         if(this.§<#G§ && this.§<#G§.contentLoaderInfo)
         {
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§<#G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
            this.§<#G§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#i§);
         }
         this.§+"s§ = null;
         this.§ "_§ = null;
         this.§[#E§ = null;
      }
   }
}
