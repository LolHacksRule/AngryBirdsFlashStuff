package §!!P§
{
   import §'!j§.Starling;
   import §'G§.§3$§;
   import §-<§.§'"v§;
   import §-<§.§8"h§;
   import §1#u§.§;"Q§;
   import §1#v§.§;!Y§;
   import §2!l§.§0"[§;
   import §6#H§.§,"$§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   
   public class §,!e§
   {
      
      public static const §4v§:Boolean = true;
       
      
      protected var §?#r§:§3$§;
      
      protected var §!$'§:§'"v§;
      
      protected var §<!u§:Vector.<§2#%§>;
      
      protected var §]"k§:Sprite;
      
      protected var §'$&§:Sprite;
      
      protected var §-$C§:Sprite;
      
      protected var §'$+§:Number;
      
      protected var §+!w§:Number;
      
      protected var §4!0§:Number;
      
      protected var §7#p§:Boolean = false;
      
      protected var §6! §:Boolean = true;
      
      protected var § !Y§:§-!o§;
      
      protected var §7#5§:Number;
      
      protected var §6#s§:Boolean = true;
      
      protected var § #z§:int = 0;
      
      protected var §5>§:Number = 1.0;
      
      private var §3#K§:§0"[§;
      
      public function §,!e§(param1:§0"[§, param2:§'"v§, param3:Number, param4:§3$§, param5:Number, param6:Boolean = true)
      {
         this.§<!u§ = new Vector.<§2#%§>();
         super();
         this.§?#r§ = param4;
         this.§3#K§ = param1;
         this.§+!w§ = 0;
         this.§4!0§ = 0;
         this.§'$+§ = param3;
         this.§]"k§ = new Sprite();
         this.§'$&§ = new Sprite();
         this.§-$C§ = new Sprite();
         this.§7#5§ = param5;
         this.§6#s§ = param6;
         this.§7#p§ = true;
         this.§^!=§(param2,param5);
      }
      
      public function get §?!d§() : Boolean
      {
         return this.§7#p§;
      }
      
      public function get §;S§() : Sprite
      {
         return this.§-$C§;
      }
      
      public function get §7c§() : Sprite
      {
         return this.§]"k§;
      }
      
      public function get §0"%§() : Sprite
      {
         return this.§'$&§;
      }
      
      public function get § #J§() : int
      {
         return this.§ #z§;
      }
      
      protected function get textureManager() : §3$§
      {
         return this.§?#r§;
      }
      
      public function dispose() : void
      {
         this.§># §();
         this.stopAmbientSound();
         if(this.§]"k§)
         {
            this.§]"k§.dispose();
            this.§]"k§ = null;
         }
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         if(this.§-$C§)
         {
            this.§-$C§.dispose();
            this.§-$C§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§6! §;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.§6! § == param1)
         {
            return;
         }
         this.§6! § = param1;
         if(!param1)
         {
            this.§># §();
         }
         else
         {
            this.§^!=§(this.§!$'§,this.§7#5§);
         }
      }
      
      public function §,#I§() : String
      {
         return this.§!$'§.§@n§;
      }
      
      public function §4!G§() : String
      {
         return this.§!$'§.§!!8§;
      }
      
      private function §># §() : void
      {
         while(this.§'$&§.numChildren > 0)
         {
            this.§'$&§.removeChildAt(0,true);
         }
         while(this.§]"k§.numChildren > 0)
         {
            this.§]"k§.removeChildAt(0,true);
         }
         while(this.§<!u§.length > 0)
         {
            this.§<!u§.pop().dispose();
         }
      }
      
      protected function §1"J§(param1:§'"v§) : void
      {
      }
      
      protected function §^!=§(param1:§'"v§, param2:Number) : void
      {
         var _loc4_:§8"h§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2#%§ = null;
         this.§!$'§ = param1;
         this.§1"J§(this.§!$'§);
         this.§]"k§.y = this.§'$+§;
         this.§'$&§.y = this.§'$+§;
         this.§-$C§.y = this.§'$+§;
         this.§&#g§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§!$'§.§7>§)
         {
            _loc4_ = this.§!$'§.§-$0§(_loc3_);
            if(this.§6#s§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§<!u§.push(_loc6_);
               if(_loc6_.§-"c§)
               {
                  this.§'$&§.addChild(_loc5_);
               }
               else
               {
                  this.§]"k§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§2""§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§8"h§, param2:Sprite, param3:§3$§, param4:Number) : §2#%§
      {
         return new §2#%§(this.§3#K§,param1,param2,param3,param4);
      }
      
      private function §&#g§() : void
      {
         var _loc1_:§,"$§ = null;
         if(this.§!$'§.§@#;§)
         {
            this.§2""§(this.§!$'§.§@#;§);
         }
         if(this.§!$'§.colorGround)
         {
            _loc1_ = this.§9!Q§(uint(this.§!$'§.colorGround));
            _loc1_.y = 0;
            this.§-$C§.addChild(_loc1_);
         }
      }
      
      protected function §9!Q§(param1:uint) : §,"$§
      {
         return new §,"$§(4096,4096,param1);
      }
      
      private function §2""§(param1:int) : void
      {
         this.§ #z§ = param1;
         if(Starling.§>x§)
         {
            Starling.§>x§.color = param1;
         }
      }
      
      public function §2$6§(param1:§'"v§) : void
      {
         this.§># §();
         §;!Y§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§^!=§(param1,this.§7#5§);
      }
      
      public function §4#P§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2#%§ = null;
         if(param1 == this.§7#p§)
         {
            return;
         }
         this.§7#p§ = param1;
         for each(_loc3_ in this.§<!u§)
         {
            _loc3_.§4#P§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§3Z§.§["C§("CHANNEL_AMBIENT") == null || !§3Z§.§["C§("CHANNEL_AMBIENT").isPlaying())
         {
            §3Z§.playSound(this.§7!=§,"CHANNEL_AMBIENT",999,this.§0#X§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         §3Z§.§&$?§("CHANNEL_AMBIENT");
      }
      
      public function get §7!=§() : String
      {
         return this.§!$'§.§7!=§;
      }
      
      public function get §0#X§() : Number
      {
         return this.§!$'§.§0#X§;
      }
      
      public function §;!A§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§]"k§.numChildren)
         {
            _loc2_ = this.§]"k§.getChildAt(param1);
         }
         else if(param1 - this.§]"k§.numChildren < this.§'$&§.numChildren)
         {
            _loc2_ = this.§'$&§.getChildAt(param1 - this.§]"k§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§+!w§ = param1;
         this.§4!0§ = param2;
         if(this.§<!u§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§<!u§.length)
            {
               this.§<!u§[_loc8_].setScreenOffset(this.§+!w§,this.§4!0§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§-$C§ != null)
         {
            this.§-$C§.scaleX = this.§-$C§.scaleY = 1 / §;"Q§.§>m§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§-$C§.x = 0;
         this.§-$C§.y = this.§'$+§ - this.§4!0§;
      }
      
      public function §2!^§() : String
      {
         return this.§!$'§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§2#%§ = null;
         for each(_loc2_ in this.§<!u§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
