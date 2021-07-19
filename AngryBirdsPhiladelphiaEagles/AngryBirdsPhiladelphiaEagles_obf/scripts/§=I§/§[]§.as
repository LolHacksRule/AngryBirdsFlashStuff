package §=I§
{
   public class §[]§
   {
       
      
      private var §7[§:int;
      
      private var §!A§:int;
      
      private var §"s§:int;
      
      private var _height:int;
      
      private var §"=§:int;
      
      private var §>!2§:int;
      
      public function §[]§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super();
            this.§7[§ = param1;
            this.§!A§ = param2;
            while(true)
            {
               this.§"s§ = param3;
               while(true)
               {
                  this._height = param4;
                  if(_loc7_ && param1)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
            }
         }
         addr74:
         while(true)
         {
            this.§"=§ = param5;
            do
            {
               this.§>!2§ = param6;
            }
            while(!_loc8_);
            
            if(!_loc7_)
            {
               break;
            }
            continue loop1;
         }
      }
      
      public function get x() : int
      {
         return this.§7[§;
      }
      
      public function get y() : int
      {
         return this.§!A§;
      }
      
      public function get width() : int
      {
         return this.§"s§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§"=§;
      }
      
      public function get pivotY() : int
      {
         return this.§>!2§;
      }
   }
}
