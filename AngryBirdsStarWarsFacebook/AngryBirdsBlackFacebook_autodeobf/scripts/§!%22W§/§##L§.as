package §!"W§
{
   import flash.events.Event;
   
   public class §##L§ extends Event
   {
      
      public static const §0"5§:String = "item_use_complete";
       
      
      public var §;K§:Boolean;
      
      public var itemID:String;
      
      public function §##L§(param1:String, param2:Boolean, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§;K§ = param2;
         this.itemID = param3;
      }
   }
}
