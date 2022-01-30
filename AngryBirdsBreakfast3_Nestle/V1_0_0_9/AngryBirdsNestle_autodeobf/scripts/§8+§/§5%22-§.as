package §8+§
{
   public class §5"-§
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var §4!§:String = "";
      
      public var front:Boolean = false;
      
      public var §92§:Number = 0.0;
      
      public var §6!E§:Number = 0.0;
      
      public var §>!e§:int = -1;
      
      public function §5"-§()
      {
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.x = this.x;
         _loc1_.y = this.y;
         _loc1_.angle = this.angle;
         _loc1_.front = this.front;
         _loc1_.uniqueID = this.id.toString();
         _loc1_.id = this.type;
         return _loc1_;
      }
   }
}
