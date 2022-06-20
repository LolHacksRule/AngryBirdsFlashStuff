package §=!7§
{
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §`#C§.§-$'§;
   
   public class §&!s§ extends §?!;§
   {
       
      
      private var §#P§:DisplayObject;
      
      public function §&!s§(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:§-$'§, param6:Number = 1)
      {
         super(param2,param3,param4,param5,param6);
         this.§#P§ = param1;
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§#P§;
      }
      
      public function dispose() : void
      {
         if(this.§#P§)
         {
            this.§#P§.dispose();
            this.§#P§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         this.§#P§.scaleX = §]"?§;
         this.§#P§.scaleY = §]"?§;
         this.§#P§.rotation = §2#!§;
         this.§#P§.x = §+!5§ / §#!,§.§?$#§;
         this.§#P§.y = §'! § / §#!,§.§?$#§;
         return _loc2_;
      }
   }
}
