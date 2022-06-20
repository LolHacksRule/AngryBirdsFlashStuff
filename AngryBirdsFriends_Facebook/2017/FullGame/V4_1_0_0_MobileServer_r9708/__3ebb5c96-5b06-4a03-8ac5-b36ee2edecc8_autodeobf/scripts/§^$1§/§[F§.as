package §^$1§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §7"&§.§?"B§;
   
   public class §[F§ extends §7" §
   {
       
      
      private var §4!A§:Sprite;
      
      private var §;"6§:DisplayObject;
      
      private var §!#<§:DisplayObject;
      
      private var §5B§:Number;
      
      private var §@4§:Number;
      
      private var §5"Q§:int;
      
      private var §`!`§:Array;
      
      public function §[F§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§?"B§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§4!A§ = param1;
         this.§5"Q§ = 0;
         this.§`!`§ = param2;
         this.§;"6§ = param2[0];
         this.§5B§ = 0;
         this.§@4§ = §&#,§ / param2.length;
         this.§4!A§.addChild(this.§;"6§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§;"6§;
      }
      
      public function dispose() : void
      {
         if(this.§;"6§)
         {
            this.§;"6§.dispose();
            this.§;"6§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§!#<§)
         {
            this.§4!A§.removeChild(this.§!#<§);
            this.§!#<§ = null;
         }
         this.§5B§ += param1;
         if(this.§5B§ >= this.§@4§)
         {
            this.§!#<§ = this.§;"6§;
            ++this.§5"Q§;
            if(this.§5"Q§ < this.§`!`§.length)
            {
               this.§;"6§ = this.§`!`§[this.§5"Q§];
               if(this.§;"6§)
               {
                  this.§4!A§.addChild(this.§;"6§);
               }
            }
            this.§5B§ = 0;
         }
         if(this.§;"6§)
         {
            this.§;"6§.scaleX = § "A§;
            this.§;"6§.scaleY = § "A§;
            this.§;"6§.rotation = §;"A§;
            this.§;"6§.x = §?!l§ / §!!S§.§,"3§;
            this.§;"6§.y = §`"T§ / §!!S§.§,"3§;
         }
         return _loc2_;
      }
   }
}
