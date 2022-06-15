package §7"T§
{
   import §,#e§.DisplayObject;
   
   public class §@#R§ extends §7b§
   {
       
      
      private var §"$§:Vector.<§7b§>;
      
      private var §;p§:§7b§;
      
      public function §@#R§(param1:String, param2:§#"^§)
      {
         this.§"$§ = new Vector.<§7b§>();
         super(param1,param2);
      }
      
      public function §5$@§(param1:String, param2:§7b§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§;p§)
         {
            this.§;p§ = param2;
         }
         this.§"$§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§;p§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§;p§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§;p§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§;p§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§;p§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§;p§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §7b§
      {
         var _loc2_:§7b§ = null;
         for each(_loc2_ in this.§"$§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§;p§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§;p§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§7b§ = null;
         for each(_loc2_ in this.§"$§)
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
         var _loc2_:§7b§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§"$§)
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
         return this.§"$§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §7b§
      {
         if(param1 >= 0 && param1 < this.§"$§.length)
         {
            return this.§"$§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§;p§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§;p§.isLooping;
      }
   }
}
