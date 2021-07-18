package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(_loc2_);
         
      }
      
      private var §;!6§:uint;
      
      private var §'P§:uint;
      
      private var §->§:uint;
      
      private var §]!"§:Boolean;
      
      private var §3!O§:Boolean;
      
      private var §'r§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,false);
         }
         loop0:
         do
         {
            this.§;!6§ = param2;
            while(true)
            {
               this.§'P§ = param3;
               while(!_loc8_)
               {
                  this.§->§ = param4;
                  while(!(_loc8_ && param2))
                  {
                     this.§3!O§ = param5;
                     do
                     {
                        this.§]!"§ = param6;
                        do
                        {
                           this.§'r§ = param7;
                        }
                        while(!_loc9_);
                        
                     }
                     while(_loc8_ && this);
                     
                     if(!(_loc8_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc8_);
         
      }
      
      public function get charCode() : uint
      {
         return this.§;!6§;
      }
      
      public function get keyCode() : uint
      {
         return this.§'P§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§->§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§]!"§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3!O§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'r§;
      }
   }
}
