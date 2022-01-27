package §4&§
{
   import §7!8§.DisplayObject;
   
   public class §#r§
   {
       
      
      private var mName:String;
      
      private var §%!u§:Vector.<§else§>;
      
      private var §7!T§:§,C§;
      
      private var §;!7§:String;
      
      public function §#r§(param1:String, param2:§,C§)
      {
         super();
         this.mName = param1;
         this.§%!u§ = new Vector.<§else§>();
         this.§7!T§ = param2;
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
         var _loc3_:§'!"§ = this.§7!T§.getTexture(param1);
         if(_loc3_)
         {
            this.§%!u§.push(new §`"=§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§ j§.§=!7§(param1))
         {
            this.§%!u§.push(new §#"2§(param1,this.§7!T§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§%!u§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§%!u§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§%!u§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§%!u§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§%!u§.length)
         {
            param1 = this.§%!u§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§%!u§.length)
         {
            return null;
         }
         return this.§%!u§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§%!u§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§%!u§.length == 0)
         {
            return 0;
         }
         return this.§%!u§[this.§%!u§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§;!7§;
      }
      
      public function getSubAnimation(param1:String) : §#r§
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
      
      public function getSubAnimationFromIndex(param1:int) : §#r§
      {
         return null;
      }
      
      public function §-!6§(param1:String) : void
      {
         this.§;!7§ = param1;
      }
   }
}
