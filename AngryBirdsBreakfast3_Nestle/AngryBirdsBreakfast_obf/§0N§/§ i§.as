package §0N§
{
   public class § i§
   {
       
      
      public var type:String = "";
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var index:int = 0;
      
      public function § i§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            _loc1_.x = this.x;
            while(true)
            {
               _loc1_.y = this.y;
            }
            addr88:
         }
         loop1:
         do
         {
            _loc1_.angle = Math.round(this.angle / Math.PI * 180);
            while(!_loc3_)
            {
               _loc1_.id = this.type;
               if(_loc2_ || _loc3_)
               {
                  continue loop1;
               }
            }
            §§goto(addr88);
         }
         while(_loc3_);
         
         return _loc1_;
      }
   }
}
