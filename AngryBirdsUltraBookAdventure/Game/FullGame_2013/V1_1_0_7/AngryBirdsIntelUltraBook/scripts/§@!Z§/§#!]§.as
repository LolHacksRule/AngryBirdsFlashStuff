package §@!Z§
{
   public class §#!]§
   {
       
      
      private var §5!l§:int;
      
      private var §`I§:Object;
      
      public function §#!]§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§5!l§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§`I§ = param2;
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get type() : int
      {
         return this.§5!l§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!l§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§`I§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`I§ = param1;
         }
      }
   }
}
