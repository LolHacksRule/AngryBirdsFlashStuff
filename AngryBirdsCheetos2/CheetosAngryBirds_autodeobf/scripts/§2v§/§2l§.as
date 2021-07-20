package §2v§
{
   import flash.events.Event;
   
   public class §2l§ extends Event
   {
      
      public static const §[6§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[6§ = "OnCloseComplete";
         }
      }
      
      private var §<!1§:Popup;
      
      public function §2l§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§<!1§ = param2;
         }
         while(_loc5_);
         
      }
      
      public function get §9!Q§() : Popup
      {
         return this.§<!1§;
      }
      
      override public function clone() : Event
      {
         return new §2l§(type,this.§<!1§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
