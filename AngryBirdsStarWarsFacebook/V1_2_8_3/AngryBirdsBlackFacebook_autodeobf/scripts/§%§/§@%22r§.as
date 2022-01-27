package §%§#4
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §@"r§
   {
       
      
      private var §8"g§:int = 0;
      
      private var §0"[§:Vector.<Object>;
      
      private var §%!W§:Dictionary;
      
      private var §0"2§:Rectangle;
      
      public function §@"r§(param1:Rectangle)
      {
         super();
         this.§%!W§ = new Dictionary();
         this.§0"[§ = new Vector.<Object>(0);
         this.§0"2§ = param1;
      }
      
      public function §5!z§(param1:String, param2:String) : void
      {
         this.§0"[§.push({
            "url":param1,
            "link":param2
         });
         this.§-"f§();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:§3" § = null;
         for(_loc1_ in this.§%!W§)
         {
            _loc2_ = this.§%!W§[_loc1_];
            _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.dispose();
         }
         this.§%!W§ = new Dictionary();
      }
      
      private function §-"f§() : void
      {
         if(this.§8"g§ == 0 && this.§0"[§.length > 0)
         {
            this.§34§();
         }
      }
      
      private function §34§() : void
      {
         ++this.§8"g§;
         var _loc1_:String = this.§0"[§[0].url;
         var _loc2_:String = this.§0"[§[0].link;
         var _loc3_:§3" § = this.§5I§(_loc1_,_loc2_);
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.§>!&§(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:§3" § = §3" §(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0"[§.shift();
         --this.§8"g§;
         this.§-"f§();
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:§3" § = §3" §(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§0"[§.shift();
         --this.§8"g§;
         this.§-"f§();
      }
      
      public function §?9§(param1:String, param2:String) : §3" §
      {
         var _loc3_:§3" § = this.§5I§(param1,param2);
         if(_loc3_.§0b§())
         {
            return _loc3_;
         }
         this.§5!z§(param1,param2);
         return _loc3_;
      }
      
      private function §5I§(param1:String, param2:String = "") : §3" §
      {
         var _loc3_:§3" § = this.§%!W§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §3" §(param2,this.§0"2§.width,this.§0"2§.height);
            this.§%!W§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
