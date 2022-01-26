package §_-se§
{
   import §_-B2§.§_-Ke§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-7e§:Vector.<§_-Tr§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-1Y§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-1Y§();
         this.§_-7e§ = §_-Tr§.§_-F6§(this,this.§_-7e§);
      }
      
      public function §_-1Y§(param1:Boolean = false) : void
      {
         var _loc2_:§_-Tr§ = null;
         if(this.§_-7e§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-7e§)
               {
                  _loc2_.dispose();
               }
               this.§_-7e§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-7e§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-kH§() : Boolean
      {
         return this.§_-7e§ != null;
      }
      
      override public function render(param1:§_-Ke§, param2:Number) : void
      {
         var _loc3_:§_-Tr§ = null;
         if(this.§_-7e§)
         {
            for each(_loc3_ in this.§_-7e§)
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
