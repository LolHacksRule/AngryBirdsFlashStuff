package §!5§
{
   import §=R§.§7!"§;
   import flash.events.Event;
   
   public class §6%§ extends Event
   {
      
      public static const §=F§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=F§ = "onUiInteraction";
         }
      }
      
      public var §4!@§:int;
      
      public var §`"§:String;
      
      public var §^4§:§7!"§;
      
      public function §6%§(param1:String, param2:int, param3:String, param4:§7!"§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super(param1,param5,param6);
            do
            {
               this.§4!@§ = param2;
               do
               {
                  this.§`"§ = param3;
                  do
                  {
                     this.§^4§ = param4;
                  }
                  while(_loc7_ && this);
                  
               }
               while(_loc7_);
               
            }
            while(_loc7_ && param1);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §6%§(type,this.§4!@§,this.§`"§,this.§^4§,bubbles,cancelable);
      }
   }
}
