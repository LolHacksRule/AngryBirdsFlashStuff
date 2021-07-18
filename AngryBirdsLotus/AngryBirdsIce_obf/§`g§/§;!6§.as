package §`g§
{
   public class §;!6§
   {
       
      
      private var §+V§:int;
      
      private var §]-§:int;
      
      private var §^v§:int;
      
      private var _height:int;
      
      private var §'M§:int;
      
      private var §9!A§:int;
      
      public function §;!6§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         super();
         loop0:
         do
         {
            this.§+V§ = param1;
            loop1:
            while(true)
            {
               this.§]-§ = param2;
               this.§^v§ = param3;
               loop2:
               do
               {
                  this._height = param4;
                  while(_loc7_)
                  {
                     this.§'M§ = param5;
                     this.§9!A§ = param6;
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(_loc8_);
               
               continue loop0;
            }
         }
         while(!(_loc7_ || this));
         
      }
      
      public function get x() : int
      {
         return this.§+V§;
      }
      
      public function get y() : int
      {
         return this.§]-§;
      }
      
      public function get width() : int
      {
         return this.§^v§;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get pivotX() : int
      {
         return this.§'M§;
      }
      
      public function get pivotY() : int
      {
         return this.§9!A§;
      }
   }
}
