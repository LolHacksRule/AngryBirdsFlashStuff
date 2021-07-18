package §4&§
{
   import §7!8§.DisplayObject;
   
   public class §]!R§ extends §#r§
   {
       
      
      private var §&M§:Vector.<§#r§>;
      
      private var §%"G§:§#r§;
      
      public function §]!R§(param1:String, param2:§,C§)
      {
         this.§&M§ = new Vector.<§#r§>();
         super(param1,param2);
      }
      
      public function §["7§(param1:String, param2:§#r§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§%"G§)
         {
            this.§%"G§ = param2;
         }
         this.§&M§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§%"G§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§%"G§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§%"G§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§%"G§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§%"G§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §#r§
      {
         var _loc2_:§#r§ = null;
         for each(_loc2_ in this.§&M§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§%"G§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§%"G§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§#r§ = null;
         for each(_loc2_ in this.§&M§)
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
         return this.§&M§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §#r§
      {
         if(param1 >= 0 && param1 < this.§&M§.length)
         {
            return this.§&M§[param1];
         }
         return null;
      }
   }
}
