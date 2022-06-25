package §>§
{
   import flash.events.Event;
   
   public class §7!]§ extends Event
   {
      
      public static const §?X§:String = "dataLoaded";
      
      public static const §=!p§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7!]§))
         {
            §?X§ = "dataLoaded";
            do
            {
               §=!p§ = "totalItemCountUpdated";
            }
            while(!(_loc1_ || §7!]§));
            
         }
      }
      
      public var index:int;
      
      public var count:int;
      
      public function §7!]§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
         }
      }
      
      override public function clone() : Event
      {
         return new §7!]§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
