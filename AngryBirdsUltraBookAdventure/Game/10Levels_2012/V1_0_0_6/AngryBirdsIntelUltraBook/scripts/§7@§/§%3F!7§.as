package §7@§
{
   import flash.events.Event;
   
   public class §?!7§ extends Event
   {
      
      public static const §-t§:String = "dataLoaded";
      
      public static const §2!"§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §-t§ = "dataLoaded";
            do
            {
               §2!"§ = "totalItemCountUpdated";
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public var index:int;
      
      public var count:int;
      
      public function §?!7§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super(param1,param4,param5);
         }
      }
      
      override public function clone() : Event
      {
         return new §?!7§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
