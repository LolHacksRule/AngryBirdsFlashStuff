package §<!o§
{
   import §+!a§.§2!a§;
   import §+!a§.§@!_§;
   import §0N§.§2!@§;
   import §3"#§.§3![§;
   import §3"#§.§<!O§;
   import §4&§.§,C§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   
   public class §3!$§
   {
      
      public static const §,"5§:Boolean = true;
       
      
      private var §7!T§:§,C§;
      
      private var §="4§:§@!_§;
      
      private var §<M§:Vector.<§!!q§>;
      
      private var §`!p§:Sprite;
      
      private var §!5§:Sprite;
      
      private var §9F§:Sprite;
      
      private var §`!?§:Number;
      
      private var §+!?§:Number;
      
      private var §4J§:Number;
      
      private var §4"&§:Boolean = true;
      
      private var §5!_§:Boolean = true;
      
      private var §7!7§:§3![§;
      
      private var §9!`§:Number;
      
      private var §>v§:Boolean = true;
      
      private var §-"@§:int = 0;
      
      private var §=T§:Number = 1.0;
      
      public function §3!$§(param1:§@!_§, param2:Number, param3:§,C§, param4:Number, param5:Boolean = true)
      {
         this.§<M§ = new Vector.<§!!q§>();
         super();
         this.§7!T§ = param3;
         this.§+!?§ = 0;
         this.§4J§ = 0;
         this.§`!?§ = param2;
         this.§`!p§ = new Sprite();
         this.§!5§ = new Sprite();
         this.§9F§ = new Sprite();
         this.§9!`§ = param4;
         this.§>v§ = param5;
         this.§59§(param1,param4);
      }
      
      public function get §@!6§() : Boolean
      {
         return this.§4"&§;
      }
      
      public function get §'^§() : Sprite
      {
         return this.§9F§;
      }
      
      public function get §3!_§() : Sprite
      {
         return this.§`!p§;
      }
      
      public function get §>!y§() : Sprite
      {
         return this.§!5§;
      }
      
      public function get skyColor() : int
      {
         return this.§-"@§;
      }
      
      protected function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      public function dispose() : void
      {
         this.§=!a§();
         this.stopAmbientSound();
         if(this.§`!p§)
         {
            this.§`!p§.dispose();
            this.§`!p§ = null;
         }
         if(this.§!5§)
         {
            this.§!5§.dispose();
            this.§!5§ = null;
         }
         if(this.§9F§)
         {
            this.§9F§.dispose();
            this.§9F§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§5!_§;
      }
      
      public function §0!M§(param1:Boolean) : void
      {
         if(this.§5!_§ == param1)
         {
            return;
         }
         this.§5!_§ = param1;
         if(!param1)
         {
            this.§=!a§();
         }
         else
         {
            this.§59§(this.§="4§,this.§9!`§);
         }
      }
      
      public function §#!<§() : String
      {
         return this.§="4§.§=t§;
      }
      
      private function §=!a§() : void
      {
         while(this.§!5§.numChildren > 0)
         {
            this.§!5§.removeChildAt(0,true);
         }
         while(this.§`!p§.numChildren > 0)
         {
            this.§`!p§.removeChildAt(0,true);
         }
         while(this.§<M§.length > 0)
         {
            this.§<M§.pop().dispose();
         }
      }
      
      protected function §>I§(param1:§@!_§) : void
      {
      }
      
      protected function §59§(param1:§@!_§, param2:Number) : void
      {
         var _loc4_:§2!a§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!!q§ = null;
         this.§="4§ = param1;
         this.§>I§(this.§="4§);
         this.§`!p§.y = this.§`!?§;
         this.§!5§.y = this.§`!?§;
         this.§9F§.y = this.§`!?§;
         this.§"i§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§="4§.§[!$§)
         {
            _loc4_ = this.§="4§.§0'§(_loc3_);
            if(this.§>v§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§<M§.push(_loc6_);
               if(_loc6_.§2a§)
               {
                  this.§!5§.addChild(_loc5_);
               }
               else
               {
                  this.§`!p§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§!i§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number) : §!!q§
      {
         return new §!!q§(param1,param2,param3,param4);
      }
      
      private function §"i§() : void
      {
         var _loc1_:§&!D§ = null;
         if(this.§="4§.§9!h§)
         {
            this.§!i§(this.§="4§.§9!h§);
         }
         if(this.§="4§.colorGround)
         {
            _loc1_ = this.§!M§(uint(this.§="4§.colorGround));
            _loc1_.y = 30;
            this.§9F§.addChild(_loc1_);
         }
      }
      
      protected function §!M§(param1:uint) : §&!D§
      {
         return new §&!D§(4096,4096,param1);
      }
      
      private function §!i§(param1:int) : void
      {
         this.§-"@§ = param1;
      }
      
      public function §0!2§(param1:§@!_§) : void
      {
         this.§=!a§();
         §2!@§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§59§(param1,this.§9!`§);
      }
      
      public function §]i§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§!!q§ = null;
         if(param1 == this.§4"&§)
         {
            return;
         }
         this.§4"&§ = param1;
         for each(_loc3_ in this.§<M§)
         {
            _loc3_.§]i§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§<!O§.§4d§("CHANNEL_AMBIENT") == null || !§<!O§.§4d§("CHANNEL_AMBIENT").§9"%§())
         {
            §<!O§.playSound(this.§break§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §<!O§.§,!z§("CHANNEL_AMBIENT");
      }
      
      public function get §break§() : String
      {
         return this.§="4§.§break§;
      }
      
      public function §3!I§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`!p§.numChildren)
         {
            _loc2_ = this.§`!p§.getChildAt(param1);
         }
         else if(param1 - this.§`!p§.numChildren < this.§!5§.numChildren)
         {
            _loc2_ = this.§!5§.getChildAt(param1 - this.§`!p§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§+!?§ = param1;
         this.§4J§ = param2;
         if(this.§<M§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§<M§.length)
            {
               this.§<M§[_loc8_].setScreenOffset(this.§+!?§,this.§4J§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§9F§ != null)
         {
            this.§9F§.scaleX = this.§9F§.scaleY = 1 / §9!,§.§8"4§;
            this.§9F§.x = 0;
            this.§9F§.y = this.§`!?§ - this.§4J§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§="4§.id;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
