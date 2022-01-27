package §!!k§
{
   import §use§.DisplayObject;
   
   public class §1!^§
   {
       
      
      private var mName:String;
      
      private var §%z§:Vector.<§?!`§>;
      
      private var §9!G§:§0!B§;
      
      private var §%o§:String;
      
      public function §1!^§(param1:String, param2:§0!B§)
      {
         super();
         this.mName = param1;
         this.§%z§ = new Vector.<§?!`§>();
         this.§9!G§ = param2;
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
         var _loc3_:§'!j§ = this.§9!G§.getTexture(param1);
         if(_loc3_)
         {
            this.§%z§.push(new §<!z§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§;m§.§^!`§(param1))
         {
            this.§%z§.push(new §&!H§(param1,this.§9!G§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§%z§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc4_;
            while(this.§%z§[_loc3_].endTimeMilliSeconds < param1 && _loc3_ < this.§%z§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§%z§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§%z§.length)
         {
            param1 = this.§%z§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§%z§.length)
         {
            return null;
         }
         return this.§%z§[param1].updateDisplayObject(param2);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§%z§.length)
         {
            param1 = this.§%z§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§%z§.length)
         {
            return null;
         }
         return this.§%z§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§%z§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§%z§.length == 0)
         {
            return 0;
         }
         return this.§%z§[this.§%z§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§%o§;
      }
      
      public function getSubAnimation(param1:String) : §1!^§
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
      
      public function getSubAnimationFromIndex(param1:int) : §1!^§
      {
         return null;
      }
      
      public function §7"§(param1:String) : void
      {
         this.§%o§ = param1;
      }
   }
}
