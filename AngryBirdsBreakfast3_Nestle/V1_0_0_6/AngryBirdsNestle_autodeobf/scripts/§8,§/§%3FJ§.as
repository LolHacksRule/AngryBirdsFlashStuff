package §8,§
{
   import flash.events.Event;
   
   public class §?J§ extends Event
   {
      
      public static const §0H§:String = "update_Frame";
       
      
      public var §"!g§:int;
      
      public function §?J§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§"!g§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §?J§(type,this.§"!g§,bubbles,cancelable);
      }
   }
}
