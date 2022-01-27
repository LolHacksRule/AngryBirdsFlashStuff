package §,7§
{
   import §'!&§.DisplayObject;
   import §;"=§.§@!6§;
   import §?!<§.§'!1§;
   
   public class §!,§ extends §9;§
   {
       
      
      private var §'"9§:DisplayObject;
      
      public function §!,§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§@!6§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§'"9§ = param1;
         this.update(0);
      }
      
      public function get §&§() : DisplayObject
      {
         return this.§'"9§;
      }
      
      public function dispose() : void
      {
         if(this.§'"9§)
         {
            this.§'"9§.dispose();
            this.§'"9§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§'"9§.scaleX = §-!Y§;
         this.§'"9§.scaleY = §-!Y§;
         this.§'"9§.rotation = §%!^§;
         this.§'"9§.x = §>!J§ / §'!1§.§<!@§;
         this.§'"9§.y = §;`§ / §'!1§.§<!@§;
         return _loc2_;
      }
   }
}
