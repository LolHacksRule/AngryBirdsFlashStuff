package §9"!§
{
   import §#!e§.§1"B§;
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§"A§;
   import com.rovio.assets.§8B§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §>"7§ extends §2a§
   {
      
      protected static const §&J§:uint = 7602176;
      
      protected static var §9p§:Texture;
       
      
      protected var § !I§:§0!N§;
      
      protected var §3"C§:§0!N§;
      
      private var §'!g§:Boolean = false;
      
      public function §>"7§(param1:§9"3§, param2:§1"B§, param3:§1!$§.Sprite)
      {
         super(param1,param2,param3);
      }
      
      public function get §?!k§() : Boolean
      {
         return this.§'!g§;
      }
      
      public function set §?!k§(param1:Boolean) : void
      {
         var _loc2_:§"A§ = null;
         var _loc3_:Texture = null;
         var _loc4_:Texture = null;
         if(this.§'!g§ == param1)
         {
            return;
         }
         this.§'!g§ = param1;
         if(this.§'!g§)
         {
            _loc2_ = this.getSlingshotAnimation();
            _loc3_ = _loc2_.getFrame(0).texture;
            _loc4_ = _loc2_.getFrame(1).texture;
            while(§3^§.numChildren > 0)
            {
               §3^§.removeChildAt(0);
            }
            §4!l§ = new §0!N§(_loc3_);
            §&!1§ = new §0!N§(_loc4_);
            §3^§.addChild(§4!l§);
            §3^§.addChild(§&P§);
            §3^§.addChild(§,!&§);
            §3^§.addChild(§<!M§);
            §3^§.addChild(§"!p§);
            §3^§.addChild(§&!1§);
            §6$§ = true;
            §+!$§ = false;
         }
      }
      
      public function §`k§() : void
      {
         this.§[!I§(false);
      }
      
      override protected function getSlingshotAnimation() : §"A§
      {
         if(this.§'!g§)
         {
            return §@O§.animationManager.getAnimation("HALLOWEEN_SLINGSHOT");
         }
         return super.getSlingshotAnimation();
      }
      
      public function §!!2§() : void
      {
         if(this.§ !I§ || this.§3"C§)
         {
            this.§[!I§(true);
            return;
         }
         var _loc1_:§"A§ = §@O§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§ !I§ = new §0!N§(_loc2_);
         this.§3"C§ = new §0!N§(_loc3_);
         this.§[!I§(true);
         this.§!G§(§4"F§.§79§);
      }
      
      public function §!G§(param1:Number) : void
      {
         var _loc2_:§;!M§ = null;
         for each(_loc2_ in § L§)
         {
            _loc2_.§&!v§ = param1;
         }
      }
      
      protected function §[!I§(param1:Boolean = false) : void
      {
         if(§+!$§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§4h§();
         }
         else
         {
            §0!P§();
         }
         §^!d§ = !!param1 ? Number(§4"F§.§9B§) : Number(§4"F§.§`!9§);
         §+!$§ = param1;
         while(§3^§.numChildren > 0)
         {
            §3^§.removeChildAt(0);
         }
         §3^§.addChild(!!param1 ? this.§ !I§ : §4!l§);
         §3^§.addChild(§&P§);
         §3^§.addChild(§,!&§);
         §3^§.addChild(§<!M§);
         §3^§.addChild(§"!p§);
         §3^§.addChild(!!param1 ? this.§3"C§ : §&!1§);
         §6$§ = true;
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         super.updateAnimations(param1);
         if(§+!$§)
         {
            this.§ !I§.x = §,!k§ / §9"3§.§'"F§ - 8 - 8;
            this.§ !I§.y = §!Q§ / §9"3§.§'"F§ - 30 - 10;
            this.§3"C§.x = §,!k§ / §9"3§.§'"F§ - 38 - 4;
            this.§3"C§.y = §!Q§ / §9"3§.§'"F§ - 37 - 6;
         }
         else if(this.§'!g§)
         {
            §4!l§.x -= 10;
            §&!1§.x -= 10;
            §&!1§.y -= 5;
         }
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc5_:§`7§ = new §`7§(this,new §1!$§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            § L§.push(_loc5_);
         }
         else
         {
            § L§.splice(param4,0,_loc5_);
         }
         §,!&§.addChild(_loc5_.sprite);
         if(§+!$§)
         {
            this.§!G§(§4"F§.§79§);
         }
         return _loc5_;
      }
      
      override protected function playBirdShotSound() : void
      {
         if(§+!$§)
         {
            §>!E§.§7N§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§;!M§ = null;
         _loc2_ = § L§[§6!m§];
         var _loc3_:Number = §"!+§ / §^!d§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§2a§.BIRD_LAUNCH_FORCE_GREEN) : Number(§2a§.BIRD_LAUNCH_FORCE);
            if(_loc2_ != null && _loc2_.§&!v§ > 0)
            {
               return _loc2_.§&!v§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §+!>§(param1:Number) : §;!M§
      {
         var _loc2_:§;!M§ = null;
         _loc2_ = § L§[§6!m§];
         if(_loc2_.§>! § < 1)
         {
            _loc2_.§>! § = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      protected function §4h§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§9p§)
         {
            _loc2_ = new §8B§.§6"C§("MovieClip_SlingHolder")();
            setTint(_loc2_,§&J§,1);
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
            §9p§ = §@O§.textureManager.getTextureFromBitmapData(_loc3_);
         }
         §<!M§ = new §1!$§.Sprite();
         var _loc1_:§0!N§ = new §0!N§(§9p§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         §<!M§.addChild(_loc1_);
         §&P§ = new §1!$§.Sprite();
         §]j§ = new §!"?§(2,2,§&J§);
         §&P§.addChild(§]j§);
         §"!p§ = new §1!$§.Sprite();
         §5>§ = new §!"?§(2,2,§&J§);
         §"!p§.addChild(§5>§);
      }
   }
}
