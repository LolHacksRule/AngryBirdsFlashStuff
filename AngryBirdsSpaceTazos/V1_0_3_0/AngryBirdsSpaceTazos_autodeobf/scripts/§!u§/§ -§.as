package §!u§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §6!M§.§?R§;
   
   public class § -§ extends §6!%§
   {
       
      
      private var §#!R§:DisplayObject;
      
      public function § -§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§?R§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§#!R§ = param1;
         this.update(0);
      }
      
      public function get §set §() : DisplayObject
      {
         return this.§#!R§;
      }
      
      public function dispose() : void
      {
         if(this.§#!R§)
         {
            this.§#!R§.dispose();
            this.§#!R§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§#!R§.scaleX = §1!k§;
         this.§#!R§.scaleY = §1!k§;
         this.§#!R§.rotation = §7_§;
         this.§#!R§.x = §1!`§ / §1!R§.§00§;
         this.§#!R§.y = §<2§ / §1!R§.§00§;
         return _loc2_;
      }
   }
}
