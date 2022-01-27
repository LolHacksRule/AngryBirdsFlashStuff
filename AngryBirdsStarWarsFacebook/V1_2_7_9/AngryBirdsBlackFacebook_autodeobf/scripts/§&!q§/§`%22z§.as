package §&!q§
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`"z§
   {
       
      
      private var §+"J§:int = 0;
      
      private var §!"j§:Vector.<Object>;
      
      private var §["b§:Dictionary;
      
      private var §]!C§:Rectangle;
      
      public function §`"z§(param1:Rectangle)
      {
         super();
         this.§["b§ = new Dictionary();
         this.§!"j§ = new Vector.<Object>(0);
         this.§]!C§ = param1;
      }
      
      public function §-"K§(param1:String, param2:String) : void
      {
         this.§!"j§.push({
            "url":param1,
            "link":param2
         });
         this.§3u§();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:§9"h§ = null;
         for(_loc1_ in this.§["b§)
         {
            _loc2_ = this.§["b§[_loc1_];
            _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.dispose();
         }
         this.§["b§ = new Dictionary();
      }
      
      private function §3u§() : void
      {
         if(this.§+"J§ == 0 && this.§!"j§.length > 0)
         {
            this.§&"m§();
         }
      }
      
      private function §&"m§() : void
      {
         ++this.§+"J§;
         var _loc1_:String = this.§!"j§[0].url;
         var _loc2_:String = this.§!"j§[0].link;
         var _loc3_:§9"h§ = this.§!"i§(_loc1_,_loc2_);
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.§6"Q§(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:§9"h§ = §9"h§(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!"j§.shift();
         --this.§+"J§;
         this.§3u§();
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:§9"h§ = §9"h§(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§!"j§.shift();
         --this.§+"J§;
         this.§3u§();
      }
      
      public function §4!c§(param1:String, param2:String) : §9"h§
      {
         var _loc3_:§9"h§ = this.§!"i§(param1,param2);
         if(_loc3_.§ !e§())
         {
            return _loc3_;
         }
         this.§-"K§(param1,param2);
         return _loc3_;
      }
      
      private function §!"i§(param1:String, param2:String = "") : §9"h§
      {
         var _loc3_:§9"h§ = this.§["b§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §9"h§(param2,this.§]!C§.width,this.§]!C§.height);
            this.§["b§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
