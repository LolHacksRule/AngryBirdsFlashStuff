package §%$0§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §-!j§.§@U§;
   import §?$#§.§<d§;
   
   public class §]!"§ extends §[!@§
   {
       
      
      private var §+#U§:Sprite;
      
      private var §8"`§:DisplayObject;
      
      private var §=$6§:DisplayObject;
      
      private var §=#_§:Number;
      
      private var §+&§:Number;
      
      private var §6a§:int;
      
      private var §>"2§:Array;
      
      public function §]!"§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§@U§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§+#U§ = param1;
         this.§6a§ = 0;
         this.§>"2§ = param2;
         this.§8"`§ = param2[0];
         this.§=#_§ = 0;
         this.§+&§ = §4!4§ / param2.length;
         this.§+#U§.addChild(this.§8"`§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§8"`§;
      }
      
      public function dispose() : void
      {
         if(this.§8"`§)
         {
            this.§8"`§.dispose();
            this.§8"`§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§=$6§)
         {
            this.§+#U§.removeChild(this.§=$6§);
            this.§=$6§ = null;
         }
         this.§=#_§ += param1;
         if(this.§=#_§ >= this.§+&§)
         {
            this.§=$6§ = this.§8"`§;
            ++this.§6a§;
            if(this.§6a§ < this.§>"2§.length)
            {
               this.§8"`§ = this.§>"2§[this.§6a§];
               if(this.§8"`§)
               {
                  this.§+#U§.addChild(this.§8"`§);
               }
            }
            this.§=#_§ = 0;
         }
         if(this.§8"`§)
         {
            this.§8"`§.scaleX = §6#q§;
            this.§8"`§.scaleY = §6#q§;
            this.§8"`§.rotation = §8"a§;
            this.§8"`§.x = §0k§ / §<d§.§6@§;
            this.§8"`§.y = §@_§ / §<d§.§6@§;
         }
         return _loc2_;
      }
   }
}
