package §<W§
{
   import §5X§.§+!#§;
   import flash.events.Event;
   
   public class §]"+§ extends Event
   {
      
      public static const §`!C§:String = "ui_interaction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`!C§ = "ui_interaction";
         }
      }
      
      public var § !e§:int;
      
      public var §9X§:String;
      
      public var §"!X§:§+!#§;
      
      public function §]"+§(param1:String, param2:int, param3:String, param4:§+!#§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param5,param6);
         }
         loop0:
         while(true)
         {
            this.§ !e§ = param2;
            while(true)
            {
               this.§9X§ = param3;
               while(_loc8_)
               {
                  continue loop0;
                  this.§"!X§ = param4;
                  if(_loc8_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §]"+§(type,this.§ !e§,this.§9X§,this.§"!X§,bubbles,cancelable);
      }
   }
}
