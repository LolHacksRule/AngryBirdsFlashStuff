package fl.events
{
   import flash.display.LoaderInfo;
   import flash.display.Shape;
   import flash.events.Event;
   
   public class ProLoaderRSLPreloaderSandboxEvent extends Event
   {
      
      public static const PROLOADER_RSLPRELOADER_SANDBOX:String = "__proLoaderRSLPreloaderSandbox";
       
      
      public var loaderInfo:LoaderInfo;
      
      public var shape:Shape;
      
      public function ProLoaderRSLPreloaderSandboxEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:LoaderInfo = null, param5:Shape = null)
      {
         super(param1,param2,param3);
         this.loaderInfo = param4;
         this.shape = param5;
      }
      
      override public function clone() : Event
      {
         return new ProLoaderRSLPreloaderSandboxEvent(type,bubbles,cancelable,this.loaderInfo,this.shape);
      }
      
      override public function toString() : String
      {
         return formatToString("ProLoaderRSLPreloaderSandboxEvent","type","bubbles","cancelable","eventPhase","loaderInfo","shape");
      }
   }
}
