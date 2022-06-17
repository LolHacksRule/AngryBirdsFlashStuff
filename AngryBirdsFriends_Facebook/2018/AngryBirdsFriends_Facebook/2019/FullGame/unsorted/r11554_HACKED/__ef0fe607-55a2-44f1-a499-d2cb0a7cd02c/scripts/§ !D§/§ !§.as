package § !D§
{
   import § O§.§&# §;
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!6§.Sprite;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §?§.§,Y§;
   import flash.geom.Point;
   
   public class § !§ extends §;M§
   {
      
      private static const §+#@§:Number = 10;
      
      public static const §0!B§:Number = 1;
       
      
      private var §""j§:§]%§ = null;
      
      private var §`#c§:Object;
      
      private var §@$&§:Boolean = false;
      
      private var § !5§:§6f§;
      
      public function § !§(param1:§"b§, param2:Sprite, param3:String, param4:§,Y§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§`#c§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §0#q§(param1:Number, param2:Number, param3:Boolean = true) : §]%§
      {
         § "s§ = false;
         §@#W§ = -1;
         this.§`#c§.x = §-##§;
         this.§`#c§.y = §0#[§;
         this.§`#c§.rotation = §%"b§;
         if(param3)
         {
            this.§""j§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(this.§`#c§,{
               "x":param1,
               "rotation":-360
            },null,§0!B§),§'#n§.§?q§.§[#F§(§'#n§.§?q§.§9!N§(this.§`#c§,{"y":this.§`#c§.y - §+#@§},null,§0!B§ / 2,§'#n§.§[i§),§'#n§.§?q§.§9!N§(this.§`#c§,{"y":param2},{"y":this.§`#c§.y - §+#@§},§0!B§ / 2,§'#n§.§`"E§)));
         }
         else
         {
            this.§""j§ = §'#n§.§?q§.§9!N§(null,null,null,§ !§.§0!B§);
         }
         this.§""j§.play();
         this.§""j§.onComplete = this.§37§;
         return this.§""j§;
      }
      
      private function §37§() : void
      {
         this.§""j§ = null;
         §%"b§ = this.§`#c§.rotation;
         setPosition(this.§`#c§.x,this.§`#c§.y);
         § "s§ = false;
         §@#W§ = -1;
         animationsEnabled = true;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§""j§ != null)
         {
            §%"b§ = this.§`#c§.rotation;
            setPosition(this.§`#c§.x,this.§`#c§.y);
            this.updateRenderer();
            this.§""j§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§""j§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§""j§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §^'§() : Boolean
      {
         return this.§@$&§;
      }
      
      public function set §^'§(param1:Boolean) : void
      {
         this.§@$&§ = param1;
      }
      
      public function get §=#d§() : §6f§
      {
         return this.§ !5§;
      }
      
      public function set §=#d§(param1:§6f§) : void
      {
         this.§ !5§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§&# §.§!$0§() == §7!S§.§&"z§.§]'§)
         {
         }
         super.approachSlingshot(param1);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.updateRenderer();
         if(§]"Q§ && §&# §.§!$0§() == §7!S§.§&"z§.§]'§ && (§=#B§ as §0$?§).§]#E§)
         {
            _loc1_ = new Point((§=#B§ as §0$?§).§]#E§.x,(§=#B§ as §0$?§).§]#E§.y);
            Number((§=#B§ as §0$?§).§]#E§.§30§());
            _loc3_ = 0.5 * radius * Math.cos(§>#h§) / §'"u§.§'#e§;
            _loc4_ = 0.5 * radius * Math.sin(§>#h§) / §'"u§.§'#e§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
