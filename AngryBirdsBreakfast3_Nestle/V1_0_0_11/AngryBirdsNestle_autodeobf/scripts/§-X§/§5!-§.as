package §-X§
{
   import §-'§.§ i§;
   import §0!_§.§!!G§;
   import §0"1§.§`"-§;
   import §0"1§.§set §;
   import §8!$§.§?p§;
   import §;X§.§&"7§;
   import §;X§.§4!@§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   import §`!B§.§]!J§;
   
   public class §5!-§
   {
      
      public static const §<!R§:Boolean = true;
       
      
      protected var §=!Q§:§!!G§;
      
      protected var §4O§:§`"-§;
      
      protected var §<a§:Vector.<§3!@§>;
      
      protected var § R§:Sprite;
      
      protected var §^!9§:Sprite;
      
      protected var §&!F§:Sprite;
      
      protected var §9f§:Number;
      
      protected var §[!Z§:Number;
      
      protected var §use§:Number;
      
      protected var §`!5§:Boolean = true;
      
      protected var §;!t§:Boolean = true;
      
      protected var §+Q§:§&"7§;
      
      protected var §1"&§:Number;
      
      protected var §2i§:Boolean = true;
      
      protected var §0!^§:int = 0;
      
      protected var §0y§:Number = 1.0;
      
      public function §5!-§(param1:§`"-§, param2:Number, param3:§!!G§, param4:Number, param5:Boolean = true)
      {
         this.§<a§ = new Vector.<§3!@§>();
         super();
         this.§=!Q§ = param3;
         this.§[!Z§ = 0;
         this.§use§ = 0;
         this.§9f§ = param2;
         this.§ R§ = new Sprite();
         this.§^!9§ = new Sprite();
         this.§&!F§ = new Sprite();
         this.§1"&§ = param4;
         this.§2i§ = param5;
         this.§>M§(param1,param4);
      }
      
      public function get §6o§() : Boolean
      {
         return this.§`!5§;
      }
      
      public function get §3!e§() : Sprite
      {
         return this.§&!F§;
      }
      
      public function get §]]§() : Sprite
      {
         return this.§ R§;
      }
      
      public function get §4+§() : Sprite
      {
         return this.§^!9§;
      }
      
      public function get §,R§() : int
      {
         return this.§0!^§;
      }
      
      protected function get §^!§() : §!!G§
      {
         return this.§=!Q§;
      }
      
      public function dispose() : void
      {
         this.§^!8§();
         this.§6!n§();
         if(this.§ R§)
         {
            this.§ R§.dispose();
            this.§ R§ = null;
         }
         if(this.§^!9§)
         {
            this.§^!9§.dispose();
            this.§^!9§ = null;
         }
         if(this.§&!F§)
         {
            this.§&!F§.dispose();
            this.§&!F§ = null;
         }
      }
      
      public function §9d§() : Boolean
      {
         return this.§;!t§;
      }
      
      public function §2!J§(param1:Boolean) : void
      {
         if(this.§;!t§ == param1)
         {
            return;
         }
         this.§;!t§ = param1;
         if(!param1)
         {
            this.§^!8§();
         }
         else
         {
            this.§>M§(this.§4O§,this.§1"&§);
         }
      }
      
      public function §"!N§() : String
      {
         return this.§4O§.§?!E§;
      }
      
      private function §^!8§() : void
      {
         while(this.§^!9§.numChildren > 0)
         {
            this.§^!9§.removeChildAt(0,true);
         }
         while(this.§ R§.numChildren > 0)
         {
            this.§ R§.removeChildAt(0,true);
         }
         while(this.§<a§.length > 0)
         {
            this.§<a§.pop().dispose();
         }
      }
      
      protected function §?A§(param1:§`"-§) : void
      {
      }
      
      protected function §>M§(param1:§`"-§, param2:Number) : void
      {
         var _loc4_:§set § = null;
         var _loc5_:Sprite = null;
         var _loc6_:§3!@§ = null;
         this.§4O§ = param1;
         this.§?A§(this.§4O§);
         this.§ R§.y = this.§9f§;
         this.§^!9§.y = this.§9f§;
         this.§&!F§.y = this.§9f§;
         this.§+!1§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§4O§.§?!<§)
         {
            _loc4_ = this.§4O§.§]!C§(_loc3_);
            if(this.§2i§ || !_loc4_.optional)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.§<N§(_loc4_,_loc5_,this.§^!§,param2);
               this.§<a§.push(_loc6_);
               if(_loc6_.§;-§)
               {
                  this.§^!9§.addChild(_loc5_);
               }
               else
               {
                  this.§ R§.addChild(_loc5_);
               }
            }
            else if(_loc4_.color)
            {
               this.§6Z§(parseInt(_loc4_.color,16));
            }
            _loc3_++;
         }
      }
      
      protected function §<N§(param1:§set §, param2:Sprite, param3:§!!G§, param4:Number) : §3!@§
      {
         return new §3!@§(param1,param2,param3,param4);
      }
      
      private function §+!1§() : void
      {
         var _loc1_:§]!J§ = null;
         if(this.§4O§.§@9§)
         {
            this.§6Z§(this.§4O§.§@9§);
         }
         if(this.§4O§.§0!q§)
         {
            _loc1_ = this.§9D§(uint(this.§4O§.§0!q§));
            _loc1_.y = 0;
            this.§&!F§.addChild(_loc1_);
         }
      }
      
      protected function §9D§(param1:uint) : §]!J§
      {
         return new §]!J§(4096,4096,param1);
      }
      
      private function §6Z§(param1:int) : void
      {
         this.§0!^§ = param1;
      }
      
      public function §6E§(param1:§`"-§) : void
      {
         this.§^!8§();
         §?p§.log("Switch background! NEW BACKGROUND NAME = " + param1.id);
         this.§>M§(param1,this.§1"&§);
      }
      
      public function §;![§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§3!@§ = null;
         if(param1 == this.§`!5§)
         {
            return;
         }
         this.§`!5§ = param1;
         for each(_loc3_ in this.§<a§)
         {
            _loc3_.§;![§(param1);
         }
      }
      
      public function §<!J§() : void
      {
         if(§4!@§.§6!w§("CHANNEL_AMBIENT") == null || !§4!@§.§6!w§("CHANNEL_AMBIENT").§@t§())
         {
            §4!@§.§`!w§(this.§]!i§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §6!n§() : void
      {
         §4!@§.§`[§("CHANNEL_AMBIENT");
      }
      
      public function get §]!i§() : String
      {
         return this.§4O§.§]!i§;
      }
      
      public function §>!$§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ R§.numChildren)
         {
            _loc2_ = this.§ R§.getChildAt(param1);
         }
         else if(param1 - this.§ R§.numChildren < this.§^!9§.numChildren)
         {
            _loc2_ = this.§^!9§.getChildAt(param1 - this.§ R§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:int = 0;
         this.§[!Z§ = param1;
         this.§use§ = param2;
         if(this.§<a§ != null)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§<a§.length)
            {
               this.§<a§[_loc8_].setScreenOffset(this.§[!Z§,this.§use§,param5,param3,param4,param6,param7);
               _loc8_++;
            }
         }
         if(this.§&!F§ != null)
         {
            this.§&!F§.scaleX = this.§&!F§.scaleY = 1 / § i§.§>!_§;
            this.§[B§();
         }
      }
      
      protected function §[B§() : void
      {
         this.§&!F§.x = 0;
         this.§&!F§.y = this.§9f§ - this.§use§;
      }
      
      public function §-!r§() : String
      {
         return this.§4O§.id;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§3!@§ = null;
         for each(_loc2_ in this.§<a§)
         {
            _loc2_.update(param1);
         }
      }
   }
}
