package §8#^§
{
   import flash.events.Event;
   
   public class § !w§ extends Event
   {
      
      public static const §'#y§:String = "dataLoaded";
      
      public static const §@!a§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function § !w§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new § !w§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
