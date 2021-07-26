package §7"p§
{
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§[S§;
   
   public class §=![§ extends §2!<§
   {
       
      
      private var §&$2§:Sprite;
      
      private var §&#W§:DisplayObject;
      
      private var §5$>§:DisplayObject;
      
      private var §<$$§:Number;
      
      private var §<#j§:Number;
      
      private var §`#u§:int;
      
      private var §!#[§:Array;
      
      public function §=![§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§[S§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§&$2§ = param1;
         this.§`#u§ = 0;
         this.§!#[§ = param2;
         this.§&#W§ = param2[0];
         this.§<$$§ = 0;
         this.§<#j§ = §>!,§ / param2.length;
         this.§&$2§.addChild(this.§&#W§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§&#W§;
      }
      
      public function dispose() : void
      {
         if(this.§&#W§)
         {
            this.§&#W§.dispose();
            this.§&#W§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§5$>§)
         {
            this.§&$2§.removeChild(this.§5$>§);
            this.§5$>§ = null;
         }
         this.§<$$§ += param1;
         if(this.§<$$§ >= this.§<#j§)
         {
            this.§5$>§ = this.§&#W§;
            ++this.§`#u§;
            if(this.§`#u§ < this.§!#[§.length)
            {
               this.§&#W§ = this.§!#[§[this.§`#u§];
               if(this.§&#W§)
               {
                  this.§&$2§.addChild(this.§&#W§);
               }
            }
            this.§<$$§ = 0;
         }
         if(this.§&#W§)
         {
            this.§&#W§.scaleX = §5>§;
            this.§&#W§.scaleY = §5>§;
            this.§&#W§.rotation = §9"c§;
            this.§&#W§.x = §["d§ / §!6§.§[#v§;
            this.§&#W§.y = §%#z§ / §!6§.§[#v§;
         }
         return _loc2_;
      }
   }
}
