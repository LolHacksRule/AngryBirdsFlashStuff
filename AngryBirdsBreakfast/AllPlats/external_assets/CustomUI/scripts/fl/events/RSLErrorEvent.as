package fl.events
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class RSLErrorEvent extends ErrorEvent
   {
      
      public static const RSL_LOAD_FAILED:String = "rslLoadFailed";
       
      
      private var _rslsLoaded:int;
      
      private var _rslsFailed:int;
      
      private var _rslsTotal:int;
      
      private var _failedURLs:Array;
      
      public function RSLErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0, param6:int = 0, param7:Array = null)
      {
         super(param1,param2,param3);
         this._rslsLoaded = param4;
         this._rslsFailed = param5;
         this._rslsTotal = param6;
         this._failedURLs = param7;
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
      
      public function get failedURLs() : Array
      {
         return this._failedURLs;
      }
      
      override public function clone() : Event
      {
         return new RSLErrorEvent(type,bubbles,cancelable,this.rslsLoaded,this.rslsFailed,this.rslsTotal,this.failedURLs);
      }
   }
}
