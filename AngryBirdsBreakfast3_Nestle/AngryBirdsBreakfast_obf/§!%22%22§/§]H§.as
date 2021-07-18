package §!""§
{
   import §'"!§.§+§;
   import flash.events.Event;
   
   public class §]H§ extends Event
   {
      
      public static const §59§:String = "ui_interaction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §59§ = "ui_interaction";
         }
      }
      
      public var §66§:int;
      
      public var §4o§:String;
      
      public var §&!m§:§+§;
      
      public function §]H§(param1:String, param2:int, param3:String, param4:§+§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param5,param6);
            while(true)
            {
               this.§66§ = param2;
            }
            addr75:
         }
         loop1:
         do
         {
            this.§4o§ = param3;
            while(_loc8_)
            {
               this.§&!m§ = param4;
               if(!(_loc7_ && this))
               {
                  continue loop1;
               }
            }
            §§goto(addr75);
         }
         while(_loc7_);
         
      }
      
      override public function clone() : Event
      {
         return new §]H§(type,this.§66§,this.§4o§,this.§&!m§,bubbles,cancelable);
      }
   }
}
