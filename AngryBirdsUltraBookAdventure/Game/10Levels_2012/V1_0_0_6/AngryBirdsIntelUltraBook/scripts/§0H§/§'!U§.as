package §0H§
{
   import flash.events.Event;
   
   public class §'!U§ extends Event
   {
      
      public static const §2!v§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2!v§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §'!U§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
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
            while(!(_loc5_ || this));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §'!U§(type,this.text,bubbles,cancelable);
      }
   }
}
