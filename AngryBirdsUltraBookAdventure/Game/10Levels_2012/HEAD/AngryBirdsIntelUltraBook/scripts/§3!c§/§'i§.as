package §3!c§
{
   public class §'i§
   {
       
      
      private var §3!F§:int;
      
      private var §>!F§:int;
      
      private var §7x§:int;
      
      private var _height:int;
      
      private var §6!L§:int;
      
      private var §3d§:int;
      
      public function §'i§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§3!F§ = param1;
               while(true)
               {
                  this.§>!F§ = param2;
                  addr68:
                  if(_loc7_ || param1)
                  {
                     if(!_loc8_)
                     {
                        this.§3d§ = param6;
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
                                    this.§7x§ = param3;
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
                              this.§6!L§ = param5;
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
         return this.§3!F§;
      }
      
      public function get y() : int
      {
         return this.§>!F§;
      }
      
      public function get width() : int
      {
         return this.§7x§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§6!L§;
      }
      
      public function get pivotY() : int
      {
         return this.§3d§;
      }
   }
}
