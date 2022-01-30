package §-!b§
{
   import §,!q§.DisplayObject;
   
   public class §<W§
   {
       
      
      private var mName:String;
      
      private var §5y§:Vector.<§6"4§>;
      
      private var §@=§:§[E§;
      
      private var §50§:String;
      
      public function §<W§(param1:String, param2:§[E§)
      {
         super();
         this.mName = param1;
         this.§5y§ = new Vector.<§6"4§>();
         this.§@=§ = param2;
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
         var _loc3_:§=!T§ = this.§@=§.§^"§(param1);
         if(_loc3_)
         {
            this.§5y§.push(new §5!Z§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§[!3§.§&!6§(param1))
         {
            this.§5y§.push(new §;!u§(param1,this.§@=§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§5y§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§5y§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§5y§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§5y§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§5y§.length)
         {
            param1 = this.§5y§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§5y§.length)
         {
            return null;
         }
         return this.§5y§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§5y§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§5y§.length == 0)
         {
            return 0;
         }
         return this.§5y§[this.§5y§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §-d§() : String
      {
         return this.§50§;
      }
      
      public function getSubAnimation(param1:String) : §<W§
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
      
      public function getSubAnimationFromIndex(param1:int) : §<W§
      {
         return null;
      }
      
      public function § get§(param1:String) : void
      {
         this.§50§ = param1;
      }
   }
}
