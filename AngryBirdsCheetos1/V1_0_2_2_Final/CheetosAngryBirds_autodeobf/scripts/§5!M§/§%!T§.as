package §5!M§
{
   import §!X§.§#K§;
   import §!X§.§9k§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §?m§.§7?§;
   import §]@§.Sprite;
   
   public class §%!T§ extends §9k§
   {
      
      private static const §1!9§:Number = 10;
      
      public static const §7C§:Number = 1.2;
       
      
      private var §=d§:§&!!§;
      
      private var §5+§:Object;
      
      public function §%!T§(param1:§#K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function §0+§(param1:Number, param2:Number, param3:Boolean = true) : §&!!§
      {
         §9M§ = false;
         §-!-§ = -1;
         this.§5+§ = new Object();
         this.§5+§.x = §<!Y§;
         this.§5+§.y = § l§;
         this.§5+§.rotation = §50§;
         if(param3)
         {
            this.§=d§ = §';§.§%!O§.§4!;§(§';§.§%!O§.§set §(this.§5+§,{
               "x":param1,
               "rotation":-360
            },{
               "x":this.§5+§.x,
               "rotation":0
            },§7C§),§';§.§%!O§.§;!8§(§';§.§%!O§.§set §(this.§5+§,{"y":this.§5+§.y - §1!9§},{"y":this.§5+§.y},§7C§ / 2,§';§.§3!P§),§';§.§%!O§.§set §(this.§5+§,{"y":param2},{"y":this.§5+§.y - §1!9§},§7C§ / 2,§';§.§#P§)));
         }
         else
         {
            this.§=d§ = §';§.§%!O§.§set §(null,null,null,§%!T§.§7C§);
         }
         this.§=d§.play();
         this.§=d§.onComplete = this.§]A§;
         return this.§=d§;
      }
      
      public function §]A§() : void
      {
         if(this.§=d§ != null)
         {
            this.§=d§ = null;
            §50§ = this.§5+§.rotation;
            setPosition(this.§5+§.x,this.§5+§.y);
            §9M§ = false;
            §-!-§ = -1;
            (§7?§.§4!H§ as §<e§).slingshot.setSlingShotState(§#K§.§-I§);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§=d§ != null)
         {
            §50§ = this.§5+§.rotation;
            setPosition(this.§5+§.x,this.§5+§.y);
            §>!Q§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§=d§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§=d§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §2i§() : §&!!§
      {
         return this.§=d§;
      }
   }
}
