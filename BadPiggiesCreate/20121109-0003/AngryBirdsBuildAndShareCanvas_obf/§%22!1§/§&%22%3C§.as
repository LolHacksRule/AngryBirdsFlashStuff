package §"!1§
{
   import flash.events.Event;
   
   public class §&"<§ extends Event
   {
      
      public static const §,"$§:String = "parseError";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,"$§ = "parseError";
         }
      }
      
      public var text:String;
      
      public function §&"<§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.text = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(!(_loc6_ || param1));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §&"<§(type,this.text,bubbles,cancelable);
      }
   }
}
