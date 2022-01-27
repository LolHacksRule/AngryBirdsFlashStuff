package §@##§
{
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §^!%§ extends §5!c§
   {
       
      
      protected var dispose:Function;
      
      protected var result:§#^§;
      
      public function §^!%§(param1:Function, param2:Function, param3:§#^§ = null)
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
