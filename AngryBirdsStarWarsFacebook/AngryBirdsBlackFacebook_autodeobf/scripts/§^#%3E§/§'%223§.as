package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §2"Y§.§"t§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!F§.§8!W§;
   import §7P§.§]!-§;
   import com.angrybirds.§,!q§;
   
   public class §'"3§ extends §-y§
   {
      
      private static const §5#M§:Number = 10;
      
      public static const §6&§:Number = 1;
       
      
      private var §!#Q§:Boolean = false;
      
      private var §?#%§:Boolean = false;
      
      private var §3#;§:Boolean = false;
      
      private var §+9§:§#"t§;
      
      private var §!P§:Sprite;
      
      private var §6"b§:Number = 0;
      
      private var §6"i§:Boolean = false;
      
      private var §@#,§:§[#R§ = null;
      
      private var §0!2§:Object;
      
      private var §=#"§:§;!d§;
      
      public function §'"3§(param1:§;x§, param2:Sprite, param3:String, param4:§"t§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§0!2§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §!#?§() : Boolean
      {
         return this.§!#Q§;
      }
      
      public function get §="U§() : Number
      {
         return this.§6"b§ * (Math.PI / 180) - Math.PI / 2;
      }
      
      public function get §[g§() : Boolean
      {
         return this.§?#%§;
      }
      
      public function §@#Y§() : void
      {
         if(this.§!#Q§)
         {
            return;
         }
         this.§!#Q§ = true;
         var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_01");
         var _loc2_:§#"t§ = new §#"t§(_loc1_.texture);
         _loc2_.x = -_loc1_.pivotX;
         _loc2_.y = -_loc1_.pivotY;
         this.§!P§ = new Sprite();
         this.§!P§.addChild(_loc2_);
         this.§!P§.scaleX = this.§!P§.scaleY = §15§.§ "e§ / scale;
         this.§6"b§ = §15§.§8!a§;
         sprite.addChild(this.§!P§);
         this.§#6§();
      }
      
      private function §#6§() : void
      {
         var _loc1_:Number = this.§="U§;
         var _loc2_:Number = Math.cos(_loc1_) * §15§.§[#F§ / §#_§.§8]§;
         var _loc3_:Number = Math.sin(_loc1_) * §15§.§[#F§ / §#_§.§8]§;
         this.§!P§.x = _loc2_;
         this.§!P§.y = _loc3_;
         this.§!P§.rotation = Math.PI + _loc1_ + §15§.§#v§;
      }
      
      public function §#W§() : void
      {
         if(this.§?#%§)
         {
            return;
         }
         this.§?#%§ = true;
         var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_01");
         this.§+9§ = new §#"t§(_loc1_.texture);
         this.§+9§.scaleX = this.§+9§.scaleY = §15§.§1E§ / scale;
         var _loc2_:Number = §15§.§]!4§ * (Math.PI / 180);
         var _loc3_:Number = §;B§.getItemWidth() * §;B§.scale / §#_§.§8]§;
         var _loc4_:Number = Math.cos(_loc2_) * (_loc3_ + §15§.§]&§);
         var _loc5_:Number = Math.sin(_loc2_) * (_loc3_ + §15§.§]&§);
         this.§+9§.x = _loc4_ - _loc1_.pivotX * this.§+9§.scaleX;
         this.§+9§.y = _loc5_ - _loc1_.pivotY * this.§+9§.scaleY;
         sprite.addChild(this.§+9§);
      }
      
      public function §3i§() : void
      {
         this.§6"i§ = true;
         if(!this.§=#"§)
         {
            this.§=#"§ = new §;!d§(§15§.§1!6§);
            sprite.addChildAt(this.§=#"§,0);
            this.§6"N§();
         }
      }
      
      public function §#">§() : void
      {
         this.§3#;§ = true;
         if(§?!%§)
         {
            if(!this.§=#"§)
            {
               this.§=#"§ = new §;!d§();
               sprite.addChildAt(this.§=#"§,0);
               this.§6"N§();
            }
            this.§=#"§.§^"G§(§15§.§!![§);
         }
      }
      
      private function §6"N§() : void
      {
         if(mName.indexOf(§]!-§.§+"§) != -1)
         {
            this.§=#"§.scaleX = this.§=#"§.scaleY = §]!-§.§0!;§;
         }
      }
      
      override public function setOnSlingshot(param1:Boolean) : void
      {
         super.setOnSlingshot(param1);
         if(this.§3#;§)
         {
            if(§?!%§)
            {
               this.§#">§();
            }
            else
            {
               sprite.removeChild(this.§=#"§);
               this.§=#"§ = null;
            }
         }
      }
      
      override public function fallFromSlingshot() : void
      {
         if(this.§3#;§ && this.§=#"§)
         {
            sprite.removeChild(this.§=#"§);
            this.§=#"§ = null;
         }
      }
      
      public function get § !c§() : Boolean
      {
         return this.§6"i§;
      }
      
      public function get §^"x§() : Boolean
      {
         return this.§3#;§;
      }
      
      public function §^w§() : void
      {
         if(this.§!#?§)
         {
            sprite.removeChild(this.§!P§);
            this.§!P§ = null;
            this.§!#Q§ = false;
         }
         if(this.§[g§)
         {
            sprite.removeChild(this.§+9§);
            this.§+9§ = null;
            this.§?#%§ = false;
         }
      }
      
      public function §1V§(param1:Number, param2:Number, param3:Boolean = true) : §[#R§
      {
         §&#O§ = false;
         §#"=§ = false;
         §@§ = -1;
         this.§0!2§.x = §8!+§;
         this.§0!2§.y = §=!Z§;
         this.§0!2§.rotation = §<#W§;
         if(param3)
         {
            this.§@#,§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§0!2§,{
               "x":param1,
               "rotation":-360
            },null,§6&§),§-#C§.§%!E§.§'#T§(§-#C§.§%!E§.§^!H§(this.§0!2§,{"y":this.§0!2§.y - §5#M§},null,§6&§ / 2,§-#C§.§]"0§),§-#C§.§%!E§.§^!H§(this.§0!2§,{"y":param2},{"y":this.§0!2§.y - §5#M§},§6&§ / 2,§-#C§.§#t§)));
         }
         else
         {
            this.§@#,§ = §-#C§.§%!E§.§^!H§(null,null,null,§6&§);
         }
         this.§@#,§.play();
         this.§@#,§.onComplete = this.§9]§;
         return this.§@#,§;
      }
      
      private function §9]§() : void
      {
         this.§@#,§ = null;
         §<#W§ = this.§0!2§.rotation;
         setPosition(this.§0!2§.x,this.§0!2§.y);
         §#"=§ = false;
         §&#O§ = true;
         §@§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§@#,§ != null)
         {
            §<#W§ = this.§0!2§.rotation;
            setPosition(this.§0!2§.x,this.§0!2§.y);
            this.updateRenderer();
            this.§@#,§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
         if(this.§=#"§)
         {
            this.§=#"§.update(param1);
         }
      }
      
      override public function updateRenderer() : void
      {
         super.updateRenderer();
         if(this.§!#Q§)
         {
            this.§#6§();
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§@#,§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§@#,§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
