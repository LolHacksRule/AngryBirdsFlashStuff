package §_-pF§
{
   import §_-v3§.§_-L4§;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-r8§:Vector.<§_-6e§>;
      
      public function Sprite()
      {
         super();
      }
      
      override public function dispose() : void
      {
         this.§_-XP§(true);
         super.dispose();
      }
      
      public function flatten() : void
      {
         this.§_-XP§();
         this.§_-r8§ = §_-6e§.§_-rn§(this,this.§_-r8§);
      }
      
      public function §_-XP§(param1:Boolean = false) : void
      {
         var _loc2_:§_-6e§ = null;
         if(this.§_-r8§)
         {
            if(param1)
            {
               for each(_loc2_ in this.§_-r8§)
               {
                  _loc2_.dispose();
               }
               this.§_-r8§ = null;
            }
            else
            {
               for each(_loc2_ in this.§_-r8§)
               {
                  _loc2_.reset();
               }
            }
         }
      }
      
      public function get §_-9p§() : Boolean
      {
         return this.§_-r8§ != null;
      }
      
      override public function render(param1:§_-L4§, param2:Number) : void
      {
         var _loc3_:§_-6e§ = null;
         if(this.§_-r8§)
         {
            for each(_loc3_ in this.§_-r8§)
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
