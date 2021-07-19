package §+a§
{
   import flash.events.Event;
   
   public class §`_§ extends Event
   {
      
      public static const §9h§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §9h§ = "OnCloseComplete";
         }
      }
      
      private var §>2§:Popup;
      
      public function §`_§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§>2§ = param2;
         }
         while(!_loc5_);
         
      }
      
      public function get §7v§() : Popup
      {
         return this.§>2§;
      }
      
      override public function clone() : Event
      {
         return new §`_§(type,this.§>2§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
