package §'G§
{
   import §6#H§.DisplayObject;
   
   public class §;D§
   {
       
      
      private var §!I§:String;
      
      private var §]!+§:Vector.<§2#4§>;
      
      private var §?#r§:§3$§;
      
      private var §;! §:String;
      
      private var §0c§:String;
      
      private var §]$0§:String;
      
      private var §-#O§:Boolean;
      
      private var §&#a§:int;
      
      public function §;D§(param1:String, param2:§3$§)
      {
         super();
         this.§!I§ = param1;
         this.§]!+§ = new Vector.<§2#4§>();
         this.§?#r§ = param2;
         this.§]$0§ = null;
         this.§-#O§ = false;
         this.§&#a§ = 1;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§3$B§ = this.§?#r§.getTexture(param1);
         if(_loc3_)
         {
            this.§]!+§.push(new §5L§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§0!d§.§7a§(param1))
         {
            this.§]!+§.push(new §##^§(param1,this.§?#r§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§]!+§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§]!+§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§]!+§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§]!+§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§]!+§.length)
         {
            param1 = this.§]!+§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]!+§.length)
         {
            return null;
         }
         return this.§]!+§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§]!+§.length)
         {
            param1 = this.§]!+§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§]!+§.length)
         {
            return null;
         }
         return this.§]!+§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§]!+§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§]!+§.length == 0)
         {
            return 0;
         }
         return this.§]!+§[this.§]!+§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§;! §;
      }
      
      public function get soundChannel() : String
      {
         return this.§0c§;
      }
      
      public function getSubAnimation(param1:String) : §;D§
      {
         return null;
      }
      
      public function hasSubAnimation(param1:String) : Boolean
      {
         return false;
      }
      
      public function hasAnySubAnimations(param1:Array) : Boolean
      {
         return false;
      }
      
      public function get defaultSubAnimationName() : String
      {
         return null;
      }
      
      public function get subAnimationCount() : int
      {
         return 0;
      }
      
      public function getSubAnimationFromIndex(param1:int) : §;D§
      {
         return null;
      }
      
      public function §;Z§(param1:String, param2:String) : void
      {
         this.§;! § = param1;
         this.§0c§ = param2;
      }
      
      public function §-#T§(param1:Boolean) : void
      {
         var _loc2_:§2#4§ = null;
         for each(_loc2_ in this.§]!+§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§]$0§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§]$0§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§-#O§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§-#O§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§&#a§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§&#a§ = param1;
      }
   }
}
