package §9#M§
{
   import §#Z§.DisplayObject;
   
   public class §[#M§ extends §,`§
   {
       
      
      private var §%7§:Vector.<§,`§>;
      
      private var §6§:§,`§;
      
      public function §[#M§(param1:String, param2:§%"=§)
      {
         this.§%7§ = new Vector.<§,`§>();
         super(param1,param2);
      }
      
      public function §+!w§(param1:String, param2:§,`§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§6§)
         {
            this.§6§ = param2;
         }
         this.§%7§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§6§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§6§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§6§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§6§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§6§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§6§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §,`§
      {
         var _loc2_:§,`§ = null;
         for each(_loc2_ in this.§%7§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§6§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§6§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§,`§ = null;
         for each(_loc2_ in this.§%7§)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function hasAnySubAnimations(param1:Array) : Boolean
      {
         var _loc2_:§,`§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§%7§)
         {
            for each(_loc3_ in param1)
            {
               if(_loc2_.name == _loc3_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§%7§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §,`§
      {
         if(param1 >= 0 && param1 < this.§%7§.length)
         {
            return this.§%7§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§6§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§6§.isLooping;
      }
   }
}
