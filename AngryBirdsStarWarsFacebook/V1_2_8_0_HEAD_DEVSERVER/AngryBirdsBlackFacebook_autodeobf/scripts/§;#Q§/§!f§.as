package §;#Q§
{
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §!f§ extends §^"O§
   {
       
      
      protected var dispose:Function;
      
      protected var result:§>#I§;
      
      public function §!f§(param1:Function, param2:Function, param3:§>#I§ = null)
      {
         super(param1);
         this.dispose = param2;
         this.result = param3;
      }
      
      override public function delegate(param1:Event) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.currentTarget);
         if(this.result)
         {
            this.result.init(_loc2_.data);
            callBack(this.result);
         }
         else
         {
            callBack(_loc2_.data);
         }
         this.dispose(_loc2_);
      }
   }
}
