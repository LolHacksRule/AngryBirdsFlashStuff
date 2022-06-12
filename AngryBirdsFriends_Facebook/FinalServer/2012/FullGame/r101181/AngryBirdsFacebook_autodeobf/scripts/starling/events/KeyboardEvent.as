package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || KeyboardEvent)
         {
            KEY_UP = "keyUp";
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §,[§:uint;
      
      private var §&!§:uint;
      
      private var §6J§:uint;
      
      private var §%x§:Boolean;
      
      private var §]V§:Boolean;
      
      private var §5a§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§,[§ = param2;
               while(true)
               {
                  this.§&!§ = param3;
                  loop2:
                  while(!_loc8_)
                  {
                     this.§6J§ = param4;
                     while(true)
                     {
                        this.§]V§ = param5;
                        loop4:
                        while(!(_loc8_ && param3))
                        {
                           this.§%x§ = param6;
                           loop5:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 this.§5a§ = param7;
                                 if(_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function get charCode() : uint
      {
         return this.§,[§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&!§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§6J§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§%x§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]V§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5a§;
      }
   }
}
