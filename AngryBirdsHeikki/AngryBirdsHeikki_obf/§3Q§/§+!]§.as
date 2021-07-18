package §3Q§
{
   import §8P§.§1A§;
   import flash.events.Event;
   
   public class §+!]§ extends Event
   {
      
      public static const §0!S§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!S§ = "onUiInteraction";
         }
      }
      
      public var §78§:int;
      
      public var §<Y§:String;
      
      public var §4H§:§1A§;
      
      public function §+!]§(param1:String, param2:int, param3:String, param4:§1A§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param5,param6);
         }
         loop0:
         while(true)
         {
            this.§78§ = param2;
            while(true)
            {
               this.§<Y§ = param3;
               while(!(_loc7_ && this))
               {
                  continue loop0;
                  this.§4H§ = param4;
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §+!]§(type,this.§78§,this.§<Y§,this.§4H§,bubbles,cancelable);
      }
   }
}
