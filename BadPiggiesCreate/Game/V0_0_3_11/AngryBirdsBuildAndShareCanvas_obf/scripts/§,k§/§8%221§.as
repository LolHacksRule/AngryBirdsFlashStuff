package §,k§
{
   import §+%§.§5!F§;
   import §0P§.§!!l§;
   import §1!Y§.§5!W§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §1"3§.§`"0§;
   import §6d§.§&`§;
   import §6d§.§,"9§;
   import §6d§.§5!0§;
   import §;X§.§ do§;
   import §?!k§.§&p§;
   import §?!k§.§0!t§;
   import §[_§.§2!B§;
   
   public class §8"1§
   {
      
      public static const §#!E§:Boolean = true;
       
      
      private var §3!W§:§2!B§;
      
      protected var §,m§:§5!0§;
      
      protected var §5!8§:Vector.<§3!8§>;
      
      private var §<!a§:Sprite;
      
      private var §+!@§:Sprite;
      
      private var §2!m§:Sprite;
      
      private var §2"5§:Number;
      
      private var §3!1§:Number;
      
      private var §<f§:Number;
      
      private var §7B§:Boolean = true;
      
      private var §[B§:Boolean = true;
      
      private var §+"4§:§&p§;
      
      private var §9!I§:Number;
      
      public function §8"1§(param1:String, param2:Number, param3:§2!B§, param4:Number)
      {
         this.§5!8§ = new Vector.<§3!8§>();
         super();
         this.§3!W§ = param3;
         this.§3!1§ = 0;
         this.§<f§ = 0;
         this.§2"5§ = param2;
         this.§<!a§ = new Sprite();
         this.§+!@§ = new Sprite();
         this.§2!m§ = new Sprite();
         this.§9!I§ = param4;
         this.§+"&§(param1,param4);
      }
      
      public function get §#!p§() : Boolean
      {
         return this.§7B§;
      }
      
      public function get §>!E§() : Sprite
      {
         return this.§2!m§;
      }
      
      public function get §];§() : Sprite
      {
         return this.§<!a§;
      }
      
      public function get §?5§() : Sprite
      {
         return this.§+!@§;
      }
      
      protected function get §while§() : §2!B§
      {
         return this.§3!W§;
      }
      
      public function dispose() : void
      {
         this.§,?§();
         if(this.§<!a§)
         {
            this.§<!a§.dispose();
            this.§<!a§ = null;
         }
         if(this.§+!@§)
         {
            this.§+!@§.dispose();
            this.§+!@§ = null;
         }
         if(this.§2!m§)
         {
            this.§2!m§.dispose();
            this.§2!m§ = null;
         }
      }
      
      public function §1S§() : Boolean
      {
         return this.§[B§;
      }
      
      public function §,L§(param1:Boolean) : void
      {
         if(this.§[B§ == param1)
         {
            return;
         }
         this.§[B§ = param1;
         if(!param1)
         {
            this.§,?§();
         }
         else
         {
            this.§+"&§(this.§,m§.mName,this.§9!I§);
         }
      }
      
      public function §'!A§() : String
      {
         return this.§,m§.§`B§;
      }
      
      private function §,?§() : void
      {
         while(this.§+!@§.numChildren > 0)
         {
            this.§+!@§.removeChildAt(0,true);
         }
         while(this.§<!a§.numChildren > 0)
         {
            this.§<!a§.removeChildAt(0,true);
         }
         while(this.§5!8§.length > 0)
         {
            this.§5!8§.pop().dispose();
         }
      }
      
      protected function §2!@§(param1:§5!0§, param2:String) : void
      {
      }
      
      private function §+"&§(param1:String, param2:Number) : void
      {
         var _loc4_:§,"9§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§3!8§ = null;
         this.§,m§ = §&`§.§2I§(param1);
         if(this.§,m§ == null)
         {
            § do§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §5!F§.§ true§;
            this.§,m§ = §&`§.§2I§(param1);
         }
         this.§2!@§(this.§,m§,param1);
         this.§<!a§.y = this.§2"5§;
         this.§+!@§.y = this.§2"5§;
         this.§2!m§.y = this.§2"5§;
         this.§0t§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§,m§.§5!8§.length)
         {
            _loc4_ = this.§,m§.§5!8§[_loc3_];
            if(!§!!l§.§`!8§ || !_loc4_.§1r§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§&@§(_loc4_,_loc5_,this.§3!W§,param2);
               this.§5!8§.push(_loc6_);
               if(_loc6_.§8T§)
               {
                  this.§+!@§.addChild(_loc5_);
               }
               else
               {
                  this.§<!a§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§"4§)
            {
               this.§]!g§(parseInt(_loc4_.§"4§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §&@§(param1:§,"9§, param2:Sprite, param3:§2!B§, param4:Number) : §3!8§
      {
         return new §3!8§(param1,param2,param3,param4);
      }
      
      private function §0t§() : void
      {
         var _loc1_:§5!W§ = null;
         if(this.§,m§.§6"8§)
         {
            this.§]!g§(this.§,m§.§6"8§);
         }
         if(this.§,m§.§%!,§)
         {
            _loc1_ = this.§]1§(uint(this.§,m§.§%!,§));
            _loc1_.y = 0;
            this.§2!m§.addChild(_loc1_);
         }
      }
      
      protected function §]1§(param1:uint) : §5!W§
      {
         return new §5!W§(4096,4096,param1);
      }
      
      protected function §]!g§(param1:int) : void
      {
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§,?§();
         § do§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§+"&§(param1,this.§9!I§);
      }
      
      public function §'8§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§3!8§ = null;
         if(param1 == this.§7B§)
         {
            return;
         }
         this.§7B§ = param1;
         for each(_loc3_ in this.§5!8§)
         {
            _loc3_.§'8§(param1);
         }
      }
      
      public function §"!y§() : void
      {
         if(§0!t§.§ !a§("CHANNEL_AMBIENT") == null || !§0!t§.§ !a§("CHANNEL_AMBIENT").§@!K§())
         {
            §0!t§.playSound(this.§,m§.§+!B§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §1!9§() : void
      {
         §0!t§.§?!u§("CHANNEL_AMBIENT");
      }
      
      public function §>!T§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§<!a§.numChildren)
         {
            _loc2_ = this.§<!a§.getChildAt(param1);
         }
         else if(param1 - this.§<!a§.numChildren < this.§+!@§.numChildren)
         {
            _loc2_ = this.§+!@§.getChildAt(param1 - this.§<!a§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§3!1§ = param1;
         this.§<f§ = param2;
         if(this.§5!8§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§5!8§.length)
            {
               this.§5!8§[_loc3_].setSideScroll(this.§3!1§,this.§<f§);
               _loc3_++;
            }
         }
         if(this.§2!m§ != null)
         {
            this.§2!m§.scaleX = this.§2!m§.scaleY = 1 / §`"0§.§;!G§;
            this.§2!m§.x = -§`"0§.§+!N§ * (1 / §`"0§.§;!G§);
            this.§2!m§.y = this.§2"5§ - this.§<f§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§,m§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
