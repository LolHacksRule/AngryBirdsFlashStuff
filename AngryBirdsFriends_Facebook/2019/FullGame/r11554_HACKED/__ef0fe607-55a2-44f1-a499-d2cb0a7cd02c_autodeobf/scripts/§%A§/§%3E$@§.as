package §%A§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §?§.§6!M§;
   
   public class §>$@§ extends §6"I§
   {
       
      
      private var §1"-§:Sprite;
      
      private var §^p§:DisplayObject;
      
      private var §;#'§:DisplayObject;
      
      private var §-!^§:Number;
      
      private var §="t§:Number;
      
      private var §6"4§:int;
      
      private var §^"K§:Array;
      
      public function §>$@§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§6!M§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§1"-§ = param1;
         this.§6"4§ = 0;
         this.§^"K§ = param2;
         this.§^p§ = param2[0];
         this.§-!^§ = 0;
         this.§="t§ = §?#c§ / param2.length;
         this.§1"-§.addChild(this.§^p§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§^p§;
      }
      
      public function dispose() : void
      {
         if(this.§^p§)
         {
            this.§^p§.dispose();
            this.§^p§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§;#'§)
         {
            this.§1"-§.removeChild(this.§;#'§);
            this.§;#'§ = null;
         }
         this.§-!^§ += param1;
         if(this.§-!^§ >= this.§="t§)
         {
            this.§;#'§ = this.§^p§;
            ++this.§6"4§;
            if(this.§6"4§ < this.§^"K§.length)
            {
               this.§^p§ = this.§^"K§[this.§6"4§];
               if(this.§^p§)
               {
                  this.§1"-§.addChild(this.§^p§);
               }
            }
            this.§-!^§ = 0;
         }
         if(this.§^p§)
         {
            this.§^p§.scaleX = §6z§;
            this.§^p§.scaleY = §6z§;
            this.§^p§.rotation = §?+§;
            this.§^p§.x = §-##§ / §'"u§.§'#e§;
            this.§^p§.y = §0#[§ / §'"u§.§'#e§;
         }
         return _loc2_;
      }
   }
}
