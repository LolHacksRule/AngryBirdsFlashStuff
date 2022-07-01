package §6_§
{
   import §-!f§.DisplayObject;
   
   public class §6k§
   {
       
      
      private var mName:String;
      
      private var §1!!§:Vector.<§#i§>;
      
      private var §'+§:§,!>§;
      
      private var §#!K§:String;
      
      public function §6k§(param1:String, param2:§,!>§)
      {
         super();
         this.mName = param1;
         this.§1!!§ = new Vector.<§#i§>();
         this.§'+§ = param2;
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
         var _loc3_:§7W§ = this.§'+§.§^!$§(param1);
         if(_loc3_)
         {
            this.§1!!§.push(new §`!o§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§8!K§.§,!F§(param1))
         {
            this.§1!!§.push(new §&!T§(param1,this.§'+§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§1!!§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§1!!§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§1!!§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§1!!§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§1!!§.length)
         {
            param1 = this.§1!!§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§1!!§.length)
         {
            return null;
         }
         return this.§1!!§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§1!!§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§1!!§.length == 0)
         {
            return 0;
         }
         return this.§1!!§[this.§1!!§.length - 1].endTimeMilliSeconds;
      }
      
      public function get §>"%§() : String
      {
         return this.§#!K§;
      }
      
      public function getSubAnimation(param1:String) : §6k§
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
      
      public function getSubAnimationFromIndex(param1:int) : §6k§
      {
         return null;
      }
      
      public function §8!!§(param1:String) : void
      {
         this.§#!K§ = param1;
      }
   }
}
