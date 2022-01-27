package §='§
{
   import §!6§.§3!5§;
   import §+f§.§4!8§;
   import §3!%§.§#!K§;
   import §4G§.§5T§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   import §<!4§.§25§;
   import §<!4§.§;<§;
   import §>w§.;
   import §[!A§.§+!!§;
   import get.§ v§;
   import get.§,v§;
   import get.§1!"§;
   
   public class §7A§
   {
      
      public static const §@Y§:Boolean = true;
       
      
      private var §;?§:§4!8§;
      
      protected var §!!#§:§1!"§;
      
      private var §"M§:Vector.<§61§>;
      
      private var §"!&§:Sprite;
      
      private var §5j§:Sprite;
      
      private var §=I§:Sprite;
      
      private var §9!-§:Number;
      
      private var §0!L§:Number;
      
      private var §%t§:Number;
      
      private var §-b§:Boolean = true;
      
      private var §,K§:Boolean = true;
      
      private var §,Y§:§;<§;
      
      private var §-n§:Number;
      
      public function §7A§(param1:String, param2:Number, param3:§4!8§, param4:Number)
      {
         this.§"M§ = new Vector.<§61§>();
         super();
         this.§;?§ = param3;
         this.§0!L§ = 0;
         this.§%t§ = 0;
         this.§9!-§ = param2;
         this.§"!&§ = new Sprite();
         this.§5j§ = new Sprite();
         this.§=I§ = new Sprite();
         this.§-n§ = param4;
         this.§`!B§(param1,param4);
      }
      
      public function get §return§() : Boolean
      {
         return this.§-b§;
      }
      
      public function get §`K§() : Sprite
      {
         return this.§=I§;
      }
      
      public function get §2D§() : Sprite
      {
         return this.§"!&§;
      }
      
      public function get §%?§() : Sprite
      {
         return this.§5j§;
      }
      
      protected function get textureManager() : §4!8§
      {
         return this.§;?§;
      }
      
      public function dispose() : void
      {
         this.§9e§();
         if(this.§"!&§)
         {
            this.§"!&§.dispose();
            this.§"!&§ = null;
         }
         if(this.§5j§)
         {
            this.§5j§.dispose();
            this.§5j§ = null;
         }
         if(this.§=I§)
         {
            this.§=I§.dispose();
            this.§=I§ = null;
         }
      }
      
      public function §1!+§() : Boolean
      {
         return this.§,K§;
      }
      
      public function §2k§(param1:Boolean) : void
      {
         if(this.§,K§ == param1)
         {
            return;
         }
         this.§,K§ = param1;
         if(!param1)
         {
            this.§9e§();
         }
         else
         {
            this.§`!B§(this.§!!#§.mName,this.§-n§);
         }
      }
      
      public function §;6§() : String
      {
         return this.§!!#§.§@!,§;
      }
      
      private function §9e§() : void
      {
         while(this.§5j§.numChildren > 0)
         {
            this.§5j§.removeChildAt(0,true);
         }
         while(this.§"!&§.numChildren > 0)
         {
            this.§"!&§.removeChildAt(0,true);
         }
         while(this.§"M§.length > 0)
         {
            this.§"M§.pop().dispose();
         }
      }
      
      protected function §^!&§(param1:§1!"§, param2:String) : void
      {
      }
      
      private function §`!B§(param1:String, param2:Number) : void
      {
         var _loc4_:§,v§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§61§ = null;
         this.§!!#§ = § v§.§"!4§(param1);
         if(this.§!!#§ == null)
         {
            §3!5§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#!K§.§6D§;
            this.§!!#§ = § v§.§"!4§(param1);
         }
         this.§^!&§(this.§!!#§,param1);
         this.§"!&§.y = this.§9!-§;
         this.§5j§.y = this.§9!-§;
         this.§=I§.y = this.§9!-§;
         this.§4I§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§!!#§.§"M§.length)
         {
            _loc4_ = this.§!!#§.§"M§[_loc3_];
            if(!§#0§.§3!<§ || !_loc4_.§%Y§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §61§(_loc4_,_loc5_,this.§;?§,param2);
               this.§"M§.push(_loc6_);
               if(_loc6_.§8!G§)
               {
                  this.§5j§.addChild(_loc5_);
               }
               else
               {
                  this.§"!&§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§<L§)
            {
               this.§7!E§(parseInt(_loc4_.§<L§,16));
            }
            _loc3_++;
         }
      }
      
      private function §4I§() : void
      {
         var _loc1_:§5T§ = null;
         if(this.§!!#§.§#A§)
         {
            this.§7!E§(this.§!!#§.§#A§);
         }
         if(this.§!!#§.§<!"§)
         {
            _loc1_ = this.§?t§(uint(this.§!!#§.§<!"§));
            _loc1_.y = 0;
            this.§=I§.addChild(_loc1_);
         }
      }
      
      protected function §?t§(param1:uint) : §5T§
      {
         return new §5T§(4096,4096,param1);
      }
      
      protected function §7!E§(param1:int) : void
      {
         if(§#0§.§#4§)
         {
            §#0§.§#4§.color = param1;
         }
      }
      
      public function §7u§(param1:String) : void
      {
         this.§9e§();
         §3!5§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§`!B§(param1,this.§-n§);
      }
      
      public function §=h§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§61§ = null;
         if(param1 == this.§-b§)
         {
            return;
         }
         this.§-b§ = param1;
         for each(_loc3_ in this.§"M§)
         {
            _loc3_.§=h§(param1);
         }
      }
      
      public function §,!I§() : void
      {
         if(§25§.§'!1§("CHANNEL_AMBIENT") == null || !§25§.§'!1§("CHANNEL_AMBIENT").§#!"§())
         {
            §25§.playSound(this.§!!#§.§&!?§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §[U§() : void
      {
         §25§.§0!5§("CHANNEL_AMBIENT");
      }
      
      public function §6!6§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§"!&§.numChildren)
         {
            _loc2_ = this.§"!&§.getChildAt(param1);
         }
         else if(param1 - this.§"!&§.numChildren < this.§5j§.numChildren)
         {
            _loc2_ = this.§5j§.getChildAt(param1 - this.§"!&§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §3]§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§0!L§ = param1;
         this.§%t§ = param2;
         if(this.§"M§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§"M§.length)
            {
               this.§"M§[_loc3_].setSideScroll(this.§0!L§,this.§%t§);
               _loc3_++;
            }
         }
         if(this.§=I§ != null)
         {
            this.§=I§.scaleX = this.§=I§.scaleY = 1 / §+!!§.levelScale;
            this.§=I§.x = -§+!!§.§!2§ * (1 / §+!!§.levelScale);
            this.§=I§.y = this.§9!-§ - this.§%t§;
         }
      }
      
      public function §=X§() : String
      {
         return this.§!!#§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
