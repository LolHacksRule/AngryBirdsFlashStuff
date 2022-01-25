package §9W§
{
   import §!w§.§1"§;
   import §!w§.§1c§;
   import §!w§.§?!Y§;
   import §+N§.§``§;
   import §3U§.§ !M§;
   import §9]§.§9J§;
   import §<!!§.§-"§;
   import §<!$§.§6f§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   import §=L§.§@E§;
   import §=L§.§]!5§;
   import §@!C§.§#C§;
   
   public class §%m§
   {
      
      public static const §[w§:Boolean = true;
       
      
      private var §!v§:§``§;
      
      private var §[!`§:§1"§;
      
      private var §7k§:Vector.<§"K§>;
      
      private var §]!+§:Sprite;
      
      private var §9!3§:Sprite;
      
      private var §1!>§:Sprite;
      
      private var §[!>§:Number;
      
      private var §@k§:Number;
      
      private var §4!'§:Number;
      
      private var §5!N§:Boolean = true;
      
      private var §<B§:Boolean = true;
      
      private var §5!&§:§]!5§;
      
      private var §9L§:Number;
      
      public function §%m§(param1:String, param2:Number, param3:§``§, param4:Number)
      {
         this.§7k§ = new Vector.<§"K§>();
         super();
         this.§!v§ = param3;
         this.§@k§ = 0;
         this.§4!'§ = 0;
         this.§[!>§ = param2;
         this.§]!+§ = new Sprite();
         this.§9!3§ = new Sprite();
         this.§1!>§ = new Sprite();
         this.§9L§ = param4;
         this.§`[§(param1,param4);
      }
      
      public function get §4v§() : Boolean
      {
         return this.§5!N§;
      }
      
      public function get §;! §() : Sprite
      {
         return this.§1!>§;
      }
      
      public function get §>D§() : Sprite
      {
         return this.§]!+§;
      }
      
      public function get §5T§() : Sprite
      {
         return this.§9!3§;
      }
      
      protected function get textureManager() : §``§
      {
         return this.§!v§;
      }
      
      public function dispose() : void
      {
         this.§%! §();
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         if(this.§9!3§)
         {
            this.§9!3§.dispose();
            this.§9!3§ = null;
         }
         if(this.§1!>§)
         {
            this.§1!>§.dispose();
            this.§1!>§ = null;
         }
      }
      
      public function §2!+§() : Boolean
      {
         return this.§<B§;
      }
      
      public function § i§(param1:Boolean) : void
      {
         if(this.§<B§ == param1)
         {
            return;
         }
         this.§<B§ = param1;
         if(!param1)
         {
            this.§%! §();
         }
         else
         {
            this.§`[§(this.§[!`§.mName,this.§9L§);
         }
      }
      
      public function §+Z§() : String
      {
         return this.§[!`§.§,!7§;
      }
      
      private function §%! §() : void
      {
         while(this.§9!3§.numChildren > 0)
         {
            this.§9!3§.removeChildAt(0,true);
         }
         while(this.§]!+§.numChildren > 0)
         {
            this.§]!+§.removeChildAt(0,true);
         }
         while(this.§7k§.length > 0)
         {
            this.§7k§.pop().dispose();
         }
      }
      
      private function §`[§(param1:String, param2:Number) : void
      {
         var _loc4_:§?!Y§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§"K§ = null;
         this.§[!`§ = §1c§.§0E§(param1);
         if(this.§[!`§ == null)
         {
            §-"§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = § !M§.§9&§;
            this.§[!`§ = §1c§.§0E§(param1);
         }
         this.§]!+§.y = this.§[!>§;
         this.§9!3§.y = this.§[!>§;
         this.§1!>§.y = this.§[!>§;
         this.§5U§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§[!`§.§7k§.length)
         {
            _loc4_ = this.§[!`§.§7k§[_loc3_];
            if(!§9J§.§=n§ || !_loc4_.§0!]§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §"K§(_loc4_,_loc5_,this.§!v§,param2);
               this.§7k§.push(_loc6_);
               if(_loc6_.§6;§)
               {
                  this.§9!3§.addChild(_loc5_);
               }
               else
               {
                  this.§]!+§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§"O§)
            {
               this.§=!J§(parseInt(_loc4_.§"O§,16));
            }
            _loc3_++;
         }
      }
      
      private function §5U§() : void
      {
         var _loc1_:§6f§ = null;
         if(this.§[!`§.§@!V§)
         {
            this.§=!J§(this.§[!`§.§@!V§);
         }
         if(this.§[!`§.§&X§)
         {
            _loc1_ = this.§ +§(uint(this.§[!`§.§&X§));
            _loc1_.y = 0;
            this.§1!>§.addChild(_loc1_);
         }
      }
      
      protected function § +§(param1:uint) : §6f§
      {
         return new §6f§(4096,4096,param1);
      }
      
      private function §=!J§(param1:int) : void
      {
         if(§9J§.§?X§)
         {
            §9J§.§?X§.color = param1;
         }
      }
      
      public function §0P§(param1:String) : void
      {
         this.§%! §();
         §-"§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§`[§(param1,this.§9L§);
      }
      
      public function §!!`§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§"K§ = null;
         if(param1 == this.§5!N§)
         {
            return;
         }
         this.§5!N§ = param1;
         for each(_loc3_ in this.§7k§)
         {
            _loc3_.§!!`§(param1);
         }
      }
      
      public function §7!Y§() : void
      {
         if(§@E§.§,s§("CHANNEL_AMBIENT") == null || !§@E§.§,s§("CHANNEL_AMBIENT").§7!U§())
         {
            §@E§.playSound(this.§[!`§.§4[§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §>!>§() : void
      {
         §@E§.§1o§("CHANNEL_AMBIENT");
      }
      
      public function §6F§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§]!+§.numChildren)
         {
            _loc2_ = this.§]!+§.getChildAt(param1);
         }
         else if(param1 - this.§]!+§.numChildren < this.§9!3§.numChildren)
         {
            _loc2_ = this.§9!3§.getChildAt(param1 - this.§]!+§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §^!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§@k§ = param1;
         this.§4!'§ = param2;
         if(this.§7k§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§7k§.length)
            {
               this.§7k§[_loc3_].setSideScroll(this.§@k§,this.§4!'§);
               _loc3_++;
            }
         }
         if(this.§1!>§ != null)
         {
            this.§1!>§.scaleX = this.§1!>§.scaleY = 1 / §#C§.§#`§;
            this.§1!>§.x = -§#C§.§[x§ * (1 / §#C§.§#`§);
            this.§1!>§.y = this.§[!>§ - this.§4!'§;
         }
      }
      
      public function §8!c§() : String
      {
         return this.§[!`§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
