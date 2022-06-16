package §`"8§
{
   import §^"S§.DisplayObject;
   
   public class §0$2§
   {
       
      
      private var §=q§:String;
      
      private var §7"o§:Vector.<§9"2§>;
      
      private var §4Z§:§34§;
      
      private var §!W§:String;
      
      private var §8#S§:String;
      
      private var §"#=§:String;
      
      private var §1$#§:Boolean;
      
      private var §7#G§:int;
      
      public function §0$2§(param1:String, param2:§34§)
      {
         super();
         this.§=q§ = param1;
         this.§7"o§ = new Vector.<§9"2§>();
         this.§4Z§ = param2;
         this.§"#=§ = null;
         this.§1$#§ = false;
         this.§7#G§ = 1;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§`"X§ = this.§4Z§.getTexture(param1);
         if(_loc3_)
         {
            this.§7"o§.push(new §,V§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§="?§.§7"X§(param1))
         {
            this.§7"o§.push(new §;#r§(param1,this.§4Z§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§7"o§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§7"o§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§7"o§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§7"o§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§7"o§.length)
         {
            param1 = this.§7"o§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7"o§.length)
         {
            return null;
         }
         return this.§7"o§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§7"o§.length)
         {
            param1 = this.§7"o§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§7"o§.length)
         {
            return null;
         }
         return this.§7"o§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§7"o§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§7"o§.length == 0)
         {
            return 0;
         }
         return this.§7"o§[this.§7"o§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§!W§;
      }
      
      public function get soundChannel() : String
      {
         return this.§8#S§;
      }
      
      public function getSubAnimation(param1:String) : §0$2§
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
      
      public function getSubAnimationFromIndex(param1:int) : §0$2§
      {
         return null;
      }
      
      public function §,"O§(param1:String, param2:String) : void
      {
         this.§!W§ = param1;
         this.§8#S§ = param2;
      }
      
      public function §&L§(param1:Boolean) : void
      {
         var _loc2_:§9"2§ = null;
         for each(_loc2_ in this.§7"o§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§"#=§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§"#=§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§1$#§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§1$#§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§7#G§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§7#G§ = param1;
      }
   }
}
