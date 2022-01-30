package §6_§
{
   import §-!f§.DisplayObject;
   
   public class §9F§ extends §6k§
   {
       
      
      private var §%""§:Vector.<§6k§>;
      
      private var §8'§:§6k§;
      
      public function §9F§(param1:String, param2:§,!>§)
      {
         this.§%""§ = new Vector.<§6k§>();
         super(param1,param2);
      }
      
      public function §6!#§(param1:String, param2:§6k§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(param2.frameCount == 0)
         {
            return;
         }
         if(!this.§8'§)
         {
            this.§8'§ = param2;
         }
         this.§%""§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§8'§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§8'§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§8'§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§8'§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§8'§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §6k§
      {
         var _loc2_:§6k§ = null;
         for each(_loc2_ in this.§%""§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§8'§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§8'§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§6k§ = null;
         for each(_loc2_ in this.§%""§)
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
         return this.§%""§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §6k§
      {
         if(param1 >= 0 && param1 < this.§%""§.length)
         {
            return this.§%""§[param1];
         }
         return null;
      }
   }
}
