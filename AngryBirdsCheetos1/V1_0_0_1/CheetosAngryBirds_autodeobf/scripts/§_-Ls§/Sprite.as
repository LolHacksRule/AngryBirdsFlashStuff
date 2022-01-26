package §_-Ls§
{
   import §_-vB§.§_-7p§;
   import §_-vB§.§_-Kk§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-3L§:Vector.<§_-m6§>;
      
      private var §_-fK§:int = -1;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-On§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-On§();
         this.§_-3L§ = §_-m6§.§_-58§(this,this.§_-3L§);
         this.§_-fK§ = §_-Kk§.§_-gK§;
      }
      
      public function §_-On§(param1:Boolean = false) : void
      {
         var _loc2_:§_-m6§ = null;
         if(this.§_-3L§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-3L§)
               {
                  _loc2_.dispose();
               }
               this.§_-3L§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-3L§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-lG§() : Boolean
      {
         return this.§_-3L§ != null;
      }
      
      override public function render(param1:§_-7p§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§_-m6§ = null;
         if(this.§_-3L§ && color == 16777215)
         {
            _loc3_ = §_-Kk§.§_-gK§;
            if(this.§_-fK§ != _loc3_)
            {
               this.flatten();
            }
            for each(_loc4_ in this.§_-3L§)
            {
               _loc4_.render(param1,this.alpha * param2);
            }
         }
         else
         {
            super.render(param1,param2);
         }
      }
   }
}
