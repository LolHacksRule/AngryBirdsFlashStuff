package §9#§
{
   import flash.events.Event;
   
   public class §?!D§ extends Event
   {
      
      public static const §9!R§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §9!R§ = "OnCloseComplete";
         }
      }
      
      private var §1%§:Popup;
      
      public function §?!D§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
            do
            {
               this.§1%§ = param2;
            }
            while(_loc6_);
            
         }
      }
      
      public function get §#!!§() : Popup
      {
         return this.§1%§;
      }
      
      override public function clone() : Event
      {
         return new §?!D§(type,this.§1%§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
