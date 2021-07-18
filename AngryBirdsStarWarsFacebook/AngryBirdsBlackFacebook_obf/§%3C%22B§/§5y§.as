package §<"B§
{
   public class §5y§
   {
       
      
      public var type:String = "";
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var index:int = 0;
      
      public function §5y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(!(_loc3_ && this))
         {
            _loc1_.x = this.x;
            do
            {
               _loc1_.y = this.y;
               do
               {
                  _loc1_.angle = Math.round(this.angle / Math.PI * 180);
                  do
                  {
                     _loc1_.id = this.type;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(!(_loc2_ || this));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
         return _loc1_;
      }
   }
}
