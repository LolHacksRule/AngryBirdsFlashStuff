package §;L§
{
   import § !=§.DisplayObject;
   
   public class §=l§
   {
       
      
      private var mName:String;
      
      private var §;!+§:Vector.<§%_§>;
      
      private var §'!2§:§"!X§;
      
      private var §="!§:String;
      
      public function §=l§(param1:String, param2:§"!X§)
      {
         super();
         this.mName = param1;
         this.§;!+§ = new Vector.<§%_§>();
         this.§'!2§ = param2;
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
         var _loc3_:§[!H§ = this.§'!2§.§""#§(param1);
         if(_loc3_)
         {
            this.§;!+§.push(new §]!7§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§?D§.§08§(param1))
         {
            this.§;!+§.push(new §'!-§(param1,this.§'!2§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§;!+§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§;!+§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§;!+§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§;!+§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§;!+§.length)
         {
            param1 = this.§;!+§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§;!+§.length)
         {
            return null;
         }
         return this.§;!+§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§;!+§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§;!+§.length == 0)
         {
            return 0;
         }
         return this.§;!+§[this.§;!+§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §4!,§() : String
      {
         return this.§="!§;
      }
      
      public function getSubAnimation(param1:String) : §=l§
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
      
      public function getSubAnimationFromIndex(param1:int) : §=l§
      {
         return null;
      }
      
      public function §-!>§(param1:String) : void
      {
         this.§="!§ = param1;
      }
   }
}
