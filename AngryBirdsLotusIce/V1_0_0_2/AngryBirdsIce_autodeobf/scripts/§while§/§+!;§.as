package §while§
{
   import §&V§.§,w§;
   import §'m§.§^S§;
   import §2W§.§4!$§;
   import §;f§.§^o§;
   import §>Z§.§2;§;
   import §>Z§.§`!A§;
   import §@!%§.§+8§;
   import §@!=§.§4G§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   import §^!1§.§6v§;
   import §^!1§.§?!3§;
   import §^!1§.§`!1§;
   
   public class §+!;§
   {
      
      public static const §<&§:Boolean = true;
       
      
      private var §^!&§:§,w§;
      
      private var §'?§:§`!1§;
      
      private var §9f§:Vector.<§;F§>;
      
      private var §3s§:Sprite;
      
      private var § f§:Sprite;
      
      private var §'!G§:Sprite;
      
      private var §3r§:Number;
      
      private var §&!@§:Number;
      
      private var §1!D§:Number;
      
      private var §=A§:Boolean = true;
      
      private var §5!+§:Boolean = true;
      
      private var §-<§:§`!A§;
      
      private var §=!§:Number;
      
      public function §+!;§(param1:String, param2:Number, param3:§,w§, param4:Number)
      {
         this.§9f§ = new Vector.<§;F§>();
         super();
         this.§^!&§ = param3;
         this.§&!@§ = 0;
         this.§1!D§ = 0;
         this.§3r§ = param2;
         this.§3s§ = new Sprite();
         this.§ f§ = new Sprite();
         this.§'!G§ = new Sprite();
         this.§=!§ = param4;
         this.§>T§(param1,param4);
      }
      
      public function get §<U§() : Boolean
      {
         return this.§=A§;
      }
      
      public function get §%Z§() : Sprite
      {
         return this.§'!G§;
      }
      
      public function get §8<§() : Sprite
      {
         return this.§3s§;
      }
      
      public function get §9!D§() : Sprite
      {
         return this.§ f§;
      }
      
      protected function get textureManager() : §,w§
      {
         return this.§^!&§;
      }
      
      public function dispose() : void
      {
         this.§8a§();
         if(this.§3s§)
         {
            this.§3s§.dispose();
            this.§3s§ = null;
         }
         if(this.§ f§)
         {
            this.§ f§.dispose();
            this.§ f§ = null;
         }
         if(this.§'!G§)
         {
            this.§'!G§.dispose();
            this.§'!G§ = null;
         }
      }
      
      public function §3v§() : Boolean
      {
         return this.§5!+§;
      }
      
      public function §5q§(param1:Boolean) : void
      {
         if(this.§5!+§ == param1)
         {
            return;
         }
         this.§5!+§ = param1;
         if(!param1)
         {
            this.§8a§();
         }
         else
         {
            this.§>T§(this.§'?§.mName,this.§=!§);
         }
      }
      
      public function §[!F§() : String
      {
         return this.§'?§.§`t§;
      }
      
      private function §8a§() : void
      {
         while(this.§ f§.numChildren > 0)
         {
            this.§ f§.removeChildAt(0,true);
         }
         while(this.§3s§.numChildren > 0)
         {
            this.§3s§.removeChildAt(0,true);
         }
         while(this.§9f§.length > 0)
         {
            this.§9f§.pop().dispose();
         }
      }
      
      private function §>T§(param1:String, param2:Number) : void
      {
         var _loc4_:§?!3§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§;F§ = null;
         this.§'?§ = §6v§.§7i§(param1);
         if(this.§'?§ == null)
         {
            §^S§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §^o§.§'M§;
            this.§'?§ = §6v§.§7i§(param1);
         }
         this.§3s§.y = this.§3r§;
         this.§ f§.y = this.§3r§;
         this.§'!G§.y = this.§3r§;
         this.§`c§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'?§.§9f§.length)
         {
            _loc4_ = this.§'?§.§9f§[_loc3_];
            if(!§+8§.§-]§ || !_loc4_.§@w§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §;F§(_loc4_,_loc5_,this.§^!&§,param2);
               this.§9f§.push(_loc6_);
               if(_loc6_.§?;§)
               {
                  this.§ f§.addChild(_loc5_);
               }
               else
               {
                  this.§3s§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'c§)
            {
               this.§5X§(parseInt(_loc4_.§'c§,16));
            }
            _loc3_++;
         }
      }
      
      private function §`c§() : void
      {
         var _loc1_:§4G§ = null;
         if(this.§'?§.§1!B§)
         {
            this.§5X§(this.§'?§.§1!B§);
         }
         if(this.§'?§.§?d§)
         {
            _loc1_ = this.§10§(uint(this.§'?§.§?d§));
            _loc1_.y = 0;
            this.§'!G§.addChild(_loc1_);
         }
      }
      
      protected function §10§(param1:uint) : §4G§
      {
         return new §4G§(4096,4096,param1);
      }
      
      private function §5X§(param1:int) : void
      {
         if(§+8§.§-2§)
         {
            §+8§.§-2§.color = param1;
         }
      }
      
      public function §;D§(param1:String) : void
      {
         this.§8a§();
         §^S§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§>T§(param1,this.§=!§);
      }
      
      public function §"3§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§;F§ = null;
         if(param1 == this.§=A§)
         {
            return;
         }
         this.§=A§ = param1;
         for each(_loc3_ in this.§9f§)
         {
            _loc3_.§"3§(param1);
         }
      }
      
      public function §1!#§() : void
      {
         if(§2;§.§1Z§("CHANNEL_AMBIENT") == null || !§2;§.§1Z§("CHANNEL_AMBIENT").§'!,§())
         {
            §2;§.playSound(this.§'?§.§#n§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §^Y§() : void
      {
         §2;§.§%j§("CHANNEL_AMBIENT");
      }
      
      public function §%!C§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§3s§.numChildren)
         {
            _loc2_ = this.§3s§.getChildAt(param1);
         }
         else if(param1 - this.§3s§.numChildren < this.§ f§.numChildren)
         {
            _loc2_ = this.§ f§.getChildAt(param1 - this.§3s§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §4!A§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§&!@§ = param1;
         this.§1!D§ = param2;
         if(this.§9f§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9f§.length)
            {
               this.§9f§[_loc3_].setSideScroll(this.§&!@§,this.§1!D§);
               _loc3_++;
            }
         }
         if(this.§'!G§ != null)
         {
            this.§'!G§.scaleX = this.§'!G§.scaleY = 1 / §4!$§.§2y§;
            this.§'!G§.x = -§4!$§.§"u§ * (1 / §4!$§.§2y§);
            this.§'!G§.y = this.§3r§ - this.§1!D§;
         }
      }
      
      public function §%x§() : String
      {
         return this.§'?§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
