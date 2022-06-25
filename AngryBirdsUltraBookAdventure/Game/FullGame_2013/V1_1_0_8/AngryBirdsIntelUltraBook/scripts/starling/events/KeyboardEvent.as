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
      
      private var §6&§:uint;
      
      private var §?h§:uint;
      
      private var §@j§:uint;
      
      private var §,q§:Boolean;
      
      private var §2-§:Boolean;
      
      private var §+!Q§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,false);
            loop0:
            while(true)
            {
               this.§6&§ = param2;
               while(true)
               {
                  this.§?h§ = param3;
                  while(!(_loc9_ && param1))
                  {
                     this.§2-§ = param5;
                     loop4:
                     while(!(_loc9_ && param1))
                     {
                        this.§,q§ = param6;
                        while(true)
                        {
                           if(_loc8_)
                           {
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        while(true)
                        {
                           this.§@j§ = param4;
                           break loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function get charCode() : uint
      {
         return this.§6&§;
      }
      
      public function get keyCode() : uint
      {
         return this.§?h§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§@j§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,q§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§2-§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!Q§;
      }
   }
}
