package §^"[§
{
   import §!6§.DisplayObject;
   
   public class § v§ extends §4!8§
   {
       
      
      private var §+"k§:Vector.<§4!8§>;
      
      private var §6!3§:§4!8§;
      
      public function § v§(param1:String, param2:§=#;§)
      {
         this.§+"k§ = new Vector.<§4!8§>();
         super(param1,param2);
      }
      
      public function §5!6§(param1:String, param2:§4!8§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§6!3§)
         {
            this.§6!3§ = param2;
         }
         this.§+"k§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§6!3§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§6!3§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§6!3§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§6!3§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§6!3§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§6!3§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §4!8§
      {
         var _loc2_:§4!8§ = null;
         for each(_loc2_ in this.§+"k§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§6!3§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§6!3§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§4!8§ = null;
         for each(_loc2_ in this.§+"k§)
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
         var _loc2_:§4!8§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§+"k§)
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
         return this.§+"k§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §4!8§
      {
         if(param1 >= 0 && param1 < this.§+"k§.length)
         {
            return this.§+"k§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§6!3§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§6!3§.isLooping;
      }
   }
}
