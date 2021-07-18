package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(_loc1_);
            
         }
      }
      
      private var §;l§:uint;
      
      private var §0j§:uint;
      
      private var §4!D§:uint;
      
      private var §1!3§:Boolean;
      
      private var §=>§:Boolean;
      
      private var §null§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§;l§ = param2;
               while(true)
               {
                  this.§0j§ = param3;
                  addr83:
                  loop3:
                  while(_loc9_ || param2)
                  {
                     this.§=>§ = param5;
                     while(true)
                     {
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§4!D§ = param4;
            §§goto(addr83);
            §§goto(addr47);
         }
      }
      
      public function get charCode() : uint
      {
         return this.§;l§;
      }
      
      public function get keyCode() : uint
      {
         return this.§0j§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§4!D§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§1!3§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§=>§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§null§;
      }
   }
}
