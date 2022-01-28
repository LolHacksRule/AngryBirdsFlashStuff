package §_-SE§
{
   import §_-Ku§.§_-Ha§;
   import §_-Ku§.§_-Nq§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-tU§:Vector.<§_-oR§>;
      
      private var §_-7T§:int = -1;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-Vm§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-Vm§();
         this.§_-tU§ = §_-oR§.§_-x3§(this,this.§_-tU§);
         this.§_-7T§ = §_-Ha§.§_-Gg§;
      }
      
      public function §_-Vm§(param1:Boolean = false) : void
      {
         var _loc2_:§_-oR§ = null;
         if(this.§_-tU§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-tU§)
               {
                  _loc2_.dispose();
               }
               this.§_-tU§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-tU§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-Vx§() : Boolean
      {
         return this.§_-tU§ != null;
      }
      
      override public function render(param1:§_-Nq§, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§_-oR§ = null;
         if(this.§_-tU§)
         {
            _loc3_ = §_-Ha§.§_-Gg§;
            if(this.§_-7T§ != _loc3_)
            {
               this.flatten();
            }
            for each(_loc4_ in this.§_-tU§)
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
