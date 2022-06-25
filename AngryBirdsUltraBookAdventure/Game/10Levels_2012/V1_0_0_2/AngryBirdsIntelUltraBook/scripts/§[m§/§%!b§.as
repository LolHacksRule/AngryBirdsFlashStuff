package §[m§
{
   import flash.events.Event;
   
   public class §%!b§ extends Event
   {
      
      public static const §<!k§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!k§ = "OnCloseComplete";
         }
      }
      
      private var §#!O§:Popup;
      
      public function §%!b§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            super(param1,param3,param4);
            do
            {
               this.§#!O§ = param2;
            }
            while(_loc6_ && this);
            
         }
      }
      
      public function get §1!g§() : Popup
      {
         return this.§#!O§;
      }
      
      override public function clone() : Event
      {
         return new §%!b§(type,this.§#!O§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
