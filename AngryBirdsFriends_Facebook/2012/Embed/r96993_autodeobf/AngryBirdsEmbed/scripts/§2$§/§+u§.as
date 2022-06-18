package §2$§
{
   import §'N§.§=x§;
   import §'N§.§^]§;
   import §+6§.§4j§;
   import §-!C§.§3!H§;
   import §3v§.§1a§;
   import §6"§.§7%§;
   import §6"§.§8!9§;
   import §6"§.§>!5§;
   import §6u§.§3W§;
   import §8!#§.§<n§;
   import §]!6§.§8D§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   
   public class §+u§
   {
      
      public static const §#I§:Boolean = true;
       
      
      private var §[!C§:§3W§;
      
      private var §]Q§:§7%§;
      
      private var §&+§:Vector.<§2R§>;
      
      private var §[n§:Sprite;
      
      private var §1Q§:Sprite;
      
      private var §`M§:Sprite;
      
      private var §5!@§:Number;
      
      private var §]7§:Number;
      
      private var §]9§:Number;
      
      private var §3!6§:Boolean = true;
      
      private var §!!?§:Boolean = true;
      
      private var §>&§:§=x§;
      
      private var §=R§:Number;
      
      public function §+u§(param1:String, param2:Number, param3:§3W§, param4:Number)
      {
         this.§&+§ = new Vector.<§2R§>();
         super();
         this.§[!C§ = param3;
         this.§]7§ = 0;
         this.§]9§ = 0;
         this.§5!@§ = param2;
         this.§[n§ = new Sprite();
         this.§1Q§ = new Sprite();
         this.§`M§ = new Sprite();
         this.§=R§ = param4;
         this.§0J§(param1,param4);
      }
      
      public function get §+k§() : Boolean
      {
         return this.§3!6§;
      }
      
      public function get §6!+§() : Sprite
      {
         return this.§`M§;
      }
      
      public function get §>Z§() : Sprite
      {
         return this.§[n§;
      }
      
      public function get §'B§() : Sprite
      {
         return this.§1Q§;
      }
      
      protected function get textureManager() : §3W§
      {
         return this.§[!C§;
      }
      
      public function dispose() : void
      {
         this.§!D§();
         if(this.§[n§)
         {
            this.§[n§.dispose();
            this.§[n§ = null;
         }
         if(this.§1Q§)
         {
            this.§1Q§.dispose();
            this.§1Q§ = null;
         }
         if(this.§`M§)
         {
            this.§`M§.dispose();
            this.§`M§ = null;
         }
      }
      
      public function §>!F§() : Boolean
      {
         return this.§!!?§;
      }
      
      public function §@!A§(param1:Boolean) : void
      {
         if(this.§!!?§ == param1)
         {
            return;
         }
         this.§!!?§ = param1;
         if(!param1)
         {
            this.§!D§();
         }
         else
         {
            this.§0J§(this.§]Q§.mName,this.§=R§);
         }
      }
      
      public function §3!,§() : String
      {
         return this.§]Q§.§"O§;
      }
      
      private function §!D§() : void
      {
         while(this.§1Q§.numChildren > 0)
         {
            this.§1Q§.removeChildAt(0,true);
         }
         while(this.§[n§.numChildren > 0)
         {
            this.§[n§.removeChildAt(0,true);
         }
         while(this.§&+§.length > 0)
         {
            this.§&+§.pop().dispose();
         }
      }
      
      private function §0J§(param1:String, param2:Number) : void
      {
         var _loc4_:§>!5§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2R§ = null;
         this.§]Q§ = §8!9§.§0M§(param1);
         if(this.§]Q§ == null)
         {
            §1a§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §3!H§.§^!8§;
            this.§]Q§ = §8!9§.§0M§(param1);
         }
         this.§[n§.y = this.§5!@§;
         this.§1Q§.y = this.§5!@§;
         this.§`M§.y = this.§5!@§;
         this.§ ]§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§]Q§.§&+§.length)
         {
            _loc4_ = this.§]Q§.§&+§[_loc3_];
            if(!§<n§.§;!?§ || !_loc4_.§ !6§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §2R§(_loc4_,_loc5_,this.§[!C§,param2);
               this.§&+§.push(_loc6_);
               if(_loc6_.§4!&§)
               {
                  this.§1Q§.addChild(_loc5_);
               }
               else
               {
                  this.§[n§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§8#§)
            {
               this.§+V§(parseInt(_loc4_.§8#§,16));
            }
            _loc3_++;
         }
      }
      
      private function § ]§() : void
      {
         var _loc1_:§8D§ = null;
         if(this.§]Q§.§^c§)
         {
            this.§+V§(this.§]Q§.§^c§);
         }
         if(this.§]Q§.§5>§)
         {
            _loc1_ = this.§+n§(uint(this.§]Q§.§5>§));
            _loc1_.y = 0;
            this.§`M§.addChild(_loc1_);
         }
      }
      
      protected function §+n§(param1:uint) : §8D§
      {
         return new §8D§(4096,4096,param1);
      }
      
      private function §+V§(param1:int) : void
      {
         if(§<n§.§?@§)
         {
            §<n§.§?@§.color = param1;
         }
      }
      
      public function §09§(param1:String) : void
      {
         this.§!D§();
         §1a§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§0J§(param1,this.§=R§);
      }
      
      public function §@S§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2R§ = null;
         if(param1 == this.§3!6§)
         {
            return;
         }
         this.§3!6§ = param1;
         for each(_loc3_ in this.§&+§)
         {
            _loc3_.§@S§(param1);
         }
      }
      
      public function §^5§() : void
      {
         if(§^]§.§?V§("CHANNEL_AMBIENT") == null || !§^]§.§?V§("CHANNEL_AMBIENT").§[!F§())
         {
            §^]§.§1g§(this.§]Q§.§"!,§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §@%§() : void
      {
         §^]§.§ _§("CHANNEL_AMBIENT");
      }
      
      public function §6-§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§[n§.numChildren)
         {
            _loc2_ = this.§[n§.getChildAt(param1);
         }
         else if(param1 - this.§[n§.numChildren < this.§1Q§.numChildren)
         {
            _loc2_ = this.§1Q§.getChildAt(param1 - this.§[n§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §3k§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§]7§ = param1;
         this.§]9§ = param2;
         if(this.§&+§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§&+§.length)
            {
               this.§&+§[_loc3_].setSideScroll(this.§]7§,this.§]9§);
               _loc3_++;
            }
         }
         if(this.§`M§ != null)
         {
            this.§`M§.scaleX = this.§`M§.scaleY = 1 / §4j§.§`@§;
            this.§`M§.x = -§4j§.§#5§ * (1 / §4j§.§`@§);
            this.§`M§.y = this.§5!@§ - this.§]9§;
         }
      }
      
      public function §`!E§() : String
      {
         return this.§]Q§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
