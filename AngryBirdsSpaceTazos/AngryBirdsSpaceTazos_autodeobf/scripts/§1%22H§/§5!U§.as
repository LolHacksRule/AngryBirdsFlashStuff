package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   import §7!8§.DisplayObject;
   
   public class §5!U§ extends §>g§
   {
       
      
      private var §@!]§:DisplayObject;
      
      public function §5!U§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§"v§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§@!]§ = param1;
         this.update(0);
      }
      
      public function get §,"F§() : DisplayObject
      {
         return this.§@!]§;
      }
      
      public function dispose() : void
      {
         if(this.§@!]§)
         {
            this.§@!]§.dispose();
            this.§@!]§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§@!]§.scaleX = §=T§;
         this.§@!]§.scaleY = §=T§;
         this.§@!]§.rotation = §"X§;
         this.§@!]§.x = §""4§ / §^g§.§5!-§;
         this.§@!]§.y = §%W§ / §^g§.§5!-§;
         return _loc2_;
      }
   }
}
