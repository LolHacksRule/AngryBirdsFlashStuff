package §2`§
{
   import §3!J§.DisplayObject;
   
   public class §%K§ extends §;!Q§
   {
       
      
      private var §[-§:Vector.<§;!Q§>;
      
      private var §!1§:§;!Q§;
      
      public function §%K§(param1:String, param2:§%!!§)
      {
         this.§[-§ = new Vector.<§;!Q§>();
         super(param1,param2);
      }
      
      public function §1A§(param1:String, param2:§;!Q§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§!1§)
         {
            this.§!1§ = param2;
         }
         this.§[-§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§!1§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§!1§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§!1§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§!1§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§!1§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §;!Q§
      {
         var _loc2_:§;!Q§ = null;
         for each(_loc2_ in this.§[-§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§!1§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§!1§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§;!Q§ = null;
         for each(_loc2_ in this.§[-§)
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
         return this.§[-§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §;!Q§
      {
         if(param1 >= 0 && param1 < this.§[-§.length)
         {
            return this.§[-§[param1];
         }
         return null;
      }
   }
}
