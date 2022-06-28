package §"[§
{
   import §"$§.Starling;
   import §#y§.§0!D§;
   import §%!=§.ParticleDesignerPS;
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §8!?§.§?!B§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   import §?A§.§![§;
   import §?A§.LevelMain;
   import §[a§.§#d§;
   import §^!h§.ParticleManager;
   import starling.events.Event;
   
   public class LevelBackgroundLayer
   {
       
      
      private var §?w§:int;
      
      private var §6n§:int;
      
      private var §?x§:Number;
      
      private var §6j§:Boolean;
      
      private var §1!J§:Sprite;
      
      private var § !9§:Array;
      
      private var §@!I§:Boolean = true;
      
      private var §`_§:TextureManager;
      
      private var §2h§:Sprite;
      
      private var §,!S§:Sprite;
      
      public function LevelBackgroundLayer(param1:§#d§, param2:Sprite, param3:TextureManager, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§?!B§ = null;
         this.§ !9§ = [];
         super();
         this.§`_§ = param3;
         this.§1!J§ = param2;
         this.§?x§ = param1.§<,§;
         this.§6j§ = param1.§"!E§;
         var _loc5_:Number = 1;
         if(param1.§[+§ != 0)
         {
            _loc5_ = param1.§[+§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject = CompositeSpriteParser.§#t§(param1.mName,this.§`_§,param1.§7j§);
         if(!_loc10_)
         {
            _loc13_ = param3.§"!'§(param1.mName);
            _loc7_ = _loc13_.pivotY;
            if(!this.§6j§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§?w§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§?w§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.bounds.bottom;
            _loc8_ = (_loc10_.bounds.left + _loc10_.bounds.right) / 2;
         }
         if(this.§?w§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§?w§ = Math.round(this.§?w§);
         if(param1.§'U§)
         {
            this.§6n§ = 2 + LevelMain.§>7§ * 1.5 / (this.§?w§ * param4);
         }
         else
         {
            this.§6n§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§6n§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = CompositeSpriteParser.§#t§(param1.mName,this.§`_§,param1.§7j§);
               }
               else
               {
                  _loc10_ = new §&p§(_loc6_,false,param1.§7j§);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§?w§ + (-_loc8_ * _loc5_ + param1.§2q§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§<@§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§!!;§(param1,(_loc12_ - 1) * this.§?w§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§1!J§.addChild(_loc11_);
         if(this.§2h§)
         {
            if(this.§2h§.numChildren > 0)
            {
               this.§1!J§.addChild(this.§2h§);
            }
            else
            {
               this.§2h§.dispose();
            }
         }
         if(this.§,!S§)
         {
            if(this.§,!S§.numChildren > 0)
            {
               this.§1!J§.addChildAt(this.§,!S§,0);
            }
            else
            {
               this.§,!S§.dispose();
            }
         }
         this.§1!J§.addEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
      }
      
      public function get §,p§() : Boolean
      {
         return this.§6j§;
      }
      
      private function §!!;§(param1:§#d§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§![§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§ !9§)
         {
            _loc4_ = ParticleManager.§>O§(_loc3_.id,this.§`_§);
            if(_loc4_ && _loc4_.§6d§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§2q§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               Starling.§@7§.add(_loc4_);
               this.§ !9§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§,!S§)
                  {
                     this.§,!S§ = new Sprite();
                  }
                  this.§,!S§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§2h§)
                  {
                     this.§2h§ = new Sprite();
                  }
                  this.§2h§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§%1§(1 / 20);
                  _loc5_++;
               }
            }
            else if(_loc4_)
            {
               _loc4_.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         this.§1!J§.§;!d§(0,-1,true);
         this.§1!J§.removeEventListener(Event.ADDED_TO_STAGE,this.§2!a§);
         for each(_loc1_ in this.§ !9§)
         {
            Starling.§@7§.§[v§(_loc1_);
            _loc1_.dispose();
         }
         this.§ !9§ = [];
         this.§,!S§ = null;
         this.§2h§ = null;
      }
      
      private function §2!a§(param1:Event) : void
      {
         this.§-g§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?x§ * param1;
         this.§1!J§.x = -_loc3_;
         this.§1!J§.y = -param2;
         this.§-I§();
      }
      
      private function §-g§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         if(!this.§@!I§ || !this.§1!J§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§ !9§)
         {
            Starling.§@7§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §!8§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§ !9§)
         {
            Starling.§@7§.§[v§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]z§(param1:Boolean) : void
      {
         if(param1 == this.§@!I§)
         {
            return;
         }
         this.§@!I§ = param1;
         if(this.§@!I§)
         {
            this.§-g§();
         }
         else
         {
            this.§!8§();
         }
      }
      
      private function §-I§() : void
      {
         if(this.§6n§ == 1 || this.§ !9§.length > 0)
         {
            return;
         }
         while(§0!D§.§#`§ + (this.§1!J§.x - this.§?w§) * §0!D§.§4M§ > 0)
         {
            this.§1!J§.x -= this.§?w§;
         }
         this.§-!d§();
      }
      
      private function §-!d§() : void
      {
      }
   }
}
