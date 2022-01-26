package §^=§
{
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §!$§.§3Z§;
   import §1!"§.§!+§;
   import §1!"§.§3!>§;
   import §1!"§.§=!D§;
   import §3§.§2?§;
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §39§.§=R§;
   import §8-§.§,!P§;
   import §94§.§&!7§;
   import §`n§.§#H§;
   
   public class §0b§
   {
      
      public static const §`6§:Boolean = true;
       
      
      private var §4=§:§#H§;
      
      protected var §?%§:§=!D§;
      
      protected var §=k§:Vector.<§%F§>;
      
      private var §8S§:Sprite;
      
      private var §2t§:Sprite;
      
      private var §&!M§:Sprite;
      
      private var §#C§:Number;
      
      private var §[]§:Number;
      
      private var §1!?§:Number;
      
      private var §@z§:Boolean = true;
      
      private var §,!1§:Boolean = true;
      
      private var §,H§:§3Z§;
      
      private var §4Z§:Number;
      
      public function §0b§(param1:String, param2:Number, param3:§#H§, param4:Number)
      {
         this.§=k§ = new Vector.<§%F§>();
         super();
         this.§4=§ = param3;
         this.§[]§ = 0;
         this.§1!?§ = 0;
         this.§#C§ = param2;
         this.§8S§ = new Sprite();
         this.§2t§ = new Sprite();
         this.§&!M§ = new Sprite();
         this.§4Z§ = param4;
         this.§#x§(param1,param4);
      }
      
      public function get §3?§() : Boolean
      {
         return this.§@z§;
      }
      
      public function get §%=§() : Sprite
      {
         return this.§&!M§;
      }
      
      public function get § 2§() : Sprite
      {
         return this.§8S§;
      }
      
      public function get §14§() : Sprite
      {
         return this.§2t§;
      }
      
      protected function get §1S§() : §#H§
      {
         return this.§4=§;
      }
      
      public function dispose() : void
      {
         this.§%!b§();
         if(this.§8S§)
         {
            this.§8S§.dispose();
            this.§8S§ = null;
         }
         if(this.§2t§)
         {
            this.§2t§.dispose();
            this.§2t§ = null;
         }
         if(this.§&!M§)
         {
            this.§&!M§.dispose();
            this.§&!M§ = null;
         }
      }
      
      public function §8`§() : Boolean
      {
         return this.§,!1§;
      }
      
      public function §5W§(param1:Boolean) : void
      {
         if(this.§,!1§ == param1)
         {
            return;
         }
         this.§,!1§ = param1;
         if(!param1)
         {
            this.§%!b§();
         }
         else
         {
            this.§#x§(this.§?%§.mName,this.§4Z§);
         }
      }
      
      public function §`!L§() : String
      {
         return this.§?%§.§@!F§;
      }
      
      private function §%!b§() : void
      {
         while(this.§2t§.numChildren > 0)
         {
            this.§2t§.removeChildAt(0,true);
         }
         while(this.§8S§.numChildren > 0)
         {
            this.§8S§.removeChildAt(0,true);
         }
         while(this.§=k§.length > 0)
         {
            this.§=k§.pop().dispose();
         }
      }
      
      protected function § !9§(param1:§=!D§, param2:String) : void
      {
      }
      
      private function §#x§(param1:String, param2:Number) : void
      {
         var _loc4_:§!+§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§%F§ = null;
         this.§?%§ = §3!>§.§?!&§(param1);
         if(this.§?%§ == null)
         {
            §]M§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §=R§.§%!#§;
            this.§?%§ = §3!>§.§?!&§(param1);
         }
         this.§ !9§(this.§?%§,param1);
         this.§8S§.y = this.§#C§;
         this.§2t§.y = this.§#C§;
         this.§&!M§.y = this.§#C§;
         this.§?'§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?%§.§=k§.length)
         {
            _loc4_ = this.§?%§.§=k§[_loc3_];
            if(!§&!7§.§+X§ || !_loc4_.§6!$§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§7!3§(_loc4_,_loc5_,this.§4=§,param2);
               this.§=k§.push(_loc6_);
               if(_loc6_.§-=§)
               {
                  this.§2t§.addChild(_loc5_);
               }
               else
               {
                  this.§8S§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§60§)
            {
               this.§8#§(parseInt(_loc4_.§60§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §7!3§(param1:§!+§, param2:Sprite, param3:§#H§, param4:Number) : §%F§
      {
         return new §%F§(param1,param2,param3,param4);
      }
      
      private function §?'§() : void
      {
         var _loc1_:§2?§ = null;
         if(this.§?%§.§=!&§)
         {
            this.§8#§(this.§?%§.§=!&§);
         }
         if(this.§?%§.§%@§)
         {
            _loc1_ = this.§'![§(uint(this.§?%§.§%@§));
            _loc1_.y = 0;
            this.§&!M§.addChild(_loc1_);
         }
      }
      
      protected function §'![§(param1:uint) : §2?§
      {
         return new §2?§(4096,4096,param1);
      }
      
      protected function §8#§(param1:int) : void
      {
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.color = param1;
         }
      }
      
      public function §2R§(param1:String) : void
      {
         this.§%!b§();
         §]M§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§#x§(param1,this.§4Z§);
      }
      
      public function § !F§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§%F§ = null;
         if(param1 == this.§@z§)
         {
            return;
         }
         this.§@z§ = param1;
         for each(_loc3_ in this.§=k§)
         {
            _loc3_.§ !F§(param1);
         }
      }
      
      public function §9-§() : void
      {
         if(§!!O§.§@!9§("CHANNEL_AMBIENT") == null || !§!!O§.§@!9§("CHANNEL_AMBIENT").§6G§())
         {
            §!!O§.§<D§(this.§?%§.§6!=§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function § k§() : void
      {
         §!!O§.§7!P§("CHANNEL_AMBIENT");
      }
      
      public function §1!_§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§8S§.numChildren)
         {
            _loc2_ = this.§8S§.getChildAt(param1);
         }
         else if(param1 - this.§8S§.numChildren < this.§2t§.numChildren)
         {
            _loc2_ = this.§2t§.getChildAt(param1 - this.§8S§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §0F§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§[]§ = param1;
         this.§1!?§ = param2;
         if(this.§=k§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§=k§.length)
            {
               this.§=k§[_loc3_].setSideScroll(this.§[]§,this.§1!?§);
               _loc3_++;
            }
         }
         if(this.§&!M§ != null)
         {
            this.§&!M§.scaleX = this.§&!M§.scaleY = 1 / §,!P§.§#!"§;
            this.§&!M§.x = -§,!P§.§+!5§ * (1 / §,!P§.§#!"§);
            this.§&!M§.y = this.§#C§ - this.§1!?§;
         }
      }
      
      public function § set§() : String
      {
         return this.§?%§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
