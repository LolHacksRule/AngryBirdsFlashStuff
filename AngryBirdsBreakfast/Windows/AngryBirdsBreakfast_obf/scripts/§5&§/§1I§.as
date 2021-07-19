package §5&§
{
   import flash.events.Event;
   
   public class §1I§ extends Event
   {
      
      public static const §=O§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=O§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §1I§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.text = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc6_ && param1);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §1I§(type,this.text,bubbles,cancelable);
      }
   }
}
