package §,p§
{
   import § !3§.§!X§;
   import §!v§.§7[§;
   import §#;§.§42§;
   import §#;§.§?!,§;
   import §0!&§.§!'§;
   import §1!+§.§-'§;
   import §1!+§.§1![§;
   import §1!+§.§`!N§;
   import §9!4§.§&l§;
   import §=!E§.§,!@§;
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §]!C§.§0!d§;
   
   public class §=u§
   {
      
      public static const §?n§:Boolean = true;
       
      
      private var §>8§:§0!d§;
      
      protected var §<!a§:§`!N§;
      
      protected var §3!L§:Vector.<§2]§>;
      
      private var §3!9§:Sprite;
      
      private var §[!]§:Sprite;
      
      private var §]!"§:Sprite;
      
      private var §?6§:Number;
      
      private var §3_§:Number;
      
      private var §2o§:Number;
      
      private var §0!O§:Boolean = true;
      
      private var §?m§:Boolean = true;
      
      private var §7K§:§?!,§;
      
      private var §[D§:Number;
      
      public function §=u§(param1:String, param2:Number, param3:§0!d§, param4:Number)
      {
         this.§3!L§ = new Vector.<§2]§>();
         super();
         this.§>8§ = param3;
         this.§3_§ = 0;
         this.§2o§ = 0;
         this.§?6§ = param2;
         this.§3!9§ = new Sprite();
         this.§[!]§ = new Sprite();
         this.§]!"§ = new Sprite();
         this.§[D§ = param4;
         this.§,d§(param1,param4);
      }
      
      public function get §1t§() : Boolean
      {
         return this.§0!O§;
      }
      
      public function get §%!J§() : Sprite
      {
         return this.§]!"§;
      }
      
      public function get §,!I§() : Sprite
      {
         return this.§3!9§;
      }
      
      public function get §8?§() : Sprite
      {
         return this.§[!]§;
      }
      
      protected function get textureManager() : §0!d§
      {
         return this.§>8§;
      }
      
      public function dispose() : void
      {
         this.§<X§();
         if(this.§3!9§)
         {
            this.§3!9§.dispose();
            this.§3!9§ = null;
         }
         if(this.§[!]§)
         {
            this.§[!]§.dispose();
            this.§[!]§ = null;
         }
         if(this.§]!"§)
         {
            this.§]!"§.dispose();
            this.§]!"§ = null;
         }
      }
      
      public function §?i§() : Boolean
      {
         return this.§?m§;
      }
      
      public function §5h§(param1:Boolean) : void
      {
         if(this.§?m§ == param1)
         {
            return;
         }
         this.§?m§ = param1;
         if(!param1)
         {
            this.§<X§();
         }
         else
         {
            this.§,d§(this.§<!a§.mName,this.§[D§);
         }
      }
      
      public function §#!P§() : String
      {
         return this.§<!a§.§5+§;
      }
      
      private function §<X§() : void
      {
         while(this.§[!]§.numChildren > 0)
         {
            this.§[!]§.removeChildAt(0,true);
         }
         while(this.§3!9§.numChildren > 0)
         {
            this.§3!9§.removeChildAt(0,true);
         }
         while(this.§3!L§.length > 0)
         {
            this.§3!L§.pop().dispose();
         }
      }
      
      protected function §+!3§(param1:§`!N§, param2:String) : void
      {
      }
      
      private function §,d§(param1:String, param2:Number) : void
      {
         var _loc4_:§-'§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2]§ = null;
         this.§<!a§ = §1![§.§4r§(param1);
         if(this.§<!a§ == null)
         {
            §!X§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!'§.§5[§;
            this.§<!a§ = §1![§.§4r§(param1);
         }
         this.§+!3§(this.§<!a§,param1);
         this.§3!9§.y = this.§?6§;
         this.§[!]§.y = this.§?6§;
         this.§]!"§.y = this.§?6§;
         this.§@!J§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§<!a§.§3!L§.length)
         {
            _loc4_ = this.§<!a§.§3!L§[_loc3_];
            if(!§7[§.§7c§ || !_loc4_.§?I§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§!W§(_loc4_,_loc5_,this.§>8§,param2);
               this.§3!L§.push(_loc6_);
               if(_loc6_.§8!a§)
               {
                  this.§[!]§.addChild(_loc5_);
               }
               else
               {
                  this.§3!9§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§`f§)
            {
               this.§!J§(parseInt(_loc4_.§`f§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §!W§(param1:§-'§, param2:Sprite, param3:§0!d§, param4:Number) : §2]§
      {
         return new §2]§(param1,param2,param3,param4);
      }
      
      private function §@!J§() : void
      {
         var _loc1_:§,!@§ = null;
         if(this.§<!a§.§1x§)
         {
            this.§!J§(this.§<!a§.§1x§);
         }
         if(this.§<!a§.§?x§)
         {
            _loc1_ = this.§0!Q§(uint(this.§<!a§.§?x§));
            _loc1_.y = 0;
            this.§]!"§.addChild(_loc1_);
         }
      }
      
      protected function §0!Q§(param1:uint) : §,!@§
      {
         return new §,!@§(4096,4096,param1);
      }
      
      protected function §!J§(param1:int) : void
      {
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.color = param1;
         }
      }
      
      public function §>n§(param1:String) : void
      {
         this.§<X§();
         §!X§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§,d§(param1,this.§[D§);
      }
      
      public function §[!N§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2]§ = null;
         if(param1 == this.§0!O§)
         {
            return;
         }
         this.§0!O§ = param1;
         for each(_loc3_ in this.§3!L§)
         {
            _loc3_.§[!N§(param1);
         }
      }
      
      public function §7!Z§() : void
      {
         if(§42§.§`v§("CHANNEL_AMBIENT") == null || !§42§.§`v§("CHANNEL_AMBIENT").§6!W§())
         {
            §42§.§;!`§(this.§<!a§.§!o§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §!!^§() : void
      {
         §42§.§`!F§("CHANNEL_AMBIENT");
      }
      
      public function §?c§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§3!9§.numChildren)
         {
            _loc2_ = this.§3!9§.getChildAt(param1);
         }
         else if(param1 - this.§3!9§.numChildren < this.§[!]§.numChildren)
         {
            _loc2_ = this.§[!]§.getChildAt(param1 - this.§3!9§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §5r§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§3_§ = param1;
         this.§2o§ = param2;
         if(this.§3!L§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§3!L§.length)
            {
               this.§3!L§[_loc3_].setSideScroll(this.§3_§,this.§2o§);
               _loc3_++;
            }
         }
         if(this.§]!"§ != null)
         {
            this.§]!"§.scaleX = this.§]!"§.scaleY = 1 / §&l§.§3H§;
            this.§]!"§.x = -§&l§.§in § * (1 / §&l§.§3H§);
            this.§]!"§.y = this.§?6§ - this.§2o§;
         }
      }
      
      public function §9l§() : String
      {
         return this.§<!a§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
