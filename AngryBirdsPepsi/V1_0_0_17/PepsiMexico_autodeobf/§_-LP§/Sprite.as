package §_-LP§
{
   import §_-gY§.§_-K6§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-nY§:Vector.<§_-yv§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-QC§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-QC§();
         this.§_-nY§ = §_-yv§.§_-Gr§(this,this.§_-nY§);
      }
      
      public function §_-QC§(param1:Boolean = false) : void
      {
         var _loc2_:§_-yv§ = null;
         if(this.§_-nY§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-nY§)
               {
                  _loc2_.dispose();
               }
               this.§_-nY§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-nY§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-Dw§() : Boolean
      {
         return this.§_-nY§ != null;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc3_:§_-yv§ = null;
         if(this.§_-nY§)
         {
            for each(_loc3_ in this.§_-nY§)
            {
               _loc3_.render(param1,this.alpha * param2);
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
