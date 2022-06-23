package §+!3§
{
   import §`!0§.§"?§;
   import flash.events.Event;
   
   public class §"^§ extends Event
   {
      
      public static const §1x§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1x§ = "onUiInteraction";
         }
      }
      
      public var §@@§:int;
      
      public var §%!B§:String;
      
      public var §8!6§:§"?§;
      
      public function §"^§(param1:String, param2:int, param3:String, param4:§"?§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super(param1,param5,param6);
            if(_loc7_ || this)
            {
               this.§@@§ = param2;
               if(!_loc8_)
               {
                  addr50:
                  this.§%!B§ = param3;
                  if(_loc7_)
                  {
                     this.§8!6§ = param4;
                  }
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      override public function clone() : Event
      {
         return new §"^§(type,this.§@@§,this.§%!B§,this.§8!6§,bubbles,cancelable);
      }
   }
}
