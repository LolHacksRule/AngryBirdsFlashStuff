package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            KEY_UP = "keyUp";
            do
            {
               KEY_DOWN = "keyDown";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §^Y§:uint;
      
      private var §=@§:uint;
      
      private var §import§:uint;
      
      private var §@A§:Boolean;
      
      private var §42§:Boolean;
      
      private var §-!I§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            super(param1,false);
            loop0:
            do
            {
               this.§^Y§ = param2;
               loop1:
               while(true)
               {
                  this.§=@§ = param3;
                  do
                  {
                     this.§import§ = param4;
                     do
                     {
                        this.§42§ = param5;
                        loop4:
                        do
                        {
                           this.§@A§ = param6;
                           while(!_loc9_)
                           {
                              this.§-!I§ = param7;
                              if(!(_loc9_ && param3))
                              {
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        while(!_loc8_);
                        
                     }
                     while(_loc9_);
                     
                  }
                  while(_loc9_);
                  
                  continue loop0;
               }
            }
            while(!_loc8_);
            
         }
      }
      
      public function get charCode() : uint
      {
         return this.§^Y§;
      }
      
      public function get keyCode() : uint
      {
         return this.§=@§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§import§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§@A§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§42§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!I§;
      }
   }
}
