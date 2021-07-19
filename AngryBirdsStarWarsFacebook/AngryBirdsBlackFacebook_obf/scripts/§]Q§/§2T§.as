package §]Q§
{
   import flash.events.Event;
   
   public class §2T§ extends Event
   {
      
      public static const §-D§:String = "dataLoaded";
      
      public static const §&"g§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §2T§))
         {
            §-D§ = "dataLoaded";
            do
            {
               §&"g§ = "totalItemCountUpdated";
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public var index:int;
      
      public var count:int;
      
      public function §2T§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param4,param5);
         }
      }
      
      override public function clone() : Event
      {
         return new §2T§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
