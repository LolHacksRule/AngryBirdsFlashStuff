package §^9§
{
   import §"§.§;!E§;
   import §#g§.§=!F§;
   import §use§.DisplayObject;
   
   public class §;u§ extends §;!<§
   {
       
      
      private var §&"#§:DisplayObject;
      
      public function §;u§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§=!F§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§&"#§ = param1;
         this.update(0);
      }
      
      public function get §>#3§() : DisplayObject
      {
         return this.§&"#§;
      }
      
      public function dispose() : void
      {
         if(this.§&"#§)
         {
            this.§&"#§.dispose();
            this.§&"#§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§&"#§.scaleX = §#"5§;
         this.§&"#§.scaleY = §#"5§;
         this.§&"#§.rotation = §^]§;
         this.§&"#§.x = §0U§ / §;!E§.§0"?§;
         this.§&"#§.y = §3"[§ / §;!E§.§0"?§;
         return _loc2_;
      }
   }
}
