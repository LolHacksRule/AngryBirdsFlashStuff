package §5!q§
{
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §3"$§.§]!h§;
   import §6"R§.§!!V§;
   import §7""§.§ !b§;
   import §>P§.§=!,§;
   import com.angrybirds.§;!e§;
   
   public class §[E§ extends §<K§
   {
      
      private static const § "V§:Number = 10;
      
      public static const §5a§:Number = 1;
       
      
      private var §@"m§:Boolean = false;
      
      private var §4G§:Boolean = false;
      
      private var § !i§:Boolean = false;
      
      private var §6!d§:§-i§;
      
      private var § "a§:Sprite;
      
      private var §@!=§:Number = 0;
      
      private var §=#1§:Boolean = false;
      
      private var §1"Z§:§4!Q§ = null;
      
      private var §#" §:Object;
      
      private var §@v§:§ !b§;
      
      public function §[E§(param1:§-R§, param2:Sprite, param3:String, param4:§=!,§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§#" § = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §!"C§() : Boolean
      {
         return this.§@"m§;
      }
      
      public function get §+"K§() : Number
      {
         return this.§@!=§ * (Math.PI / 180) - Math.PI / 2;
      }
      
      public function get § &§() : Boolean
      {
         return this.§4G§;
      }
      
      public function §^H§() : void
      {
         if(this.§@"m§)
         {
            return;
         }
         this.§@"m§ = true;
         var _loc1_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("LASERDROID_01");
         var _loc2_:§-i§ = new §-i§(_loc1_.texture);
         _loc2_.x = -_loc1_.pivotX;
         _loc2_.y = -_loc1_.pivotY;
         this.§ "a§ = new Sprite();
         this.§ "a§.addChild(_loc2_);
         this.§ "a§.scaleX = this.§ "a§.scaleY = §>o§.§2!?§ / scale;
         this.§@!=§ = §>o§.§`!]§;
         sprite.addChild(this.§ "a§);
         this.§<n§();
      }
      
      private function §<n§() : void
      {
         var _loc1_:Number = this.§+"K§;
         var _loc2_:Number = Math.cos(_loc1_) * §>o§.§@"f§ / §3"X§.§;"l§;
         var _loc3_:Number = Math.sin(_loc1_) * §>o§.§@"f§ / §3"X§.§;"l§;
         this.§ "a§.x = _loc2_;
         this.§ "a§.y = _loc3_;
         this.§ "a§.rotation = Math.PI + _loc1_ + §>o§.§'!R§;
      }
      
      public function §7#%§() : void
      {
         if(this.§4G§)
         {
            return;
         }
         this.§4G§ = true;
         var _loc1_:§]!h§ = §;!e§.§<x§.textureManager.getTexture("THERMAL_DETONATOR_01");
         this.§6!d§ = new §-i§(_loc1_.texture);
         this.§6!d§.scaleX = this.§6!d§.scaleY = §>o§.§9!R§ / scale;
         var _loc2_:Number = §>o§.§@S§ * (Math.PI / 180);
         var _loc3_:Number = §-!f§.getItemWidth() * §-!f§.scale / §3"X§.§;"l§;
         var _loc4_:Number = Math.cos(_loc2_) * (_loc3_ + §>o§.§2!6§);
         var _loc5_:Number = Math.sin(_loc2_) * (_loc3_ + §>o§.§2!6§);
         this.§6!d§.x = _loc4_ - _loc1_.pivotX * this.§6!d§.scaleX;
         this.§6!d§.y = _loc5_ - _loc1_.pivotY * this.§6!d§.scaleY;
         sprite.addChild(this.§6!d§);
      }
      
      public function §4!6§() : void
      {
         this.§=#1§ = true;
         if(!this.§@v§)
         {
            this.§@v§ = new § !b§(§>o§.§'"L§);
            sprite.addChildAt(this.§@v§,0);
            this.§-!D§();
         }
      }
      
      public function §;"2§() : void
      {
         this.§ !i§ = true;
         if(§`D§)
         {
            if(!this.§@v§)
            {
               this.§@v§ = new § !b§();
               sprite.addChildAt(this.§@v§,0);
               this.§-!D§();
            }
            this.§@v§.§2"4§(§>o§.§8!T§);
         }
      }
      
      private function §-!D§() : void
      {
         if(mName.indexOf(§!!V§.§^!3§) != -1)
         {
            this.§@v§.scaleX = this.§@v§.scaleY = §!!V§.§ 7§;
         }
      }
      
      override public function setOnSlingshot(param1:Boolean) : void
      {
         super.setOnSlingshot(param1);
         if(this.§ !i§)
         {
            if(§`D§)
            {
               this.§;"2§();
            }
            else
            {
               sprite.removeChild(this.§@v§);
               this.§@v§ = null;
            }
         }
      }
      
      override public function fallFromSlingshot() : void
      {
         if(this.§ !i§ && this.§@v§)
         {
            sprite.removeChild(this.§@v§);
            this.§@v§ = null;
         }
      }
      
      public function get §;"O§() : Boolean
      {
         return this.§=#1§;
      }
      
      public function get §92§() : Boolean
      {
         return this.§ !i§;
      }
      
      public function §>"f§() : void
      {
         if(this.§!"C§)
         {
            sprite.removeChild(this.§ "a§);
            this.§ "a§ = null;
            this.§@"m§ = false;
         }
         if(this.§ &§)
         {
            sprite.removeChild(this.§6!d§);
            this.§6!d§ = null;
            this.§4G§ = false;
         }
      }
      
      public function §8h§(param1:Number, param2:Number, param3:Boolean = true) : §4!Q§
      {
         §3!!§ = false;
         §0r§ = false;
         §%w§ = -1;
         this.§#" §.x = §]!_§;
         this.§#" §.y = §#j§;
         this.§#" §.rotation = § !r§;
         if(param3)
         {
            this.§1"Z§ = §41§.§-G§.§="t§(§41§.§-G§.§&#'§(this.§#" §,{
               "x":param1,
               "rotation":-360
            },null,§5a§),§41§.§-G§.§,!v§(§41§.§-G§.§&#'§(this.§#" §,{"y":this.§#" §.y - § "V§},null,§5a§ / 2,§41§.§2#&§),§41§.§-G§.§&#'§(this.§#" §,{"y":param2},{"y":this.§#" §.y - § "V§},§5a§ / 2,§41§.§`!^§)));
         }
         else
         {
            this.§1"Z§ = §41§.§-G§.§&#'§(null,null,null,§5a§);
         }
         this.§1"Z§.play();
         this.§1"Z§.onComplete = this.§@E§;
         return this.§1"Z§;
      }
      
      private function §@E§() : void
      {
         this.§1"Z§ = null;
         § !r§ = this.§#" §.rotation;
         setPosition(this.§#" §.x,this.§#" §.y);
         §0r§ = false;
         §3!!§ = true;
         §%w§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§1"Z§ != null)
         {
            § !r§ = this.§#" §.rotation;
            setPosition(this.§#" §.x,this.§#" §.y);
            this.updateRenderer();
            this.§1"Z§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
         if(this.§@v§)
         {
            this.§@v§.update(param1);
         }
      }
      
      override public function updateRenderer() : void
      {
         super.updateRenderer();
         if(this.§@"m§)
         {
            this.§<n§();
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§1"Z§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§1"Z§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
