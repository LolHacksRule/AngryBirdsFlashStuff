package §=!&§
{
   import § ! §.§5!x§;
   import §+!!§.§5"+§;
   import §,C§.§ "%§;
   import §,C§.§+"$§;
   import §1T§.§'!c§;
   import §1T§.§8!Q§;
   import §6![§.§ !f§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import each.§!!'§;
   
   public class §-!x§
   {
      
      public static const §5M§:Boolean = true;
       
      
      protected var §`8§:§5!x§;
      
      protected var §#9§:§+"$§;
      
      protected var §"x§:Vector.<§`!3§>;
      
      protected var §1r§:Sprite;
      
      protected var §<!B§:Sprite;
      
      protected var §`e§:Sprite;
      
      protected var §%!V§:Number;
      
      protected var §`R§:Number;
      
      protected var §#m§:Number;
      
      protected var §9Q§:Boolean = true;
      
      protected var §3!c§:Boolean = true;
      
      protected var §9!>§:§8!Q§;
      
      protected var §9P§:Number;
      
      protected var §?Y§:Boolean = true;
      
      protected var §#H§:int = 0;
      
      protected var §6!r§:Number = 1.0;
      
      public function §-!x§(param1:§+"$§, param2:Number, param3:§5!x§, param4:Number, param5:Boolean = true)
      {
         this.§"x§ = new Vector.<§`!3§>();
         super();
         this.§`8§ = param3;
         this.§`R§ = 0;
         this.§#m§ = 0;
         this.§%!V§ = param2;
         this.§1r§ = new Sprite();
         this.§<!B§ = new Sprite();
         this.§`e§ = new Sprite();
         this.§9P§ = param4;
         this.§?Y§ = param5;
         this.§@!h§(param1,param4);
      }
      
      public function get §1!s§() : Boolean
      {
         return this.§9Q§;
      }
      
      public function get §3"+§() : Sprite
      {
         return this.§`e§;
      }
      
      public function get §]!!§() : Sprite
      {
         return this.§1r§;
      }
      
      public function get §-"!§() : Sprite
      {
         return this.§<!B§;
      }
      
      public function get §-o§() : int
      {
         return this.§#H§;
      }
      
      protected function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      public function dispose() : void
      {
         this.§0!H§();
         this.§#]§();
         if(this.§1r§)
         {
            this.§1r§.dispose();
            this.§1r§ = null;
         }
         if(this.§<!B§)
         {
            this.§<!B§.dispose();
            this.§<!B§ = null;
         }
         if(this.§`e§)
         {
            this.§`e§.dispose();
            this.§`e§ = null;
         }
      }
      
      public function §"j§() : Boolean
      {
         return this.§3!c§;
      }
      
      public function §"!Q§(param1:Boolean) : void
      {
         if(this.§3!c§ == param1)
         {
            return;
         }
         this.§3!c§ = param1;
         if(!param1)
         {
            this.§0!H§();
         }
         else
         {
            this.§@!h§(this.§#9§,this.§9P§);
         }
      }
      
      public function §1!1§() : String
      {
         return this.§#9§.§var§;
      }
      
      private function §0!H§() : void
      {
         while(this.§<!B§.numChildren > 0)
         {
            this.§<!B§.removeChildAt(0,true);
         }
         while(this.§1r§.numChildren > 0)
         {
            this.§1r§.removeChildAt(0,true);
         }
         while(this.§"x§.length > 0)
         {
            this.§"x§.pop().dispose();
         }
      }
      
      protected function §-!R§(param1:§+"$§) : void
      {
      }
      
      protected function §@!h§(param1:§+"$§, param2:Number) : void
      {
         var _loc4_:§ "%§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§`!3§ = null;
         this.§#9§ = param1;
         this.§-!R§(this.§#9§);
         this.§1r§.y = this.§%!V§;
         this.§<!B§.y = this.§%!V§;
         this.§`e§.y = this.§%!V§;
         this.§^!v§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#9§.§?!K§)
         {
            _loc4_ = this.§#9§.§;"+§(_loc3_);
            if(this.§?Y§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§5!R§(_loc4_,_loc5_,this.§58§,param2);
               this.§"x§.push(_loc6_);
               if(_loc6_.§[!I§)
               {
                  this.§<!B§.addChild(_loc5_);
               }
               else
               {
                  this.§1r§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§"!o§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §5!R§(param1:§ "%§, param2:Sprite, param3:§5!x§, param4:Number) : §`!3§
      {
         return new §`!3§(param1,param2,param3,param4);
      }
      
      private function §^!v§() : void
      {
         var _loc1_:§ !f§ = null;
         if(this.§#9§.§^h§)
         {
            this.§"!o§(this.§#9§.§^h§);
         }
         if(this.§#9§.§-=§)
         {
            _loc1_ = this.§@"'§(uint(this.§#9§.§-=§));
            _loc1_.y = 0;
            this.§`e§.addChild(_loc1_);
         }
      }
      
      protected function §@"'§(param1:uint) : § !f§
      {
         return new § !f§(4096,4096,param1);
      }
      
      private function §"!o§(param1:int) : void
      {
         this.§#H§ = param1;
      }
      
      public function §"Z§(param1:§+"$§) : void
      {
         this.§0!H§();
         §!!'§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§@!h§(param1,this.§9P§);
      }
      
      public function §<8§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§`!3§ = null;
         if(param1 == this.§9Q§)
         {
            return;
         }
         this.§9Q§ = param1;
         for each(_loc3_ in this.§"x§)
         {
            _loc3_.§<8§(param1);
         }
      }
      
      public function §`!e§() : void
      {
         if(§'!c§.§[!d§("CHANNEL_AMBIENT") == null || !§'!c§.§[!d§("CHANNEL_AMBIENT").§,!V§())
         {
            §'!c§.§3!f§(this.§"!1§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §#]§() : void
      {
         §'!c§.§;! §("CHANNEL_AMBIENT");
      }
      
      public function get §"!1§() : String
      {
         return this.§#9§.§"!1§;
      }
      
      public function §]!0§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§1r§.numChildren)
         {
            _loc2_ = this.§1r§.getChildAt(param1);
         }
         else if(param1 - this.§1r§.numChildren < this.§<!B§.numChildren)
         {
            _loc2_ = this.§<!B§.getChildAt(param1 - this.§1r§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§`R§ = param1;
         this.§#m§ = param2;
         if(this.§"x§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§"x§.length)
            {
               this.§"x§[_loc8_].setScreenOffset(this.§`R§,this.§#m§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§`e§ != null)
         {
            this.§`e§.scaleX = this.§`e§.scaleY = 1 / §5"+§.§,H§;
            this.§`e§.x = 0;
            this.§`e§.y = this.§%!V§ - this.§#m§ + 100;
         }
      }
      
      public function §=s§() : String
      {
         return this.§#9§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§`!3§ = null;
         for each(_loc2_ in this.§"x§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
