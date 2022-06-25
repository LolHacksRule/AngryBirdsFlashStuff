package §@! §
{
   import flash.events.Event;
   
   public class § !5§ extends Event
   {
      
      public static const §%"!§:String = "dataLoaded";
      
      public static const §7s§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%"!§ = "dataLoaded";
         }
         do
         {
            §7s§ = "totalItemCountUpdated";
         }
         while(!(_loc2_ || § !5§));
         
      }
      
      public var index:int;
      
      public var count:int;
      
      public function § !5§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param4,param5);
         }
      }
      
      override public function clone() : Event
      {
         return new § !5§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
