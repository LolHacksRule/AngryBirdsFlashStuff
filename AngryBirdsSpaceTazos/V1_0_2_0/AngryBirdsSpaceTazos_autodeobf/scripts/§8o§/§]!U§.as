package §8o§
{
   import §'!&§.DisplayObject;
   
   public class §]!U§
   {
       
      
      private var mName:String;
      
      private var §@!W§:Vector.<§`!_§>;
      
      private var §3'§:§5"%§;
      
      private var §!"@§:String;
      
      public function §]!U§(param1:String, param2:§5"%§)
      {
         super();
         this.mName = param1;
         this.§@!W§ = new Vector.<§`!_§>();
         this.§3'§ = param2;
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
         var _loc3_:§!">§ = this.§3'§.getTexture(param1);
         if(_loc3_)
         {
            this.§@!W§.push(new §8B§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§]" §.§8S§(param1))
         {
            this.§@!W§.push(new §each §(param1,this.§3'§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§@!W§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§@!W§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§@!W§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§@!W§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§@!W§.length)
         {
            param1 = this.§@!W§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§@!W§.length)
         {
            return null;
         }
         return this.§@!W§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§@!W§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§@!W§.length == 0)
         {
            return 0;
         }
         return this.§@!W§[this.§@!W§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§!"@§;
      }
      
      public function getSubAnimation(param1:String) : §]!U§
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
      
      public function getSubAnimationFromIndex(param1:int) : §]!U§
      {
         return null;
      }
      
      public function §@Y§(param1:String) : void
      {
         this.§!"@§ = param1;
      }
   }
}
