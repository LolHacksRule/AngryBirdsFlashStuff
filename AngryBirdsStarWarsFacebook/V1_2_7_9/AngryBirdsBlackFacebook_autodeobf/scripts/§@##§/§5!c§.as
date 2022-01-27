package §@##§
{
   import flash.events.Event;
   
   public class §5!c§
   {
       
      
      protected var callBack:Function;
      
      public function §5!c§(param1:Function)
      {
         super();
         this.callBack = param1;
      }
      
      public function delegate(param1:Event) : void
      {
         this.callBack(param1);
      }
   }
}
