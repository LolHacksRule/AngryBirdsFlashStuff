package §2?§
{
   import flash.events.Event;
   
   public class §;!#§ extends Event
   {
      
      public static const §'A§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'A§ = "OnCloseComplete";
         }
      }
      
      private var §'5§:Popup;
      
      public function §;!#§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4);
            if(!(_loc5_ && param2))
            {
               addr46:
               this.§'5§ = param2;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function get §case§() : Popup
      {
         return this.§'5§;
      }
      
      override public function clone() : Event
      {
         return new §;!#§(type,this.§'5§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
