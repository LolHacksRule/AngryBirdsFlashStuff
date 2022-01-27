package §2!`§
{
   import §1"s§.DisplayObject;
   import §5!q§.§3"X§;
   import §>P§.§?L§;
   
   public class §@"V§ extends §'"F§
   {
       
      
      private var §7"+§:DisplayObject;
      
      public function §@"V§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§?L§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§7"+§ = param1;
         this.update(0);
      }
      
      public function get §^1§() : DisplayObject
      {
         return this.§7"+§;
      }
      
      public function dispose() : void
      {
         if(this.§7"+§)
         {
            this.§7"+§.dispose();
            this.§7"+§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§7"+§.scaleX = §"r§;
         this.§7"+§.scaleY = §"r§;
         this.§7"+§.rotation = §`"j§;
         this.§7"+§.x = §]!_§ / §3"X§.§;"l§;
         this.§7"+§.y = §#j§ / §3"X§.§;"l§;
         return _loc2_;
      }
   }
}
