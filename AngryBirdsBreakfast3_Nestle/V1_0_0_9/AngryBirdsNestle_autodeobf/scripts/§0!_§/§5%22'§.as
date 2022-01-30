package §0!_§
{
   import §`!B§.DisplayObject;
   
   public class §5"'§ extends §+!?§
   {
       
      
      private var §#!g§:Vector.<§+!?§>;
      
      private var §]N§:§+!?§;
      
      public function §5"'§(param1:String, param2:§!!G§)
      {
         this.§#!g§ = new Vector.<§+!?§>();
         super(param1,param2);
      }
      
      public function §=!A§(param1:String, param2:§+!?§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§]N§)
         {
            this.§]N§ = param2;
         }
         this.§#!g§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§]N§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§]N§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§]N§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§]N§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§]N§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §+!?§
      {
         var _loc2_:§+!?§ = null;
         for each(_loc2_ in this.§#!g§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§]N§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§]N§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§+!?§ = null;
         for each(_loc2_ in this.§#!g§)
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
         return this.§#!g§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §+!?§
      {
         if(param1 >= 0 && param1 < this.§#!g§.length)
         {
            return this.§#!g§[param1];
         }
         return null;
      }
   }
}
