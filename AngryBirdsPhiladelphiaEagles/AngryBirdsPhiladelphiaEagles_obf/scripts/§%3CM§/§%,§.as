package §<M§
{
   import flash.events.Event;
   
   public class §%,§ extends Event
   {
      
      public static const §=a§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=a§ = "OnCloseComplete";
         }
      }
      
      private var §5<§:Popup;
      
      public function §%,§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param3,param4);
            do
            {
               this.§5<§ = param2;
            }
            while(_loc5_);
            
         }
      }
      
      public function get §^5§() : Popup
      {
         return this.§5<§;
      }
      
      override public function clone() : Event
      {
         return new §%,§(type,this.§5<§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
