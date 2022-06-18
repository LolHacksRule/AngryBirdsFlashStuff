package §"§
{
   import § "§.§;4§;
   import § I§.§,!?§;
   import § I§.§8-§;
   import § I§.§^!0§;
   import §1!?§.§7_§;
   import §1!?§.§[! §;
   import §9!2§.§7N§;
   import §9H§.§@M§;
   import §<k§.§!1§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[+§.§'!6§;
   import §[n§.§?+§;
   
   public class §3o§
   {
      
      public static const §'9§:Boolean = true;
       
      
      private var §^s§:§?+§;
      
      private var §;I§:§8-§;
      
      private var §-!-§:Vector.<§5T§>;
      
      private var §=H§:Sprite;
      
      private var §[#§:Sprite;
      
      private var §#T§:Sprite;
      
      private var §'W§:Number;
      
      private var §6^§:Number;
      
      private var § g§:Number;
      
      private var §&<§:Boolean = true;
      
      private var §^g§:Boolean = true;
      
      private var §1!!§:§[! §;
      
      private var §4!C§:Number;
      
      public function §3o§(param1:String, param2:Number, param3:§?+§, param4:Number)
      {
         this.§-!-§ = new Vector.<§5T§>();
         super();
         this.§^s§ = param3;
         this.§6^§ = 0;
         this.§ g§ = 0;
         this.§'W§ = param2;
         this.§=H§ = new Sprite();
         this.§[#§ = new Sprite();
         this.§#T§ = new Sprite();
         this.§4!C§ = param4;
         this.§>D§(param1,param4);
      }
      
      public function get §1w§() : Boolean
      {
         return this.§&<§;
      }
      
      public function get §^!E§() : Sprite
      {
         return this.§#T§;
      }
      
      public function get §-x§() : Sprite
      {
         return this.§=H§;
      }
      
      public function get §-L§() : Sprite
      {
         return this.§[#§;
      }
      
      protected function get textureManager() : §?+§
      {
         return this.§^s§;
      }
      
      public function dispose() : void
      {
         this.§4#§();
         if(this.§=H§)
         {
            this.§=H§.dispose();
            this.§=H§ = null;
         }
         if(this.§[#§)
         {
            this.§[#§.dispose();
            this.§[#§ = null;
         }
         if(this.§#T§)
         {
            this.§#T§.dispose();
            this.§#T§ = null;
         }
      }
      
      public function §8I§() : Boolean
      {
         return this.§^g§;
      }
      
      public function §<[§(param1:Boolean) : void
      {
         if(this.§^g§ == param1)
         {
            return;
         }
         this.§^g§ = param1;
         if(!param1)
         {
            this.§4#§();
         }
         else
         {
            this.§>D§(this.§;I§.mName,this.§4!C§);
         }
      }
      
      public function §0]§() : String
      {
         return this.§;I§.§'v§;
      }
      
      private function §4#§() : void
      {
         while(this.§[#§.numChildren > 0)
         {
            this.§[#§.removeChildAt(0,true);
         }
         while(this.§=H§.numChildren > 0)
         {
            this.§=H§.removeChildAt(0,true);
         }
         while(this.§-!-§.length > 0)
         {
            this.§-!-§.pop().dispose();
         }
      }
      
      private function §>D§(param1:String, param2:Number) : void
      {
         var _loc4_:§^!0§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§5T§ = null;
         this.§;I§ = §,!?§.§'t§(param1);
         if(this.§;I§ == null)
         {
            §@M§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §;4§.§ if§;
            this.§;I§ = §,!?§.§'t§(param1);
         }
         this.§=H§.y = this.§'W§;
         this.§[#§.y = this.§'W§;
         this.§#T§.y = this.§'W§;
         this.§7G§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§;I§.§-!-§.length)
         {
            _loc4_ = this.§;I§.§-!-§[_loc3_];
            if(!§7N§.§;Y§ || !_loc4_.§^!=§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §5T§(_loc4_,_loc5_,this.§^s§,param2);
               this.§-!-§.push(_loc6_);
               if(_loc6_.§`!+§)
               {
                  this.§[#§.addChild(_loc5_);
               }
               else
               {
                  this.§=H§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§ !;§)
            {
               this.set(parseInt(_loc4_.§ !;§,16));
            }
            _loc3_++;
         }
      }
      
      private function §7G§() : void
      {
         var _loc1_:§!1§ = null;
         if(this.§;I§.§5!C§)
         {
            this.set(this.§;I§.§5!C§);
         }
         if(this.§;I§.§=!%§)
         {
            _loc1_ = this.§]=§(uint(this.§;I§.§=!%§));
            _loc1_.y = 0;
            this.§#T§.addChild(_loc1_);
         }
      }
      
      protected function §]=§(param1:uint) : §!1§
      {
         return new §!1§(4096,4096,param1);
      }
      
      private function set(param1:int) : void
      {
         if(§7N§.§17§)
         {
            §7N§.§17§.color = param1;
         }
      }
      
      public function §?;§(param1:String) : void
      {
         this.§4#§();
         §@M§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§>D§(param1,this.§4!C§);
      }
      
      public function §>R§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§5T§ = null;
         if(param1 == this.§&<§)
         {
            return;
         }
         this.§&<§ = param1;
         for each(_loc3_ in this.§-!-§)
         {
            _loc3_.§>R§(param1);
         }
      }
      
      public function §%!,§() : void
      {
         if(§7_§.§4l§("CHANNEL_AMBIENT") == null || !§7_§.§4l§("CHANNEL_AMBIENT").§,N§())
         {
            §7_§.§4!5§(this.§;I§.§<E§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §[r§() : void
      {
         §7_§.§!4§("CHANNEL_AMBIENT");
      }
      
      public function §%X§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§=H§.numChildren)
         {
            _loc2_ = this.§=H§.getChildAt(param1);
         }
         else if(param1 - this.§=H§.numChildren < this.§[#§.numChildren)
         {
            _loc2_ = this.§[#§.getChildAt(param1 - this.§=H§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§6^§ = param1;
         this.§ g§ = param2;
         if(this.§-!-§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§-!-§.length)
            {
               this.§-!-§[_loc3_].setSideScroll(this.§6^§,this.§ g§);
               _loc3_++;
            }
         }
         if(this.§#T§ != null)
         {
            this.§#T§.scaleX = this.§#T§.scaleY = 1 / §'!6§.§#u§;
            this.§#T§.x = -§'!6§.§9]§ * (1 / §'!6§.§#u§);
            this.§#T§.y = this.§'W§ - this.§ g§;
         }
      }
      
      public function §>>§() : String
      {
         return this.§;I§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
