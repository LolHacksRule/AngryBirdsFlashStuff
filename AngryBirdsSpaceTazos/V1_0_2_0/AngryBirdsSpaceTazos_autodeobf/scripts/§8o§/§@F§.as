package §8o§
{
   import §'!&§.DisplayObject;
   
   public class §@F§ extends §]!U§
   {
       
      
      private var §9R§:Vector.<§]!U§>;
      
      private var §#" §:§]!U§;
      
      public function §@F§(param1:String, param2:§5"%§)
      {
         this.§9R§ = new Vector.<§]!U§>();
         super(param1,param2);
      }
      
      public function §]"§(param1:String, param2:§]!U§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§#" §)
         {
            this.§#" § = param2;
         }
         this.§9R§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§#" §.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§#" §.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§#" §.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§#" §.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§#" §.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §]!U§
      {
         var _loc2_:§]!U§ = null;
         for each(_loc2_ in this.§9R§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§#" §;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§#" §.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§]!U§ = null;
         for each(_loc2_ in this.§9R§)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§9R§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §]!U§
      {
         if(param1 >= 0 && param1 < this.§9R§.length)
         {
            return this.§9R§[param1];
         }
         return null;
      }
   }
}
