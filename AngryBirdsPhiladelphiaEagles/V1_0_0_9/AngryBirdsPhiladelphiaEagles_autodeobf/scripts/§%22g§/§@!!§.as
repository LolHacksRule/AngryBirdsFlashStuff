package §"g§
{
   import §"1§.§3'§;
   import §%T§.§"!-§;
   import §%T§.§1O§;
   import §%T§.§>p§;
   import §'!3§.§&!H§;
   import §,!1§.§"?§;
   import §,!1§.§]e§;
   import §-!'§.§ s§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §5!6§.§&!!§;
   import §6!L§.§#!M§;
   import §<A§.§'K§;
   
   public class §@!!§
   {
      
      public static const §+=§:Boolean = true;
       
      
      private var §@!8§:§'K§;
      
      protected var §<z§:§"!-§;
      
      protected var §1!!§:Vector.<§ !H§>;
      
      private var §&!&§:Sprite;
      
      private var §";§:Sprite;
      
      private var §+F§:Sprite;
      
      private var §<L§:Number;
      
      private var § set§:Number;
      
      private var §15§:Number;
      
      private var §82§:Boolean = true;
      
      private var §8]§:Boolean = true;
      
      private var §7c§:§"?§;
      
      private var §+I§:Number;
      
      public function §@!!§(param1:String, param2:Number, param3:§'K§, param4:Number)
      {
         this.§1!!§ = new Vector.<§ !H§>();
         super();
         this.§@!8§ = param3;
         this.§ set§ = 0;
         this.§15§ = 0;
         this.§<L§ = param2;
         this.§&!&§ = new Sprite();
         this.§";§ = new Sprite();
         this.§+F§ = new Sprite();
         this.§+I§ = param4;
         this.§<u§(param1,param4);
      }
      
      public function get §>f§() : Boolean
      {
         return this.§82§;
      }
      
      public function get §0n§() : Sprite
      {
         return this.§+F§;
      }
      
      public function get §`A§() : Sprite
      {
         return this.§&!&§;
      }
      
      public function get §with§() : Sprite
      {
         return this.§";§;
      }
      
      protected function get textureManager() : §'K§
      {
         return this.§@!8§;
      }
      
      public function dispose() : void
      {
         this.§>6§();
         if(this.§&!&§)
         {
            this.§&!&§.dispose();
            this.§&!&§ = null;
         }
         if(this.§";§)
         {
            this.§";§.dispose();
            this.§";§ = null;
         }
         if(this.§+F§)
         {
            this.§+F§.dispose();
            this.§+F§ = null;
         }
      }
      
      public function §66§() : Boolean
      {
         return this.§8]§;
      }
      
      public function §5!3§(param1:Boolean) : void
      {
         if(this.§8]§ == param1)
         {
            return;
         }
         this.§8]§ = param1;
         if(!param1)
         {
            this.§>6§();
         }
         else
         {
            this.§<u§(this.§<z§.mName,this.§+I§);
         }
      }
      
      public function §[!2§() : String
      {
         return this.§<z§.§%h§;
      }
      
      private function §>6§() : void
      {
         while(this.§";§.numChildren > 0)
         {
            this.§";§.removeChildAt(0,true);
         }
         while(this.§&!&§.numChildren > 0)
         {
            this.§&!&§.removeChildAt(0,true);
         }
         while(this.§1!!§.length > 0)
         {
            this.§1!!§.pop().dispose();
         }
      }
      
      protected function §#!<§(param1:§"!-§, param2:String) : void
      {
      }
      
      private function §<u§(param1:String, param2:Number) : void
      {
         var _loc4_:§1O§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§ !H§ = null;
         this.§<z§ = §>p§.§ w§(param1);
         if(this.§<z§ == null)
         {
            §3'§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#!M§.§-T§;
            this.§<z§ = §>p§.§ w§(param1);
         }
         this.§#!<§(this.§<z§,param1);
         this.§&!&§.y = this.§<L§;
         this.§";§.y = this.§<L§;
         this.§+F§.y = this.§<L§;
         this.§??§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<z§.§1!!§.length)
         {
            _loc4_ = this.§<z§.§1!!§[_loc3_];
            if(!§&!H§.§+_§ || !_loc4_.§ case§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§=#§(_loc4_,_loc5_,this.§@!8§,param2);
               this.§1!!§.push(_loc6_);
               if(_loc6_.§3F§)
               {
                  this.§";§.addChild(_loc5_);
               }
               else
               {
                  this.§&!&§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§0t§)
            {
               this.§^L§(parseInt(_loc4_.§0t§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §=#§(param1:§1O§, param2:Sprite, param3:§'K§, param4:Number) : § !H§
      {
         return new § !H§(param1,param2,param3,param4);
      }
      
      private function §??§() : void
      {
         var _loc1_:§ s§ = null;
         if(this.§<z§.§7G§)
         {
            this.§^L§(this.§<z§.§7G§);
         }
         if(this.§<z§.§>!#§)
         {
            _loc1_ = this.§+!3§(uint(this.§<z§.§>!#§));
            _loc1_.y = 0;
            this.§+F§.addChild(_loc1_);
         }
      }
      
      protected function §+!3§(param1:uint) : § s§
      {
         return new § s§(4096,4096,param1);
      }
      
      protected function §^L§(param1:int) : void
      {
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.color = param1;
         }
      }
      
      public function §,c§(param1:String) : void
      {
         this.§>6§();
         §3'§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§<u§(param1,this.§+I§);
      }
      
      public function §!_§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§ !H§ = null;
         if(param1 == this.§82§)
         {
            return;
         }
         this.§82§ = param1;
         for each(_loc3_ in this.§1!!§)
         {
            _loc3_.§!_§(param1);
         }
      }
      
      public function §1Z§() : void
      {
         if(§]e§.§'!?§("CHANNEL_AMBIENT") == null || !§]e§.§'!?§("CHANNEL_AMBIENT").§;7§())
         {
            §]e§.playSound(this.§<z§.§9!$§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §?4§() : void
      {
         §]e§.§7&§("CHANNEL_AMBIENT");
      }
      
      public function §"!5§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§&!&§.numChildren)
         {
            _loc2_ = this.§&!&§.getChildAt(param1);
         }
         else if(param1 - this.§&!&§.numChildren < this.§";§.numChildren)
         {
            _loc2_ = this.§";§.getChildAt(param1 - this.§&!&§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §>>§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ set§ = param1;
         this.§15§ = param2;
         if(this.§1!!§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1!!§.length)
            {
               this.§1!!§[_loc3_].setSideScroll(this.§ set§,this.§15§);
               _loc3_++;
            }
         }
         if(this.§+F§ != null)
         {
            this.§+F§.scaleX = this.§+F§.scaleY = 1 / §&!!§.levelScale;
            this.§+F§.x = -§&!!§.§1!7§ * (1 / §&!!§.levelScale);
            this.§+F§.y = this.§<L§ - this.§15§;
         }
      }
      
      public function §'H§() : String
      {
         return this.§<z§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
