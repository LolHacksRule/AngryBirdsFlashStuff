package §^e§
{
   import §4"@§.DisplayObject;
   
   public class §'"&§ extends §^5§
   {
       
      
      private var §4P§:Vector.<§^5§>;
      
      private var §5!r§:§^5§;
      
      public function §'"&§(param1:String, param2:§0"1§)
      {
         this.§4P§ = new Vector.<§^5§>();
         super(param1,param2);
      }
      
      public function §+q§(param1:String, param2:§^5§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5!r§)
         {
            this.§5!r§ = param2;
         }
         this.§4P§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§5!r§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§5!r§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§5!r§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§5!r§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§5!r§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §^5§
      {
         var _loc2_:§^5§ = null;
         for each(_loc2_ in this.§4P§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§5!r§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§5!r§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§^5§ = null;
         for each(_loc2_ in this.§4P§)
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
         return this.§4P§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §^5§
      {
         if(param1 >= 0 && param1 < this.§4P§.length)
         {
            return this.§4P§[param1];
         }
         return null;
      }
   }
}
