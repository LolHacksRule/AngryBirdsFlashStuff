package §!!k§
{
   import §use§.DisplayObject;
   
   public class §<!S§ extends §1!^§
   {
       
      
      private var §1"q§:Vector.<§1!^§>;
      
      private var §^^§:§1!^§;
      
      public function §<!S§(param1:String, param2:§0!B§)
      {
         this.§1"q§ = new Vector.<§1!^§>();
         super(param1,param2);
      }
      
      public function §&!d§(param1:String, param2:§1!^§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§^^§)
         {
            this.§^^§ = param2;
         }
         this.§1"q§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§^^§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§^^§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§^^§.getFrame(param1,param2);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§^^§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§^^§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§^^§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §1!^§
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in this.§1"q§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§^^§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§^^§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in this.§1"q§)
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
         return this.§1"q§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §1!^§
      {
         if(param1 >= 0 && param1 < this.§1"q§.length)
         {
            return this.§1"q§[param1];
         }
         return null;
      }
   }
}
