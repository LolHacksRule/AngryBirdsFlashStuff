package §'!P§
{
   import flash.events.Event;
   
   public class §>q§
   {
       
      
      protected var callBack:Function;
      
      public function §>q§(param1:Function)
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
