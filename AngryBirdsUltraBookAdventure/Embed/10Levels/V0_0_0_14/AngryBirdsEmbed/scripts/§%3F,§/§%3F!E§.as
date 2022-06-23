package §?,§
{
   import flash.events.Event;
   
   public class §?!E§ extends Event
   {
      
      public static const §9,§:String = "parseError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9,§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §?!E§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.text = param2;
            if(_loc6_)
            {
               addr29:
               super(param1,param3,param4);
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function clone() : Event
      {
         return new §?!E§(type,this.text,bubbles,cancelable);
      }
   }
}
