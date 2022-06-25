package §?2§
{
   public class §3P§
   {
       
      
      private var §7%§:int;
      
      private var §?!!§:int;
      
      private var §1!]§:int;
      
      private var _height:int;
      
      private var §?j§:int;
      
      private var §3§:int;
      
      public function §3P§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7%§ = param1;
               while(true)
               {
                  this.§?!!§ = param2;
                  while(_loc7_)
                  {
                     loop6:
                     while(!(_loc8_ && this))
                     {
                        if(!_loc8_)
                        {
                           this.§3§ = param6;
                           if(!_loc7_)
                           {
                              continue;
                           }
                           addr29:
                           if(!_loc8_)
                           {
                              addr31:
                              if(_loc8_ && this)
                              {
                                 while(true)
                                 {
                                    this._height = param4;
                                    addr77:
                                    while(true)
                                    {
                                       this.§?j§ = param5;
                                       continue loop6;
                                       §§goto(addr29);
                                    }
                                    §§goto(addr31);
                                 }
                                 addr82:
                              }
                              return;
                           }
                           §§goto(addr77);
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§1!]§ = param3;
            §§goto(addr82);
         }
      }
      
      public function get x() : int
      {
         return this.§7%§;
      }
      
      public function get y() : int
      {
         return this.§?!!§;
      }
      
      public function get width() : int
      {
         return this.§1!]§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§?j§;
      }
      
      public function get pivotY() : int
      {
         return this.§3§;
      }
   }
}
