package §3"$§
{
   import §1"s§.DisplayObject;
   
   public class §<"J§ extends §[a§
   {
       
      
      private var §[!5§:Vector.<§[a§>;
      
      private var §7"m§:§[a§;
      
      public function §<"J§(param1:String, param2:§&"0§)
      {
         this.§[!5§ = new Vector.<§[a§>();
         super(param1,param2);
      }
      
      public function §`'§(param1:String, param2:§[a§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§7"m§)
         {
            this.§7"m§ = param2;
         }
         this.§[!5§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§7"m§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§7"m§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§7"m§.getFrame(param1,param2);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§7"m§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§7"m§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§7"m§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §[a§
      {
         var _loc2_:§[a§ = null;
         for each(_loc2_ in this.§[!5§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§7"m§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§7"m§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§[a§ = null;
         for each(_loc2_ in this.§[!5§)
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
         return this.§[!5§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §[a§
      {
         if(param1 >= 0 && param1 < this.§[!5§.length)
         {
            return this.§[!5§[param1];
         }
         return null;
      }
   }
}
