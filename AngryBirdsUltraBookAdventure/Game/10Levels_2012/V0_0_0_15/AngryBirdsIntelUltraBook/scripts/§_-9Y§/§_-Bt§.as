package §_-9Y§
{
   import §_-MN§.§_-wU§;
   import flash.events.Event;
   
   public class §_-Bt§ extends Event
   {
      
      public static const §_-KB§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-KB§ = "onUiInteraction";
         }
      }
      
      public var §_-G§:int;
      
      public var §_-zT§:String;
      
      public var §_-02o§:§_-wU§;
      
      public function §_-Bt§(param1:String, param2:int, param3:String, param4:§_-wU§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param5,param6);
            loop0:
            while(true)
            {
               this.§_-G§ = param2;
               loop1:
               do
               {
                  this.§_-zT§ = param3;
                  while(_loc8_)
                  {
                     this.§_-02o§ = param4;
                     if(!(_loc7_ && this))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc7_);
               
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §_-Bt§(type,this.§_-G§,this.§_-zT§,this.§_-02o§,bubbles,cancelable);
      }
   }
}
