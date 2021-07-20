package §@! §
{
   import flash.events.Event;
   
   public class § !5§ extends Event
   {
      
      public static const §%"!§:String = "dataLoaded";
      
      public static const §7s§:String = "totalItemCountUpdated";
       
      
      public var index:int;
      
      public var count:int;
      
      public function § !5§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new § !5§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
