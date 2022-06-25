package §_-6E§
{
   public class §_-0U§
   {
       
      
      private var §_-4I§:int;
      
      private var §_-tS§:int;
      
      private var §_-aV§:int;
      
      private var _height:int;
      
      private var § true§:int;
      
      private var §_-0Ed§:int;
      
      public function §_-0U§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§_-4I§ = param1;
               loop1:
               while(true)
               {
                  this.§_-tS§ = param2;
                  loop2:
                  while(!_loc7_)
                  {
                     this.§_-aV§ = param3;
                     while(true)
                     {
                        this._height = param4;
                        addr76:
                        while(!_loc7_)
                        {
                        }
                        addr54:
                        continue loop1;
                        while(!(_loc7_ && param2))
                        {
                           this.§_-0Ed§ = param6;
                           if(_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 §§goto(addr76);
                              }
                              return;
                              addr49:
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§ true§ = param5;
            §§goto(addr54);
         }
         §§goto(addr49);
      }
      
      public function get x() : int
      {
         return this.§_-4I§;
      }
      
      public function get y() : int
      {
         return this.§_-tS§;
      }
      
      public function get width() : int
      {
         return this.§_-aV§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§ true§;
      }
      
      public function get pivotY() : int
      {
         return this.§_-0Ed§;
      }
   }
}
