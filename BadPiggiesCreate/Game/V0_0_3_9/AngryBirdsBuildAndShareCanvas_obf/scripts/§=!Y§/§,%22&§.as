package §=!Y§
{
   import §-N§.§=!]§;
   import §6!&§.§0!b§;
   import §6p§.§%!W§;
   import §6p§.§'!B§;
   import §7q§.§"L§;
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §;!<§.§7!f§;
   import §<!x§.§2#§;
   import §<!x§.§7u§;
   import §<!x§.§`f§;
   import §@!;§.§&F§;
   import §@!N§.§2i§;
   
   public class §,"&§
   {
      
      public static const §[!"§:Boolean = true;
       
      
      private var §0<§:§7!f§;
      
      protected var §2!W§:§`f§;
      
      protected var §`!0§:Vector.<§2" §>;
      
      private var §2>§:Sprite;
      
      private var §>o§:Sprite;
      
      private var §+! §:Sprite;
      
      private var §&!c§:Number;
      
      private var §+!S§:Number;
      
      private var §'!K§:Number;
      
      private var §3! §:Boolean = true;
      
      private var § @§:Boolean = true;
      
      private var §]!a§:§%!W§;
      
      private var §0+§:Number;
      
      public function §,"&§(param1:String, param2:Number, param3:§7!f§, param4:Number)
      {
         this.§`!0§ = new Vector.<§2" §>();
         super();
         this.§0<§ = param3;
         this.§+!S§ = 0;
         this.§'!K§ = 0;
         this.§&!c§ = param2;
         this.§2>§ = new Sprite();
         this.§>o§ = new Sprite();
         this.§+! § = new Sprite();
         this.§0+§ = param4;
         this.§0!J§(param1,param4);
      }
      
      public function get §,U§() : Boolean
      {
         return this.§3! §;
      }
      
      public function get §%M§() : Sprite
      {
         return this.§+! §;
      }
      
      public function get §&§() : Sprite
      {
         return this.§2>§;
      }
      
      public function get §=e§() : Sprite
      {
         return this.§>o§;
      }
      
      protected function get §20§() : §7!f§
      {
         return this.§0<§;
      }
      
      public function dispose() : void
      {
         this.§'g§();
         if(this.§2>§)
         {
            this.§2>§.dispose();
            this.§2>§ = null;
         }
         if(this.§>o§)
         {
            this.§>o§.dispose();
            this.§>o§ = null;
         }
         if(this.§+! §)
         {
            this.§+! §.dispose();
            this.§+! § = null;
         }
      }
      
      public function §-!p§() : Boolean
      {
         return this.§ @§;
      }
      
      public function §6M§(param1:Boolean) : void
      {
         if(this.§ @§ == param1)
         {
            return;
         }
         this.§ @§ = param1;
         if(!param1)
         {
            this.§'g§();
         }
         else
         {
            this.§0!J§(this.§2!W§.mName,this.§0+§);
         }
      }
      
      public function §?"§() : String
      {
         return this.§2!W§.§>"!§;
      }
      
      private function §'g§() : void
      {
         while(this.§>o§.numChildren > 0)
         {
            this.§>o§.removeChildAt(0,true);
         }
         while(this.§2>§.numChildren > 0)
         {
            this.§2>§.removeChildAt(0,true);
         }
         while(this.§`!0§.length > 0)
         {
            this.§`!0§.pop().dispose();
         }
      }
      
      protected function §@!4§(param1:§`f§, param2:String) : void
      {
      }
      
      private function §0!J§(param1:String, param2:Number) : void
      {
         var _loc4_:§2#§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§2" § = null;
         this.§2!W§ = §7u§.§;"!§(param1);
         if(this.§2!W§ == null)
         {
            §&F§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §0!b§.§30§;
            this.§2!W§ = §7u§.§;"!§(param1);
         }
         this.§@!4§(this.§2!W§,param1);
         this.§2>§.y = this.§&!c§;
         this.§>o§.y = this.§&!c§;
         this.§+! §.y = this.§&!c§;
         this.§=S§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!W§.§`!0§.length)
         {
            _loc4_ = this.§2!W§.§`!0§[_loc3_];
            if(!§=!]§.§&!f§ || !_loc4_.§2l§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§`!h§(_loc4_,_loc5_,this.§0<§,param2);
               this.§`!0§.push(_loc6_);
               if(_loc6_.§=X§)
               {
                  this.§>o§.addChild(_loc5_);
               }
               else
               {
                  this.§2>§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§null §)
            {
               this.§#!1§(parseInt(_loc4_.§null §,16));
            }
            _loc3_++;
         }
      }
      
      protected function §`!h§(param1:§2#§, param2:Sprite, param3:§7!f§, param4:Number) : §2" §
      {
         return new §2" §(param1,param2,param3,param4);
      }
      
      private function §=S§() : void
      {
         var _loc1_:§"L§ = null;
         if(this.§2!W§.§;K§)
         {
            this.§#!1§(this.§2!W§.§;K§);
         }
         if(this.§2!W§.§'!2§)
         {
            _loc1_ = this.§%!3§(uint(this.§2!W§.§'!2§));
            _loc1_.y = 0;
            this.§+! §.addChild(_loc1_);
         }
      }
      
      protected function §%!3§(param1:uint) : §"L§
      {
         return new §"L§(4096,4096,param1);
      }
      
      protected function §#!1§(param1:int) : void
      {
         if(§=!]§.§@§)
         {
            §=!]§.§@§.color = param1;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         this.§'g§();
         §&F§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§0!J§(param1,this.§0+§);
      }
      
      public function §"l§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§2" § = null;
         if(param1 == this.§3! §)
         {
            return;
         }
         this.§3! § = param1;
         for each(_loc3_ in this.§`!0§)
         {
            _loc3_.§"l§(param1);
         }
      }
      
      public function §+!W§() : void
      {
         if(§'!B§.§"!4§("CHANNEL_AMBIENT") == null || !§'!B§.§"!4§("CHANNEL_AMBIENT").§[r§())
         {
            §'!B§.playSound(this.§2!W§.§&!K§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §,!t§() : void
      {
         §'!B§.§&!r§("CHANNEL_AMBIENT");
      }
      
      public function §#e§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§2>§.numChildren)
         {
            _loc2_ = this.§2>§.getChildAt(param1);
         }
         else if(param1 - this.§2>§.numChildren < this.§>o§.numChildren)
         {
            _loc2_ = this.§>o§.getChildAt(param1 - this.§2>§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §,"#§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§+!S§ = param1;
         this.§'!K§ = param2;
         if(this.§`!0§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§`!0§.length)
            {
               this.§`!0§[_loc3_].setSideScroll(this.§+!S§,this.§'!K§);
               _loc3_++;
            }
         }
         if(this.§+! § != null)
         {
            this.§+! §.scaleX = this.§+! §.scaleY = 1 / §2i§.§0Z§;
            this.§+! §.x = -§2i§.§0c§ * (1 / §2i§.§0Z§);
            this.§+! §.y = this.§&!c§ - this.§'!K§;
         }
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§2!W§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
