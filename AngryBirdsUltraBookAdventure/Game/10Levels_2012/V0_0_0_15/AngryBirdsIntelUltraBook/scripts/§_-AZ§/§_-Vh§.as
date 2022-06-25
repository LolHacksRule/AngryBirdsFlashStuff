package §_-AZ§
{
   import flash.events.Event;
   
   public class §_-Vh§ extends Event
   {
      
      public static const §_-04P§:String = "dataLoaded";
      
      public static const §_-SO§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-Vh§))
         {
            §_-04P§ = "dataLoaded";
         }
         do
         {
            §_-SO§ = "totalItemCountUpdated";
         }
         while(!_loc1_);
         
      }
      
      public var index:int;
      
      public var count:int;
      
      public function §_-Vh§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
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
         return new §_-Vh§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
