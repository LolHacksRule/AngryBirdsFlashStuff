package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §!a§:uint;
      
      private var §%Y§:uint;
      
      private var §?!g§:uint;
      
      private var §[8§:Boolean;
      
      private var §<n§:Boolean;
      
      private var §^! §:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,false);
            while(true)
            {
               this.§!a§ = param2;
               while(true)
               {
                  this.§%Y§ = param3;
                  loop2:
                  while(true)
                  {
                     this.§?!g§ = param4;
                     loop3:
                     while(true)
                     {
                        this.§<n§ = param5;
                        addr72:
                        while(!_loc9_)
                        {
                           this.§[8§ = param6;
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  if(!_loc9_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function get charCode() : uint
      {
         return this.§!a§;
      }
      
      public function get keyCode() : uint
      {
         return this.§%Y§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?!g§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[8§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<n§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^! §;
      }
   }
}
