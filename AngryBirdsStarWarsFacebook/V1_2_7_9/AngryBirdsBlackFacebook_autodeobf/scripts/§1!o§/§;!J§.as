package §1!o§
{
   import flash.events.Event;
   
   public class §;!J§ extends Event
   {
      
      public static const §``§:String = "item_use_complete";
       
      
      public var §?!0§:Boolean;
      
      public var itemID:String;
      
      public function §;!J§(param1:String, param2:Boolean, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§?!0§ = param2;
         this.itemID = param3;
      }
   }
}
