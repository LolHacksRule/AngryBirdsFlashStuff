package §%!^§
{
   import §"k§.§02§;
   import §'D§.§8e§;
   import §-!§.§-§;
   import §0H§.§0!&§;
   import §2>§.§4d§;
   import §2>§.§?!1§;
   import §;!Q§.§,r§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   import §<J§.§&L§;
   import §<J§.§12§;
   import §<J§.§8!^§;
   import §@!?§.§9Z§;
   
   public class §1B§
   {
      
      public static const §'u§:Boolean = true;
       
      
      private var §^L§:§02§;
      
      private var §"!L§:§8!^§;
      
      private var §<z§:Vector.<§=!&§>;
      
      private var §7R§:Sprite;
      
      private var §%!!§:Sprite;
      
      private var §<!B§:Sprite;
      
      private var §6!_§:Number;
      
      private var §2A§:Number;
      
      private var §?!2§:Number;
      
      private var §#!T§:Boolean = true;
      
      private var §'S§:Boolean = true;
      
      private var §,$§:§4d§;
      
      private var §"=§:Number;
      
      public function §1B§(param1:String, param2:Number, param3:§02§, param4:Number)
      {
         this.§<z§ = new Vector.<§=!&§>();
         super();
         this.§^L§ = param3;
         this.§2A§ = 0;
         this.§?!2§ = 0;
         this.§6!_§ = param2;
         this.§7R§ = new Sprite();
         this.§%!!§ = new Sprite();
         this.§<!B§ = new Sprite();
         this.§"=§ = param4;
         this.§%!I§(param1,param4);
      }
      
      public function get §%X§() : Boolean
      {
         return this.§#!T§;
      }
      
      public function get §3O§() : Sprite
      {
         return this.§<!B§;
      }
      
      public function get §5!J§() : Sprite
      {
         return this.§7R§;
      }
      
      public function get § z§() : Sprite
      {
         return this.§%!!§;
      }
      
      protected function get §>?§() : §02§
      {
         return this.§^L§;
      }
      
      public function dispose() : void
      {
         this.§?5§();
         if(this.§7R§)
         {
            this.§7R§.dispose();
            this.§7R§ = null;
         }
         if(this.§%!!§)
         {
            this.§%!!§.dispose();
            this.§%!!§ = null;
         }
         if(this.§<!B§)
         {
            this.§<!B§.dispose();
            this.§<!B§ = null;
         }
      }
      
      public function §[S§() : Boolean
      {
         return this.§'S§;
      }
      
      public function §?!J§(param1:Boolean) : void
      {
         if(this.§'S§ == param1)
         {
            return;
         }
         this.§'S§ = param1;
         if(!param1)
         {
            this.§?5§();
         }
         else
         {
            this.§%!I§(this.§"!L§.mName,this.§"=§);
         }
      }
      
      public function §2#§() : String
      {
         return this.§"!L§.§4'§;
      }
      
      private function §?5§() : void
      {
         while(this.§%!!§.numChildren > 0)
         {
            this.§%!!§.removeChildAt(0,true);
         }
         while(this.§7R§.numChildren > 0)
         {
            this.§7R§.removeChildAt(0,true);
         }
         while(this.§<z§.length > 0)
         {
            this.§<z§.pop().dispose();
         }
      }
      
      private function §%!I§(param1:String, param2:Number) : void
      {
         var _loc4_:§12§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§=!&§ = null;
         this.§"!L§ = §&L§.§'!C§(param1);
         if(this.§"!L§ == null)
         {
            §8e§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §0!&§.§1!L§;
            this.§"!L§ = §&L§.§'!C§(param1);
         }
         this.§7R§.y = this.§6!_§;
         this.§%!!§.y = this.§6!_§;
         this.§<!B§.y = this.§6!_§;
         this.§?!;§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§"!L§.§<z§.length)
         {
            _loc4_ = this.§"!L§.§<z§[_loc3_];
            if(!§-§.§?7§ || !_loc4_.§1v§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §=!&§(_loc4_,_loc5_,this.§^L§,param2);
               this.§<z§.push(_loc6_);
               if(_loc6_.§ s§)
               {
                  this.§%!!§.addChild(_loc5_);
               }
               else
               {
                  this.§7R§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§]!C§)
            {
               this.§[!K§(parseInt(_loc4_.§]!C§,16));
            }
            _loc3_++;
         }
      }
      
      private function §?!;§() : void
      {
         var _loc1_:§,r§ = null;
         if(this.§"!L§.§;d§)
         {
            this.§[!K§(this.§"!L§.§;d§);
         }
         if(this.§"!L§.§%!0§)
         {
            _loc1_ = this.§;7§(uint(this.§"!L§.§%!0§));
            _loc1_.y = 0;
            this.§<!B§.addChild(_loc1_);
         }
      }
      
      protected function §;7§(param1:uint) : §,r§
      {
         return new §,r§(4096,4096,param1);
      }
      
      private function §[!K§(param1:int) : void
      {
         if(§-§.§-G§)
         {
            §-§.§-G§.color = param1;
         }
      }
      
      public function §get §(param1:String) : void
      {
         this.§?5§();
         §8e§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§%!I§(param1,this.§"=§);
      }
      
      public function §&H§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§=!&§ = null;
         if(param1 == this.§#!T§)
         {
            return;
         }
         this.§#!T§ = param1;
         for each(_loc3_ in this.§<z§)
         {
            _loc3_.§&H§(param1);
         }
      }
      
      public function §#e§() : void
      {
         if(§?!1§.§,W§("CHANNEL_AMBIENT") == null || !§?!1§.§,W§("CHANNEL_AMBIENT").§'!S§())
         {
            §?!1§.§0!O§(this.§"!L§.§2!T§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §=0§() : void
      {
         §?!1§.§!!=§("CHANNEL_AMBIENT");
      }
      
      public function get(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§7R§.numChildren)
         {
            _loc2_ = this.§7R§.getChildAt(param1);
         }
         else if(param1 - this.§7R§.numChildren < this.§%!!§.numChildren)
         {
            _loc2_ = this.§%!!§.getChildAt(param1 - this.§7R§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<0§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§2A§ = param1;
         this.§?!2§ = param2;
         if(this.§<z§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§<z§.length)
            {
               this.§<z§[_loc3_].setSideScroll(this.§2A§,this.§?!2§);
               _loc3_++;
            }
         }
         if(this.§<!B§ != null)
         {
            this.§<!B§.scaleX = this.§<!B§.scaleY = 1 / §9Z§.§9t§;
            this.§<!B§.x = -§9Z§.§3!`§ * (1 / §9Z§.§9t§);
            this.§<!B§.y = this.§6!_§ - this.§?!2§;
         }
      }
      
      public function §<I§() : String
      {
         return this.§"!L§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
