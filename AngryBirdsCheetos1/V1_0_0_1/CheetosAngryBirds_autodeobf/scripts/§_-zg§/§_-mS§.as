package §_-zg§
{
   import flash.events.Event;
   
   public class §_-mS§ extends Event
   {
      
      public static const §_-Lp§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-mS§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-mS§(type,this.text,bubbles,cancelable);
      }
   }
}
