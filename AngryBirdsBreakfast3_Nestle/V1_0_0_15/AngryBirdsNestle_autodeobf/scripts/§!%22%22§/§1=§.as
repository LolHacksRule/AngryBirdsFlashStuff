package §!""§
{
   import flash.events.Event;
   
   public class §1=§ extends Event
   {
      
      public static const §]!l§:String = "update_Frame";
       
      
      public var §>"1§:int;
      
      public function §1=§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>"1§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §1=§(type,this.§>"1§,bubbles,cancelable);
      }
   }
}
