package §7!?§
{
   import §%!^§.§"!7§;
   import §&!'§.§'!f§;
   import §&!9§.§7!D§;
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §+&§.§?y§;
   import §+x§.§-6§;
   import §+x§.§9a§;
   import §1!9§.§!9§;
   import §1!9§.§2L§;
   import §1!9§.§<f§;
   import §48§.§4a§;
   import §^=§.§8!6§;
   
   public class §6[§
   {
      
      public static const §6!!§:Boolean = true;
       
      
      private var §<d§:§4a§;
      
      protected var §+W§:§<f§;
      
      private var §4!S§:Vector.<§+>§>;
      
      private var §,!Y§:Sprite;
      
      private var §63§:Sprite;
      
      private var §2!§:Sprite;
      
      private var §,V§:Number;
      
      private var § !,§:Number;
      
      private var §+!e§:Number;
      
      private var §+%§:Boolean = true;
      
      private var §^0§:Boolean = true;
      
      private var §^"§:§9a§;
      
      private var §+!B§:Number;
      
      public function §6[§(param1:String, param2:Number, param3:§4a§, param4:Number)
      {
         this.§4!S§ = new Vector.<§+>§>();
         super();
         this.§<d§ = param3;
         this.§ !,§ = 0;
         this.§+!e§ = 0;
         this.§,V§ = param2;
         this.§,!Y§ = new Sprite();
         this.§63§ = new Sprite();
         this.§2!§ = new Sprite();
         this.§+!B§ = param4;
         this.§%!N§(param1,param4);
      }
      
      public function get §[!>§() : Boolean
      {
         return this.§+%§;
      }
      
      public function get §6q§() : Sprite
      {
         return this.§2!§;
      }
      
      public function get §'!5§() : Sprite
      {
         return this.§,!Y§;
      }
      
      public function get §'S§() : Sprite
      {
         return this.§63§;
      }
      
      protected function get textureManager() : §4a§
      {
         return this.§<d§;
      }
      
      public function dispose() : void
      {
         this.§`p§();
         if(this.§,!Y§)
         {
            this.§,!Y§.dispose();
            this.§,!Y§ = null;
         }
         if(this.§63§)
         {
            this.§63§.dispose();
            this.§63§ = null;
         }
         if(this.§2!§)
         {
            this.§2!§.dispose();
            this.§2!§ = null;
         }
      }
      
      public function §6n§() : Boolean
      {
         return this.§^0§;
      }
      
      public function §[!&§(param1:Boolean) : void
      {
         if(this.§^0§ == param1)
         {
            return;
         }
         this.§^0§ = param1;
         if(!param1)
         {
            this.§`p§();
         }
         else
         {
            this.§%!N§(this.§+W§.mName,this.§+!B§);
         }
      }
      
      public function §6!N§() : String
      {
         return this.§+W§.§#! §;
      }
      
      private function §`p§() : void
      {
         while(this.§63§.numChildren > 0)
         {
            this.§63§.removeChildAt(0,true);
         }
         while(this.§,!Y§.numChildren > 0)
         {
            this.§,!Y§.removeChildAt(0,true);
         }
         while(this.§4!S§.length > 0)
         {
            this.§4!S§.pop().dispose();
         }
      }
      
      protected function §,q§(param1:§<f§, param2:String) : void
      {
      }
      
      private function §%!N§(param1:String, param2:Number) : void
      {
         var _loc4_:§2L§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§+>§ = null;
         this.§+W§ = §!9§.§-Q§(param1);
         if(this.§+W§ == null)
         {
            §8!6§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §"!7§.§,!V§;
            this.§+W§ = §!9§.§-Q§(param1);
         }
         this.§,q§(this.§+W§,param1);
         this.§,!Y§.y = this.§,V§;
         this.§63§.y = this.§,V§;
         this.§2!§.y = this.§,V§;
         this.§@4§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§+W§.§4!S§.length)
         {
            _loc4_ = this.§+W§.§4!S§[_loc3_];
            if(!§?y§.§+r§ || !_loc4_.§+!M§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §+>§(_loc4_,_loc5_,this.§<d§,param2);
               this.§4!S§.push(_loc6_);
               if(_loc6_.§`#§)
               {
                  this.§63§.addChild(_loc5_);
               }
               else
               {
                  this.§,!Y§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§+!T§)
            {
               this.§2!$§(parseInt(_loc4_.§+!T§,16));
            }
            _loc3_++;
         }
      }
      
      private function §@4§() : void
      {
         var _loc1_:§7!D§ = null;
         if(this.§+W§.§;!$§)
         {
            this.§2!$§(this.§+W§.§;!$§);
         }
         if(this.§+W§.§,$§)
         {
            _loc1_ = this.§>!B§(uint(this.§+W§.§,$§));
            _loc1_.y = 0;
            this.§2!§.addChild(_loc1_);
         }
      }
      
      protected function §>!B§(param1:uint) : §7!D§
      {
         return new §7!D§(4096,4096,param1);
      }
      
      protected function §2!$§(param1:int) : void
      {
         if(§?y§.§,u§)
         {
            §?y§.§,u§.color = param1;
         }
      }
      
      public function §@!U§(param1:String) : void
      {
         this.§`p§();
         §8!6§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§%!N§(param1,this.§+!B§);
      }
      
      public function §,!!§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§+>§ = null;
         if(param1 == this.§+%§)
         {
            return;
         }
         this.§+%§ = param1;
         for each(_loc3_ in this.§4!S§)
         {
            _loc3_.§,!!§(param1);
         }
      }
      
      public function §8p§() : void
      {
         if(§-6§.§6S§("CHANNEL_AMBIENT") == null || !§-6§.§6S§("CHANNEL_AMBIENT").§?!]§())
         {
            §-6§.§6!#§(this.§+W§.§`!8§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §<Z§() : void
      {
         §-6§.§^Z§("CHANNEL_AMBIENT");
      }
      
      public function §5!e§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§,!Y§.numChildren)
         {
            _loc2_ = this.§,!Y§.getChildAt(param1);
         }
         else if(param1 - this.§,!Y§.numChildren < this.§63§.numChildren)
         {
            _loc2_ = this.§63§.getChildAt(param1 - this.§,!Y§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §,!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ !,§ = param1;
         this.§+!e§ = param2;
         if(this.§4!S§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4!S§.length)
            {
               this.§4!S§[_loc3_].setSideScroll(this.§ !,§,this.§+!e§);
               _loc3_++;
            }
         }
         if(this.§2!§ != null)
         {
            this.§2!§.scaleX = this.§2!§.scaleY = 1 / §'!f§.§,!`§;
            this.§2!§.x = -§'!f§.§]<§ * (1 / §'!f§.§,!`§);
            this.§2!§.y = this.§,V§ - this.§+!e§;
         }
      }
      
      public function §=!?§() : String
      {
         return this.§+W§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
