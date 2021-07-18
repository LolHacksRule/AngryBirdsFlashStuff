package §^g§
{
   import §6v§.§`M§;
   import flash.events.Event;
   
   public class §@$§ extends Event
   {
      
      public static const §^!9§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!9§ = "onUiInteraction";
         }
      }
      
      public var §-6§:int;
      
      public var §+g§:String;
      
      public var §1]§:§`M§;
      
      public function §@$§(param1:String, param2:int, param3:String, param4:§`M§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(param1,param5,param6);
         }
         loop0:
         while(true)
         {
            this.§-6§ = param2;
            do
            {
               this.§+g§ = param3;
               continue loop0;
            }
            while(_loc7_ && param3);
            
            return;
         }
      }
      
      override public function clone() : Event
      {
         return new §@$§(type,this.§-6§,this.§+g§,this.§1]§,bubbles,cancelable);
      }
   }
}
