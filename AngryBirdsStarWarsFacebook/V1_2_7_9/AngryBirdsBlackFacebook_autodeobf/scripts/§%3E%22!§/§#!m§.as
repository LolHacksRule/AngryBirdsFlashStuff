package §>"!§
{
   import flash.events.Event;
   
   public class §#!m§ extends Event
   {
      
      public static const §9!y§:String = "selectionChanged";
       
      
      public var data:Object;
      
      public function §#!m§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §#!m§(type,bubbles,cancelable);
      }
   }
}
