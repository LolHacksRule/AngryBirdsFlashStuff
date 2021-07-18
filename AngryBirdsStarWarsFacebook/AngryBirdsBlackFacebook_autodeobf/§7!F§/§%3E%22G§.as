package §7!F§
{
   import §!!U§.DisplayObject;
   
   public class §>"G§
   {
       
      
      private var mName:String;
      
      private var §,!b§:Vector.<§<d§>;
      
      private var §6V§:§7#5§;
      
      private var §4!I§:String;
      
      public function §>"G§(param1:String, param2:§7#5§)
      {
         super();
         this.mName = param1;
         this.§,!b§ = new Vector.<§<d§>();
         this.§6V§ = param2;
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
         var _loc3_:§8!W§ = this.§6V§.getTexture(param1);
         if(_loc3_)
         {
            this.§,!b§.push(new §?G§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§^"U§.§?Z§(param1))
         {
            this.§,!b§.push(new §1"]§(param1,this.§6V§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§,!b§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc4_;
            while(this.§,!b§[_loc3_].endTimeMilliSeconds < param1 && _loc3_ < this.§,!b§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§,!b§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§,!b§.length)
         {
            param1 = this.§,!b§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§,!b§.length)
         {
            return null;
         }
         return this.§,!b§[param1].updateDisplayObject(param2);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§,!b§.length)
         {
            param1 = this.§,!b§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§,!b§.length)
         {
            return null;
         }
         return this.§,!b§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§,!b§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§,!b§.length == 0)
         {
            return 0;
         }
         return this.§,!b§[this.§,!b§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§4!I§;
      }
      
      public function getSubAnimation(param1:String) : §>"G§
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
      
      public function getSubAnimationFromIndex(param1:int) : §>"G§
      {
         return null;
      }
      
      public function §&!s§(param1:String) : void
      {
         this.§4!I§ = param1;
      }
   }
}
