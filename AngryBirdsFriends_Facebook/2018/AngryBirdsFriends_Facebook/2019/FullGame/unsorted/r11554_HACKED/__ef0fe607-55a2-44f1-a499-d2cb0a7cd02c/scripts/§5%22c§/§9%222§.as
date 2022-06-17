package §5"c§
{
   import flash.events.Event;
   
   public class §9"2§ extends Event
   {
      
      public static var §#b§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §?"t§:String = "PurchaseCompletedEvent";
      
      public static var §`"1§:String = "PurchaseFailedEvent";
       
      
      private var §!!-§:String = "";
      
      public function §9"2§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§!!-§ = param2;
      }
      
      public function get §`"L§() : String
      {
         return this.§!!-§;
      }
   }
}
