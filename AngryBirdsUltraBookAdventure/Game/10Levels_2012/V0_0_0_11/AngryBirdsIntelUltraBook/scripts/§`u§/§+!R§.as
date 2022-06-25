package §`u§
{
   public class §+!R§
   {
       
      
      private var §=f§:int;
      
      private var §4D§:int;
      
      private var §"A§:int;
      
      private var _height:int;
      
      private var §;!"§:int;
      
      private var §1^§:int;
      
      public function §+!R§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§=f§ = param1;
               while(true)
               {
                  this.§4D§ = param2;
                  addr68:
                  if(_loc7_ || param1)
                  {
                     if(!_loc8_)
                     {
                        this.§1^§ = param6;
                        addr87:
                        if(!(_loc8_ && param1))
                        {
                           return;
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc7_ || this)
                           {
                              addr61:
                              if(!(_loc8_ && param2))
                              {
                                 §§goto(addr68);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§"A§ = param3;
                                    addr99:
                                    while(true)
                                    {
                                       this._height = param4;
                                    }
                                    §§goto(addr61);
                                 }
                                 addr104:
                              }
                           }
                           while(!_loc8_)
                           {
                              this.§;!"§ = param5;
                              continue loop5;
                           }
                           §§goto(addr99);
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function get x() : int
      {
         return this.§=f§;
      }
      
      public function get y() : int
      {
         return this.§4D§;
      }
      
      public function get width() : int
      {
         return this.§"A§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§;!"§;
      }
      
      public function get pivotY() : int
      {
         return this.§1^§;
      }
   }
}
