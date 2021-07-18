package §31§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import §+3§.§ 7§;
   import §+3§.§7>§;
   import §+3§.§`#§;
   import §?h§.§<I§;
   import §]!F§.§&!]§;
   import §]@§.§9!<§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   import §`!K§.§<9§;
   import §`C§.§9!'§;
   
   public class §%B§
   {
      
      public static const §0#§:Boolean = true;
       
      
      private var §8!M§:§2w§;
      
      private var §1]§:§`#§;
      
      private var §;7§:Vector.<§&#§>;
      
      private var §@o§:Sprite;
      
      private var §^'§:Sprite;
      
      private var §-4§:Sprite;
      
      private var §[!2§:Number;
      
      private var §%!6§:Number;
      
      private var §^!F§:Number;
      
      private var §9!K§:Boolean = true;
      
      private var §3!Z§:Boolean = true;
      
      private var §0[§:§<9§;
      
      private var §#!E§:Number;
      
      public function §%B§(param1:String, param2:Number, param3:§2w§, param4:Number)
      {
         this.§;7§ = new Vector.<§&#§>();
         super();
         this.§8!M§ = param3;
         this.§%!6§ = 0;
         this.§^!F§ = 0;
         this.§[!2§ = param2;
         this.§@o§ = new Sprite();
         this.§^'§ = new Sprite();
         this.§-4§ = new Sprite();
         this.§#!E§ = param4;
         this.§'N§(param1,param4);
      }
      
      public function get §#0§() : Boolean
      {
         return this.§9!K§;
      }
      
      public function get §@Y§() : Sprite
      {
         return this.§-4§;
      }
      
      public function get §`!L§() : Sprite
      {
         return this.§@o§;
      }
      
      public function get § !Y§() : Sprite
      {
         return this.§^'§;
      }
      
      protected function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function dispose() : void
      {
         this.§74§();
         if(this.§@o§)
         {
            this.§@o§.dispose();
            this.§@o§ = null;
         }
         if(this.§^'§)
         {
            this.§^'§.dispose();
            this.§^'§ = null;
         }
         if(this.§-4§)
         {
            this.§-4§.dispose();
            this.§-4§ = null;
         }
      }
      
      public function §#w§() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function §'![§(param1:Boolean) : void
      {
         if(this.§3!Z§ == param1)
         {
            return;
         }
         this.§3!Z§ = param1;
         if(!param1)
         {
            this.§74§();
         }
         else
         {
            this.§'N§(this.§1]§.mName,this.§#!E§);
         }
      }
      
      public function §0!!§() : String
      {
         return this.§1]§.§]>§;
      }
      
      private function §74§() : void
      {
         while(this.§^'§.numChildren > 0)
         {
            this.§^'§.removeChildAt(0,true);
         }
         while(this.§@o§.numChildren > 0)
         {
            this.§@o§.removeChildAt(0,true);
         }
         while(this.§;7§.length > 0)
         {
            this.§;7§.pop().dispose();
         }
      }
      
      private function §'N§(param1:String, param2:Number) : void
      {
         var _loc4_:§7>§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§&#§ = null;
         this.§1]§ = § 7§.§[!>§(param1);
         if(this.§1]§ == null)
         {
            § #§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §&!]§.§ get§;
            this.§1]§ = § 7§.§[!>§(param1);
         }
         this.§@o§.y = this.§[!2§;
         this.§^'§.y = this.§[!2§;
         this.§-4§.y = this.§[!2§;
         this.§!!L§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§1]§.§;7§.length)
         {
            _loc4_ = this.§1]§.§;7§[_loc3_];
            if(!§9!'§.§'!$§ || !_loc4_.§!!W§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §&#§(_loc4_,_loc5_,this.§8!M§,param2);
               this.§;7§.push(_loc6_);
               if(_loc6_.§<!+§)
               {
                  this.§^'§.addChild(_loc5_);
               }
               else
               {
                  this.§@o§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§^!>§)
            {
               this.§]l§(parseInt(_loc4_.§^!>§,16));
            }
            _loc3_++;
         }
      }
      
      private function §!!L§() : void
      {
         var _loc1_:§9!<§ = null;
         if(this.§1]§.§>V§)
         {
            this.§]l§(this.§1]§.§>V§);
         }
         if(this.§1]§.§4!?§)
         {
            _loc1_ = this.§[!4§(uint(this.§1]§.§4!?§));
            _loc1_.y = 0;
            this.§-4§.addChild(_loc1_);
         }
      }
      
      protected function §[!4§(param1:uint) : §9!<§
      {
         return new §9!<§(4096,4096,param1);
      }
      
      private function §]l§(param1:int) : void
      {
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.color = param1;
         }
      }
      
      public function §@V§(param1:String) : void
      {
         this.§74§();
         § #§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§'N§(param1,this.§#!E§);
      }
      
      public function §?B§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§&#§ = null;
         if(param1 == this.§9!K§)
         {
            return;
         }
         this.§9!K§ = param1;
         for each(_loc3_ in this.§;7§)
         {
            _loc3_.§?B§(param1);
         }
      }
      
      public function §+^§() : void
      {
         if(§!!>§.§-!8§("CHANNEL_AMBIENT") == null || !§!!>§.§-!8§("CHANNEL_AMBIENT").§#I§())
         {
            §!!>§.playSound(this.§1]§.§5N§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §5!<§() : void
      {
         §!!>§.§8y§("CHANNEL_AMBIENT");
      }
      
      public function §'!I§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@o§.numChildren)
         {
            _loc2_ = this.§@o§.getChildAt(param1);
         }
         else if(param1 - this.§@o§.numChildren < this.§^'§.numChildren)
         {
            _loc2_ = this.§^'§.getChildAt(param1 - this.§@o§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §<!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§%!6§ = param1;
         this.§^!F§ = param2;
         if(this.§;7§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§;7§.length)
            {
               this.§;7§[_loc3_].setSideScroll(this.§%!6§,this.§^!F§);
               _loc3_++;
            }
         }
         if(this.§-4§ != null)
         {
            this.§-4§.scaleX = this.§-4§.scaleY = 1 / §<I§.§,0§;
            this.§-4§.x = -§<I§.§5!S§ * (1 / §<I§.§,0§);
            this.§-4§.y = this.§[!2§ - this.§^!F§;
         }
      }
      
      public function §=M§() : String
      {
         return this.§1]§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
