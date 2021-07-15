package § ! §
{
   import §6![§.DisplayObject;
   
   public class §>!H§ extends §5!v§
   {
       
      
      private var §2Y§:Vector.<§5!v§>;
      
      private var §0m§:§5!v§;
      
      public function §>!H§(param1:String, param2:§5!x§)
      {
         this.§2Y§ = new Vector.<§5!v§>();
         super(param1,param2);
      }
      
      public function §!!#§(param1:String, param2:§5!v§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§0m§)
         {
            this.§0m§ = param2;
         }
         this.§2Y§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§0m§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§0m§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§0m§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§0m§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§0m§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §5!v§
      {
         var _loc2_:§5!v§ = null;
         for each(_loc2_ in this.§2Y§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§0m§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§0m§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§5!v§ = null;
         for each(_loc2_ in this.§2Y§)
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
         return this.§2Y§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §5!v§
      {
         if(param1 >= 0 && param1 < this.§2Y§.length)
         {
            return this.§2Y§[param1];
         }
         return null;
      }
   }
}
