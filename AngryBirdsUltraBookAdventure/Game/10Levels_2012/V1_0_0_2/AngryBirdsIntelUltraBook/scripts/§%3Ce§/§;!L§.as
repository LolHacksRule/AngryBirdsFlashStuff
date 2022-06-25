package §<e§
{
   import flash.events.Event;
   
   public class §;!L§ extends Event
   {
      
      public static const §<!s§:String = "dataLoaded";
      
      public static const §-I§:String = "totalItemCountUpdated";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!s§ = "dataLoaded";
            do
            {
               §-I§ = "totalItemCountUpdated";
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public var index:int;
      
      public var count:int;
      
      public function §;!L§(param1:String, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false)
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
         return new §;!L§(type,this.index,this.count,bubbles,cancelable);
      }
   }
}
