package §,I§
{
   public class §+!a§
   {
       
      
      private var §41§:int;
      
      private var §8E§:int;
      
      private var §3!H§:int;
      
      private var _height:int;
      
      private var §^!Y§:int;
      
      private var §true§:int;
      
      public function §+!a§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§41§ = param1;
               loop1:
               while(true)
               {
                  this.§8E§ = param2;
                  while(true)
                  {
                     this.§3!H§ = param3;
                     while(_loc8_)
                     {
                        this._height = param4;
                        continue loop1;
                        addr59:
                        if(!(_loc7_ && param1))
                        {
                           this.§true§ = param6;
                           addr66:
                           if(_loc8_ || param1)
                           {
                              continue loop0;
                           }
                           addr57:
                           while(!_loc7_)
                           {
                              §§goto(addr59);
                              §§goto(addr66);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^!Y§ = param5;
            §§goto(addr57);
         }
         §§goto(addr42);
      }
      
      public function get x() : int
      {
         return this.§41§;
      }
      
      public function get y() : int
      {
         return this.§8E§;
      }
      
      public function get width() : int
      {
         return this.§3!H§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§^!Y§;
      }
      
      public function get pivotY() : int
      {
         return this.§true§;
      }
   }
}
