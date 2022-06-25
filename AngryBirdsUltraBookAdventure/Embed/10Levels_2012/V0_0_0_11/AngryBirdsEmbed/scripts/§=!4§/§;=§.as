package §=!4§
{
   import flash.events.Event;
   
   public class §;=§ extends Event
   {
      
      public static const §"!G§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!G§ = "OnCloseComplete";
         }
      }
      
      private var §"J§:Popup;
      
      public function §;=§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
            if(!_loc6_)
            {
               addr25:
               this.§"J§ = param2;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function get §=!5§() : Popup
      {
         return this.§"J§;
      }
      
      override public function clone() : Event
      {
         return new §;=§(type,this.§"J§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
