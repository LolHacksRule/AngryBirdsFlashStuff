package §1"?§
{
   import §&!]§.DisplayObject;
   import §3"#§.§`"8§;
   import §3>§.§@!1§;
   
   public class §9k§ extends §"!_§
   {
       
      
      private var §,l§:DisplayObject;
      
      public function §9k§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§@!1§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§,l§ = param1;
         this.update(0);
      }
      
      public function get §'!+§() : DisplayObject
      {
         return this.§,l§;
      }
      
      public function dispose() : void
      {
         if(this.§,l§)
         {
            this.§,l§.dispose();
            this.§,l§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§,l§.scaleX = §&!A§;
         this.§,l§.scaleY = §&!A§;
         this.§,l§.rotation = §#!$§;
         this.§,l§.x = §''§ / §`"8§.§3!=§;
         this.§,l§.y = §3"<§ / §`"8§.§3!=§;
         return _loc2_;
      }
   }
}
