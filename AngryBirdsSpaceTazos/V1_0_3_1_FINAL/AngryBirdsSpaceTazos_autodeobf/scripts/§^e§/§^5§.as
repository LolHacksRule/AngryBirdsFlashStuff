package §^e§
{
   import §4"@§.DisplayObject;
   
   public class §^5§
   {
       
      
      private var mName:String;
      
      private var §9"<§:Vector.<§'"5§>;
      
      private var §#!v§:§0"1§;
      
      private var §;u§:String;
      
      public function §^5§(param1:String, param2:§0"1§)
      {
         super();
         this.mName = param1;
         this.§9"<§ = new Vector.<§'"5§>();
         this.§#!v§ = param2;
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
         var _loc3_:§7!R§ = this.§#!v§.getTexture(param1);
         if(_loc3_)
         {
            this.§9"<§.push(new §]!n§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§>b§.§'!M§(param1))
         {
            this.§9"<§.push(new §%!b§(param1,this.§#!v§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§9"<§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§9"<§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§9"<§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§9"<§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§9"<§.length)
         {
            param1 = this.§9"<§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§9"<§.length)
         {
            return null;
         }
         return this.§9"<§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§9"<§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§9"<§.length == 0)
         {
            return 0;
         }
         return this.§9"<§[this.§9"<§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§;u§;
      }
      
      public function getSubAnimation(param1:String) : §^5§
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
      
      public function getSubAnimationFromIndex(param1:int) : §^5§
      {
         return null;
      }
      
      public function §=!1§(param1:String) : void
      {
         this.§;u§ = param1;
      }
   }
}
