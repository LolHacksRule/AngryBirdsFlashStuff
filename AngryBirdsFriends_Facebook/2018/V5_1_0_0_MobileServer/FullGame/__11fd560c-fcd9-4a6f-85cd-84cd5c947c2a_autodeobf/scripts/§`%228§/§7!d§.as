package §`"8§
{
   import §^"S§.DisplayObject;
   
   public class §7!d§ extends §0$2§
   {
       
      
      private var §6#l§:Vector.<§0$2§>;
      
      private var § "I§:§0$2§;
      
      public function §7!d§(param1:String, param2:§34§)
      {
         this.§6#l§ = new Vector.<§0$2§>();
         super(param1,param2);
      }
      
      public function §3"M§(param1:String, param2:§0$2§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§ "I§)
         {
            this.§ "I§ = param2;
         }
         this.§6#l§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§ "I§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§ "I§.getFrameWithOffset(param1,param2,param3);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         return this.§ "I§.getFrame(param1,param2,param3);
      }
      
      override public function getFrameName(param1:int) : String
      {
         return this.§ "I§.getFrameName(param1);
      }
      
      override public function get frameCount() : int
      {
         return this.§ "I§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§ "I§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §0$2§
      {
         var _loc2_:§0$2§ = null;
         for each(_loc2_ in this.§6#l§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§ "I§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§ "I§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§0$2§ = null;
         for each(_loc2_ in this.§6#l§)
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
         var _loc2_:§0$2§ = null;
         var _loc3_:String = null;
         for each(_loc2_ in this.§6#l§)
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
         return this.§6#l§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §0$2§
      {
         if(param1 >= 0 && param1 < this.§6#l§.length)
         {
            return this.§6#l§[param1];
         }
         return null;
      }
      
      override public function get startAnimationName() : String
      {
         return this.§ "I§.startAnimationName;
      }
      
      override public function get isLooping() : Boolean
      {
         return this.§ "I§.isLooping;
      }
   }
}
