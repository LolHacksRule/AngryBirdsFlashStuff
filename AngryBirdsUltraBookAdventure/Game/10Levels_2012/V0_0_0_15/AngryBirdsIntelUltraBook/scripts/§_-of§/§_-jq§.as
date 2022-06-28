package §_-of§
{
   import flash.events.Event;
   
   public class §_-jq§ extends Event
   {
      
      public static const §_-iF§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-jq§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-jq§(type,this.text,bubbles,cancelable);
      }
   }
}
