package §7!j§
{
   import §&!v§.DisplayObject;
   
   public class §8#B§
   {
       
      
      private var §;!p§:String;
      
      private var §<#f§:Vector.<§2$3§>;
      
      private var §>!4§:§'0§;
      
      private var §5!U§:String;
      
      private var §+A§:String;
      
      private var §=#P§:String;
      
      private var §%O§:Boolean;
      
      private var §'#z§:int;
      
      public function §8#B§(param1:String, param2:§'0§)
      {
         super();
         this.§;!p§ = param1;
         this.§<#f§ = new Vector.<§2$3§>();
         this.§>!4§ = param2;
         this.§=#P§ = null;
         this.§%O§ = false;
         this.§'#z§ = 1;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§'#'§ = this.§>!4§.getTexture(param1);
         if(_loc3_)
         {
            this.§<#f§.push(new §1#y§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§[#%§.§[#Z§(param1))
         {
            this.§<#f§.push(new §%"p§(param1,this.§>!4§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§<#f§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§<#f§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§<#f§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§<#f§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§<#f§.length)
         {
            param1 = this.§<#f§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§<#f§.length)
         {
            return null;
         }
         return this.§<#f§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§<#f§.length)
         {
            param1 = this.§<#f§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§<#f§.length)
         {
            return null;
         }
         return this.§<#f§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§<#f§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§<#f§.length == 0)
         {
            return 0;
         }
         return this.§<#f§[this.§<#f§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§5!U§;
      }
      
      public function get soundChannel() : String
      {
         return this.§+A§;
      }
      
      public function getSubAnimation(param1:String) : §8#B§
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
      
      public function getSubAnimationFromIndex(param1:int) : §8#B§
      {
         return null;
      }
      
      public function §`"d§(param1:String, param2:String) : void
      {
         this.§5!U§ = param1;
         this.§+A§ = param2;
      }
      
      public function §%"[§(param1:Boolean) : void
      {
         var _loc2_:§2$3§ = null;
         for each(_loc2_ in this.§<#f§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§=#P§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§=#P§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§%O§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§%O§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§'#z§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§'#z§ = param1;
      }
   }
}
