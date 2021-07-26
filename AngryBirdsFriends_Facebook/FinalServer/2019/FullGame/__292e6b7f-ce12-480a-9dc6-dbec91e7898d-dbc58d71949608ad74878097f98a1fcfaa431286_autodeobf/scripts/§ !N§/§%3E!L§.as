package § !N§
{
   public class §>!L§
   {
       
      
      public var type:String = "";
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var index:int = 0;
      
      public function §>!L§()
      {
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.x = this.x;
         _loc1_.y = this.y;
         _loc1_.angle = Math.round(this.angle / Math.PI * 180);
         _loc1_.id = this.type;
         return _loc1_;
      }
   }
}
