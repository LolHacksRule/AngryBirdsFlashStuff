package §_-gU§
{
   import flash.events.Event;
   
   public class §_-tk§ extends Event
   {
      
      public static const §_-C9§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-C9§ = "OnCloseComplete";
         }
      }
      
      private var §_-8L§:Popup;
      
      public function §_-tk§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§_-8L§ = param2;
         }
         while(_loc5_);
         
      }
      
      public function get §_-l-§() : Popup
      {
         return this.§_-8L§;
      }
      
      override public function clone() : Event
      {
         return new §_-tk§(type,this.§_-8L§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
