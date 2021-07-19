package §+h§
{
   import flash.events.Event;
   
   public class §+1§ extends Event
   {
      
      public static const §9!R§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!R§ = "OnCloseComplete";
         }
      }
      
      private var §5n§:Popup;
      
      public function §+1§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§5n§ = param2;
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      public function get §@!J§() : Popup
      {
         return this.§5n§;
      }
      
      override public function clone() : Event
      {
         return new §+1§(type,this.§5n§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
