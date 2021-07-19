package §'"?§
{
   import flash.events.Event;
   
   public class §-!!§ extends Event
   {
      
      public static const §6H§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §6H§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §-!!§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.text = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(!(_loc5_ || this));
         
      }
      
      override public function clone() : Event
      {
         return new §-!!§(type,this.text,bubbles,cancelable);
      }
   }
}
