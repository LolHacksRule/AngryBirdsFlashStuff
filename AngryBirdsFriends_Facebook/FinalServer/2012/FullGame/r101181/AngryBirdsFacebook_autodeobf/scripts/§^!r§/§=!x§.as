package §^!r§
{
   import flash.events.Event;
   
   public class §=!x§ extends Event
   {
      
      public static const §!m§:String = "onBuyItemClicked";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!m§ = "onBuyItemClicked";
         }
      }
      
      public var §5!c§:String;
      
      public function §=!x§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§5!c§ = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!_loc5_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §=!x§(type,this.§5!c§,bubbles,cancelable);
      }
   }
}
