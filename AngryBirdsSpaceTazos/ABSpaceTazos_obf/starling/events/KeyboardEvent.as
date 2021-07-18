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
         }
         do
         {
            KEY_DOWN = "keyDown";
         }
         while(_loc2_);
         
      }
      
      private var §"%§:uint;
      
      private var §`L§:uint;
      
      private var §9!X§:uint;
      
      private var §!Y§:Boolean;
      
      private var §<N§:Boolean;
      
      private var §'"+§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,false);
            while(true)
            {
               this.§"%§ = param2;
               while(!_loc8_)
               {
                  this.§`L§ = param3;
                  while(_loc9_ || this)
                  {
                     this.§9!X§ = param4;
                     loop3:
                     while(_loc9_ || param3)
                     {
                        while(true)
                        {
                           this.§<N§ = param5;
                           while(_loc9_)
                           {
                              this.§!Y§ = param6;
                              do
                              {
                                 this.§'"+§ = param7;
                              }
                              while(!_loc9_);
                              
                              if(_loc9_ || param3)
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function get charCode() : uint
      {
         return this.§"%§;
      }
      
      public function get keyCode() : uint
      {
         return this.§`L§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§9!X§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§<N§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§'"+§;
      }
   }
}
