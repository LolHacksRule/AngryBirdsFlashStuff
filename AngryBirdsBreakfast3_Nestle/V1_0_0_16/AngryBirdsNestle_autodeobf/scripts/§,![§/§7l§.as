package §,![§
{
   import §#!I§.§0k§;
   import §24§.;
   import §2`§.§%!!§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §>z§.§+E§;
   import §>z§.§5!?§;
   import §[!Z§.§>D§;
   import §[!Z§.§`v§;
   
   public class §7l§
   {
      
      public static const §%!`§:Boolean = true;
       
      
      protected var §,%§:§%!!§;
      
      protected var §6!_§:§+E§;
      
      protected var §3S§:Vector.<§[!9§>;
      
      protected var §?!>§:Sprite;
      
      protected var § !H§:Sprite;
      
      protected var §!"%§:Sprite;
      
      protected var §4!$§:Number;
      
      protected var §-!o§:Number;
      
      protected var §>!]§:Number;
      
      protected var §1!q§:Boolean = true;
      
      protected var §6Y§:Boolean = true;
      
      protected var § E§:§`v§;
      
      protected var §6!A§:Number;
      
      protected var §'_§:Boolean = true;
      
      protected var §%!&§:int = 0;
      
      protected var §2c§:Number = 1.0;
      
      public function §7l§(param1:§+E§, param2:Number, param3:§%!!§, param4:Number, param5:Boolean = true)
      {
         this.§3S§ = new Vector.<§[!9§>();
         super();
         this.§,%§ = param3;
         this.§-!o§ = 0;
         this.§>!]§ = 0;
         this.§4!$§ = param2;
         this.§?!>§ = new Sprite();
         this.§ !H§ = new Sprite();
         this.§!"%§ = new Sprite();
         this.§6!A§ = param4;
         this.§'_§ = param5;
         this.§3!l§(param1,param4);
      }
      
      public function get §]N§() : Boolean
      {
         return this.§1!q§;
      }
      
      public function get §?!h§() : Sprite
      {
         return this.§!"%§;
      }
      
      public function get §7z§() : Sprite
      {
         return this.§?!>§;
      }
      
      public function get §]9§() : Sprite
      {
         return this.§ !H§;
      }
      
      public function get §9!f§() : int
      {
         return this.§%!&§;
      }
      
      protected function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function dispose() : void
      {
         this.§5!g§();
         this.§0"1§();
         if(this.§?!>§)
         {
            this.§?!>§.dispose();
            this.§?!>§ = null;
         }
         if(this.§ !H§)
         {
            this.§ !H§.dispose();
            this.§ !H§ = null;
         }
         if(this.§!"%§)
         {
            this.§!"%§.dispose();
            this.§!"%§ = null;
         }
      }
      
      public function §>!`§() : Boolean
      {
         return this.§6Y§;
      }
      
      public function §`!V§(param1:Boolean) : void
      {
         if(this.§6Y§ == param1)
         {
            return;
         }
         this.§6Y§ = param1;
         if(!param1)
         {
            this.§5!g§();
         }
         else
         {
            this.§3!l§(this.§6!_§,this.§6!A§);
         }
      }
      
      public function §4V§() : String
      {
         return this.§6!_§.§1D§;
      }
      
      private function §5!g§() : void
      {
         while(this.§ !H§.numChildren > 0)
         {
            this.§ !H§.removeChildAt(0,true);
         }
         while(this.§?!>§.numChildren > 0)
         {
            this.§?!>§.removeChildAt(0,true);
         }
         while(this.§3S§.length > 0)
         {
            this.§3S§.pop().dispose();
         }
      }
      
      protected function §^^§(param1:§+E§) : void
      {
      }
      
      protected function §3!l§(param1:§+E§, param2:Number) : void
      {
         var _loc4_:§5!?§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§[!9§ = null;
         this.§6!_§ = param1;
         this.§^^§(this.§6!_§);
         this.§?!>§.y = this.§4!$§;
         this.§ !H§.y = this.§4!$§;
         this.§!"%§.y = this.§4!$§;
         this.§ Z§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!_§.§[!A§)
         {
            _loc4_ = this.§6!_§.§>!E§(_loc3_);
            if(this.§'_§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§+"§(_loc4_,_loc5_,this.§]!z§,param2);
               this.§3S§.push(_loc6_);
               if(_loc6_.§6!6§)
               {
                  this.§ !H§.addChild(_loc5_);
               }
               else
               {
                  this.§?!>§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§>"&§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §+"§(param1:§5!?§, param2:Sprite, param3:§%!!§, param4:Number) : §[!9§
      {
         return new §[!9§(param1,param2,param3,param4);
      }
      
      private function § Z§() : void
      {
         var _loc1_:§8!l§ = null;
         if(this.§6!_§.§'o§)
         {
            this.§>"&§(this.§6!_§.§'o§);
         }
         if(this.§6!_§.§'k§)
         {
            _loc1_ = this.§>2§(uint(this.§6!_§.§'k§));
            _loc1_.y = 0;
            this.§!"%§.addChild(_loc1_);
         }
      }
      
      protected function §>2§(param1:uint) : §8!l§
      {
         return new §8!l§(4096,4096,param1);
      }
      
      private function §>"&§(param1:int) : void
      {
         this.§%!&§ = param1;
      }
      
      public function §,!3§(param1:§+E§) : void
      {
         this.§5!g§();
         §#7§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§3!l§(param1,this.§6!A§);
      }
      
      public function §'"%§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§[!9§ = null;
         if(param1 == this.§1!q§)
         {
            return;
         }
         this.§1!q§ = param1;
         for each(_loc3_ in this.§3S§)
         {
            _loc3_.§'"%§(param1);
         }
      }
      
      public function §`"'§() : void
      {
         if(§>D§.§<d§("CHANNEL_AMBIENT") == null || !§>D§.§<d§("CHANNEL_AMBIENT").§2x§())
         {
            §>D§.§9!q§(this.§!!i§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §0"1§() : void
      {
         §>D§.§6A§("CHANNEL_AMBIENT");
      }
      
      public function get §!!i§() : String
      {
         return this.§6!_§.§!!i§;
      }
      
      public function §,9§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§?!>§.numChildren)
         {
            _loc2_ = this.§?!>§.getChildAt(param1);
         }
         else if(param1 - this.§?!>§.numChildren < this.§ !H§.numChildren)
         {
            _loc2_ = this.§ !H§.getChildAt(param1 - this.§?!>§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§-!o§ = param1;
         this.§>!]§ = param2;
         if(this.§3S§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§3S§.length)
            {
               this.§3S§[_loc8_].setScreenOffset(this.§-!o§,this.§>!]§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§!"%§ != null)
         {
            this.§!"%§.scaleX = this.§!"%§.scaleY = 1 / §0k§.§0!1§;
            this.§9!P§();
         }
      }
      
      protected function §9!P§() : void
      {
         this.§!"%§.x = 0;
         this.§!"%§.y = this.§4!$§ - this.§>!]§;
      }
      
      public function §<j§() : String
      {
         return this.§6!_§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§[!9§ = null;
         for each(_loc2_ in this.§3S§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
