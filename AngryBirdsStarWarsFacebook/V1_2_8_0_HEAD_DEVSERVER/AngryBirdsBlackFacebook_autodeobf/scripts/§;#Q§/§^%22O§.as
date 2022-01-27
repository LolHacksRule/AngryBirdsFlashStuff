package §;#Q§
{
   import flash.events.Event;
   
   public class §^"O§
   {
       
      
      protected var callBack:Function;
      
      public function §^"O§(param1:Function)
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
