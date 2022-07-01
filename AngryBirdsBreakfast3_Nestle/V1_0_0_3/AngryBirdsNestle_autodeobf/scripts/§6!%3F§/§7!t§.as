package §6!?§
{
   import §0!Y§.DisplayObject;
   
   public class §7!t§
   {
       
      
      private var mName:String;
      
      private var §5!S§:Vector.<§1U§>;
      
      private var §#=§:§`!O§;
      
      private var §<!t§:String;
      
      public function §7!t§(param1:String, param2:§`!O§)
      {
         super();
         this.mName = param1;
         this.§5!S§ = new Vector.<§1U§>();
         this.§#=§ = param2;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§6B§ = this.§#=§.§=!'§(param1);
         if(_loc3_)
         {
            this.§5!S§.push(new §<"1§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§0+§.§`X§(param1))
         {
            this.§5!S§.push(new §&v§(param1,this.§#=§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§5!S§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§5!S§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§5!S§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§5!S§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§5!S§.length)
         {
            param1 = this.§5!S§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§5!S§.length)
         {
            return null;
         }
         return this.§5!S§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§5!S§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§5!S§.length == 0)
         {
            return 0;
         }
         return this.§5!S§[this.§5!S§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §8!p§() : String
      {
         return this.§<!t§;
      }
      
      public function getSubAnimation(param1:String) : §7!t§
      {
         return null;
      }
      
      public function hasSubAnimation(param1:String) : Boolean
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
      
      public function getSubAnimationFromIndex(param1:int) : §7!t§
      {
         return null;
      }
      
      public function §'S§(param1:String) : void
      {
         this.§<!t§ = param1;
      }
   }
}
