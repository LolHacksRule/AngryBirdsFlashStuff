package §'G§
{
   import §6#H§.DisplayObject;
   
   public class §3#?§ extends §;D§
   {
       
      
      private var §7#c§:Vector.<§;D§>;
      
      private var §'#9§:§;D§;
      
      public function §3#?§(param1:String, param2:§3$§)
      {
         this.§7#c§ = new Vector.<§;D§>();
         super(param1,param2);
      }
      
      public function §7_§(param1:String, param2:§;D§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§'#9§)
         {
            this.§'#9§ = param2;
         }
         this.§7#c§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§'#9§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§'#9§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§'#9§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§'#9§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§'#9§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§'#9§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §;D§
      {
         var _loc2_:§;D§ = null;
         for each(_loc2_ in this.§7#c§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§'#9§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§'#9§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§;D§ = null;
         for each(_loc2_ in this.§7#c§)
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
         var _loc2_:§;D§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§7#c§)
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
         return this.§7#c§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §;D§
      {
         if(param1 >= 0 && param1 < this.§7#c§.length)
         {
            return this.§7#c§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§'#9§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§'#9§.isLooping;
      }
   }
}
