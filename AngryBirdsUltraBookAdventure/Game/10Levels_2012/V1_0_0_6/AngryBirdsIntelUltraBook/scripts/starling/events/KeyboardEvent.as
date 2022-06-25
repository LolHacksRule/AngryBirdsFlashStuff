package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc2_);
            
         }
      }
      
      private var §8u§:uint;
      
      private var §47§:uint;
      
      private var §5G§:uint;
      
      private var §7O§:Boolean;
      
      private var §1!-§:Boolean;
      
      private var §95§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            super(param1,false);
         }
         loop0:
         while(true)
         {
            this.§8u§ = param2;
            loop1:
            while(true)
            {
               this.§47§ = param3;
               while(true)
               {
                  this.§5G§ = param4;
                  while(_loc9_ || this)
                  {
                     continue loop0;
                     addr62:
                     if(_loc9_ || param2)
                     {
                        this.§95§ = param7;
                        addr69:
                        if(!(_loc8_ && this))
                        {
                           return;
                        }
                        loop5:
                        while(true)
                        {
                           if(!(_loc9_ || param3))
                           {
                              while(_loc9_)
                              {
                                 this.§7O§ = param6;
                                 continue loop5;
                              }
                              continue loop1;
                              addr74:
                           }
                           §§goto(addr62);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get charCode() : uint
      {
         return this.§8u§;
      }
      
      public function get keyCode() : uint
      {
         return this.§47§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5G§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§7O§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1!-§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§95§;
      }
   }
}
