package §_-b5§
{
   import §_-fI§.§_-6W§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-Qh§:Vector.<§_-bS§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-A1§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-A1§();
         this.§_-Qh§ = §_-bS§.§_-ZX§(this,this.§_-Qh§);
      }
      
      public function §_-A1§(param1:Boolean = false) : void
      {
         var _loc2_:§_-bS§ = null;
         if(this.§_-Qh§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-Qh§)
               {
                  _loc2_.dispose();
               }
               this.§_-Qh§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-Qh§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-fN§() : Boolean
      {
         return this.§_-Qh§ != null;
      }
      
      override public function render(param1:§_-6W§, param2:Number) : void
      {
         var _loc3_:§_-bS§ = null;
         if(this.§_-Qh§)
         {
            for each(_loc3_ in this.§_-Qh§)
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
