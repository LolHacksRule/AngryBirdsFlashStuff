package §!u§
{
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import §6!M§.§<!r§;
   import §7!C§.§8!w§;
   import §;`§.b2World;
   import §^e§.§7!R§;
   
   public class §>!z§ extends §5r§
   {
      
      private static const §2!A§:String = "LASER_TRAIL_3";
      
      private static const §@m§:String = "LASER_EFFECT_1";
       
      
      private var §#"2§:§?!0§;
      
      private var §@!J§:Sprite;
      
      private var §^!v§:§?!0§;
      
      private var §&!T§:Boolean;
      
      public function §>!z§(param1:Sprite, param2:b2World, param3:§<!r§, param4:Number, param5:Number)
      {
         super(param1,param2,param3);
         this.§^!v§ = this.§!"%§(§@m§);
         this.§^!v§.x += param4;
         this.§^!v§.y += param5;
         param1.addChildAt(this.§^!v§,0);
         this.§#"2§ = this.§8!H§(§2!A§);
         this.§@!J§ = new Sprite();
         this.§@!J§.x = param4;
         this.§@!J§.y = param5;
         this.§@!J§.addChild(this.§#"2§);
         param1.addChildAt(this.§@!J§,0);
         this.§&!T§ = false;
      }
      
      private function §8!H§(param1:String, param2:Number = 1) : §?!0§
      {
         var _loc3_:§7!R§ = §8!w§.§5!V§.textureManager.getTexture(param1);
         var _loc4_:§?!0§;
         (_loc4_ = new §?!0§(_loc3_.texture)).scaleX = -param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      private function §!"%§(param1:String, param2:Number = 1) : §?!0§
      {
         var _loc3_:§7!R§ = §8!w§.§5!V§.textureManager.getTexture(param1);
         var _loc4_:§?!0§;
         (_loc4_ = new §?!0§(_loc3_.texture)).scaleX = param2;
         _loc4_.scaleY = param2;
         _loc4_.x = -_loc4_.width / 2;
         _loc4_.y = -_loc4_.height / 2;
         return _loc4_;
      }
      
      public function §-"<§(param1:Number) : void
      {
         this.§@!J§.rotation = param1;
      }
      
      public function §#!?§(param1:Number, param2:Number) : void
      {
         this.§#"2§.scaleX = -param1;
         this.§#"2§.scaleY = param2;
      }
      
      public function §?4§(param1:Number, param2:Number) : void
      {
         this.§@!J§.x = param1;
         this.§@!J§.y = param2;
      }
      
      public function §2K§() : void
      {
         this.§@!J§.visible = false;
      }
      
      public function §4!D§() : void
      {
         if(this.§^!v§)
         {
            this.§^!v§.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§&!T§;
      }
      
      override public function dispose() : void
      {
         this.§^!v§.dispose();
         this.§^!v§ = null;
         this.§@!J§.removeChild(this.§#"2§);
         this.§@!J§.dispose();
         this.§@!J§ = null;
         this.§#"2§.dispose();
         this.§#"2§ = null;
         super.dispose();
      }
      
      public function get §#"0§() : Boolean
      {
         return this.§&!T§;
      }
      
      public function set §#"0§(param1:Boolean) : void
      {
         this.§&!T§ = param1;
      }
   }
}
