package §,F§
{
   import § d§.§3§;
   import § d§.§=!,§;
   import §#!f§.Sprite;
   import §3!§.§2!$§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import §>!F§.§9!Z§;
   
   public class §]9§ extends §=!,§
   {
      
      private static const §]8§:Number = 10;
      
      public static const §`!6§:Number = 1;
       
      
      private var §<-§:§1R§ = null;
      
      private var §3!Y§:Object;
      
      private var §4!9§:Boolean;
      
      public function §]9§(param1:§3§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         this.§3!Y§ = new Object();
         this.§4!9§ = false;
         super(param1,param2,param3,param4,param5);
      }
      
      public function §-!?§() : void
      {
         this.§4!9§ = true;
         this.setPivotTexture(§;+§.getSubAnimation("normal").getFrame(0));
      }
      
      public function §],§(param1:Number, param2:Number, param3:Boolean = true) : §1R§
      {
         §?B§ = false;
         §"!@§ = -1;
         this.§3!Y§.x = §`B§;
         this.§3!Y§.y = §,!9§;
         this.§3!Y§.rotation = §=$§;
         if(param3)
         {
            this.§<-§ = §2!B§.§,!U§.§4!B§(§2!B§.§,!U§.§%!K§(this.§3!Y§,{
               "x":param1,
               "rotation":-360
            },null,§`!6§),§2!B§.§,!U§.§<!7§(§2!B§.§,!U§.§%!K§(this.§3!Y§,{"y":this.§3!Y§.y - §]8§},null,§`!6§ / 2,§2!B§.§-!J§),§2!B§.§,!U§.§%!K§(this.§3!Y§,{"y":param2},{"y":this.§3!Y§.y - §]8§},§`!6§ / 2,§2!B§.§=X§)));
         }
         else
         {
            this.§<-§ = §2!B§.§,!U§.§%!K§(null,null,null,§]9§.§`!6§);
         }
         this.§<-§.play();
         this.§<-§.onComplete = this.§5-§;
         return this.§<-§;
      }
      
      private function §5-§() : void
      {
         ((§9!Z§.§5!$§ as §4!N§).slingshot as §=x§).§<!f§();
         this.§<-§ = null;
         §=$§ = this.§3!Y§.rotation;
         setPosition(this.§3!Y§.x,this.§3!Y§.y);
         §?B§ = false;
         §"!@§ = -1;
      }
      
      override public function setPivotTexture(param1:§2!$§) : void
      {
         if(this.§4!9§ == false)
         {
            super.setPivotTexture(§;+§.getSubAnimation("no_helmet").getFrame(0));
         }
         else
         {
            super.setPivotTexture(param1);
         }
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§<-§ != null)
         {
            §=$§ = this.§3!Y§.rotation;
            setPosition(this.§3!Y§.x,this.§3!Y§.y);
            §[F§();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§<-§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§<-§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
