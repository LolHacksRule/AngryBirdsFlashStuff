package §?!'§
{
   import flash.events.Event;
   
   public class §`![§ extends Event
   {
      
      public static const §;!U§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;!U§ = "OnCloseComplete";
         }
      }
      
      private var §3"9§:Popup;
      
      public function §`![§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super(param1,param3,param4);
            do
            {
               this.§3"9§ = param2;
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      public function get §@"-§() : Popup
      {
         return this.§3"9§;
      }
      
      override public function clone() : Event
      {
         return new §`![§(type,this.§3"9§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
