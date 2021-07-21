package §1=§
{
   import § !r§.§`![§;
   import §-!0§.§2! §;
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1?§.§#!C§;
   import §1?§.§+!§;
   import §=U§.§3p§;
   import §@!X§.§7j§;
   import §]Z§.§,d§;
   import §]Z§.§0!H§;
   import §]Z§.§7!n§;
   import §`a§.§ !U§;
   
   public class §-d§
   {
      
      public static const §%k§:Boolean = true;
       
      
      private var §>!S§:§3p§;
      
      private var §+x§:§,d§;
      
      private var §!4§:Vector.<§?!8§>;
      
      private var §2!N§:Sprite;
      
      private var §@S§:Sprite;
      
      private var §4!b§:Sprite;
      
      private var §^j§:Number;
      
      private var §2!G§:Number;
      
      private var §5!_§:Number;
      
      private var §=!E§:Boolean = true;
      
      private var § I§:Boolean = true;
      
      private var §%!p§:§#!C§;
      
      private var §0<§:Number;
      
      public function §-d§(param1:String, param2:Number, param3:§3p§, param4:Number)
      {
         this.§!4§ = new Vector.<§?!8§>();
         super();
         this.§>!S§ = param3;
         this.§2!G§ = 0;
         this.§5!_§ = 0;
         this.§^j§ = param2;
         this.§2!N§ = new Sprite();
         this.§@S§ = new Sprite();
         this.§4!b§ = new Sprite();
         this.§0<§ = param4;
         this.§!A§(param1,param4);
      }
      
      public function get §?!f§() : Boolean
      {
         return this.§=!E§;
      }
      
      public function get §@!-§() : Sprite
      {
         return this.§4!b§;
      }
      
      public function get §?[§() : Sprite
      {
         return this.§2!N§;
      }
      
      public function get §4`§() : Sprite
      {
         return this.§@S§;
      }
      
      protected function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function dispose() : void
      {
         this.§-!J§();
         if(this.§2!N§)
         {
            this.§2!N§.dispose();
            this.§2!N§ = null;
         }
         if(this.§@S§)
         {
            this.§@S§.dispose();
            this.§@S§ = null;
         }
         if(this.§4!b§)
         {
            this.§4!b§.dispose();
            this.§4!b§ = null;
         }
      }
      
      public function §2Q§() : Boolean
      {
         return this.§ I§;
      }
      
      public function §-I§(param1:Boolean) : void
      {
         if(this.§ I§ == param1)
         {
            return;
         }
         this.§ I§ = param1;
         if(!param1)
         {
            this.§-!J§();
         }
         else
         {
            this.§!A§(this.§+x§.mName,this.§0<§);
         }
      }
      
      public function §'!e§() : String
      {
         return this.§+x§.§!!Z§;
      }
      
      private function §-!J§() : void
      {
         while(this.§@S§.numChildren > 0)
         {
            this.§@S§.removeChildAt(0,true);
         }
         while(this.§2!N§.numChildren > 0)
         {
            this.§2!N§.removeChildAt(0,true);
         }
         while(this.§!4§.length > 0)
         {
            this.§!4§.pop().dispose();
         }
      }
      
      private function §!A§(param1:String, param2:Number) : void
      {
         var _loc4_:§0!H§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§?!8§ = null;
         this.§+x§ = §7!n§.§&!c§(param1);
         if(this.§+x§ == null)
         {
            §`![§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §2! §.§4!l§;
            this.§+x§ = §7!n§.§&!c§(param1);
         }
         this.§2!N§.y = this.§^j§;
         this.§@S§.y = this.§^j§;
         this.§4!b§.y = this.§^j§;
         this.§%!r§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§+x§.§!4§.length)
         {
            _loc4_ = this.§+x§.§!4§[_loc3_];
            if(!§7j§.§?!X§ || !_loc4_.§;A§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §?!8§(_loc4_,_loc5_,this.§>!S§,param2);
               this.§!4§.push(_loc6_);
               if(_loc6_.§,!b§)
               {
                  this.§@S§.addChild(_loc5_);
               }
               else
               {
                  this.§2!N§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§43§)
            {
               this.§#!&§(parseInt(_loc4_.§43§,16));
            }
            _loc3_++;
         }
      }
      
      private function §%!r§() : void
      {
         var _loc1_:§8!p§ = null;
         if(this.§+x§.§94§)
         {
            this.§#!&§(this.§+x§.§94§);
         }
         if(this.§+x§.§,!u§)
         {
            _loc1_ = this.§78§(uint(this.§+x§.§,!u§));
            _loc1_.y = 0;
            this.§4!b§.addChild(_loc1_);
         }
      }
      
      protected function §78§(param1:uint) : §8!p§
      {
         return new §8!p§(4096,4096,param1);
      }
      
      private function §#!&§(param1:int) : void
      {
         if(§7j§.§else§)
         {
            §7j§.§else§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§-!J§();
         §`![§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§!A§(param1,this.§0<§);
      }
      
      public function §6!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§?!8§ = null;
         if(param1 == this.§=!E§)
         {
            return;
         }
         this.§=!E§ = param1;
         for each(_loc3_ in this.§!4§)
         {
            _loc3_.§6!Y§(param1);
         }
      }
      
      public function §[!<§() : void
      {
         if(§+!§.§%!6§("CHANNEL_AMBIENT") == null || !§+!§.§%!6§("CHANNEL_AMBIENT").§6e§())
         {
            §+!§.§4c§(this.§+x§.§,'§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §8!n§() : void
      {
         §+!§.§+!h§("CHANNEL_AMBIENT");
      }
      
      public function §]h§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§2!N§.numChildren)
         {
            _loc2_ = this.§2!N§.getChildAt(param1);
         }
         else if(param1 - this.§2!N§.numChildren < this.§@S§.numChildren)
         {
            _loc2_ = this.§@S§.getChildAt(param1 - this.§2!N§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§2!G§ = param1;
         this.§5!_§ = param2;
         if(this.§!4§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§!4§.length)
            {
               this.§!4§[_loc3_].setSideScroll(this.§2!G§,this.§5!_§);
               _loc3_++;
            }
         }
         if(this.§4!b§ != null)
         {
            this.§4!b§.scaleX = this.§4!b§.scaleY = 1 / § !U§.§#!-§;
            this.§4!b§.x = -§ !U§.§@B§ * (1 / § !U§.§#!-§);
            this.§4!b§.y = this.§^j§ - this.§5!_§;
         }
      }
      
      public function §%N§() : String
      {
         return this.§+x§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
