package §@"§
{
   import §9$§.DisplayObject;
   
   public class §&"m§ extends §`"W§
   {
       
      
      private var §;$9§:Vector.<§`"W§>;
      
      private var §5"=§:§`"W§;
      
      public function §&"m§(param1:String, param2:§&!=§)
      {
         this.§;$9§ = new Vector.<§`"W§>();
         super(param1,param2);
      }
      
      public function §]"S§(param1:String, param2:§`"W§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§5"=§)
         {
            this.§5"=§ = param2;
         }
         this.§;$9§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§5"=§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§5"=§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§5"=§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§5"=§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§5"=§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§5"=§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §`"W§
      {
         var _loc2_:§`"W§ = null;
         for each(_loc2_ in this.§;$9§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§5"=§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§5"=§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§`"W§ = null;
         for each(_loc2_ in this.§;$9§)
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
         var _loc2_:§`"W§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§;$9§)
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
         return this.§;$9§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §`"W§
      {
         if(param1 >= 0 && param1 < this.§;$9§.length)
         {
            return this.§;$9§[param1];
         }
         return null;
      }
   }
}
