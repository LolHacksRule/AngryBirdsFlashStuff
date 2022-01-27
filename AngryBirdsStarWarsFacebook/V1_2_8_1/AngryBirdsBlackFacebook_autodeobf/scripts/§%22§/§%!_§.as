package §"§#0
{
   import §!!k§.§'!j§;
   import §!r§.§6;§;
   import §#g§.§["%§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §`"]§.§;j§;
   import com.angrybirds.§<!J§;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §%!_§ extends §7O§
   {
      
      private static const §,"J§:Number = 10;
      
      public static const §7" §:Number = 1;
       
      
      private var §;!+§:Boolean = false;
      
      private var §"!W§:Boolean = false;
      
      private var §%!b§:Boolean = false;
      
      private var §>!L§:§,!u§;
      
      private var §]!h§:Sprite;
      
      private var §>l§:Number = 0;
      
      private var §]!T§:Boolean = false;
      
      private var §8!y§:§%b§ = null;
      
      private var §=! §:Object;
      
      private var §^_§:§;j§;
      
      public function §%!_§(param1:§%#7§, param2:Sprite, param3:String, param4:§["%§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§=! § = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §]P§() : Boolean
      {
         return this.§;!+§;
      }
      
      public function get § "Z§() : Number
      {
         return this.§>l§ * (Math.PI / 180) - Math.PI / 2;
      }
      
      public function get §8'§() : Boolean
      {
         return this.§"!W§;
      }
      
      public function §2§() : void
      {
         if(this.§;!+§)
         {
            return;
         }
         this.§;!+§ = true;
         var _loc1_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("LASERDROID_01");
         var _loc2_:§,!u§ = new §,!u§(_loc1_.texture);
         _loc2_.x = -_loc1_.pivotX;
         _loc2_.y = -_loc1_.pivotY;
         this.§]!h§ = new Sprite();
         this.§]!h§.addChild(_loc2_);
         this.§]!h§.scaleX = this.§]!h§.scaleY = § !3§.§&!K§ / scale;
         this.§>l§ = § !3§.§!">§;
         sprite.addChild(this.§]!h§);
         this.§+"7§();
      }
      
      private function §+"7§() : void
      {
         var _loc1_:Number = this.§ "Z§;
         var _loc2_:Number = Math.cos(_loc1_) * § !3§.§6v§ / §;!E§.§0"?§;
         var _loc3_:Number = Math.sin(_loc1_) * § !3§.§6v§ / §;!E§.§0"?§;
         this.§]!h§.x = _loc2_;
         this.§]!h§.y = _loc3_;
         this.§]!h§.rotation = Math.PI + _loc1_ + § !3§.§-!W§;
      }
      
      public function §="p§() : void
      {
         if(this.§"!W§)
         {
            return;
         }
         this.§"!W§ = true;
         var _loc1_:§'!j§ = §<!J§.§=!%§.textureManager.getTexture("THERMAL_DETONATOR_01");
         this.§>!L§ = new §,!u§(_loc1_.texture);
         this.§>!L§.scaleX = this.§>!L§.scaleY = § !3§.§,"s§ / scale;
         var _loc2_:Number = § !3§.§;"a§ * (Math.PI / 180);
         var _loc3_:Number = §+!j§.getItemWidth() * §+!j§.scale / §;!E§.§0"?§;
         var _loc4_:Number = Math.cos(_loc2_) * (_loc3_ + § !3§.§%!#§);
         var _loc5_:Number = Math.sin(_loc2_) * (_loc3_ + § !3§.§%!#§);
         this.§>!L§.x = _loc4_ - _loc1_.pivotX * this.§>!L§.scaleX;
         this.§>!L§.y = _loc5_ - _loc1_.pivotY * this.§>!L§.scaleY;
         sprite.addChild(this.§>!L§);
      }
      
      public function §,"n§() : void
      {
         this.§]!T§ = true;
         if(!this.§^_§)
         {
            this.§^_§ = new §;j§(§ !3§.§!!f§);
            sprite.addChildAt(this.§^_§,0);
            this.§1"l§();
         }
      }
      
      public function §?U§() : void
      {
         this.§%!b§ = true;
         if(§%!D§)
         {
            if(!this.§^_§)
            {
               this.§^_§ = new §;j§();
               sprite.addChildAt(this.§^_§,0);
               this.§1"l§();
            }
            this.§^_§.§>"y§(§ !3§.§,_§);
         }
      }
      
      private function §1"l§() : void
      {
         if(mName.indexOf(§6;§.§5!L§) != -1)
         {
            this.§^_§.scaleX = this.§^_§.scaleY = §6;§.§@"o§;
         }
      }
      
      override public function setOnSlingshot(param1:Boolean) : void
      {
         super.setOnSlingshot(param1);
         if(this.§%!b§)
         {
            if(§%!D§)
            {
               this.§?U§();
            }
            else
            {
               sprite.removeChild(this.§^_§);
               this.§^_§ = null;
            }
         }
      }
      
      override public function fallFromSlingshot() : void
      {
         if(this.§%!b§ && this.§^_§)
         {
            sprite.removeChild(this.§^_§);
            this.§^_§ = null;
         }
      }
      
      public function get §?"c§() : Boolean
      {
         return this.§]!T§;
      }
      
      public function get §^N§() : Boolean
      {
         return this.§%!b§;
      }
      
      public function §%"q§() : void
      {
         if(this.§]P§)
         {
            sprite.removeChild(this.§]!h§);
            this.§]!h§ = null;
            this.§;!+§ = false;
         }
         if(this.§8'§)
         {
            sprite.removeChild(this.§>!L§);
            this.§>!L§ = null;
            this.§"!W§ = false;
         }
      }
      
      public function §@!j§(param1:Number, param2:Number, param3:Boolean = true) : §%b§
      {
         §&8§ = false;
         §6a§ = false;
         § #'§ = -1;
         this.§=! §.x = §0U§;
         this.§=! §.y = §3"[§;
         this.§=! §.rotation = §-T§;
         if(param3)
         {
            this.§8!y§ = §5!%§.§!6§.§!![§(§5!%§.§!6§.§4!M§(this.§=! §,{
               "x":param1,
               "rotation":-360
            },null,§7" §),§5!%§.§!6§.§2!Q§(§5!%§.§!6§.§4!M§(this.§=! §,{"y":this.§=! §.y - §,"J§},null,§7" § / 2,§5!%§.§@"Y§),§5!%§.§!6§.§4!M§(this.§=! §,{"y":param2},{"y":this.§=! §.y - §,"J§},§7" § / 2,§5!%§.§?S§)));
         }
         else
         {
            this.§8!y§ = §5!%§.§!6§.§4!M§(null,null,null,§7" §);
         }
         this.§8!y§.play();
         this.§8!y§.onComplete = this.§]!j§;
         return this.§8!y§;
      }
      
      private function §]!j§() : void
      {
         this.§8!y§ = null;
         §-T§ = this.§=! §.rotation;
         setPosition(this.§=! §.x,this.§=! §.y);
         §6a§ = false;
         §&8§ = true;
         § #'§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§8!y§ != null)
         {
            §-T§ = this.§=! §.rotation;
            setPosition(this.§=! §.x,this.§=! §.y);
            this.updateRenderer();
            this.§8!y§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
         if(this.§^_§)
         {
            this.§^_§.update(param1);
         }
      }
      
      override public function updateRenderer() : void
      {
         super.updateRenderer();
         if(this.§;!+§)
         {
            this.§+"7§();
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§8!y§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§8!y§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
