package §@§#4
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §["E§
   {
       
      
      private var §?"?§:int = 0;
      
      private var §<!#§:Vector.<Object>;
      
      private var §4#F§:Dictionary;
      
      private var §+=§:Rectangle;
      
      public function §["E§(param1:Rectangle)
      {
         super();
         this.§4#F§ = new Dictionary();
         this.§<!#§ = new Vector.<Object>(0);
         this.§+=§ = param1;
      }
      
      public function §@"Y§(param1:String, param2:String) : void
      {
         this.§<!#§.push({
            "url":param1,
            "link":param2
         });
         this.§'" §();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:§4!+§ = null;
         for(_loc1_ in this.§4#F§)
         {
            _loc2_ = this.§4#F§[_loc1_];
            _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
            _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            _loc2_.dispose();
         }
         this.§4#F§ = new Dictionary();
      }
      
      private function §'" §() : void
      {
         if(this.§?"?§ == 0 && this.§<!#§.length > 0)
         {
            this.§&#Y§();
         }
      }
      
      private function §&#Y§() : void
      {
         ++this.§?"?§;
         var _loc1_:String = this.§<!#§[0].url;
         var _loc2_:String = this.§<!#§[0].link;
         var _loc3_:§4!+§ = this.§@A§(_loc1_,_loc2_);
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc3_.§3#E§(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:§4!+§ = §4!+§(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<!#§.shift();
         --this.§?"?§;
         this.§'" §();
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:§4!+§ = §4!+§(param1.currentTarget);
         _loc2_.removeEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<!#§.shift();
         --this.§?"?§;
         this.§'" §();
      }
      
      public function §<"3§(param1:String, param2:String) : §4!+§
      {
         var _loc3_:§4!+§ = this.§@A§(param1,param2);
         if(_loc3_.§#!i§())
         {
            return _loc3_;
         }
         this.§@"Y§(param1,param2);
         return _loc3_;
      }
      
      private function §@A§(param1:String, param2:String = "") : §4!+§
      {
         var _loc3_:§4!+§ = this.§4#F§[param1];
         if(_loc3_ == null)
         {
            _loc3_ = new §4!+§(param2,this.§+=§.width,this.§+=§.height);
            this.§4#F§[param1] = _loc3_;
         }
         return _loc3_;
      }
   }
}
