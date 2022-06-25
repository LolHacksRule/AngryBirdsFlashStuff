package §!!j§
{
   import flash.events.Event;
   
   public class §5!`§ extends Event
   {
      
      public static const §#V§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §#V§ = "OnCloseComplete";
         }
      }
      
      private var §?G§:Popup;
      
      public function §5!`§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super(param1,param3,param4);
            do
            {
               this.§?G§ = param2;
            }
            while(!_loc5_);
            
         }
      }
      
      public function get §%'§() : Popup
      {
         return this.§?G§;
      }
      
      override public function clone() : Event
      {
         return new §5!`§(type,this.§?G§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
