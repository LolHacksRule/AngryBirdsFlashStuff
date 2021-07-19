package §@!?§
{
   import flash.events.Event;
   
   public class §@9§ extends Event
   {
      
      public static const §^W§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §^W§ = "OnCloseComplete";
         }
      }
      
      private var §#H§:Popup;
      
      public function §@9§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§#H§ = param2;
            }
            while(!_loc6_);
            
         }
      }
      
      public function get §!!1§() : Popup
      {
         return this.§#H§;
      }
      
      override public function clone() : Event
      {
         return new §@9§(type,this.§#H§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
