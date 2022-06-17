package §9#M§
{
   import §#Z§.DisplayObject;
   
   public class §,`§
   {
       
      
      private var §-#3§:String;
      
      private var §%j§:Vector.<§1#o§>;
      
      private var §]#o§:§%"=§;
      
      private var §#!7§:String;
      
      private var §[#r§:String;
      
      private var §="E§:String;
      
      private var §@#v§:Boolean;
      
      private var §+x§:int;
      
      public function §,`§(param1:String, param2:§%"=§)
      {
         super();
         this.§-#3§ = param1;
         this.§%j§ = new Vector.<§1#o§>();
         this.§]#o§ = param2;
         this.§="E§ = null;
         this.§@#v§ = false;
         this.§+x§ = 1;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function addFrame(param1:String, param2:Number) : void
      {
         if(isNaN(param2) || param2 <= 0)
         {
            param2 = 0;
         }
         var _loc3_:§'!-§ = this.§]#o§.getTexture(param1);
         if(_loc3_)
         {
            this.§%j§.push(new §>!t§(param1,_loc3_,this.animationLengthMilliSeconds + param2));
            return;
         }
         if(§7!D§.§&"l§(param1))
         {
            this.§%j§.push(new §'!y§(param1,this.§]#o§,this.animationLengthMilliSeconds + param2));
            return;
         }
      }
      
      public function getFrameWithOffset(param1:Number, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         var _loc4_:int;
         if((_loc4_ = 0) < 0 || _loc4_ >= this.§%j§.length)
         {
            return null;
         }
         var _loc5_:Number;
         if((_loc5_ = this.animationLengthMilliSeconds) > 0)
         {
            param1 %= _loc5_;
            while(this.§%j§[_loc4_].endTimeMilliSeconds < param1 && _loc4_ < this.§%j§.length - 1)
            {
               _loc4_++;
            }
         }
         return this.§%j§[_loc4_].updateDisplayObject(param2,param3);
      }
      
      public function getFrame(param1:int, param2:DisplayObject = null, param3:Boolean = true) : DisplayObject
      {
         if(param1 >= this.§%j§.length)
         {
            param1 = this.§%j§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§%j§.length)
         {
            return null;
         }
         return this.§%j§[param1].updateDisplayObject(param2,param3);
      }
      
      public function getFrameName(param1:int) : String
      {
         if(param1 >= this.§%j§.length)
         {
            param1 = this.§%j§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§%j§.length)
         {
            return null;
         }
         return this.§%j§[param1].name;
      }
      
      public function get frameCount() : int
      {
         return this.§%j§.length;
      }
      
      public function get animationLengthMilliSeconds() : Number
      {
         if(this.§%j§.length == 0)
         {
            return 0;
         }
         return this.§%j§[this.§%j§.length - 1].endTimeMilliSeconds;
      }
      
      public function get soundName() : String
      {
         return this.§#!7§;
      }
      
      public function get soundChannel() : String
      {
         return this.§[#r§;
      }
      
      public function getSubAnimation(param1:String) : §,`§
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
      
      public function getSubAnimationFromIndex(param1:int) : §,`§
      {
         return null;
      }
      
      public function §5$1§(param1:String, param2:String) : void
      {
         this.§#!7§ = param1;
         this.§[#r§ = param2;
      }
      
      public function §?#w§(param1:Boolean) : void
      {
         var _loc2_:§1#o§ = null;
         for each(_loc2_ in this.§%j§)
         {
            _loc2_.flipAnimation(param1);
         }
      }
      
      public function set startAnimationName(param1:String) : void
      {
         this.§="E§ = param1;
      }
      
      public function get startAnimationName() : String
      {
         return this.§="E§;
      }
      
      public function get isLooping() : Boolean
      {
         return this.§@#v§;
      }
      
      public function set isLooping(param1:Boolean) : void
      {
         this.§@#v§ = param1;
      }
      
      public function get priority() : int
      {
         return this.§+x§;
      }
      
      public function set priority(param1:int) : void
      {
         this.§+x§ = param1;
      }
   }
}
