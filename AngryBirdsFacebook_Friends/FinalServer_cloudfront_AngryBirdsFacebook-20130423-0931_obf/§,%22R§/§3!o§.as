package §,"R§
{
   public class §3!o§
   {
       
      
      private var §""[§:int;
      
      private var §'[§:int;
      
      private var §>!6§:int;
      
      private var _height:int;
      
      private var §!S§:int;
      
      private var §<b§:int;
      
      public function §3!o§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§""[§ = param1;
               loop1:
               while(true)
               {
                  this.§'[§ = param2;
                  while(true)
                  {
                     this.§>!6§ = param3;
                     continue loop0;
                     addr66:
                     if(!_loc7_)
                     {
                        loop6:
                        while(true)
                        {
                           this.§<b§ = param6;
                           if(_loc8_ || this)
                           {
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr83:
                           while(_loc8_ || param2)
                           {
                              §§goto(addr66);
                              continue loop6;
                           }
                           while(true)
                           {
                              this.§!S§ = param5;
                              §§goto(addr59);
                           }
                           addr59:
                        }
                        return;
                        addr54:
                        addr78:
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get x() : int
      {
         return this.§""[§;
      }
      
      public function get y() : int
      {
         return this.§'[§;
      }
      
      public function get width() : int
      {
         return this.§>!6§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§!S§;
      }
      
      public function get pivotY() : int
      {
         return this.§<b§;
      }
   }
}
