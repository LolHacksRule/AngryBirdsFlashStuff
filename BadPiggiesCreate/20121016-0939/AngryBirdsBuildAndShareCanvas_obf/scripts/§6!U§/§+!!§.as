package §6!U§
{
   import §'!A§.§-!S§;
   import flash.events.Event;
   
   public class §+!!§ extends Event
   {
      
      public static const §]!M§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]!M§ = "onUiInteraction";
         }
      }
      
      public var §&!X§:int;
      
      public var §1_§:String;
      
      public var component:§-!S§;
      
      public function §+!!§(param1:String, param2:int, param3:String, param4:§-!S§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            loop0:
            while(true)
            {
               this.§&!X§ = param2;
               while(true)
               {
                  this.§1_§ = param3;
                  loop2:
                  while(_loc7_ || param1)
                  {
                     if(!_loc8_)
                     {
                        while(true)
                        {
                           this.component = param4;
                           if(!_loc8_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function clone() : Event
      {
         return new §+!!§(type,this.§&!X§,this.§1_§,this.component,bubbles,cancelable);
      }
   }
}
