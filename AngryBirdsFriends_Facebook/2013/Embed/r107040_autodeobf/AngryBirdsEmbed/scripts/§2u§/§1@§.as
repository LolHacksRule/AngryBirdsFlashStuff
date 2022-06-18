package §2u§
{
   import §#!@§.§?h§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §'0§.§]!=§;
   import §5Y§.§ W§;
   import §5Y§.§+!C§;
   import §5Y§.§=V§;
   import §6Z§.§"!;§;
   import §7!§.§,L§;
   import §@!+§.§+_§;
   import §@!;§.§!!=§;
   import §[v§.§0&§;
   
   public class §1@§
   {
      
      public static const §%@§:Boolean = true;
       
      
      private var §4d§:§0&§;
      
      protected var §4u§:§+!C§;
      
      protected var §=S§:Vector.<§&!M§>;
      
      private var §?f§:Sprite;
      
      private var §=M§:Sprite;
      
      private var §4q§:Sprite;
      
      private var §6I§:Number;
      
      private var §8l§:Number;
      
      private var §^f§:Number;
      
      private var §'!3§:Boolean = true;
      
      private var §0!L§:Boolean = true;
      
      private var §0c§:§]!=§;
      
      private var §]?§:Number;
      
      public function §1@§(param1:String, param2:Number, param3:§0&§, param4:Number)
      {
         this.§=S§ = new Vector.<§&!M§>();
         super();
         this.§4d§ = param3;
         this.§8l§ = 0;
         this.§^f§ = 0;
         this.§6I§ = param2;
         this.§?f§ = new Sprite();
         this.§=M§ = new Sprite();
         this.§4q§ = new Sprite();
         this.§]?§ = param4;
         this.§1T§(param1,param4);
      }
      
      public function get §'&§() : Boolean
      {
         return this.§'!3§;
      }
      
      public function get §-!4§() : Sprite
      {
         return this.§4q§;
      }
      
      public function get §7,§() : Sprite
      {
         return this.§?f§;
      }
      
      public function get §]!D§() : Sprite
      {
         return this.§=M§;
      }
      
      protected function get textureManager() : §0&§
      {
         return this.§4d§;
      }
      
      public function dispose() : void
      {
         this.§@6§();
         if(this.§?f§)
         {
            this.§?f§.dispose();
            this.§?f§ = null;
         }
         if(this.§=M§)
         {
            this.§=M§.dispose();
            this.§=M§ = null;
         }
         if(this.§4q§)
         {
            this.§4q§.dispose();
            this.§4q§ = null;
         }
      }
      
      public function §<K§() : Boolean
      {
         return this.§0!L§;
      }
      
      public function §3!;§(param1:Boolean) : void
      {
         if(this.§0!L§ == param1)
         {
            return;
         }
         this.§0!L§ = param1;
         if(!param1)
         {
            this.§@6§();
         }
         else
         {
            this.§1T§(this.§4u§.mName,this.§]?§);
         }
      }
      
      public function §@!§() : String
      {
         return this.§4u§.§<!§;
      }
      
      private function §@6§() : void
      {
         while(this.§=M§.numChildren > 0)
         {
            this.§=M§.removeChildAt(0,true);
         }
         while(this.§?f§.numChildren > 0)
         {
            this.§?f§.removeChildAt(0,true);
         }
         while(this.§=S§.length > 0)
         {
            this.§=S§.pop().dispose();
         }
      }
      
      protected function §2q§(param1:§+!C§, param2:String) : void
      {
      }
      
      private function §1T§(param1:String, param2:Number) : void
      {
         var _loc4_:§ W§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§&!M§ = null;
         this.§4u§ = §=V§.§59§(param1);
         if(this.§4u§ == null)
         {
            §!!=§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §"!;§.§9t§;
            this.§4u§ = §=V§.§59§(param1);
         }
         this.§2q§(this.§4u§,param1);
         this.§?f§.y = this.§6I§;
         this.§=M§.y = this.§6I§;
         this.§4q§.y = this.§6I§;
         this.§=p§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§4u§.§=S§.length)
         {
            _loc4_ = this.§4u§.§=S§[_loc3_];
            if(!§,L§.§'>§ || !_loc4_.§7x§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§7h§(_loc4_,_loc5_,this.§4d§,param2);
               this.§=S§.push(_loc6_);
               if(_loc6_.§#!H§)
               {
                  this.§=M§.addChild(_loc5_);
               }
               else
               {
                  this.§?f§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'2§)
            {
               this.§'u§(parseInt(_loc4_.§'2§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §7h§(param1:§ W§, param2:Sprite, param3:§0&§, param4:Number) : §&!M§
      {
         return new §&!M§(param1,param2,param3,param4);
      }
      
      private function §=p§() : void
      {
         var _loc1_:§?h§ = null;
         if(this.§4u§.§"!N§)
         {
            this.§'u§(this.§4u§.§"!N§);
         }
         if(this.§4u§.§1D§)
         {
            _loc1_ = this.§@k§(uint(this.§4u§.§1D§));
            _loc1_.y = 0;
            this.§4q§.addChild(_loc1_);
         }
      }
      
      protected function §@k§(param1:uint) : §?h§
      {
         return new §?h§(4096,4096,param1);
      }
      
      protected function §'u§(param1:int) : void
      {
         if(§,L§.§3v§)
         {
            §,L§.§3v§.color = param1;
         }
      }
      
      public function §=!-§(param1:String, param2:§0&§ = null) : void
      {
         if(param2)
         {
            this.§4d§ = param2;
         }
         this.§@6§();
         §!!=§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§1T§(param1,this.§]?§);
      }
      
      public function §=!F§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§&!M§ = null;
         if(param1 == this.§'!3§)
         {
            return;
         }
         this.§'!3§ = param1;
         for each(_loc3_ in this.§=S§)
         {
            _loc3_.§=!F§(param1);
         }
      }
      
      public function §?R§() : void
      {
         if(§]!2§.§;j§("CHANNEL_AMBIENT") == null || !§]!2§.§;j§("CHANNEL_AMBIENT").§50§())
         {
            §]!2§.playSound(this.§4u§.§!6§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §74§() : void
      {
         §]!2§.§<!7§("CHANNEL_AMBIENT");
      }
      
      public function §9R§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§?f§.numChildren)
         {
            _loc2_ = this.§?f§.getChildAt(param1);
         }
         else if(param1 - this.§?f§.numChildren < this.§=M§.numChildren)
         {
            _loc2_ = this.§=M§.getChildAt(param1 - this.§?f§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §,P§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§8l§ = param1;
         this.§^f§ = param2;
         if(this.§=S§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§=S§.length)
            {
               this.§=S§[_loc3_].setSideScroll(this.§8l§,this.§^f§);
               _loc3_++;
            }
         }
         if(this.§4q§ != null)
         {
            this.§4q§.scaleX = this.§4q§.scaleY = 1 / §+_§.§=]§;
            this.§4q§.x = -§+_§.§-!%§ * (1 / §+_§.§=]§);
            this.§4q§.y = this.§6I§ - this.§^f§;
         }
      }
      
      public function §^!3§() : String
      {
         return this.§4u§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
