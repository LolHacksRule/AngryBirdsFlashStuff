package §7!F§
{
   import §!!U§.DisplayObject;
   
   public class §%#D§ extends §>"G§
   {
       
      
      private var §#<§:Vector.<§>"G§>;
      
      private var §,"l§:§>"G§;
      
      public function §%#D§(param1:String, param2:§7#5§)
      {
         this.§#<§ = new Vector.<§>"G§>();
         super(param1,param2);
      }
      
      public function §%#M§(param1:String, param2:§>"G§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§,"l§)
         {
            this.§,"l§ = param2;
         }
         this.§#<§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§,"l§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§,"l§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§,"l§.getFrame(param1,param2);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§,"l§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§,"l§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§,"l§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §>"G§
      {
         var _loc2_:§>"G§ = null;
         for each(_loc2_ in this.§#<§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§,"l§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§,"l§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§>"G§ = null;
         for each(_loc2_ in this.§#<§)
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
         return this.§#<§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §>"G§
      {
         if(param1 >= 0 && param1 < this.§#<§.length)
         {
            return this.§#<§[param1];
         }
         return null;
      }
   }
}
