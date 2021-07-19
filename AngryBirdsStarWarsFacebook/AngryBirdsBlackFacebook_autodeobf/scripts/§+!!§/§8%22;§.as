package §+!!§
{
   import flash.events.Event;
   
   public class §8";§ extends Event
   {
      
      public static const §&!b§:String = "selectionChanged";
       
      
      public var data:Object;
      
      public function §8";§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §8";§(type,bubbles,cancelable);
      }
   }
}
