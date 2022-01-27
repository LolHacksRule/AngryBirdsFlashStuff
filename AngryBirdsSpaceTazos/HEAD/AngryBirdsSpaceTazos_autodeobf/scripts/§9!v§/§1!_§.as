package §9!v§
{
   import §&!]§.DisplayObject;
   
   public class §1!_§
   {
       
      
      private var mName:String;
      
      private var § %§:Vector.<§ "<§>;
      
      private var §@k§:§6a§;
      
      private var §@!9§:String;
      
      public function §1!_§(param1:String, param2:§6a§)
      {
         super();
         this.mName = param1;
         this.§ %§ = new Vector.<§ "<§>();
         this.§@k§ = param2;
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
         var _loc3_:§"[§ = this.§@k§.getTexture(param1);
         if(_loc3_)
         {
            this.§ %§.push(new §&d§(_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§8M§.§;^§(param1))
         {
            this.§ %§.push(new § f§(param1,this.§@k§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         var _loc3_:int = 0;
         if(_loc3_ < 0 || _loc3_ >= this.§ %§.length)
         {
            return null;
         }
         var _loc4_:Number;
         if((_loc4_ = this.animationLengthMilliSeconds) > 0)
         {
            while(this.§ %§[_loc3_].endTimeMilliSeconds < param1 % _loc4_ && _loc3_ < this.§ %§.length - 1)
            {
               _loc3_++;
            }
         }
         return this.§ %§[_loc3_].updateDisplayObject(param2);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         if(param1 >= this.§ %§.length)
         {
            param1 = this.§ %§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§ %§.length)
         {
            return null;
         }
         return this.§ %§[param1].updateDisplayObject(param2);
      }
      
      public function get frameCount() : int
      {
         return this.§ %§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§ %§.length == 0)
         {
            return 0;
         }
         return this.§ %§[this.§ %§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§@!9§;
      }
      
      public function getSubAnimation(param1:String) : §1!_§
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
      
      public function getSubAnimationFromIndex(param1:int) : §1!_§
      {
         return null;
      }
      
      public function §+O§(param1:String) : void
      {
         this.§@!9§ = param1;
      }
   }
}
