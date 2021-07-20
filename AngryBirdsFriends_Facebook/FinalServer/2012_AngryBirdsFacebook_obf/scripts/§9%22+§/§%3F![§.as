package §9"+§
{
   import §!!t§.§%!4§;
   import §!!t§.§+!9§;
   import §!!t§.§>"=§;
   import §#S§.§?!?§;
   import §+!F§.§1!D§;
   import §>s§.§+m§;
   import §>s§.§9!u§;
   import §[x§.§%3§;
   import §]!v§.§+!`§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   import §`u§.§5!-§;
   
   public class §?![§
   {
      
      public static const §-0§:Boolean = true;
       
      
      private var §=$§:§?!?§;
      
      protected var §^!C§:§%!4§;
      
      protected var §<$§:Vector.<§-M§>;
      
      private var §`Q§:Sprite;
      
      private var §,!U§:Sprite;
      
      private var §2"F§:Sprite;
      
      private var §6"=§:Number;
      
      private var §5!Q§:Number;
      
      private var §`?§:Number;
      
      private var §'Q§:Boolean = true;
      
      private var §@"?§:Boolean = true;
      
      private var §'"6§:§9!u§;
      
      private var §<"G§:Number;
      
      public function §?![§(param1:String, param2:Number, param3:§?!?§, param4:Number)
      {
         this.§<$§ = new Vector.<§-M§>();
         super();
         this.§=$§ = param3;
         this.§5!Q§ = 0;
         this.§`?§ = 0;
         this.§6"=§ = param2;
         this.§`Q§ = new Sprite();
         this.§,!U§ = new Sprite();
         this.§2"F§ = new Sprite();
         this.§<"G§ = param4;
         this.§<>§(param1,param4);
      }
      
      public function get §="I§() : Boolean
      {
         return this.§'Q§;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.§2"F§;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.§`Q§;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.§,!U§;
      }
      
      protected function get textureManager() : §?!?§
      {
         return this.§=$§;
      }
      
      public function dispose() : void
      {
         this.§ "4§();
         if(this.§`Q§)
         {
            this.§`Q§.dispose();
            this.§`Q§ = null;
         }
         if(this.§,!U§)
         {
            this.§,!U§.dispose();
            this.§,!U§ = null;
         }
         if(this.§2"F§)
         {
            this.§2"F§.dispose();
            this.§2"F§ = null;
         }
      }
      
      public function §-![§() : Boolean
      {
         return this.§@"?§;
      }
      
      public function §`!I§(param1:Boolean) : void
      {
         if(this.§@"?§ == param1)
         {
            return;
         }
         this.§@"?§ = param1;
         if(!param1)
         {
            this.§ "4§();
         }
         else
         {
            this.§<>§(this.§^!C§.mName,this.§<"G§);
         }
      }
      
      public function §2j§() : String
      {
         return this.§^!C§.§#"2§;
      }
      
      private function § "4§() : void
      {
         while(this.§,!U§.numChildren > 0)
         {
            this.§,!U§.removeChildAt(0,true);
         }
         while(this.§`Q§.numChildren > 0)
         {
            this.§`Q§.removeChildAt(0,true);
         }
         while(this.§<$§.length > 0)
         {
            this.§<$§.pop().dispose();
         }
      }
      
      protected function §?!h§(param1:§%!4§, param2:String) : void
      {
      }
      
      private function §<>§(param1:String, param2:Number) : void
      {
         var _loc4_:§>"=§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§-M§ = null;
         this.§^!C§ = §+!9§.§7b§(param1);
         if(this.§^!C§ == null)
         {
            §%3§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#!s§.§6I§;
            this.§^!C§ = §+!9§.§7b§(param1);
         }
         this.§?!h§(this.§^!C§,param1);
         this.§`Q§.y = this.§6"=§;
         this.§,!U§.y = this.§6"=§;
         this.§2"F§.y = this.§6"=§;
         this.§-!!§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!C§.§<$§.length)
         {
            _loc4_ = this.§^!C§.§<$§[_loc3_];
            if(!§1!D§.§9"I§ || !_loc4_.§6!?§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§8e§(_loc4_,_loc5_,this.§=$§,param2);
               this.§<$§.push(_loc6_);
               if(_loc6_.§!"2§)
               {
                  this.§,!U§.addChild(_loc5_);
               }
               else
               {
                  this.§`Q§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§7!-§)
            {
               this.§import§(parseInt(_loc4_.§7!-§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §8e§(param1:§>"=§, param2:Sprite, param3:§?!?§, param4:Number) : §-M§
      {
         return new §-M§(param1,param2,param3,param4);
      }
      
      private function §-!!§() : void
      {
         var _loc1_:§+!`§ = null;
         if(this.§^!C§.§@@§)
         {
            this.§import§(this.§^!C§.§@@§);
         }
         if(this.§^!C§.§if§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§^!C§.§if§));
            _loc1_.y = 0;
            this.§2"F§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §+!`§
      {
         return new §+!`§(4096,4096,param1);
      }
      
      protected function §import§(param1:int) : void
      {
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.color = param1;
         }
      }
      
      public function §5$§(param1:String, param2:§?!?§ = null) : void
      {
         if(param2)
         {
            this.§=$§ = param2;
         }
         this.§ "4§();
         §%3§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§<>§(param1,this.§<"G§);
      }
      
      public function §7"C§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§-M§ = null;
         if(param1 == this.§'Q§)
         {
            return;
         }
         this.§'Q§ = param1;
         for each(_loc3_ in this.§<$§)
         {
            _loc3_.§7"C§(param1);
         }
      }
      
      public function §#"I§() : void
      {
         if(§+m§.§ do§("CHANNEL_AMBIENT") == null || !§+m§.§ do§("CHANNEL_AMBIENT").§%![§())
         {
            §+m§.§]!N§(this.§^!C§.§if §,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §#"§() : void
      {
         §+m§.§5!P§("CHANNEL_AMBIENT");
      }
      
      public function §20§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§`Q§.numChildren)
         {
            _loc2_ = this.§`Q§.getChildAt(param1);
         }
         else if(param1 - this.§`Q§.numChildren < this.§,!U§.numChildren)
         {
            _loc2_ = this.§,!U§.getChildAt(param1 - this.§`Q§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§5!Q§ = param1;
         this.§`?§ = param2;
         if(this.§<$§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§<$§.length)
            {
               this.§<$§[_loc3_].setSideScroll(this.§5!Q§,this.§`?§);
               _loc3_++;
            }
         }
         if(this.§2"F§ != null)
         {
            this.§2"F§.scaleX = this.§2"F§.scaleY = 1 / §5!-§.§ m§;
            this.§2"F§.x = -§5!-§.§!"$§ * (1 / §5!-§.§ m§);
            this.§2"F§.y = this.§6"=§ - this.§`?§;
         }
      }
      
      public function §@!m§() : String
      {
         return this.§^!C§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
