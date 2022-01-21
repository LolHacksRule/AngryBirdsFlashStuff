package §5!!§
{
   import §!!g§.§8d§;
   import §"v§.§5!T§;
   import §#N§.§-!J§;
   import §#N§.§3!,§;
   import §#N§.§=4§;
   import §&[§.§&!m§;
   import §-!#§.§5!6§;
   import §-!#§.§;'§;
   import §2!g§.§2c§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §`!W§.§2v§;
   import §`!d§.§0%§;
   
   public class §0@§
   {
      
      public static const §?!+§:Boolean = true;
       
      
      private var §`k§:§&!m§;
      
      protected var §9!E§:§3!,§;
      
      protected var mLayers:Vector.<§77§>;
      
      private var §<!^§:Sprite;
      
      private var §&'§:Sprite;
      
      private var §8-§:Sprite;
      
      private var §+!6§:Number;
      
      private var §[q§:Number;
      
      private var §2<§:Number;
      
      private var §-!L§:Boolean = true;
      
      private var §&! §:Boolean = true;
      
      private var §;D§:§;'§;
      
      private var §>!O§:Number;
      
      public function §0@§(param1:String, param2:Number, param3:§&!m§, param4:Number)
      {
         this.mLayers = new Vector.<§77§>();
         super();
         this.§`k§ = param3;
         this.§[q§ = 0;
         this.§2<§ = 0;
         this.§+!6§ = param2;
         this.§<!^§ = new Sprite();
         this.§&'§ = new Sprite();
         this.§8-§ = new Sprite();
         this.§>!O§ = param4;
         this.§2y§(param1,param4);
      }
      
      public function get §'!'§() : Boolean
      {
         return this.§-!L§;
      }
      
      public function get §+F§() : Sprite
      {
         return this.§8-§;
      }
      
      public function get §<!]§() : Sprite
      {
         return this.§<!^§;
      }
      
      public function get §8G§() : Sprite
      {
         return this.§&'§;
      }
      
      protected function get textureManager() : §&!m§
      {
         return this.§`k§;
      }
      
      public function dispose() : void
      {
         this.§>!,§();
         if(this.§<!^§)
         {
            this.§<!^§.dispose();
            this.§<!^§ = null;
         }
         if(this.§&'§)
         {
            this.§&'§.dispose();
            this.§&'§ = null;
         }
         if(this.§8-§)
         {
            this.§8-§.dispose();
            this.§8-§ = null;
         }
      }
      
      public function §^!g§() : Boolean
      {
         return this.§&! §;
      }
      
      public function §&e§(param1:Boolean) : void
      {
         if(this.§&! § == param1)
         {
            return;
         }
         this.§&! § = param1;
         if(!param1)
         {
            this.§>!,§();
         }
         else
         {
            this.§2y§(this.§9!E§.mName,this.§>!O§);
         }
      }
      
      public function §'!a§() : String
      {
         return this.§9!E§.§]!2§;
      }
      
      private function §>!,§() : void
      {
         while(this.§&'§.numChildren > 0)
         {
            this.§&'§.removeChildAt(0,true);
         }
         while(this.§<!^§.numChildren > 0)
         {
            this.§<!^§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§3!,§, param2:String) : void
      {
      }
      
      private function §2y§(param1:String, param2:Number) : void
      {
         var _loc4_:§=4§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§77§ = null;
         this.§9!E§ = §-!J§.§case §(param1);
         if(this.§9!E§ == null)
         {
            §2v§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §0%§.§'M§;
            this.§9!E§ = §-!J§.§case §(param1);
         }
         this.preProcessBackground(this.§9!E§,param1);
         this.§<!^§.y = this.§+!6§;
         this.§&'§.y = this.§+!6§;
         this.§8-§.y = this.§+!6§;
         this.§%!Y§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§9!E§.mLayers.length)
         {
            _loc4_ = this.§9!E§.mLayers[_loc3_];
            if(!§5!T§.§3h§ || !_loc4_.§var§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§`k§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§5;§)
               {
                  this.§&'§.addChild(_loc5_);
               }
               else
               {
                  this.§<!^§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§-8§)
            {
               this.§6u§(parseInt(_loc4_.§-8§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§=4§, param2:Sprite, param3:§&!m§, param4:Number) : §77§
      {
         return new §77§(param1,param2,param3,param4);
      }
      
      private function §%!Y§() : void
      {
         var _loc1_:§2c§ = null;
         if(this.§9!E§.mColorSky)
         {
            this.§6u§(this.§9!E§.mColorSky);
         }
         if(this.§9!E§.§#!3§)
         {
            _loc1_ = this.§9A§(uint(this.§9!E§.§#!3§));
            _loc1_.y = 0;
            this.§8-§.addChild(_loc1_);
         }
      }
      
      protected function §9A§(param1:uint) : §2c§
      {
         return new §2c§(4096,4096,param1);
      }
      
      protected function §6u§(param1:int) : void
      {
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.color = param1;
         }
      }
      
      public function §&!L§(param1:String) : void
      {
         this.§>!,§();
         §2v§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§2y§(param1,this.§>!O§);
      }
      
      public function §#!X§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§77§ = null;
         if(param1 == this.§-!L§)
         {
            return;
         }
         this.§-!L§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§#!X§(param1);
         }
      }
      
      public function §<M§() : void
      {
         if(§5!6§.§`!R§("CHANNEL_AMBIENT") == null || !§5!6§.§`!R§("CHANNEL_AMBIENT").§=!n§())
         {
            §5!6§.§8!G§(this.§9!E§.§&!6§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §,"§() : void
      {
         §5!6§.§>R§("CHANNEL_AMBIENT");
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§<!^§.numChildren)
         {
            _loc2_ = this.§<!^§.getChildAt(param1);
         }
         else if(param1 - this.§<!^§.numChildren < this.§&'§.numChildren)
         {
            _loc2_ = this.§&'§.getChildAt(param1 - this.§<!^§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §&f§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§[q§ = param1;
         this.§2<§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§[q§,this.§2<§);
               _loc3_++;
            }
         }
         if(this.§8-§ != null)
         {
            this.§8-§.scaleX = this.§8-§.scaleY = 1 / §8d§.§=d§;
            this.§8-§.x = -§8d§.§0x§ * (1 / §8d§.§=d§);
            this.§8-§.y = this.§+!6§ - this.§2<§;
         }
      }
      
      public function §return§() : String
      {
         return this.§9!E§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
