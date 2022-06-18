package §7!j§
{
   import §&!v§.DisplayObject;
   
   public class §=!j§ extends §8#B§
   {
       
      
      private var §,#f§:Vector.<§8#B§>;
      
      private var §'#c§:§8#B§;
      
      public function §=!j§(param1:String, param2:§'0§)
      {
         this.§,#f§ = new Vector.<§8#B§>();
         super(param1,param2);
      }
      
      public function §#$9§(param1:String, param2:§8#B§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'#c§)
         {
            this.§'#c§ = param2;
         }
         this.§,#f§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§'#c§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§'#c§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§'#c§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§'#c§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§'#c§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§'#c§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §8#B§
      {
         var _loc2_:§8#B§ = null;
         for each(_loc2_ in this.§,#f§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§'#c§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§'#c§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§8#B§ = null;
         for each(_loc2_ in this.§,#f§)
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
         var _loc2_:§8#B§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§,#f§)
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
         return this.§,#f§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §8#B§
      {
         if(param1 >= 0 && param1 < this.§,#f§.length)
         {
            return this.§,#f§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§'#c§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§'#c§.isLooping;
      }
   }
}
