package §2`§
{
   import §3!J§.DisplayObject;
   
   public class §;!Q§
   {
       
      
      private var mName:String;
      
      private var §8!'§:Vector.<§=!"§>;
      
      private var §,%§:§%!!§;
      
      private var §`!A§:String;
      
      public function §;!Q§(param1:String, param2:§%!!§)
      {
         super();
         this.mName = param1;
         this.§8!'§ = new Vector.<§=!"§>();
         this.§,%§ = param2;
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
         var _loc3_:§5E§ = this.§,%§.§5!X§(param1);
         if(_loc3_)
         {
            this.§8!'§.push(new § R§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§6y§.§'!L§(param1))
         {
            this.§8!'§.push(new §5]§(param1,this.§,%§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§8!'§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§8!'§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§8!'§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§8!'§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§8!'§.length)
         {
            param1 = this.§8!'§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§8!'§.length)
         {
            return null;
         }
         return this.§8!'§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§8!'§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§8!'§.length == 0)
         {
            return 0;
         }
         return this.§8!'§[this.§8!'§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §@!Y§() : String
      {
         return this.§`!A§;
      }
      
      public function getSubAnimation(param1:String) : §;!Q§
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
      
      public function getSubAnimationFromIndex(param1:int) : §;!Q§
      {
         return null;
      }
      
      public function §!m§(param1:String) : void
      {
         this.§`!A§ = param1;
      }
   }
}
