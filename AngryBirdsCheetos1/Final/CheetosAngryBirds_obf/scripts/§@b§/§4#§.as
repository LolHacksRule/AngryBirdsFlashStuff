package §@b§
{
   public class §4#§
   {
       
      
      private var §=Q§:int;
      
      private var §2!V§:int;
      
      private var §=K§:int;
      
      private var _height:int;
      
      private var §]M§:int;
      
      private var §9!4§:int;
      
      public function §4#§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§=Q§ = param1;
               addr95:
               while(true)
               {
                  this.§2!V§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§=K§ = param3;
                     addr73:
                     while(_loc8_)
                     {
                        this._height = param4;
                        while(_loc8_)
                        {
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            this.§]M§ = param5;
            while(_loc8_)
            {
               this.§9!4§ = param6;
               if(!(_loc8_ || param1))
               {
                  continue;
               }
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     break loop5;
                  }
                  §§goto(addr95);
               }
               §§goto(addr73);
            }
            §§goto(addr66);
         }
      }
      
      public function get x() : int
      {
         return this.§=Q§;
      }
      
      public function get y() : int
      {
         return this.§2!V§;
      }
      
      public function get width() : int
      {
         return this.§=K§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§]M§;
      }
      
      public function get pivotY() : int
      {
         return this.§9!4§;
      }
   }
}
