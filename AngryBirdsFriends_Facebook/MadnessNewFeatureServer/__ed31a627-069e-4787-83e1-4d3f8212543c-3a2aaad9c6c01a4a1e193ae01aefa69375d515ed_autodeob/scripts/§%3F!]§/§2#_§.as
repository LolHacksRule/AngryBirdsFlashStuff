package §?!]§
{
   import flash.events.Event;
   
   public class §2#_§ extends Event
   {
      
      public static const §]"I§:String = "dataLoaded";
      
      public static const §^$<§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function §2#_§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new §2#_§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
