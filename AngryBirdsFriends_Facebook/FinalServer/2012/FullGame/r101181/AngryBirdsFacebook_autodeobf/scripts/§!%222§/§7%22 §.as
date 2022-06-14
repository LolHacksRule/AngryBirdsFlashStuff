package §!"2§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §7" §
   {
       
      
      private var §!"&§:int = 0;
      
      private var §!z§:Array;
      
      private var §@!o§:Array;
      
      private var §[e§:Array;
      
      public function §7" §()
      {
         this.§!z§ = [];
         this.§@!o§ = [];
         super();
      }
      
      public function §`;§(param1:String, param2:String) : void
      {
         this.§!z§.push({
            "url":param1,
            "link":param2
         });
         this.§3!?§();
      }
      
      private function §3!?§() : void
      {
         if(this.§!"&§ == 0 && this.§!z§.length > 0)
         {
            this.§"!G§();
         }
      }
      
      private function §"!G§() : void
      {
         ++this.§!"&§;
         var _loc1_:String = this.§!z§[0].url;
         var _loc2_:String = this.§!z§[0].link;
         var _loc3_:§1w§ = this.§4T§(_loc1_,_loc2_);
         var _loc4_:Loader;
         (_loc4_ = _loc3_.§<!v§(_loc1_)).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""<§);
      }
      
      private function §""<§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§!z§.shift();
         --this.§!"&§;
         this.§3!?§();
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         this.§!z§.shift();
         --this.§!"&§;
         this.§3!?§();
      }
      
      public function §%J§(param1:String, param2:String) : §1w§
      {
         var _loc3_:§1w§ = this.§4T§(param1,param2);
         if(_loc3_.§,!6§())
         {
            return _loc3_;
         }
         this.§`;§(param1,param2);
         return _loc3_;
      }
      
      private function §4T§(param1:String, param2:String = "") : §1w§
      {
         var _loc3_:§1w§ = this.§@!o§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §1w§(param2);
            this.§@!o§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
