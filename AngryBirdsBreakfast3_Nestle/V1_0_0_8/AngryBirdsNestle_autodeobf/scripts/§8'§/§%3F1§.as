package §8'§
{
   import flash.events.Event;
   
   public class §?1§ extends Event
   {
      
      public static const §2!o§:String = "parseError";
       
      
      public var text:String;
      
      public function §?1§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?1§(type,this.text,bubbles,cancelable);
      }
   }
}
