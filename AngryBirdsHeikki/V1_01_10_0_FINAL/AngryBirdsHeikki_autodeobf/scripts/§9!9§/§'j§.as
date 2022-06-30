package §9!9§
{
   import §"^§.§+!'§;
   import §+"§.§#!=§;
   import §+"§.§'! §;
   import §+"§.§>w§;
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §9!4§.§95§;
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^!0§.§4E§;
   import §^!5§.§&!E§;
   
   public class §'j§
   {
      
      public static const §=!!§:Boolean = true;
       
      
      private var §;u§:§>a§;
      
      protected var §-O§:§>w§;
      
      protected var §2e§:Vector.<§;!R§>;
      
      private var §8g§:Sprite;
      
      private var §6B§:Sprite;
      
      private var §if§:Sprite;
      
      private var §^+§:Number;
      
      private var §7e§:Number;
      
      private var §7V§:Number;
      
      private var §]!R§:Boolean = true;
      
      private var §`G§:Boolean = true;
      
      private var §&'§:§4E§;
      
      private var §-C§:Number;
      
      public function §'j§(param1:String, param2:Number, param3:§>a§, param4:Number)
      {
         this.§2e§ = new Vector.<§;!R§>();
         super();
         this.§;u§ = param3;
         this.§7e§ = 0;
         this.§7V§ = 0;
         this.§^+§ = param2;
         this.§8g§ = new Sprite();
         this.§6B§ = new Sprite();
         this.§if§ = new Sprite();
         this.§-C§ = param4;
         this.§?G§(param1,param4);
      }
      
      public function get §"!&§() : Boolean
      {
         return this.§]!R§;
      }
      
      public function get §1!`§() : Sprite
      {
         return this.§if§;
      }
      
      public function get §7E§() : Sprite
      {
         return this.§8g§;
      }
      
      public function get §5N§() : Sprite
      {
         return this.§6B§;
      }
      
      protected function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function dispose() : void
      {
         this.§#!R§();
         if(this.§8g§)
         {
            this.§8g§.dispose();
            this.§8g§ = null;
         }
         if(this.§6B§)
         {
            this.§6B§.dispose();
            this.§6B§ = null;
         }
         if(this.§if§)
         {
            this.§if§.dispose();
            this.§if§ = null;
         }
      }
      
      public function §<!?§() : Boolean
      {
         return this.§`G§;
      }
      
      public function §%2§(param1:Boolean) : void
      {
         if(this.§`G§ == param1)
         {
            return;
         }
         this.§`G§ = param1;
         if(!param1)
         {
            this.§#!R§();
         }
         else
         {
            this.§?G§(this.§-O§.mName,this.§-C§);
         }
      }
      
      public function §-!+§() : String
      {
         return this.§-O§.§]!O§;
      }
      
      private function §#!R§() : void
      {
         while(this.§6B§.numChildren > 0)
         {
            this.§6B§.removeChildAt(0,true);
         }
         while(this.§8g§.numChildren > 0)
         {
            this.§8g§.removeChildAt(0,true);
         }
         while(this.§2e§.length > 0)
         {
            this.§2e§.pop().dispose();
         }
      }
      
      protected function §77§(param1:§>w§, param2:String) : void
      {
      }
      
      private function §?G§(param1:String, param2:Number) : void
      {
         var _loc4_:§#!=§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§;!R§ = null;
         this.§-O§ = §'! §.§#n§(param1);
         if(this.§-O§ == null)
         {
            §4,§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §&!E§.§5!$§;
            this.§-O§ = §'! §.§#n§(param1);
         }
         this.§77§(this.§-O§,param1);
         this.§8g§.y = this.§^+§;
         this.§6B§.y = this.§^+§;
         this.§if§.y = this.§^+§;
         this.§>!A§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§-O§.§2e§.length)
         {
            _loc4_ = this.§-O§.§2e§[_loc3_];
            if(!§+!'§.§"!#§ || !_loc4_.§9e§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§=!J§(_loc4_,_loc5_,this.§;u§,param2);
               this.§2e§.push(_loc6_);
               if(_loc6_.§,C§)
               {
                  this.§6B§.addChild(_loc5_);
               }
               else
               {
                  this.§8g§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§`_§)
            {
               this.§+!1§(parseInt(_loc4_.§`_§,16));
            }
            _loc3_++;
         }
      }
      
      protected function §=!J§(param1:§#!=§, param2:Sprite, param3:§>a§, param4:Number) : §;!R§
      {
         return new §;!R§(param1,param2,param3,param4);
      }
      
      private function §>!A§() : void
      {
         var _loc1_:§7?§ = null;
         if(this.§-O§.§!!+§)
         {
            this.§+!1§(this.§-O§.§!!+§);
         }
         if(this.§-O§.§"`§)
         {
            _loc1_ = this.§ !X§(uint(this.§-O§.§"`§));
            _loc1_.y = 0;
            this.§if§.addChild(_loc1_);
         }
      }
      
      protected function § !X§(param1:uint) : §7?§
      {
         return new §7?§(4096,4096,param1);
      }
      
      protected function §+!1§(param1:int) : void
      {
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.color = param1;
         }
      }
      
      public function §^!_§(param1:String) : void
      {
         this.§#!R§();
         §4,§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§?G§(param1,this.§-C§);
      }
      
      public function §=[§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§;!R§ = null;
         if(param1 == this.§]!R§)
         {
            return;
         }
         this.§]!R§ = param1;
         for each(_loc3_ in this.§2e§)
         {
            _loc3_.§=[§(param1);
         }
      }
      
      public function §`!B§() : void
      {
         if(§&M§.§2!W§("CHANNEL_AMBIENT") == null || !§&M§.§2!W§("CHANNEL_AMBIENT").§&A§())
         {
            §&M§.§6!#§(this.§-O§.§"!Z§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §=b§() : void
      {
         §&M§.§7!<§("CHANNEL_AMBIENT");
      }
      
      public function §'!3§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§8g§.numChildren)
         {
            _loc2_ = this.§8g§.getChildAt(param1);
         }
         else if(param1 - this.§8g§.numChildren < this.§6B§.numChildren)
         {
            _loc2_ = this.§6B§.getChildAt(param1 - this.§8g§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§7e§ = param1;
         this.§7V§ = param2;
         if(this.§2e§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§2e§.length)
            {
               this.§2e§[_loc3_].setSideScroll(this.§7e§,this.§7V§);
               _loc3_++;
            }
         }
         if(this.§if§ != null)
         {
            this.§if§.scaleX = this.§if§.scaleY = 1 / §95§.§3d§;
            this.§if§.x = -§95§.§02§ * (1 / §95§.§3d§);
            this.§if§.y = this.§^+§ - this.§7V§;
         }
      }
      
      public function §?2§() : String
      {
         return this.§-O§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
