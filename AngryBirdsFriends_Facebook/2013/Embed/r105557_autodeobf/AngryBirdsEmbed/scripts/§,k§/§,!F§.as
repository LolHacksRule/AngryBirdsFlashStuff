package §,k§
{
   import §5B§.§6!>§;
   import §8T§.§'F§;
   import §8T§.§@o§;
   import §;!;§.§4G§;
   import §;!;§.§7F§;
   import §;!;§.§8+§;
   import §;^§.§+a§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §<!M§.§1!&§;
   import §=!K§.§^Q§;
   import §?!8§.§2>§;
   import §??§.§5!@§;
   
   public class §,!F§
   {
      
      public static const §^V§:Boolean = true;
       
      
      private var §9!=§:§^Q§;
      
      protected var §0j§:§4G§;
      
      protected var §in§:Vector.<§]Z§>;
      
      private var § P§:Sprite;
      
      private var §9!+§:Sprite;
      
      private var §&<§:Sprite;
      
      private var §`!'§:Number;
      
      private var §switch§:Number;
      
      private var §3%§:Number;
      
      private var §[#§:Boolean = true;
      
      private var §4!;§:Boolean = true;
      
      private var §-d§:§'F§;
      
      private var §32§:Number;
      
      public function §,!F§(param1:String, param2:Number, param3:§^Q§, param4:Number)
      {
         this.§in§ = new Vector.<§]Z§>();
         super();
         this.§9!=§ = param3;
         this.§switch§ = 0;
         this.§3%§ = 0;
         this.§`!'§ = param2;
         this.§ P§ = new Sprite();
         this.§9!+§ = new Sprite();
         this.§&<§ = new Sprite();
         this.§32§ = param4;
         this.§ !5§(param1,param4);
      }
      
      public function get §>!-§() : Boolean
      {
         return this.§[#§;
      }
      
      public function get §^F§() : Sprite
      {
         return this.§&<§;
      }
      
      public function get §"!C§() : Sprite
      {
         return this.§ P§;
      }
      
      public function get §'a§() : Sprite
      {
         return this.§9!+§;
      }
      
      protected function get textureManager() : §^Q§
      {
         return this.§9!=§;
      }
      
      public function dispose() : void
      {
         this.§4E§();
         if(this.§ P§)
         {
            this.§ P§.dispose();
            this.§ P§ = null;
         }
         if(this.§9!+§)
         {
            this.§9!+§.dispose();
            this.§9!+§ = null;
         }
         if(this.§&<§)
         {
            this.§&<§.dispose();
            this.§&<§ = null;
         }
      }
      
      public function §['§() : Boolean
      {
         return this.§4!;§;
      }
      
      public function §]g§(param1:Boolean) : void
      {
         if(this.§4!;§ == param1)
         {
            return;
         }
         this.§4!;§ = param1;
         if(!param1)
         {
            this.§4E§();
         }
         else
         {
            this.§ !5§(this.§0j§.mName,this.§32§);
         }
      }
      
      public function §3!M§() : String
      {
         return this.§0j§.§'%§;
      }
      
      private function §4E§() : void
      {
         while(this.§9!+§.numChildren > 0)
         {
            this.§9!+§.removeChildAt(0,true);
         }
         while(this.§ P§.numChildren > 0)
         {
            this.§ P§.removeChildAt(0,true);
         }
         while(this.§in§.length > 0)
         {
            this.§in§.pop().dispose();
         }
      }
      
      protected function §^!L§(param1:§4G§, param2:String) : void
      {
      }
      
      private function § !5§(param1:String, param2:Number) : void
      {
         var _loc4_:§8+§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]Z§ = null;
         this.§0j§ = §7F§.§=#§(param1);
         if(this.§0j§ == null)
         {
            §2>§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §1!&§.§5d§;
            this.§0j§ = §7F§.§=#§(param1);
         }
         this.§^!L§(this.§0j§,param1);
         this.§ P§.y = this.§`!'§;
         this.§9!+§.y = this.§`!'§;
         this.§&<§.y = this.§`!'§;
         this.§else§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§0j§.§in§.length)
         {
            _loc4_ = this.§0j§.§in§[_loc3_];
            if(!§5!@§.§`v§ || !_loc4_.§&I§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§9<§(_loc4_,_loc5_,this.§9!=§,param2);
               this.§in§.push(_loc6_);
               if(_loc6_.§ M§)
               {
                  this.§9!+§.addChild(_loc5_);
               }
               else
               {
                  this.§ P§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§%!@§)
            {
               this.§;z§(parseInt(_loc4_.§%!@§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §9<§(param1:§8+§, param2:Sprite, param3:§^Q§, param4:Number) : §]Z§
      {
         return new §]Z§(param1,param2,param3,param4);
      }
      
      private function §else§() : void
      {
         var _loc1_:§+a§ = null;
         if(this.§0j§.§-O§)
         {
            this.§;z§(this.§0j§.§-O§);
         }
         if(this.§0j§.§94§)
         {
            _loc1_ = this.§'[§(uint(this.§0j§.§94§));
            _loc1_.y = 0;
            this.§&<§.addChild(_loc1_);
         }
      }
      
      protected function §'[§(param1:uint) : §+a§
      {
         return new §+a§(4096,4096,param1);
      }
      
      protected function §;z§(param1:int) : void
      {
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.color = param1;
         }
      }
      
      public function §2B§(param1:String, param2:§^Q§ = null) : void
      {
         if(param2)
         {
            this.§9!=§ = param2;
         }
         this.§4E§();
         §2>§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§ !5§(param1,this.§32§);
      }
      
      public function §4!K§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§]Z§ = null;
         if(param1 == this.§[#§)
         {
            return;
         }
         this.§[#§ = param1;
         for each(_loc3_ in this.§in§)
         {
            _loc3_.§4!K§(param1);
         }
      }
      
      public function §@4§() : void
      {
         if(§@o§.§[W§("CHANNEL_AMBIENT") == null || !§@o§.§[W§("CHANNEL_AMBIENT").§8f§())
         {
            §@o§.playSound(this.§0j§.§=L§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §^'§() : void
      {
         §@o§.§>!9§("CHANNEL_AMBIENT");
      }
      
      public function §26§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ P§.numChildren)
         {
            _loc2_ = this.§ P§.getChildAt(param1);
         }
         else if(param1 - this.§ P§.numChildren < this.§9!+§.numChildren)
         {
            _loc2_ = this.§9!+§.getChildAt(param1 - this.§ P§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §+!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§switch§ = param1;
         this.§3%§ = param2;
         if(this.§in§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§in§.length)
            {
               this.§in§[_loc3_].setSideScroll(this.§switch§,this.§3%§);
               _loc3_++;
            }
         }
         if(this.§&<§ != null)
         {
            this.§&<§.scaleX = this.§&<§.scaleY = 1 / §6!>§.§&h§;
            this.§&<§.x = -§6!>§.§`o§ * (1 / §6!>§.§&h§);
            this.§&<§.y = this.§`!'§ - this.§3%§;
         }
      }
      
      public function §-@§() : String
      {
         return this.§0j§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
