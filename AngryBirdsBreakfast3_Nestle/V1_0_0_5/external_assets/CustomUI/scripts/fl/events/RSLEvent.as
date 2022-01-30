package fl.events
{
   import flash.events.Event;
   
   public class RSLEvent extends Event
   {
      
      public static const RSL_LOAD_COMPLETE:String = "rslLoadComplete";
      
      public static const RSL_PROGRESS:String = "rslProgress";
       
      
      private var _rslsLoaded:int;
      
      private var _rslsFailed:int;
      
      private var _rslsTotal:int;
      
      private var _bytesLoaded:int;
      
      private var _bytesTotal:int;
      
      public function RSLEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0)
      {
         super(param1,param2,param3);
         this._rslsLoaded = param4;
         this._rslsFailed = param5;
         this._rslsTotal = param6;
         this._bytesLoaded = param7;
         this._bytesTotal = param8;
      }
      
      public function get rslsLoaded() : int
      {
         return this._rslsLoaded;
      }
      
      public function get rslsFailed() : int
      {
         return this._rslsFailed;
      }
      
      public function get rslsTotal() : int
      {
         return this._rslsTotal;
      }
      
      public function get bytesLoaded() : int
      {
         return this._bytesLoaded;
      }
      
      public function get bytesTotal() : int
      {
         return this._bytesTotal;
      }
      
      override public function clone() : Event
      {
         return new RSLEvent(type,bubbles,cancelable,this.rslsLoaded,this.rslsFailed,this.rslsTotal,this.bytesLoaded,this.bytesTotal);
      }
   }
}
