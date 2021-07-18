package §'!H§
{
   public class §^!D§
   {
       
      
      private var §>d§:int;
      
      private var §#T§:int;
      
      private var §@!+§:int;
      
      private var _height:int;
      
      private var §1v§:int;
      
      private var §#+§:int;
      
      public function §^!D§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§>d§ = param1;
               while(true)
               {
                  this.§#T§ = param2;
                  while(_loc7_ || param3)
                  {
                     this.§@!+§ = param3;
                     while(!(_loc8_ && param2))
                     {
                        while(true)
                        {
                           this._height = param4;
                           continue loop0;
                        }
                        addr46:
                        if(!_loc8_)
                        {
                           this.§#+§ = param6;
                           addr58:
                           if(!(_loc8_ && this))
                           {
                              return;
                              addr44:
                           }
                           while(_loc7_)
                           {
                              §§goto(addr46);
                              §§goto(addr58);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get x() : int
      {
         return this.§>d§;
      }
      
      public function get y() : int
      {
         return this.§#T§;
      }
      
      public function get width() : int
      {
         return this.§@!+§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§1v§;
      }
      
      public function get pivotY() : int
      {
         return this.§#+§;
      }
   }
}
