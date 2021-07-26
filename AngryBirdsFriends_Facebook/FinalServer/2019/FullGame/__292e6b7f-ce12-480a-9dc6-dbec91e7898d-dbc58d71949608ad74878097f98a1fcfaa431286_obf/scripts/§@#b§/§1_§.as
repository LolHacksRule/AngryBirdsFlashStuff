package §@#b§
{
   import §"#k§.Starling;
   import §,#e§.§;!`§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §,0§.§`5§;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §4"Y§.§+!q§;
   import §4"Y§.§@!H§;
   import §4§.§`3§;
   import §6"p§.§^"t§;
   import §7"T§.§#"^§;
   
   public class §1_§
   {
      
      public static const §9!9§:Boolean = true;
       
      
      protected var §-i§:§#"^§;
      
      protected var §+!O§:§+!q§;
      
      protected var §%g§:Vector.<§=$;§>;
      
      protected var §`#S§:Sprite;
      
      protected var §"!?§:Sprite;
      
      protected var §'"d§:Sprite;
      
      protected var §=!J§:Number;
      
      protected var §,n§:Number;
      
      protected var §%""§:Number;
      
      protected var §5#;§:Boolean = false;
      
      protected var §4V§:Boolean = true;
      
      protected var §1r§:§9$8§;
      
      protected var §#,§:Number;
      
      protected var §1!%§:Boolean = true;
      
      protected var §&##§:int = 0;
      
      protected var §#!1§:Number = 1.0;
      
      private var §9!Q§:§`5§;
      
      public function §1_§(param1:§`5§, param2:§+!q§, param3:Number, param4:§#"^§, param5:Number, param6:Boolean = true)
      {
         this.§%g§ = new Vector.<§=$;§>();
         super();
         this.§-i§ = param4;
         this.§9!Q§ = param1;
         this.§,n§ = 0;
         this.§%""§ = 0;
         this.§=!J§ = param3;
         this.§`#S§ = new Sprite();
         this.§"!?§ = new Sprite();
         this.§'"d§ = new Sprite();
         this.§#,§ = param5;
         this.§1!%§ = param6;
         this.§5#;§ = true;
         this.§`"8§(param2,param5);
      }
      
      public function get §-r§() : Boolean
      {
         return this.§5#;§;
      }
      
      public function get § $+§() : Sprite
      {
         return this.§'"d§;
      }
      
      public function get § #p§() : Sprite
      {
         return this.§`#S§;
      }
      
      public function get §"!>§() : Sprite
      {
         return this.§"!?§;
      }
      
      public function get §>$2§() : int
      {
         return this.§&##§;
      }
      
      protected function get textureManager() : §#"^§
      {
         return this.§-i§;
      }
      
      public function dispose() : void
      {
         this.§ $ §();
         this.stopAmbientSound();
         if(this.§`#S§)
         {
            this.§`#S§.dispose();
            this.§`#S§ = null;
         }
         if(this.§"!?§)
         {
            this.§"!?§.dispose();
            this.§"!?§ = null;
         }
         if(this.§'"d§)
         {
            this.§'"d§.dispose();
            this.§'"d§ = null;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.§4V§;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.§4V§ == param1)
         {
            return;
         }
         this.§4V§ = param1;
         if(!param1)
         {
            this.§ $ §();
         }
         else
         {
            this.§`"8§(this.§+!O§,this.§#,§);
         }
      }
      
      public function §[#r§() : String
      {
         return this.§+!O§.§6!3§;
      }
      
      public function §!J§() : String
      {
         return this.§+!O§.§[j§;
      }
      
      private function § $ §() : void
      {
         while(this.§"!?§.numChildren > 0)
         {
            this.§"!?§.removeChildAt(0,true);
         }
         while(this.§`#S§.numChildren > 0)
         {
            this.§`#S§.removeChildAt(0,true);
         }
         while(this.§%g§.length > 0)
         {
            this.§%g§.pop().dispose();
         }
      }
      
      protected function §6!F§(param1:§+!q§) : void
      {
      }
      
      protected function §`"8§(param1:§+!q§, param2:Number) : void
      {
         var _loc4_:§@!H§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§=$;§ = null;
         this.§+!O§ = param1;
         this.§6!F§(this.§+!O§);
         this.§`#S§.y = this.§=!J§;
         this.§"!?§.y = this.§=!J§;
         this.§'"d§.y = this.§=!J§;
         this.§["1§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!O§.§`"§)
         {
            _loc4_ = this.§+!O§.§=!T§(_loc3_);
            if(this.§1!%§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.createLayer(_loc4_,_loc5_,this.textureManager,param2);
               this.§%g§.push(_loc6_);
               if(_loc6_.§["M§)
               {
                  this.§"!?§.addChild(_loc5_);
               }
               else
               {
                  this.§`#S§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§[7§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function createLayer(param1:§@!H§, param2:Sprite, param3:§#"^§, param4:Number) : §=$;§
      {
         return new §=$;§(this.§9!Q§,param1,param2,param3,param4);
      }
      
      private function §["1§() : void
      {
         var _loc1_:§;!`§ = null;
         if(this.§+!O§.§%!"§)
         {
            this.§[7§(this.§+!O§.§%!"§);
         }
         if(this.§+!O§.colorGround)
         {
            _loc1_ = this.§+"[§(uint(this.§+!O§.colorGround));
            _loc1_.y = 0;
            this.§'"d§.addChild(_loc1_);
         }
      }
      
      protected function §+"[§(param1:uint) : §;!`§
      {
         return new §;!`§(4096,4096,param1);
      }
      
      private function §[7§(param1:int) : void
      {
         this.§&##§ = param1;
         if(Starling.§4$#§)
         {
            Starling.§4$#§.color = param1;
         }
      }
      
      public function §>"T§(param1:§+!q§) : void
      {
         this.§ $ §();
         §^"t§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§`"8§(param1,this.§#,§);
      }
      
      public function §-!$§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§=$;§ = null;
         if(param1 == this.§5#;§)
         {
            return;
         }
         this.§5#;§ = param1;
         for each(_loc3_ in this.§%g§)
         {
            _loc3_.§-!$§(param1);
         }
      }
      
      public function playAmbientSound() : void
      {
         if(§ b§.§]!L§("CHANNEL_AMBIENT") == null || !§ b§.§]!L§("CHANNEL_AMBIENT").isPlaying())
         {
            § b§.playSound(this.§<"!§,"CHANNEL_AMBIENT",999,this.§1#B§);
         }
      }
      
      public function stopAmbientSound() : void
      {
         § b§.§8!7§("CHANNEL_AMBIENT");
      }
      
      public function get §<"!§() : String
      {
         return this.§+!O§.§<"!§;
      }
      
      public function get §1#B§() : Number
      {
         return this.§+!O§.§1#B§;
      }
      
      public function §6"S§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`#S§.numChildren)
         {
            _loc2_ = this.§`#S§.getChildAt(param1);
         }
         else if(param1 - this.§`#S§.numChildren < this.§"!?§.numChildren)
         {
            _loc2_ = this.§"!?§.getChildAt(param1 - this.§`#S§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§,n§ = param1;
         this.§%""§ = param2;
         if(this.§%g§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§%g§.length)
            {
               this.§%g§[_loc8_].setScreenOffset(this.§,n§,this.§%""§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§'"d§ != null)
         {
            this.§'"d§.scaleX = this.§'"d§.scaleY = 1 / §`3§.§-"C§;
            this.updateGroundSpriteOffset();
         }
      }
      
      protected function updateGroundSpriteOffset() : void
      {
         this.§'"d§.x = 0;
         this.§'"d§.y = this.§=!J§ - this.§%""§;
      }
      
      public function §="M§() : String
      {
         return this.§+!O§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§=$;§ = null;
         for each(_loc2_ in this.§%g§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
