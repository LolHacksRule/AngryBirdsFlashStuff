package §7"o§
{
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §8#K§.§@"M§;
   
   public class § !9§ extends §;q§
   {
       
      
      private var §#m§:Sprite;
      
      private var §6"z§:DisplayObject;
      
      private var §;#Q§:DisplayObject;
      
      private var §[$D§:Number;
      
      private var §?!b§:Number;
      
      private var §,#A§:int;
      
      private var §]#k§:Array;
      
      public function § !9§(param1:Sprite, param2:Array, param3:Number, param4:Number, param5:Number, param6:§@"M§, param7:Number = 1)
      {
         super(param3,param4,param5,param6,param7);
         this.§#m§ = param1;
         this.§,#A§ = 0;
         this.§]#k§ = param2;
         this.§6"z§ = param2[0];
         this.§[$D§ = 0;
         this.§?!b§ = §;#T§ / param2.length;
         this.§#m§.addChild(this.§6"z§);
         this.update(0);
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6"z§;
      }
      
      public function dispose() : void
      {
         if(this.§6"z§)
         {
            this.§6"z§.dispose();
            this.§6"z§ = null;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = super.update(param1);
         if(this.§;#Q§)
         {
            this.§#m§.removeChild(this.§;#Q§);
            this.§;#Q§ = null;
         }
         this.§[$D§ += param1;
         if(this.§[$D§ >= this.§?!b§)
         {
            this.§;#Q§ = this.§6"z§;
            ++this.§,#A§;
            if(this.§,#A§ < this.§]#k§.length)
            {
               this.§6"z§ = this.§]#k§[this.§,#A§];
               if(this.§6"z§)
               {
                  this.§#m§.addChild(this.§6"z§);
               }
            }
            this.§[$D§ = 0;
         }
         if(this.§6"z§)
         {
            this.§6"z§.scaleX = §#!1§;
            this.§6"z§.scaleY = §#!1§;
            this.§6"z§.rotation = §"$#§;
            this.§6"z§.x = §&$'§ / §8#3§.§2K§;
            this.§6"z§.y = §<#-§ / §8#3§.§2K§;
         }
         return _loc2_;
      }
   }
}
