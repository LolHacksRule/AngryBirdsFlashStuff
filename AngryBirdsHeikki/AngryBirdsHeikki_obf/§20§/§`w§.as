package §20§
{
   import flash.events.Event;
   
   public class §`w§ extends Event
   {
      
      public static const §?!?§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?!?§ = "OnCloseComplete";
         }
      }
      
      private var §,J§:Popup;
      
      public function §`w§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param3,param4);
            do
            {
               this.§,J§ = param2;
            }
            while(_loc5_ && param1);
            
         }
      }
      
      public function get §'$§() : Popup
      {
         return this.§,J§;
      }
      
      override public function clone() : Event
      {
         return new §`w§(type,this.§,J§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
