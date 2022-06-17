package §^"[§
{
   import §!6§.DisplayObject;
   
   public class §4!8§
   {
       
      
      private var §-!O§:String;
      
      private var §6$D§:Vector.<§@#V§>;
      
      private var §2!b§:§=#;§;
      
      private var §!#J§:String;
      
      private var §4f§:String;
      
      private var §3#-§:String;
      
      private var §"T§:Boolean;
      
      private var §;"H§:int;
      
      public function §4!8§(param1:String, param2:§=#;§)
      {
         super();
         this.§-!O§ = param1;
         this.§6$D§ = new Vector.<§@#V§>();
         this.§2!b§ = param2;
         this.§3#-§ = null;
         this.§"T§ = false;
         this.§;"H§ = 1;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§^!8§ = this.§2!b§.getTexture(param1);
         if(_loc3_)
         {
            this.§6$D§.push(new §'#6§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§6"M§.§@#I§(param1))
         {
            this.§6$D§.push(new §4$"§(param1,this.§2!b§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§6$D§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§6$D§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§6$D§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§6$D§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§6$D§.length)
         {
            param1 = this.§6$D§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§6$D§.length)
         {
            return null;
         }
         return this.§6$D§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§6$D§.length)
         {
            param1 = this.§6$D§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§6$D§.length)
         {
            return null;
         }
         return this.§6$D§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§6$D§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§6$D§.length == 0)
         {
            return 0;
         }
         return this.§6$D§[this.§6$D§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§!#J§;
      }
      
      public function get soundChannel() : String
      {
         return this.§4f§;
      }
      
      public function getSubAnimation(param1:String) : §4!8§
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
      
      public function getSubAnimationFromIndex(param1:int) : §4!8§
      {
         return null;
      }
      
      public function §2"u§(param1:String, param2:String) : void
      {
         this.§!#J§ = param1;
         this.§4f§ = param2;
      }
      
      public function §;#6§(param1:Boolean) : void
      {
         var _loc2_:§@#V§ = null;
         for each(_loc2_ in this.§6$D§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§3#-§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§3#-§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§"T§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§"T§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§;"H§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§;"H§ = param1;
      }
   }
}
