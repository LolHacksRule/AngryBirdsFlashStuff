package §;L§
{
   import § !=§.DisplayObject;
   
   public class §-!r§ extends §=l§
   {
       
      
      private var §'!h§:Vector.<§=l§>;
      
      private var §`!=§:§=l§;
      
      public function §-!r§(param1:String, param2:§"!X§)
      {
         this.§'!h§ = new Vector.<§=l§>();
         super(param1,param2);
      }
      
      public function §<Q§(param1:String, param2:§=l§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(param2.frameCount == 0)
         {
            return;
         }
         if(!this.§`!=§)
         {
            this.§`!=§ = param2;
         }
         this.§'!h§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§`!=§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§`!=§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§`!=§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§`!=§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§`!=§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §=l§
      {
         var _loc2_:§=l§ = null;
         for each(_loc2_ in this.§'!h§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§`!=§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§`!=§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§=l§ = null;
         for each(_loc2_ in this.§'!h§)
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
         return this.§'!h§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §=l§
      {
         if(param1 >= 0 && param1 < this.§'!h§.length)
         {
            return this.§'!h§[param1];
         }
         return null;
      }
   }
}
