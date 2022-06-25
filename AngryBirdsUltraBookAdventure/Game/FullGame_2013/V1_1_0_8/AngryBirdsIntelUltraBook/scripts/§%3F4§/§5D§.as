package §?4§
{
   import §@!&§.§'!o§;
   import flash.events.Event;
   
   public class §5D§ extends Event
   {
      
      public static const §5=§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §5D§)
         {
            §5=§ = "onUiInteraction";
         }
      }
      
      public var §]!6§:int;
      
      public var §1!>§:String;
      
      public var §4!q§:§'!o§;
      
      public function §5D§(param1:String, param2:int, param3:String, param4:§'!o§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super(param1,param5,param6);
            loop0:
            while(true)
            {
               this.§]!6§ = param2;
               while(true)
               {
                  this.§1!>§ = param3;
                  loop2:
                  while(!(_loc8_ && this))
                  {
                     while(true)
                     {
                        this.§4!q§ = param4;
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function clone() : Event
      {
         return new §5D§(type,this.§]!6§,this.§1!>§,this.§4!q§,bubbles,cancelable);
      }
   }
}
