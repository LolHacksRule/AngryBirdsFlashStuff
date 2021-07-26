package §7"T§
{
   import §,#e§.DisplayObject;
   
   public class §7b§
   {
       
      
      private var §&$"§:String;
      
      private var §-!p§:Vector.<§!#F§>;
      
      private var §-i§:§#"^§;
      
      private var § " §:String;
      
      private var §7!+§:String;
      
      private var §+"B§:String;
      
      private var §#!^§:Boolean;
      
      private var §5_§:int;
      
      public function §7b§(param1:String, param2:§#"^§)
      {
         super();
         this.§&$"§ = param1;
         this.§-!p§ = new Vector.<§!#F§>();
         this.§-i§ = param2;
         this.§+"B§ = null;
         this.§#!^§ = false;
         this.§5_§ = 1;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§4!L§ = this.§-i§.getTexture(param1);
         if(_loc3_)
         {
            this.§-!p§.push(new §@$#§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§,o§.§#!e§(param1))
         {
            this.§-!p§.push(new §'!'§(param1,this.§-i§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§-!p§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§-!p§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§-!p§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§-!p§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§-!p§.length)
         {
            param1 = this.§-!p§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§-!p§.length)
         {
            return null;
         }
         return this.§-!p§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§-!p§.length)
         {
            param1 = this.§-!p§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§-!p§.length)
         {
            return null;
         }
         return this.§-!p§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§-!p§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§-!p§.length == 0)
         {
            return 0;
         }
         return this.§-!p§[this.§-!p§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§ " §;
      }
      
      public function get soundChannel() : String
      {
         return this.§7!+§;
      }
      
      public function getSubAnimation(param1:String) : §7b§
      {
         return null;
      }
      
      public function hasSubAnimation(param1:String) : Boolean
      {
         return false;
      }
      
      public function hasAnySubAnimations(param1:Array) : Boolean
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
      
      public function getSubAnimationFromIndex(param1:int) : §7b§
      {
         return null;
      }
      
      public function §+T§(param1:String, param2:String) : void
      {
         this.§ " § = param1;
         this.§7!+§ = param2;
      }
      
      public function §;O§(param1:Boolean) : void
      {
         var _loc2_:§!#F§ = null;
         for each(_loc2_ in this.§-!p§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§+"B§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§+"B§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§#!^§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§#!^§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§5_§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§5_§ = param1;
      }
   }
}
