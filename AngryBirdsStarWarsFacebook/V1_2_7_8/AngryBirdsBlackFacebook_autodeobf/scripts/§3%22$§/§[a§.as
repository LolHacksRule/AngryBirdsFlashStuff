package §3"$§
{
   import §1"s§.DisplayObject;
   
   public class §[a§
   {
       
      
      private var mName:String;
      
      private var §!!m§:Vector.<§7"u§>;
      
      private var §-#7§:§&"0§;
      
      private var §9!G§:String;
      
      public function §[a§(param1:String, param2:§&"0§)
      {
         super();
         this.mName = param1;
         this.§!!m§ = new Vector.<§7"u§>();
         this.§-#7§ = param2;
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
         var _loc3_:§]!h§ = this.§-#7§.getTexture(param1);
         if(_loc3_)
         {
            this.§!!m§.push(new §=f§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§&#7§.§0!n§(param1))
         {
            this.§!!m§.push(new §3!r§(param1,this.§-#7§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§!!m§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc4_;
            while(this.§!!m§[_loc3_].endTimeMilliSeconds < param1 && _loc3_ < this.§!!m§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§!!m§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§!!m§.length)
         {
            param1 = this.§!!m§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§!!m§.length)
         {
            return null;
         }
         return this.§!!m§[param1].updateDisplayObject(param2);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§!!m§.length)
         {
            param1 = this.§!!m§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§!!m§.length)
         {
            return null;
         }
         return this.§!!m§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§!!m§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§!!m§.length == 0)
         {
            return 0;
         }
         return this.§!!m§[this.§!!m§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§9!G§;
      }
      
      public function getSubAnimation(param1:String) : §[a§
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
      
      public function getSubAnimationFromIndex(param1:int) : §[a§
      {
         return null;
      }
      
      public function §`!l§(param1:String) : void
      {
         this.§9!G§ = param1;
      }
   }
}
