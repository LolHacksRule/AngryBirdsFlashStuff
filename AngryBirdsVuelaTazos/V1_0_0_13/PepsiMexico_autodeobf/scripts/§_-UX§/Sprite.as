package §_-UX§
{
   import §_-JR§.§_-t2§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-S6§:Vector.<§_-gd§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-ZD§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-ZD§();
         this.§_-S6§ = §_-gd§.§_-Xw§(this,this.§_-S6§);
      }
      
      public function §_-ZD§(param1:Boolean = false) : void
      {
         var _loc2_:§_-gd§ = null;
         if(this.§_-S6§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-S6§)
               {
                  _loc2_.dispose();
               }
               this.§_-S6§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-S6§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-VK§() : Boolean
      {
         return this.§_-S6§ != null;
      }
      
      override public function render(param1:§_-t2§, param2:Number) : void
      {
         var _loc3_:§_-gd§ = null;
         if(this.§_-S6§)
         {
            for each(_loc3_ in this.§_-S6§)
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
