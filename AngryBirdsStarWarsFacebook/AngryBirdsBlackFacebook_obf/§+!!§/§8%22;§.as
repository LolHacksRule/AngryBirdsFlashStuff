package §+!!§
{
   import flash.events.Event;
   
   public class §8";§ extends Event
   {
      
      public static const §&!b§:String = "selectionChanged";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!b§ = "selectionChanged";
         }
      }
      
      public var data:Object;
      
      public function §8";§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.data = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc5_ && this);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §8";§(type,bubbles,cancelable);
      }
   }
}
