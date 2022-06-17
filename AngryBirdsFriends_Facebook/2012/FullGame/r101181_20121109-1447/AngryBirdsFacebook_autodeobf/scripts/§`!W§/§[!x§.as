package §`!W§
{
   import §#!e§.§1"B§;
   import §'6§.§"]§;
   import §1!$§.§!"?§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§,!p§;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   import §6o§.§+!k§;
   import §<u§.§%"8§;
   import §<u§.§6U§;
   import §<u§.§8,§;
   import §[!"§.§&0§;
   
   public class §[!x§
   {
      
      public static const §50§:Boolean = true;
       
      
      private var § !@§:§0Y§;
      
      protected var §1,§:§6U§;
      
      protected var §9!1§:Vector.<§<W§>;
      
      private var §>"$§:Sprite;
      
      private var §#"%§:Sprite;
      
      private var §?&§:Sprite;
      
      private var §@%§:Number;
      
      private var §>!'§:Number;
      
      private var §"&§:Number;
      
      private var §7!3§:Boolean = true;
      
      private var §`!5§:Boolean = true;
      
      private var §>6§:§,!p§;
      
      private var §!"-§:Number;
      
      public function §[!x§(param1:String, param2:Number, param3:§0Y§, param4:Number)
      {
         this.§9!1§ = new Vector.<§<W§>();
         super();
         this.§ !@§ = param3;
         this.§>!'§ = 0;
         this.§"&§ = 0;
         this.§@%§ = param2;
         this.§>"$§ = new Sprite();
         this.§#"%§ = new Sprite();
         this.§?&§ = new Sprite();
         this.§!"-§ = param4;
         this.§?"B§(param1,param4);
      }
      
      public function get §,D§() : Boolean
      {
         return this.§7!3§;
      }
      
      public function get groundSprite() : Sprite
      {
         return this.§?&§;
      }
      
      public function get backgroundLayersSprite() : Sprite
      {
         return this.§>"$§;
      }
      
      public function get foregroundLayersSprite() : Sprite
      {
         return this.§#"%§;
      }
      
      protected function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function dispose() : void
      {
         this.§>V§();
         if(this.§>"$§)
         {
            this.§>"$§.dispose();
            this.§>"$§ = null;
         }
         if(this.§#"%§)
         {
            this.§#"%§.dispose();
            this.§#"%§ = null;
         }
         if(this.§?&§)
         {
            this.§?&§.dispose();
            this.§?&§ = null;
         }
      }
      
      public function §=!p§() : Boolean
      {
         return this.§`!5§;
      }
      
      public function §3H§(param1:Boolean) : void
      {
         if(this.§`!5§ == param1)
         {
            return;
         }
         this.§`!5§ = param1;
         if(!param1)
         {
            this.§>V§();
         }
         else
         {
            this.§?"B§(this.§1,§.mName,this.§!"-§);
         }
      }
      
      public function §+!L§() : String
      {
         return this.§1,§.§ !e§;
      }
      
      private function §>V§() : void
      {
         while(this.§#"%§.numChildren > 0)
         {
            this.§#"%§.removeChildAt(0,true);
         }
         while(this.§>"$§.numChildren > 0)
         {
            this.§>"$§.removeChildAt(0,true);
         }
         while(this.§9!1§.length > 0)
         {
            this.§9!1§.pop().dispose();
         }
      }
      
      protected function §1!z§(param1:§6U§, param2:String) : void
      {
      }
      
      private function §?"B§(param1:String, param2:Number) : void
      {
         var _loc4_:§%"8§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§<W§ = null;
         this.§1,§ = §8,§.§0>§(param1);
         if(this.§1,§ == null)
         {
            §+!k§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §1"B§.§5!5§;
            this.§1,§ = §8,§.§0>§(param1);
         }
         this.§1!z§(this.§1,§,param1);
         this.§>"$§.y = this.§@%§;
         this.§#"%§.y = this.§@%§;
         this.§?&§.y = this.§@%§;
         this.§-c§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§1,§.§9!1§.length)
         {
            _loc4_ = this.§1,§.§9!1§[_loc3_];
            if(!§"]§.§4"!§ || !_loc4_.§7!z§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§%F§(_loc4_,_loc5_,this.§ !@§,param2);
               this.§9!1§.push(_loc6_);
               if(_loc6_.§]p§)
               {
                  this.§#"%§.addChild(_loc5_);
               }
               else
               {
                  this.§>"$§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§2"+§)
            {
               this.§!e§(parseInt(_loc4_.§2"+§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §%F§(param1:§%"8§, param2:Sprite, param3:§0Y§, param4:Number) : §<W§
      {
         return new §<W§(param1,param2,param3,param4);
      }
      
      private function §-c§() : void
      {
         var _loc1_:§!"?§ = null;
         if(this.§1,§.§+g§)
         {
            this.§!e§(this.§1,§.§+g§);
         }
         if(this.§1,§.§;!?§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§1,§.§;!?§));
            _loc1_.y = 0;
            this.§?&§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §!"?§
      {
         return new §!"?§(4096,4096,param1);
      }
      
      protected function §!e§(param1:int) : void
      {
         if(§"]§.§!X§)
         {
            §"]§.§!X§.color = param1;
         }
      }
      
      public function §4V§(param1:String) : void
      {
         this.§>V§();
         §+!k§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§?"B§(param1,this.§!"-§);
      }
      
      public function §'h§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§<W§ = null;
         if(param1 == this.§7!3§)
         {
            return;
         }
         this.§7!3§ = param1;
         for each(_loc3_ in this.§9!1§)
         {
            _loc3_.§'h§(param1);
         }
      }
      
      public function §7!a§() : void
      {
         if(§>!E§.§"h§("CHANNEL_AMBIENT") == null || !§>!E§.§"h§("CHANNEL_AMBIENT").§5%§())
         {
            §>!E§.§7N§(this.§1,§.§&"<§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §^!P§() : void
      {
         §>!E§.§1!;§("CHANNEL_AMBIENT");
      }
      
      public function §+8§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§>"$§.numChildren)
         {
            _loc2_ = this.§>"$§.getChildAt(param1);
         }
         else if(param1 - this.§>"$§.numChildren < this.§#"%§.numChildren)
         {
            _loc2_ = this.§#"%§.getChildAt(param1 - this.§>"$§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§>!'§ = param1;
         this.§"&§ = param2;
         if(this.§9!1§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9!1§.length)
            {
               this.§9!1§[_loc3_].setSideScroll(this.§>!'§,this.§"&§);
               _loc3_++;
            }
         }
         if(this.§?&§ != null)
         {
            this.§?&§.scaleX = this.§?&§.scaleY = 1 / §&0§.§8!F§;
            this.§?&§.x = -§&0§.§0"&§ * (1 / §&0§.§8!F§);
            this.§?&§.y = this.§@%§ - this.§"&§;
         }
      }
      
      public function §6S§() : String
      {
         return this.§1,§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
