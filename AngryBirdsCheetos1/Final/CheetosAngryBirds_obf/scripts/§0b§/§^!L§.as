package §0b§
{
   import flash.events.Event;
   
   public class §^!L§ extends Event
   {
      
      public static const §0d§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0d§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §^!L§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.text = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc5_);
         
      }
      
      override public function clone() : Event
      {
         return new §^!L§(type,this.text,bubbles,cancelable);
      }
   }
}
