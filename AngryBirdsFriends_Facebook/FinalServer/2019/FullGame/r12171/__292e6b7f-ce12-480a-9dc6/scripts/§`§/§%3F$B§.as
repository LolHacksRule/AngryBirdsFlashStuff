package §`§#2
{
   import flash.events.Event;
   
   public class §?$B§ extends Event
   {
      
      public static const §^"%§:String = "update_Frame";
       
      
      public var §'!A§:int;
      
      public function §?$B§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§'!A§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §?$B§(type,this.§'!A§,bubbles,cancelable);
      }
   }
}
