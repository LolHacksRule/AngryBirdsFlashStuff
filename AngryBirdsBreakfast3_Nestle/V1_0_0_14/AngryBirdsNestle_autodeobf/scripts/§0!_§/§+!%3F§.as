package §0!_§
{
   import §`!B§.DisplayObject;
   
   public class §+!?§
   {
       
      
      private var mName:String;
      
      private var §#!Y§:Vector.<§<"6§>;
      
      private var §=!Q§:§!!G§;
      
      private var §]"6§:String;
      
      public function §+!?§(param1:String, param2:§!!G§)
      {
         super();
         this.mName = param1;
         this.§#!Y§ = new Vector.<§<"6§>();
         this.§=!Q§ = param2;
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
         var _loc3_:§19§ = this.§=!Q§.§<!z§(param1);
         if(_loc3_)
         {
            this.§#!Y§.push(new §=!"§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§%;§.§^!M§(param1))
         {
            this.§#!Y§.push(new §7B§(param1,this.§=!Q§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§#!Y§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§#!Y§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§#!Y§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§#!Y§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§#!Y§.length)
         {
            param1 = this.§#!Y§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§#!Y§.length)
         {
            return null;
         }
         return this.§#!Y§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§#!Y§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§#!Y§.length == 0)
         {
            return 0;
         }
         return this.§#!Y§[this.§#!Y§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §8I§() : String
      {
         return this.§]"6§;
      }
      
      public function getSubAnimation(param1:String) : §+!?§
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
      
      public function getSubAnimationFromIndex(param1:int) : §+!?§
      {
         return null;
      }
      
      public function §9"0§(param1:String) : void
      {
         this.§]"6§ = param1;
      }
   }
}
