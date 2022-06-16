package §!'§
{
   import §8"L§.§3#N§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   
   public class §85§ extends §4"j§
   {
       
      
      private var §1"w§:Sprite;
      
      private var § $9§:DisplayObject;
      
      private var §2!s§:DisplayObject;
      
      private var §1#!§:Number;
      
      private var §`"N§:Number;
      
      private var § #;§:int;
      
      private var §^m§:Array;
      
      public function §85§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§3#N§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§1"w§ = param1;
         this.§ #;§ = 0;
         this.§^m§ = param2;
         this.§ $9§ = param2[0];
         this.§1#!§ = 0;
         this.§`"N§ = §8#p§ / param2.length;
         this.§1"w§.addChild(this.§ $9§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§ $9§;
      }
      
      public function dispose() : void
      {
         if(this.§ $9§)
         {
            this.§ $9§.dispose();
            this.§ $9§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§2!s§)
         {
            this.§1"w§.removeChild(this.§2!s§);
            this.§2!s§ = null;
         }
         this.§1#!§ += param1;
         if(this.§1#!§ >= this.§`"N§)
         {
            this.§2!s§ = this.§ $9§;
            ++this.§ #;§;
            if(this.§ #;§ < this.§^m§.length)
            {
               this.§ $9§ = this.§^m§[this.§ #;§];
               if(this.§ $9§)
               {
                  this.§1"w§.addChild(this.§ $9§);
               }
            }
            this.§1#!§ = 0;
         }
         if(this.§ $9§)
         {
            this.§ $9§.scaleX = §^#5§;
            this.§ $9§.scaleY = §^#5§;
            this.§ $9§.rotation = §9v§;
            this.§ $9§.x = §8u§ / §%!q§.§6q§;
            this.§ $9§.y = §!#§ / §%!q§.§6q§;
         }
         return _loc2_;
      }
   }
}
