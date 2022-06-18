package §8!§
{
   import flash.events.Event;
   
   public class §#!%§ extends Event
   {
       
      
      private var §0!v§:Array;
      
      public function §#!%§(param1:String, param2:Array = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0!v§ = param2;
      }
      
      public function get §""<§() : Array
      {
         return this.§0!v§;
      }
   }
}
