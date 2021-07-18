package §@"§
{
   import §9$§.DisplayObject;
   
   public class §`"W§
   {
       
      
      private var §2!4§:String;
      
      private var §+"'§:Vector.<§;!"§>;
      
      private var §5!H§:§&!=§;
      
      private var §&#O§:String;
      
      private var §2"g§:String;
      
      public function §`"W§(param1:String, param2:§&!=§)
      {
         super();
         this.§2!4§ = param1;
         this.§+"'§ = new Vector.<§;!"§>();
         this.§5!H§ = param2;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§+!3§ = this.§5!H§.getTexture(param1);
         if(_loc3_)
         {
            this.§+"'§.push(new §+!a§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§'!u§.§1!l§(param1))
         {
            this.§+"'§.push(new §?#k§(param1,this.§5!H§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§+"'§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§+"'§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§+"'§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§+"'§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§+"'§.length)
         {
            param1 = this.§+"'§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+"'§.length)
         {
            return null;
         }
         return this.§+"'§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§+"'§.length)
         {
            param1 = this.§+"'§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§+"'§.length)
         {
            return null;
         }
         return this.§+"'§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§+"'§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§+"'§.length == 0)
         {
            return 0;
         }
         return this.§+"'§[this.§+"'§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§&#O§;
      }
      
      public function get soundChannel() : String
      {
         return this.§2"g§;
      }
      
      public function getSubAnimation(param1:String) : §`"W§
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
      
      public function getSubAnimationFromIndex(param1:int) : §`"W§
      {
         return null;
      }
      
      public function §9!B§(param1:String, param2:String) : void
      {
         this.§&#O§ = param1;
         this.§2"g§ = param2;
      }
      
      public function §?r§(param1:Boolean) : void
      {
         var _loc2_:§;!"§ = null;
         for each(_loc2_ in this.§+"'§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
   }
}
