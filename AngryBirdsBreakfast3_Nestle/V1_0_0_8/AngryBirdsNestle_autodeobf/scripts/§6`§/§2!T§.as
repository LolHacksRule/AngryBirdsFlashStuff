package §6`§
{
   import §-![§.DisplayObject;
   
   public class §2!T§ extends §-!i§
   {
       
      
      private var §?e§:Vector.<§-!i§>;
      
      private var §3q§:§-!i§;
      
      public function §2!T§(param1:String, param2:§2a§)
      {
         this.§?e§ = new Vector.<§-!i§>();
         super(param1,param2);
      }
      
      public function §2!?§(param1:String, param2:§-!i§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§3q§)
         {
            this.§3q§ = param2;
         }
         this.§?e§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§3q§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§3q§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§3q§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§3q§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§3q§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §-!i§
      {
         var _loc2_:§-!i§ = null;
         for each(_loc2_ in this.§?e§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§3q§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§3q§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§-!i§ = null;
         for each(_loc2_ in this.§?e§)
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
         return this.§?e§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §-!i§
      {
         if(param1 >= 0 && param1 < this.§?e§.length)
         {
            return this.§?e§[param1];
         }
         return null;
      }
   }
}
