package §<W§
{
   import flash.events.Event;
   
   public class §!!u§ extends Event
   {
      
      public static const §8!Q§:String = "update_Frame";
       
      
      public var §^;§:int;
      
      public function §!!u§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§^;§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §!!u§(type,this.§^;§,bubbles,cancelable);
      }
   }
}
