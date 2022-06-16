package §@0§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §4"R§.§7"]§;
   import §8"L§.§4U§;
   import §^"S§.Sprite;
   import flash.geom.Point;
   
   public class §6"+§ extends §4!_§
   {
      
      private static const §;#p§:Number = 10;
      
      public static const §6"-§:Number = 1;
       
      
      private var §4#B§:§4[§ = null;
      
      private var §@!N§:Object;
      
      private var §9$&§:Boolean = false;
      
      private var §&"J§:§'#v§;
      
      public function §6"+§(param1:§ !o§, param2:Sprite, param3:String, param4:§4U§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§@!N§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §=!s§(param1:Number, param2:Number, param3:Boolean = true) : §4[§
      {
         §[$ § = false;
         §[$7§ = -1;
         this.§@!N§.x = §8u§;
         this.§@!N§.y = §!#§;
         this.§@!N§.rotation = §]#8§;
         if(param3)
         {
            this.§4#B§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(this.§@!N§,{
               "x":param1,
               "rotation":-360
            },null,§6"-§),§&"H§.§6!§.§>##§(§&"H§.§6!§.§6C§(this.§@!N§,{"y":this.§@!N§.y - §;#p§},null,§6"-§ / 2,§&"H§.§!!;§),§&"H§.§6!§.§6C§(this.§@!N§,{"y":param2},{"y":this.§@!N§.y - §;#p§},§6"-§ / 2,§&"H§.§;a§)));
         }
         else
         {
            this.§4#B§ = §&"H§.§6!§.§6C§(null,null,null,§6"+§.§6"-§);
         }
         this.§4#B§.play();
         this.§4#B§.onComplete = this.§3#r§;
         return this.§4#B§;
      }
      
      private function §3#r§() : void
      {
         this.§4#B§ = null;
         §]#8§ = this.§@!N§.rotation;
         setPosition(this.§@!N§.x,this.§@!N§.y);
         §[$ § = false;
         §[$7§ = -1;
         animationsEnabled = true;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§4#B§ != null)
         {
            §]#8§ = this.§@!N§.rotation;
            setPosition(this.§@!N§.x,this.§@!N§.y);
            this.updateRenderer();
            this.§4#B§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§4#B§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§4#B§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §,"§() : Boolean
      {
         return this.§9$&§;
      }
      
      public function set §,"§(param1:Boolean) : void
      {
         this.§9$&§ = param1;
      }
      
      public function get §+"C§() : §'#v§
      {
         return this.§&"J§;
      }
      
      public function set §+"C§(param1:§'#v§) : void
      {
         this.§&"J§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§7"]§.§<,§() == §4"c§.§]#q§.§5"g§)
         {
         }
         super.approachSlingshot(param1);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.updateRenderer();
         if(§1"U§ && §7"]§.§<,§() == §4"c§.§]#q§.§5"g§ && (§<!'§ as §9"^§).§1!]§)
         {
            _loc1_ = new Point((§<!'§ as §9"^§).§1!]§.x,(§<!'§ as §9"^§).§1!]§.y);
            _loc2_ = (§<!'§ as §9"^§).§1!]§.§`$"§();
            _loc3_ = 0.5 * radius * Math.cos(§7"I§) / §%!q§.§6q§;
            _loc4_ = 0.5 * radius * Math.sin(§7"I§) / §%!q§.§6q§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
